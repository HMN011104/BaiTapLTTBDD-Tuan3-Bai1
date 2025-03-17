import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/components': (context) => ComponentsScreen(),
        '/text': (context) => TextScreen(),
        '/image': (context) => ImageScreen(),
        '/textfield': (context) => TextFieldScreen(),
        '/passwordfield': (context) => PasswordFieldScreen(),
        '/column': (context) => ColumnScreen(),
        '/row': (context) => RowScreen(),
      },
    );
  }
}

// ========================== HomeScreen ==========================
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AssetImage('assets/picture1.png'), 
          SizedBox(height: 20),
          Text(
            "Jetpack Compose",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Jetpack Compose is a modern UI toolkit for building native Android application using a declarative  programming approach.",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/components');
            },
            child: Text("I'm ready"),
          ),
        ],
      ),
    );
  }
}

// ========================== ComponentsScreen ==========================
class ComponentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UI Components List")),
      body: ListView(
        children: [
          ListTile(title: Text("Text"), onTap: () => Navigator.pushNamed(context, '/text')),
          ListTile(title: Text("Image"), onTap: () => Navigator.pushNamed(context, '/image')),
          ListTile(title: Text("TextField"), onTap: () => Navigator.pushNamed(context, '/textfield')),
          ListTile(title: Text("PasswordField"), onTap: () => Navigator.pushNamed(context, '/passwordfield')),
          ListTile(title: Text("Column"), onTap: () => Navigator.pushNamed(context, '/column')),
          ListTile(title: Text("Row"), onTap: () => Navigator.pushNamed(context, '/row')),
        ],
      ),
    );
  }
}

// ========================== Screens for each UI Component ==========================
class TextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Detail")),
      body: Center(child: Text("The quick Brown fox jumps over the lazy dog.")),
    );
  }
}

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Detail")),
      body: Center(child: AssetImage('assets/picture1.png')),
    );
  }
}

class TextFieldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextField Example")),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: TextField(decoration: InputDecoration(labelText: "Enter text")),
        ),
      ),
    );
  }
}

class PasswordFieldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PasswordField Example")),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: "Enter password"),
          ),
        ),
      ),
    );
  }
}

class ColumnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column Layout")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Item 1"),
          Text("Item 2"),
          Text("Item 3"),
        ],
      ),
    );
  }
}

class RowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Layout")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Item 1   "),
          Text("Item 2   "),
          Text("Item 3"),
        ],
      ),
    );
  }
}
