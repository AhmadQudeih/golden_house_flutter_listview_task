import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                SizedBox(height: 50),
                ListTile(
                  title: Text('الرئيسية'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  title: Text('الملف الشخصي'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  title: Text('من نحن'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  title: Text('شروط الاستخدام والخصوصية'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  title: Text('تواصل معنا'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        appBar: AppBar(
          // leading: Icon(Icons.arrow_back),
          elevation: 0,
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 42, vertical: 35),
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(38), topRight: Radius.circular(38)),
            ),
            child: ListView(children: [
              Text('data'),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                      // height: 147,
                      child: Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.s,
                            children: [
                              Text('اسم المتجر'),
                              Spacer(),
                              Text('مثال اسم المتجر'),
                            ],
                          ),
                          Divider(
                            height: 40,
                            // color: Colors.red,
                            // thickness: 10,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.s,
                            children: [
                              Text('اسم الحلاق'),
                              Spacer(),
                              Text('مثال اسم الحلاق'),
                            ],
                          ),
                          Divider(
                            height: 40,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.s,
                            children: [
                              Text('تاريخ و وقت الحجز'),
                              Spacer(),
                              Text('13 Nov - 4:30 pm'),
                            ],
                          ),
                          Divider(
                            height: 40,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.s,
                            children: [
                              Text('السعر'),
                              Spacer(),
                              Text('120 د.ع'),
                            ],
                          ),
                        ],
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                // offset
                                offset: Offset(0, 10),
                                color: Colors.black.withOpacity(.12),
                                blurRadius: 20,
                                spreadRadius: 0)
                          ]));
                },
                separatorBuilder: (BuildContext context, index) {
                  return SizedBox(
                    height: 20,
                  );
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
