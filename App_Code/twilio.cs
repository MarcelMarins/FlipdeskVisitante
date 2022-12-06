using System;
using Twilio;
using Twilio.Rest.Api.V2010.Account;

class Program
{
    static void Main(string[] args)
    {
        // Find your Account SID and Auth Token at twilio.com/console
        // and set the environment variables. See http://twil.io/secure
        string accountSid = Environment.GetEnvironmentVariable("TWILIO_ACCOUNT_SID");
        string authToken = Environment.GetEnvironmentVariable("TWILIO_AUTH_TOKEN");

        TwilioClient.Init(accountSid, authToken);

        var message = MessageResource.Create(
            body: "Hello there!",
            from: new Twilio.Types.PhoneNumber("whatsapp:+14155238886"),
            to: new Twilio.Types.PhoneNumber("whatsapp:+15005550006")
        );

        Console.WriteLine(message.Sid);
    }
}