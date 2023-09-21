import 'package:flutter/material.dart';
import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List <Icon> icn=[];
  List <String> txt=['what is your name','what is your age','what is your qualification'];
  int quz=0;
  List <bool> ans=[true,false,true];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin:
                    EdgeInsets.only(left: 10, top: 300, right: 10, bottom: 300),
                child: Center(
                    child: Text(
                      txt[quz],
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (ans[quz]==true){
                          icn.add(Icon(Icons.check,color: Colors.green,),);
                        }
                        else {
                          icn.add(Icon(Icons.close,color: Colors.red,),);

                        }
                        if(quz==2){
                          quz=0;
                        }
                        else {
                          quz++;
                        }
                     });
                    },
                    child: Text(
                      'TRUE',
                      style: btn,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (ans[quz]==false){
                          icn.add(Icon(Icons.close,color: Colors.red,),);
                        }
                        else {
                          icn.add(Icon(Icons.check,color: Colors.green,),);
                        }
                        if(quz==2){
                          quz=0;
                        }
                        else {
                          quz++;
                        }

                      });
                    },
                    child: Text(
                      'FALSE',
                      style: btn,
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                  ),
                ),
              ),Row(children:
                icn
              ,)
            ],
          ),
        ),
      ),
    );
  }
}
// gayugs