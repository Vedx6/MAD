Phase 1: Fixing the Environment (The "Path" Fix)
Since you saw the "flutter is not recognized" error, Windows doesn't know where the SDK is located. You must do this first:

Locate your Flutter bin folder (e.g., C:\src\flutter\bin). Copy this path.

Search for "Edit the system environment variables" in the Windows Start menu.

Click Environment Variables -> Under User variables, find and select Path -> Click Edit.

Click New and paste the path you copied. Click OK on all windows.

Crucial: Close your current Command Prompt and open a new one for the changes to take effect.

Phase 2: Project Creation in CMD
Open a new Command Prompt and run these commands to initialize your experiment :

DOS
:: 1. Create the project folder
flutter create navigation_gesture_windows

:: 2. Enter the directory
cd navigation_gesture_windows

:: 3. Enable Windows Desktop support (required for this lab) [cite: 26-28]
flutter config --enable-windows-desktop

:: 4. Open the project in VS Code to edit files
code .
Phase 3: Setting Up the Code
In VS Code, navigate to the lib/ folder. You need to create three files to follow the clean routing structure shown in your manual .

1. lib/main.dart (The Routing Setup)
Dart
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation & Gestures',
      debugShowCheckedModeBanner: false,
      // Setting initial screen [cite: 16]
      initialRoute: '/',
      // Defining the route names [cite: 15-17]
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}
2. lib/home_page.dart (The Gesture Implementation)
Dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: GestureDetector(
          // Detecting user interaction [cite: 19-21]
          onTap: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            color: Colors.blue,
            child: const Text(
              'Tap to Go to Second Page',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
3. lib/second_page.dart (The Navigation Stack)
Dart
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Popping the route off the stack [cite: 11-13]
            Navigator.pop(context);
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}
Phase 4: Run the Application
Go back to your Command Prompt (CMD) and run the app to verify it works:

DOS
flutter run -d windows# MAD
