import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';


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
          ElevatedButton(
            onPressed: () => sendEmail(),
            child: Text('Send Email'),
          ),
        ],
      ),
    );
  }

  void sendEmail() async {
    final recipientEmail = recipientController.text;
    final subject = subjectController.text;
    final htmlContent = '''
    <!DOCTYPE html>
    <html>
      <body>
        <h1>Welcome to My Company</h1>
        <p>This is a custom email with a logo and button.</p>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5JYOy4b-4q-CI1pebHoX8z1bFHltmt2osgQ&usqp=CAU" alt="Company Logo">
        <br><br>
        <a href="https://example.com" style="background-color: #4CAF50; color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px;">Click Here</a>
      </body>
    </html>
  ''';

    final smtpServer = gmail('fhfaisallll@gmail.com', 'dsbsnrqngrkbsabw');
    // Create the message
    final message = Message()
      ..from = Address('fhfaisallll@gmail.com')
      ..recipients.add(recipientEmail)
      ..subject = subject
      ..html = htmlContent;

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ${sendReport.toString()}');
    } catch (e) {
      print('Error sending email: $e');
    }
  }
}




