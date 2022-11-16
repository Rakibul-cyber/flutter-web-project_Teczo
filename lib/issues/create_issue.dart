import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Alert CreateIssue(BuildContext context) {
  return Alert(
      style: AlertStyle(),
      context: context,
      title: "Create issue",
      content: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    "Title",
                    style: TextStyle(
                        color: Color.fromARGB(255, 214, 212, 212),
                        fontSize: 16),
                  ),
                  Text(
                    "*",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  labelText: 'Commissioning',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Status",
                style: TextStyle(
                    color: Color.fromARGB(255, 214, 212, 212), fontSize: 16),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  prefixIcon: Icon(
                    Entypo.flow_line,
                    color: Colors.orange,
                  ),
                  labelText: 'Open',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                  suffixIcon: Icon(AntDesign.down),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Type',
                style: TextStyle(
                    color: Color.fromARGB(255, 214, 212, 212), fontSize: 16),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  labelText: 'Commissioning > Commissioning',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                  suffixIcon: Icon(AntDesign.down),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Description",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  labelText: 'Describe the issue',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                  contentPadding: EdgeInsets.symmetric(vertical: 40),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Assigned to",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  labelText: 'Select a member,role,or company',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                  suffixIcon: Icon(AntDesign.down),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text("Watchers",
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      AntDesign.exclamationcircleo,
                      color: Colors.blue,
                      size: 12,
                    ),
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  labelText: 'Select watchers',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                  suffixIcon: Icon(AntDesign.down),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Location",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  labelText: 'Select a location',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                  suffixIcon: Icon(AntDesign.down),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Location details",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  labelText: 'Enter location details',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                  suffixIcon: Icon(AntDesign.down),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Due date",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  prefixIcon: Icon(Fontisto.date),
                  labelText: 'Select date',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Start date",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  prefixIcon: Icon(Fontisto.date),
                  labelText: 'Select date',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Placement",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  labelText: 'Select... ',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                  suffixIcon: Icon(AntDesign.down),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Root cause",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  labelText: 'Select a root cause',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                  suffixIcon: Icon(AntDesign.down),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
      buttons: [
        DialogButton(
          child: Text(''),
          onPressed: null,
          color: Colors.white,
        ),
        DialogButton(
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
          child: Text(
            "Cancel",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        DialogButton(
          color: Colors.blue,
          onPressed: () => Navigator.pop(context),
          child: Text(
            "Create",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ]);
}
