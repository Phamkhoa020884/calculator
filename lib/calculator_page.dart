import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {


  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController nuberOneController= TextEditingController();
  double? result ;

  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Máy tính bỏ túi",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: width/20,
                  fontWeight: FontWeight.bold
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Input nuber 1",
                  border: OutlineInputBorder()
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Input nuber 2",
                    border: OutlineInputBorder()
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            showResult(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: (){

                          },
                          child: Text(" + ")
                      ),
                      ElevatedButton(
                          onPressed: (){

                          },
                          child: Text(" - ")
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: (){

                          },
                          child: Text(" * ")
                      ),
                      ElevatedButton(
                          onPressed: (){

                          },
                          child: Text(" / ")
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget showResult(){
    if (result != null){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("=10"),
      );
    }else{
      return Container();
    }
  }
}
