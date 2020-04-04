import 'package:flutter/material.dart';
import 'package:golubmi/resultPage.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  int age = 20;

  int weight = 50;

  int height = 180;

  void weightPlus(){
    setState(() {
      weight++;
      weight.toDouble();
    });

  }
  void weightMinus(){
    setState(() {
      weight--;
      weight.toDouble();
    });
  }
  void agePlus(){
    setState(() {
      age++;
    });

  }
  void ageMinus(){
    setState(() {
      age--;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("BMI"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Card(
                    color: Color.fromRGBO(28, 40, 51, 0.8),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'images/male.png',
                            height: 150.0,
                            width: 150.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Card(
                    color: Color.fromRGBO(28, 40, 51, 0.8),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'images/female.png',
                            height: 150.0,
                            width: 150.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
             width: MediaQuery.of(context).size.width * 0.45,
              child: Padding(padding: EdgeInsets.all(15.0),
                child: Card(
                    color: Color.fromRGBO(28, 40, 51, 0.8),
                    child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "HEIGHT",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "$height",
                              style: TextStyle(
                                fontSize: 50.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Slider(
                                value: height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                onChanged: (double newheight) {
                                  setState(() {
                                    height = newheight.round();
                                  });
                                })
                          ],
                        ))),
              )
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Card(
                    color: Color.fromRGBO(28, 40, 51, 0.8),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("WEIGHT",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0)),
                          Text("$weight",
                              style: TextStyle(
                                fontSize: 50.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: <Widget>[
                              IconButton(icon: Icon(Icons.add_circle), onPressed: weightPlus, color: Colors.amberAccent, iconSize: 40.0,),
                              IconButton(icon: Icon(Icons.remove_circle), onPressed: weightMinus, color: Colors.amberAccent, iconSize: 40.0,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Card(
                    color: Color.fromRGBO(28, 40, 51, 0.8),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[

                          Text("AGE",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0)),
                          Text("$age",
                              style: TextStyle(
                                fontSize: 50.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: <Widget>[
                              IconButton(icon: Icon(Icons.add_circle), onPressed: agePlus, color: Colors.amberAccent, iconSize: 40.0,),
                              IconButton(icon: Icon(Icons.remove_circle), onPressed: ageMinus, color: Colors.amberAccent, iconSize: 40.0,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(height: height,weight: weight,))),

              child: Container(
                color: Colors.amberAccent,
                margin: EdgeInsets.only(top: 10.0),
                height: MediaQuery.of(context).size.height * 0.1,
                child: Center(
                  child: Text('CALCULATE BMI', style: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold)),
                ),
              ),
            )
          ],
        ));
  }
}

