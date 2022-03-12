import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {


  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController nuberOneController= TextEditingController();
  final TextEditingController nuberTwoController= TextEditingController();
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
                controller: nuberOneController,
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
                controller: nuberTwoController,
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
                            String number1= nuberOneController.text.toString();
                            String number2= nuberTwoController.text.toString();
                            if (number1.isEmpty||number2.isEmpty){
                              ScaffoldMessenger
                                  .of(context)
                                  .showSnackBar(
                                      SnackBar(content: Text("Empty value"))
                              );
                            }
                            setState(() {
                              result = (int.parse(number1) + int.parse(number2)).toDouble();
                            });


                          },
                          child: Text(" + ")
                      ),
                      ElevatedButton(
                          onPressed: (){
                            String number1= nuberOneController.text.toString();
                            String number2= nuberTwoController.text.toString();
                            if (number1.isEmpty||number2.isEmpty){
                              ScaffoldMessenger
                                  .of(context)
                                  .showSnackBar(
                                  SnackBar(content: Text("Empty value"))
                              );
                            }
                            setState(() {
                              result = (int.parse(number1) - int.parse(number2)).toDouble();
                            });

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
        child: Center(child: Text("=$result")),
      );
    }else{
      return Container();
    }
  }
}
