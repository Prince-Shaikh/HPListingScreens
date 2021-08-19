import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);
  static List<String> data = [
    "Listing started on 14 July 2021",
    "Listing started on 13 July 2021",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // color: Colors.teal,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff98255b),
                Color(0xff9d2c89),
                Color(0xff852b9b),
                Color(0xff852b9b),
                Color(0xff762aa7),
              ],
            )),
            height: size.height * 0.45,
            width: size.width,
            padding: EdgeInsets.only(left: 30, bottom: 50, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back, Jhon",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 30),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.4),
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            // color: Colors.blue,
            padding:
                EdgeInsets.only(top: size.height * 0.05, left: 30, right: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Finsih your listing",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: ListView(children: [
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: data.length,
                      itemBuilder: (context, item) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1, color: Color(0xffBDBDBD))),
                          margin: EdgeInsets.only(bottom: 15),
                          child: ListTile(
                              minVerticalPadding: 25,
                              selectedTileColor: Colors.red,
                              leading: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(8)),
                                  padding: EdgeInsets.all(5),
                                  child: Icon(Icons.home_filled)),
                              title: Center(
                                  child: Text(
                                data[item],
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              )),
                              trailing: Icon(Icons.arrow_forward_ios)),
                        );
                      }),
                  BottomStaticButtons()
                ]),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

class BottomStaticButtons extends StatelessWidget {
  const BottomStaticButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Start a new listing",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Color(0xffBDBDBD))),
          margin: EdgeInsets.only(bottom: 15),
          child: ListTile(
              minVerticalPadding: 20,
              selectedTileColor: Colors.red,
              leading: Icon(Icons.add),
              title: Text(
                "Creeate a new listing",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios)),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Color(0xffBDBDBD))),
          margin: EdgeInsets.only(bottom: 15),
          child: ListTile(
              minVerticalPadding: 20,
              selectedTileColor: Colors.red,
              leading: Icon(Icons.control_point_duplicate),
              title: Text(
                "Duplicate an exisisting listing",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios)),
        ),
      ],
    );
  }
}
