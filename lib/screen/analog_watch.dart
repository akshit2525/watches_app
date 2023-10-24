import 'package:flutter/material.dart';

class Analogwatch extends StatefulWidget {
  const Analogwatch({super.key});

  @override
  State<Analogwatch> createState() => _AnalogwatchState();
}

class _AnalogwatchState extends State<Analogwatch> {
  int hour = 0, minute = 0, second = 0, date=0, month=0, year=0;

  @override

  void initState() {
    super.initState();
    gettime();
  }

  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.85,
                width: MediaQuery.of(context).size.width * 0.85,
                child: CircularProgressIndicator(
                  value: hour / 12,
                  strokeWidth: 10,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.75,
                width: MediaQuery.of(context).size.width * 0.75,
                child: CircularProgressIndicator(
                  value: minute / 60,
                  strokeWidth: 10,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.65,
                width: MediaQuery.of(context).size.width * 0.65,
                child: CircularProgressIndicator(
                  value: second / 60,
                  strokeWidth: 10,
                  color: Colors.green,
                ),
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.width * 0.55,
              //   width: MediaQuery.of(context).size.width * 0.55,
              //   child: CircularProgressIndicator(
              //
              //     value: second / 60,
              //     strokeWidth: 5,
              //     color: Colors.,
              //   ),
              // ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.width * 0.54,
              //   width: MediaQuery.of(context).size.width * 0.54,
              //   child: CircularProgressIndicator(
              //     value: minutes / 60,
              //     strokeWidth: 5,
              //     color: Colors.white,
              //   ),
              // ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Saturday',
                      style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$date - $month - $year',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$hour : $minute : $second',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'PM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 50,),
                            Text(
                              '33',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void gettime() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        hour = DateTime.now().hour;
        minute = DateTime.now().minute;
        second = DateTime.now().second;
        date = DateTime.now().day;
        month = DateTime.now().month;
        year = DateTime.now().year;

        if (hour > 12) {
          hour = hour - 12;
        }
      });
      gettime();
    });
  }
}








