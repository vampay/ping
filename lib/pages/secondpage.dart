import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> majors = ["Computer Science", "Information Technology"];
  String selectedMajor = "";
  List<String> languages = ["Thai", "English", "Chinese"];
  String selectedLanguage = "";
  bool Checkterms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Colors.red,Color.fromARGB(255, 255, 224, 252)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight)
                    .createShader(bounds),
                    child: const Text("Major",
                    style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 18,
                      ),
                    ),
                ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: majors.map((major) {
              return ChoiceChip(
                label: Text(major),
                selected: selectedMajor == major,
                onSelected: (bool selected) {
                  setState(() {
                    selectedMajor = selected ? major : "";
                  });
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 10,
          ),
          ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Color.fromARGB(255, 250, 164, 255),Colors.blue],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight)
                    .createShader(bounds),
                    child: const Text("Language",
                    style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 18,
                      ),
                    ),
                ),
          Column(
            children: languages.map((language) {
              return RadioListTile<String>(
                title: Text(language),
                value: language,
                groupValue: selectedLanguage,
                onChanged: (value) {
                  setState(() {
                    selectedLanguage = value!;
                  });
                },
              );
            }).toList(),
          ),
          ListTile(
            leading: Checkbox(
              value: Checkterms,
              onChanged: (value) {
                setState(() {
                  Checkterms = value!;
                });
              },
            ),
            title: Text("Agree Condition Terms"),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Text("Register"),
            backgroundColor: Color.fromARGB(255, 246, 220, 255),
          )
        ],
      ),
    );
  }
}
