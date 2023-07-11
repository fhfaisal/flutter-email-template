import 'package:custom_email/html_contents.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:fluttertoast/fluttertoast.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  CustomMailTemplate(),
    );
  }
}
class CustomMailTemplate extends StatefulWidget {
  @override
  _CustomMailTemplateState createState() => _CustomMailTemplateState();
}

class _CustomMailTemplateState extends State<CustomMailTemplate> {
  final recipientController = TextEditingController();
  final subjectController = TextEditingController();
  final bodyController = TextEditingController();
  String senderEmail = 'fhfaisallll@gmail.com';
  bool isSendingEmail = false; // Track the email sending state

  @override
  void dispose() {
    recipientController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Mail Template'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: recipientController,
              decoration: InputDecoration(
                labelText: 'Recipient',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: subjectController,
              decoration: InputDecoration(
                labelText: 'Subject',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: isSendingEmail ? null : sendEmail,
            // Disable the button while sending email
            child: isSendingEmail ? CircularProgressIndicator() : Text(
                'Send Email'), // Show loading indicator or button text based on email sending state
          ),
        ],
      ),
    );
  }

  void sendEmail() async {
    final recipientEmail = recipientController.text;
    final subject = subjectController.text;

    final smtpServer = gmail('fhfaisallll@gmail.com', 'dsbsnrqngrkbsabw');
    // Create the message
    final message = Message()
      ..from = Address('${senderEmail}')
      ..recipients.add(recipientEmail)
      ..subject = subject
      ..html = htmlContent;

    setState(() {
      isSendingEmail = true; // Set the flag to true while sending email
    });

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ${sendReport.toString()}');
      showToast('Email sent successfully', true); // Show success message
    } catch (e) {
      print('Error sending email: $e');
      showToast('Failed to send email', false); // Show error message
    } finally {
      setState(() {
        isSendingEmail = false;
      });
    }
  }

  void showToast(String message, bool isSuccess) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: isSuccess ? Colors.green : Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}




