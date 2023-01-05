/*
----------------------------------------------------------------------------------------------------------------------------------------------
This codeunit is built to hold the logic behind keeping the Currency Exch. Rate Services running and advising client in case of failure.
DEVOPS #732
----------------------------------------------------------------------------------------------------------------------------------------------
*/

codeunit 50006 "Job Queue Maintenance"
{
    trigger OnRun()
    begin
        Company.Reset();
        SendMail := False;
        Clear(CompaniesRestarted);
        i := 0;
        if Company.FindFirst() then begin
            repeat
            begin
                JQE.Reset();
                JQE.ChangeCompany(Company.Name);
                JQE.SetFilter("Object ID to Run", '%1', 1281);
                if JQE.FindFirst() then begin
                    if ((JQE.Status <> JQE.Status::"In Process") and (JQE.Status <> JQE.Status::Ready)) then begin


                        //restart job queue
                        //JQE.Status := JQE.Status::Ready;
                        //JQE.Modify();
                        JQE.SetStatus(JQE.Status::Ready);

                        SendMail := True;

                        //keep track of companies
                        if CompaniesRestarted[1] = '' then begin
                            CompaniesRestarted[1] := Company.Name;
                            //Message('[1] Restarted %1 - i is %2', Company.Name, i);
                        end
                        else begin
                            //find next empty slot 
                            for i := 1 to ArrayLen(CompaniesRestarted) do begin
                                if CompaniesRestarted[i] = '' then begin
                                    CompaniesRestarted[i] := Company.Name;
                                    i := ArrayLen(CompaniesRestarted);
                                end
                                else begin
                                    if CompaniesRestarted[i] = Company.Name then
                                        i := ArrayLen(CompaniesRestarted);
                                end;
                            end;
                        end;
                    end;
                end;
            end;
            until (Company.Next = 0);
        end;

        if SendMail then begin
            SMTP_Setup.Reset();
            if SMTP_Setup.Get('') then begin
                //Recipient := 'yabela@bluefort.com.mt';
                //Subject := 'Exchange Rate Notification - Business Central';
                Body := 'The following companies have had the Currency Exchange Job Queue restarted:';
                j := 0;

                Clear(SMTP_Mail);
                if SMTP_Setup.ERM_To <> '' then begin
                    Clear(position);
                    Clear(toemail);
                    position := StrPos(SMTP_Setup.ERM_To, '|');
                    toemail := DelStr(SMTP_Setup.ERM_To, position, strlen(SMTP_Setup.ERM_To));
                end;
                SMTP_Mail.CreateMessage('Business Central', SMTP_Setup.ERM_From, toemail, SMTP_Setup.ERM_Subject, '', true);
                //SMTP_Mail.CreateMessage('Business Central', 'yabela@bluefort.com.mt', 'yabela@bluefort.com.mt', 'TEST MAILING', '', true);


                //parse To Emails and add as recipients
                if SMTP_Setup.ERM_To <> '' then begin
                    if StrPos(SMTP_Setup.ERM_To, '|') <> 0 then begin       //check if to send to more than one email
                        FullRecipientList := ConvertStr(SMTP_Setup.ERM_To, '|', ',');
                        TempMailAddr := ConvertStr(SMTP_Setup.ERM_To, '|', ',');
                        counter := StrLen(DelChr(TempMailAddr, '=', DelChr(TempMailAddr, '=', ',')));
                        for index := 0 to counter do begin
                            if (SelectStr(index + 1, FullRecipientList)) <> toemail then begin
                                emaillist.Add(SelectStr(index + 1, FullRecipientList));
                                SMTP_Mail.AddRecipients(emaillist);
                            end;
                        end;
                    end;
                end;
                SMTP_Mail.AppendBody('<font size="2">' + Body + '</font>');
                SMTP_Mail.AppendBody('<br>');
                SMTP_Mail.AppendBody('<br>');
                //loop through array and list companies
                if CompaniesRestarted[1] <> '' then begin
                    for j := 1 to ArrayLen(CompaniesRestarted) do begin
                        if CompaniesRestarted[j] <> '' then begin
                            SMTP_Mail.AppendBody('<font size="2">' + CompaniesRestarted[j] + '</font>');
                            SMTP_Mail.AppendBody('<br>');
                        end
                        else
                            j := ArrayLen(CompaniesRestarted);
                    end;
                end;
                SMTP_Mail.AppendBody('<br>');
                SMTP_Mail.AppendBody('<br>');
                SMTP_Mail.AppendBody('<font size="2"> Business Central has automatically reviewed all Job Queues in all companies within the database. </font>');
                SMTP_Mail.AppendBody('<br>');
                SMTP_Mail.AppendBody('<br>');
                SMTP_Mail.AppendBody('<font size="2"><b> From your end, please make sure to revise the Job Queue status and check for any missing exchange rates. </b></font>');
                SMTP_Mail.AppendBody('<br>');
                SMTP_Mail.AppendBody('<link> https://dynamics-bc.com/Live/ </link>');

                SMTP_Mail.Send();
            end;
        end;

        //re-run job queues in previously started companies to make sure they are still running. 
        //schedule task that runs 1 minute from now to re-review job queue.

    end;

    var
        Company: Record Company;
        JQE: Record "Job Queue Entry";
        SMTP_Setup: Record "SMTP Mail Setup";
        SMTP_Mail: Codeunit "SMTP Mail";
        SendMail: Boolean;
        CompaniesRestarted: array[50] of Text[50];
        i: integer;
        j: Integer;
        Recipient: array[50] of Text[100];
        FullRecipientList: Text[2048];
        TempMailAddr: Text[2048];
        //Subject: Text[2480];
        Body: Text[2048];
        EmailAddr: Text[200];
        index: Integer;
        counter: Integer;
        emaillist: List of [Text];
        position: Integer;
        toemail: Text[100];
}