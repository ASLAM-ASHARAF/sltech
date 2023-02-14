import 'package:flutter/material.dart';
import 'package:chips_input/chips_input.dart';
import 'package:sltech/submitpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
          title: Text(
            'Create Profile',
          ),
          backgroundColor: Colors.blueGrey[800],
          leading: const BackButton(
            color: Colors.white,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ListView(
            children: <Widget>[
              jobtitlefeild(),
              SizedBox(height: 20),
              contnofeild(),
              SizedBox(height: 20),
              skillspace(),
              SizedBox(
                height: 20,
              ),
              skillfeild(),
              SizedBox(
                height: 20,
              ),
              workspacefeild(),
              SizedBox(
                height: 20,
              ),
              workexpfeild(),
              SizedBox(
                height: 20,
              ),
              descfeild(),
              SizedBox(height: 20),
              descriptionfeild(),
              SizedBox(
                height: 90,
              ),
              Container(
                width: 35,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return screentwo();
                    }));
                  },
                  child: Text(
                    "Continue",
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget jobtitlefeild() {
    return Container(
      height: 30,
      width: 20,
      color: Colors.white,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink, width: 3),
          ),
          hintText: "Job Title",
        ),
      ),
    );
  }

  Widget contnofeild() {
    return Container(
      width: 20,
      height: 30,
      color: Colors.white,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.pink, width: 3),
            ),
            hintText: "Contact Number"),
      ),
    );
  }

  Widget skillspace() {
    return Text(
      "Add Your Skill",
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20),
    );
  }

  Widget skillfeild() {
    return Expanded(
      child: Container(
        width: 20,
        height: 53,
        color: Colors.white,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.pink, width: 3),
            ),
            hintText: "skills",
            helperText: "Add upto 5 skills",
          ),
          maxLines: 5,
          minLines: 1,
        ),
      ),
    );
  }

  Widget workspacefeild() {
    return Text(
      "Work Experience",
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20),
    );
  }

  Widget workexpfeild() {
    return Expanded(
      child: Container(
        width: 20,
        height: 53,
        color: Colors.white,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.pink, width: 3),
            ),
            hintText: "Work Experience",
          ),
          maxLines: 5,
          minLines: 1,
        ),
      ),
    );
  }

  Widget descfeild() {
    return Text(
      "Description",
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20),
    );
  }

  Widget descriptionfeild() {
    return Container(
      color: Colors.white,
      width: 20,
      height: 53,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink, width: 3),
          ),
        ),
        maxLines: 5,
        minLines: 1,
      ),
    );
  }
}
