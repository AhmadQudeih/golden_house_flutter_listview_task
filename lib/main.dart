// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 26),
              children: [
                ListTile(
                  leading:
                      Image.asset('assets/images/unsplash_DItYlc26zVI.png'),
                  title: Row(
                    children: [
                      Text(
                        'مرحبا بك',
                        style: TextStyle(fontSize: 20, fontFamily: 'Myfont'),
                      ),
                      Text(
                        ' , أحمد !',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Myfont'),
                      )
                    ],
                  ),
                  subtitle: Text(
                    'الجمعة , 3 أغسطس',
                    style: TextStyle(fontSize: 12, fontFamily: 'Myfont'),
                  ),
                  trailing: Icon(
                    Icons.menu,
                    size: 30,
                    color: Color(0xff0092ca),
                  ),
                ),
                SizedBox(
                  height: 42,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      height: 41,
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff0092ca),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.cut_rounded),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              'ايجاد حلاق',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: 'Myfont'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      height: 41,
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff0092ca),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.access_time_sharp),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              'مواعيدي',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: 'Myfont'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    'اخر الحجوزات',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        fontFamily: 'Myfont'),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),

                  //  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20,
                            color: Color.fromARGB(255, 199, 198, 198))
                      ]),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/unsplash_EW_rqoSdDes.png',
                        fit: BoxFit.cover,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 30),
                                child: Row(
                                  children: [
                                    Icon(Icons.cut,
                                        color: Color(0xff0092ca), size: 15),
                                    SizedBox(width: 10),
                                    Text(
                                      'اسم الحلاق',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          fontFamily: 'Myfont'),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                margin: EdgeInsets.only(left: 50),
                                child: Row(
                                  children: [
                                    Icon(Icons.date_range,
                                        color: Color(0xff0092ca), size: 15),
                                    SizedBox(width: 10),
                                    Text(
                                      '12/10/2023',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          fontFamily: 'Myfont'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30, bottom: 10),
                            child: Row(
                              children: [
                                Icon(Icons.circle,
                                    color: Color(0xff0092ca), size: 15),
                                SizedBox(width: 10),
                                Text(
                                  'اسم الخدمة',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      fontFamily: 'Myfont'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
