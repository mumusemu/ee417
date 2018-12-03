function mail 
mail1 = 'proje417@gmail.com'; %Your GMail email address
password = 'utkuburak';  %Your GMail password
setpref('Internet','SMTP_Server','smtp.gmail.com');

setpref('Internet','E_mail',mail1);
setpref('Internet','SMTP_Username',mail1);
setpref('Internet','SMTP_Password',password);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
props.setProperty('mail.smtp.socketFactory.port','465');
% Send the email.  Note that the first input is the address you are sending the email to
sendmail(mail1,'Test from MATLAB','For Your Information, Dear User','C:\Users\WIN7\Desktop\417proje\getdata.txt');
end