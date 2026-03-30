import 'package:flutter/material.dart';

// ================= MAIN =================
void main() {
  runApp(MyApp());
}

// ===== Base Class: Library =====
// Represents a basic library with a name and version
class Library {
  String name;
  String version;

  Library(this.name, this.version);

  // Method to return formatted library info
  String getInfo() {
    return "Library: $name | Version: $version";
  }
}

// ===== Extended Class: ExtendedLibrary =====
// Inherits from Library and adds license information
class ExtendedLibrary extends Library {
  String license;
ExtendedLibrary(String name, String version, this.license)
      : super(name, version);

  @override
  String getInfo() {
    return "Library: $name | Version: $version | License: $license";
  }
}

// ===== Main App Widget =====
class MyApp extends StatelessWidget {
 MyApp({Key? key}) : super(key: key);

  // A list of libraries to display
  final List<Library> libraries = [
    Library("Boost", "1.82.0"),
    ExtendedLibrary("fmt", "10.1.0", "MIT"),
    ExtendedLibrary("nlohmann/json", "3.11.2", "MIT"),
    ExtendedLibrary("OpenSSL", "3.0.2", "Apache-2.0"),
    Library("SQLite", "3.45.0"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Library Tracker",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Library Tracker"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: libraries.length,
            itemBuilder: (context, index) {
              final lib = libraries[index];
              return Card(
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 6),
                child: ListTile(
                  leading: const Icon(Icons.library_books, color: Colors.blue),
                  title: Text(
                    lib.getInfo(),
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    "This is a tracked dependency in your project.",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade600, // ✅ Fixed color issue
                    ),
                  ),
                  trailing:
                      const Icon(Icons.check_circle, color: Colors.green),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
