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
import '../issues/issue.dart';
import '../widgets/top_bar.dart';
import 'rfis_form.dart';

class Rfis extends StatefulWidget {
  Rfis({Key? key}) : super(key: key);

  @override
  State<Rfis> createState() => _RfisState();
}

class _RfisState extends State<Rfis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                          color: Color.fromARGB(255, 245, 245, 245),
                          icon: AntDesign.checkcircleo,
                          title: 'Issues',
                          active: false,
                          onPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Issue()));
                          },
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
                          color: Colors.white,
                          icon: MaterialCommunityIcons.message_alert_outline,
                          title: 'RFIs',
                          active: true,
                          onPress: () {},
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "RFIs",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
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
                            Divider(color: Color.fromARGB(255, 195, 196, 197)),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    SizedBox(height: 45),
                                    Image.asset(
                                      'assets/images/rfis.png',
                                      height: 200,
                                      width: 200,
                                    ),
                                    Center(
                                      child: Text(
                                        "No RFIs to display",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                          ''' you don't have any RFIs assigned '''),
                                    ),
                                    Center(
                                        child: Text("or visible to you yet.")),
                                    TextButton(
                                        child: Text('Create RFI'),
                                        style: TextButton.styleFrom(
                                          primary: Colors.blue,
                                        ),
                                        onPressed: () {
                                          CreateRFI(context).show();
                                        })
                                  ]),
                            ),
                          ]),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
