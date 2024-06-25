import 'package:flutter/material.dart';
import 'package:ws01_1906/pages/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  double widthT = 100;
  double Height = 100;
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Center(
              child: Container(
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 235, 187, 251),
                  radius: 70,
                  child: Text("LOGO"),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                ),
                ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Colors.red,Colors.blue],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight)
                    .createShader(bounds),
                    child: const Text("REGISTER",
                    style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 18,
                      ),
                    ),
                )

              ],
            ),
            SizedBox(
              height: 5,
            ),
            //------------------------------------- TextFormField -------------------------------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                ),
                ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Colors.red,Color.fromARGB(255, 248, 184, 252)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight)
                    .createShader(bounds),
                    child: const Text("Name",
                    style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 18,
                      ),
                    ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              // child: ConstrainedBox(
              //   constraints: BoxConstraints(
              //     maxHeight: 60, // Set the height you want
              //     maxWidth: 50, // Set the width you want,
              //   ),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(width: 1)),
                    filled: true,
                    fillColor: Color.fromARGB(255, 248, 232, 255)),
              ),
            ),

            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                ),
                ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Colors.red,Color.fromARGB(255, 248, 184, 252)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight)
                    .createShader(bounds),
                    child: const Text("Username",
                    style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 18,
                      ),
                    ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              // child: ConstrainedBox(
              //   constraints: BoxConstraints(
              //     maxHeight: 60, // Set the height you want
              //     maxWidth: 50, // Set the width you want,
              //   ),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(width: 1)),
                    filled: true,
                    fillColor: Color.fromARGB(255, 248, 232, 255)),
              ),
            ),

            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                ),
                ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Colors.red,Color.fromARGB(255, 248, 184, 252)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight)
                    .createShader(bounds),
                    child: const Text("Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 18,
                      ),
                    ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
         
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(width: 1)),
                    filled: true,
                    fillColor: Color.fromARGB(255, 248, 232, 255)),
              ),
            ),
            //----------------------------------- Slider --------------------------------------------
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                ),
                //-----------------------------------------Slider Weight-----------------------------------------
                Text(
                  "Weight",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Slider(
                  min: 1,
                  max: 100,
                  divisions: 20,
                  label: widthT.round().toString(),
                  value: widthT,
                  onChanged: (value) {
                    setState(() {
                      widthT = value;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                ),
                ////-----------------------------------------Slider Height-----------------------------------------
                Text(
                  "Height",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Slider(
                
                  min: 1,
                  max: 100,
                  divisions: 20,
                  label: Height.round().toString(),
                  value: Height,
                  onChanged: (value) {
                    setState(() {
                      Height
                       = value;
                    });
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 140),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text("Next"),
                backgroundColor: Color.fromARGB(255, 246, 220, 255),
              ),
            ),
          ],
        ));
  }
}
