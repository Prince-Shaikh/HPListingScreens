import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  const Screen6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(width: 1, color: Color(0xffBDBDBD)),
          )),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, bottom: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Back",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ))
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
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
            height: size.height * 0.65,
            width: size.width,
            padding: EdgeInsets.only(left: 30, bottom: 50, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height*0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        elevation: 0,
                        minWidth: 0,
                        onPressed: () {},
                        color: Colors.grey[300]!.withOpacity(0.3),
                        textColor: Colors.white,
                        child: Icon(
                          Icons.close,
                          size: 20,
                        ),
                        padding: EdgeInsets.all(10),
                        shape: CircleBorder(),
                      ),
                      MaterialButton(
                        elevation: 0,
                        onPressed: () {},
                        color: Colors.grey[300]!.withOpacity(0.3),
                        textColor: Colors.white,
                        child: Text("Help"),
                        shape: RoundedRectangleBorder(),
                        padding: EdgeInsets.all(2),
                      ),
                    ],
                  ),
                ),
                Text(
                  "What type of space will guest have?",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 30),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.62),
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            // color: Colors.blue,
            padding:
                EdgeInsets.only(top: size.height * 0.05, left: 30, right: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OptionsTile(text: "A private room"),
                  OptionsTile(text: "A shared room")
                ]),
          )
        ],
      ),
    );
  }
}

class OptionsTile extends StatelessWidget {
  final String text;
  const OptionsTile({Key? key, this.text = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Color(0xffBDBDBD))),
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        minVerticalPadding: 25,
        title: Text(
          this.text,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
