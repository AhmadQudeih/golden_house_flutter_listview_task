// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const Second());
}

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff0092ca),
        appBar: AppBar(
          backgroundColor: Color(0xff0092ca),
          leading: Icon(Icons.arrow_back),
          elevation: 0,
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 39),
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(38), topRight: Radius.circular(38)),
            ),
            child: ListView(
              children: [
                Text(
                  'ادارة المتجر',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Myfont',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 49),
                Row(
                  children: [
                    Text(
                      'اضافة حلاق',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Myfont',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 22,
                      width: 22,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.add, size: 15),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xff0092ca)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 38),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.asset(
                                  'assets/images/unsplash_DItYlc26zVI.png'),
                              title: Text(
                                'اسم الحلاق',
                                style: TextStyle(
                                    fontFamily: 'Myfont', fontSize: 13),
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'اوقات التواجد',
                                    style: TextStyle(
                                        fontFamily: 'Myfont',
                                        fontSize: 10,
                                        color: Color(0xff0092ca),
                                        decoration: TextDecoration.underline),
                                  ),
                                  SizedBox(width: 22),
                                  Icon(
                                    Icons.expand_more,
                                    color: Color(0xff0092ca),
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 10),
                                  color: Colors.black.withOpacity(.12),
                                  blurRadius: 20,
                                  spreadRadius: 0)
                            ]));
                  },
                  separatorBuilder: (BuildContext context, index) {
                    return SizedBox(
                      height: 14,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
