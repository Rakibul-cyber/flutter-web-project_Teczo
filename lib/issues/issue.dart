import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../commmon widget/navigartion_bar_with_start.dart';
import '../commmon widget/navigation_bar.dart';
import '../constants.dart';
import '../homepage.dart';
import '../rfis/rfis_home.dart';
import '../widgets/top_bar.dart';
import 'create_issue.dart';

class Issue extends StatefulWidget {
  Issue({Key? key}) : super(key: key);

  @override
  State<Issue> createState() => _IssueState();
}

class _IssueState extends State<Issue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisSize: MainAxisSize.min,
        children: [
          //topbar
          Container(
            height: 50.0,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 235, 235, 235),
                  width: 1.0,
                ),
              ),
            ),
            child: tapBar(context),
          ),

          //body

          Expanded(
            child: Row(
              children: [
                if (isDesktop(context))
                  Expanded(
                    flex: 1,
                    child: ListView(
                      children: <Widget>[
                        NavigationBarLeft(
                          color: Color.fromARGB(255, 245, 245, 245),
                          icon: SimpleLineIcons.home,
                          title: 'Home',
                          active: false,
                          onPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                        ),
                        NavigationBarLeftWithStar(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: AntDesign.codesquareo,
                            title: 'Sheets'),
                        NavigationBarLeftWithStar(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: Feather.file,
                            title: 'Files'),
                        NavigationBarLeft(
                          color: Colors.white,
                          icon: AntDesign.checkcircleo,
                          title: 'Issues',
                          active: true,
                          onPress: () {},
                        ),
                        NavigationBarLeft(
                          color: Color.fromARGB(255, 245, 245, 245),
                          icon: Foundation.clipboard_notes,
                          title: 'Forms',
                          active: false,
                          onPress: () {},
                        ),
                        NavigationBarLeft(
                          color: Color.fromARGB(255, 245, 245, 245),
                          icon: Ionicons.images_outline,
                          title: 'Photos',
                          active: false,
                          onPress: () {},
                        ),
                        NavigationBarLeft(
                          color: Color.fromARGB(255, 245, 245, 245),
                          icon: MaterialCommunityIcons.message_alert_outline,
                          title: 'RFIs',
                          active: false,
                          onPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Rfis()));
                          },
                        ),
                        NavigationBarLeft(
                          color: Color.fromARGB(255, 245, 245, 245),
                          icon: MaterialCommunityIcons.stamper,
                          title: 'Submittals',
                          active: false,
                          onPress: () {},
                        ),
                        NavigationBarLeft(
                          color: Color.fromARGB(255, 245, 245, 245),
                          icon: MaterialCommunityIcons.account_group_outline,
                          title: 'Meetings',
                          active: false,
                          onPress: () {},
                        ),
                        NavigationBarLeft(
                          color: Color.fromARGB(255, 245, 245, 245),
                          icon: MaterialCommunityIcons.chart_timeline,
                          title: 'Schedule',
                          active: false,
                          onPress: () {},
                        ),
                        NavigationBarLeft(
                          color: Color.fromARGB(255, 245, 245, 245),
                          icon: AntDesign.gift,
                          title: 'Assets',
                          active: false,
                          onPress: () {},
                        ),
                        NavigationBarLeft(
                          color: Color.fromARGB(255, 245, 245, 245),
                          icon: Entypo.text_document,
                          title: 'Reports',
                          active: false,
                          onPress: () {},
                        ),
                        NavigationBarLeft(
                          color: Color.fromARGB(255, 245, 245, 245),
                          icon: MaterialIcons.group,
                          title: 'Members',
                          active: false,
                          onPress: () {},
                        ),
                        NavigationBarLeft(
                          color: Color.fromARGB(255, 245, 245, 245),
                          icon: Ionicons.swap_horizontal_outline,
                          title: 'Bridge',
                          active: false,
                          onPress: () {},
                        ),
                        NavigationBarLeft(
                          color: Color.fromARGB(255, 245, 245, 245),
                          icon: SimpleLineIcons.settings,
                          title: 'Settings',
                          active: false,
                          onPress: () {},
                        ),
                        Divider(
                          height: 1.5,
                          color: Color.fromARGB(255, 153, 151, 151),
                        ),
                        NavigationBarLeft(
                          color: Color.fromARGB(255, 245, 245, 245),
                          icon: MaterialCommunityIcons.arrow_collapse_left,
                          title: '',
                          active: false,
                          onPress: () {},
                        ),
                      ],
                    ),
                  ),
                Expanded(
                    flex: 6,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Issue",
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color.fromARGB(
                                            255, 195, 196, 197))),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Manage your project's issues here",
                                            style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 05),
                                          Column(
                                            children: [
                                              Text(
                                                  "Track and manage all of your project's outstanding issues within Autodesk Build")
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  ElevatedButton(
                                                    child:
                                                        Text('Take the tour'),
                                                    onPressed: () {
                                                      print('Hello');
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      primary: Color.fromARGB(
                                                          255, 8, 162, 149),
                                                      onPrimary: Colors.white,
                                                    ),
                                                  ),
                                                  TextButton(
                                                    child: Text('Learn more'),
                                                    style: TextButton.styleFrom(
                                                      primary: Colors.teal,
                                                    ),
                                                    onPressed: () {
                                                      print('Pressed');
                                                    },
                                                  ),
                                                  TextButton(
                                                    child: Text(
                                                        'Register for course'),
                                                    style: TextButton.styleFrom(
                                                      primary: Colors.teal,
                                                    ),
                                                    onPressed: () {
                                                      print('Pressed');
                                                    },
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Image.asset(
                                        'assets/images/documents.png',
                                        height: 100,
                                        width: 100,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    AntDesign.menuunfold,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Settings',
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    FontAwesome.caret_down,
                                    color: Colors.blue,
                                    size: 12,
                                  ),
                                ],
                              ),
                              Divider(
                                  color: Color.fromARGB(255, 195, 196, 197)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        ElevatedButton.icon(
                                          onPressed: () {
                                            CreateIssue(context).show();
                                          },
                                          icon: Icon(AntDesign.plus),
                                          label: Text("Create Issue"),
                                          style: ElevatedButton.styleFrom(
                                            primary: Color.fromARGB(
                                                255, 33, 150, 253),
                                            onPrimary: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 2),
                                        ElevatedButton.icon(
                                          onPressed: () {},
                                          icon: Icon(AntDesign.down),
                                          label: Text(""),
                                          style: ElevatedButton.styleFrom(
                                            primary: Color.fromARGB(
                                                255, 33, 150, 253),
                                            onPrimary: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // hjadfgjdhjfhsgh
                                  ///hjgfgsdhfg
                                  ///hjdgfgsdhf
                                  SizedBox(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton.icon(
                                        onPressed: () {},
                                        icon: Icon(AntDesign.export),
                                        label: Text("Export All"),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          onPrimary: Color.fromARGB(
                                              255, 166, 167, 168),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      ElevatedButton.icon(
                                        onPressed: () {},
                                        icon: Icon(AntDesign.search1),
                                        label:
                                            Text("Search by issue title or id"),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          onPrimary: Color.fromARGB(
                                              255, 166, 167, 168),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      ElevatedButton.icon(
                                        onPressed: () {},
                                        icon: Icon(AntDesign.filter),
                                        label: Text(""),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          onPrimary: Color.fromARGB(
                                              255, 166, 167, 168),
                                        ),
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                              Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Image.asset(
                                      'assets/images/folder.png',
                                      height: 200,
                                      width: 200,
                                    ),
                                    Center(
                                      child: Text(
                                        "There are no issues on this project",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                          "All issues created for this project will appear here.Create new issues from this page or directly from a sheet or model"),
                                    ),
                                  ]),
                            ]),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
