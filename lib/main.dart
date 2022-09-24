import 'package:flutter/material.dart';
import 'calculate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

int height = 0;
int weight = 0;
int age = 0;
bool male = true;
bool female = false;
double bmi = 0;
var color = Colors.grey.shade500;
var color2 = Colors.grey.shade800;
var color3 = Colors.blueGrey;


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text('BMI CALCULATOR'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            height: MediaQuery.of(context).size.height/4.5,
                            width: MediaQuery.of(context).size.width/2.5,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Icon(Icons.male, size: 90,),
                                  Text('MALE',textAlign: TextAlign.start, style: TextStyle(
                                      fontSize: 18
                                  ),
                                  ),
                                ]
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: male?color : color2,
                            ),
                          ),
                          onTap: (){
                            setState((){
                              male = true;
                              female = false;
                            });
                          },
                        ),
                        InkWell(
                          child: Container(
                            height: MediaQuery.of(context).size.height/4.5,
                            width: MediaQuery.of(context).size.width/2.5,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Icon(Icons.female, size: 90,),
                                  Text('FEMALE',textAlign: TextAlign.start, style: TextStyle(
                                      fontSize: 18
                                  ),
                                  ),
                                ]
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: female?color:color2
                            ),
                          ),
                          onTap: (){
                            setState((){
                              female = true;
                              male = false;
                            });
                          },
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height/4.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: color2
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE(IN YEARS)', style: TextStyle(
                            fontSize: 18,
                          ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children:  [
                              Text('$age',style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w800,
                              ),
                              ),
                              Text('YRS', style: TextStyle(
                                fontSize: 18,
                              ),
                              ),
                            ],
                          ),
                          Slider(
                            activeColor: Colors.white,
                            thumbColor: Colors.pinkAccent.shade700,
                            inactiveColor: Colors.grey,
                            min: 0,
                            max: 150,
                            value: age.toDouble(),
                            onChanged: (double newage){
                              setState((){
                                age = newage.round();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: color2,
                          ),
                          height: MediaQuery.of(context).size.height/4,
                          width: MediaQuery.of(context).size.width/2.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('WEIGHT(IN KG)', style: TextStyle(
                                fontSize: 18,
                              ),
                              ),
                              Text('$weight', style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w800
                              ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: color3
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        size: 40,
                                      ),
                                    ),
                                    onTap: (){
                                      setState((){
                                        weight++;
                                        bmi = double.parse((weight/(height * height)).toStringAsFixed(2));
                                      });
                                    },
                                  ),
                                  InkWell(
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: color3
                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        size: 40,
                                      ),
                                    ),
                                    onTap: (){
                                      setState((){
                                        weight > 0 ? weight-- : Null;
                                        bmi = double.parse((weight/(height * height)).toStringAsFixed(2));
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: color2,
                          ),
                          height: MediaQuery.of(context).size.height/4,
                          width: MediaQuery.of(context).size.width/2.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('HEIGHT(IN CM)', style: TextStyle(
                                fontSize: 18,
                              ),
                              ),
                              Text('$height', style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w800
                              ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: color3
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        size: 40,
                                      ),
                                    ),
                                    onTap: (){
                                      setState((){
                                        height++;
                                        bmi = double.parse((weight/(height * height)).toStringAsFixed(2));
                                      });
                                    },
                                  ),
                                  InkWell(
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: color3
                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        size: 40,
                                      ),
                                    ),
                                    onTap: (){
                                      setState((){
                                        height > 0 ? height-- : Null;
                                        bmi = double.parse((weight/(height * height)).toStringAsFixed(2));
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  InkWell(
                    child: Container(
                      height: MediaQuery.of(context).size.height/10.5,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.redAccent,
                      child: Center(child: Text('CALCULATE',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w800
                        ),
                      ),
                      ),
                    ),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => calculate(
                              height, weight, bmi, color2
                          ),
                          ),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


