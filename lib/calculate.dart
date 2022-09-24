import 'package:bmi/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calculate extends StatefulWidget {
  calculate(int height, int weight, double bmi, var color2, {Key? key}) : super(key: key);
  @override
  State<calculate> createState() => _calculateState();
}
class _calculateState extends State<calculate> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: Text('BMI CALCULATOR'),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text('Your Result', style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22
                      ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height/2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: color2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Your Age is in range: ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),),
                          SizedBox(
                            height: 35,
                          ),
                          Text('HEALTHY WEIGHT', style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600
                          ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('$bmi', style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 80,
                            color: Colors.blue
                          ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    InkWell(
                      child: Container(
                        height: MediaQuery.of(context).size.height/10.5,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.redAccent,
                        ),
                        child: Center(
                          child: Text('RE - CALCULATE',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
            ),

          )
      ),
    );
  }
}




