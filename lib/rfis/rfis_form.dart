import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Alert CreateRFI(BuildContext context) {
  return Alert(
      style: AlertStyle(),
      context: context,
      title: "Create RFI",
      content: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    "Status",
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
                  prefixIcon: Icon(
                    Entypo.flow_line,
                    color: Colors.purple,
                  ),
                  labelText: 'Draft',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
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
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                  suffixIcon: Icon(AntDesign.down),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Ball in court',
                style: TextStyle(
                    color: Color.fromARGB(255, 214, 212, 212), fontSize: 16),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  labelText: 'Teczo Unity',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Co-reviewers",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  labelText: 'Search by members,roles or companies',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(" Due date",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  prefixIcon: Icon(MaterialCommunityIcons.calendar_blank),
                  labelText: 'Choose date',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                ),
              ),
              SizedBox(
                height: 15,
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
              Text("Question",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  labelText: '',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                  contentPadding: EdgeInsets.symmetric(vertical: 40),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Suggested answer",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(
                        width: 1, color: Color.fromARGB(255, 155, 154, 154))),
                  ),
                  labelText: '',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 214, 212, 212)),
                  contentPadding: EdgeInsets.symmetric(vertical: 40),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 700,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Reference",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
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
