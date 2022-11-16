import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../constants.dart';

Row tapBar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      if (isDesktop(context))
        Container(
          child: Row(
            children: [
              Container(
                color: Color.fromARGB(255, 204, 228, 246),
                child: Icon(
                  Ionicons.hammer_outline,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Build',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                AntDesign.caretdown,
                color: Colors.black,
                size: 8,
              ),
            ],
          ),
        ),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Fontisto.bell,
              color: Color.fromARGB(255, 88, 90, 94),
            ),
            SizedBox(
              width: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Sample Project - Seaport Civic Center',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Fontisto.earth,
                size: 12,
              ),
            ),
            Icon(
              FontAwesome.caret_down,
              size: 12,
            ),
            Icon(
              Icons.stars,
              color: Color(0xFF50D2C1),
              size: 20,
            ),
          ],
        ),
      ),
      Container(
        child: Text('21 days remaining on 2 of your trials'),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.blue,
            child: Text("View buying options "),
          ),
          Icon(
            FontAwesome.question_circle,
            size: 18,
            color: Colors.grey,
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text('Techzo Unity'),
          ),
          Icon(
            FontAwesome.caret_down,
            size: 12,
          ),
        ],
      ),
    ],
  );
}
