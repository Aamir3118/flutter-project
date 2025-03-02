import 'package:sign_up_app/private/model/coffeemodelfeatured.dart';
import 'package:flutter/material.dart';

class DetailPage2 extends StatefulWidget {
  final int index;
  DetailPage2({Key key, this.index}) : super(key: key);
  @override
  _DetailPage2State createState() => _DetailPage2State();
}

class _DetailPage2State extends State<DetailPage2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          child: Stack(
            children: <Widget>[
              Container(
                height: height * 0.55,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(menu[widget.index].img),
                  fit: BoxFit.cover,
                )),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.9),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.9),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
              Container(
                width: width,
                margin: EdgeInsets.only(top: height * 0.5),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      menu[widget.index].name,
                      style: TextStyle(
                        fontFamily: "Pacifico",

                        fontSize: 32,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 50,
                      width: width,
                      child: ListView.builder(
                          itemCount: menu[widget.index].rate,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, int key) {
                            return Icon(
                              Icons.star,
                              color: Colors.yellow[900],
                              size: 34,
                            );
                          }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                        fontFamily: "Baloo2",
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      menu[widget.index].desc,
                      style: TextStyle(
                        fontFamily: "Baloo2",

                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        // letterSpacing: 0.5,
                        // wordSpacing: 1.5
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Price",
                              style: TextStyle(
                                fontFamily: "Baloo2",
                                color: Colors.grey[500],
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              menu[widget.index].price.toString(),
                              style: TextStyle(
                                  fontFamily: "Baloo2",
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        // ignore: deprecated_member_use
                        RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.orange[700],
                          padding: EdgeInsets.fromLTRB(35, 15, 35, 15),
                          child: Text(
                            "Add to cart",
                            style: TextStyle(
                                fontFamily: "Baloo2",
                                color: Colors.white,
                                fontSize: 18),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 30,
                top: height * 0.05,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.keyboard_backspace,
                    size: 42,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
