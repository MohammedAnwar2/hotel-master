import 'package:flutter/material.dart';

class EvaluationScreen extends StatefulWidget {
  const EvaluationScreen({super.key});

  @override
  State<EvaluationScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<EvaluationScreen> {
  bool stats1 = false;
  bool stats2 = false;
  bool stats3 = false;
  String? six;
  double _sliderValue = 0.0;

  GlobalKey<FormState> formState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.home,
          color: Colors.purple,
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              //textDirection: righ,
              children: [
                Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.purple,
                  child: Column(children: [
                    Image.asset(
                      "assets/a1.png",
                    ),
                  ]),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    "بيتك علينا وين ما رحت",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 30),
                    textAlign: TextAlign.end,
                  )),
                  color: Colors.purple,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "ما مدى نسبة رضاك بالسكن",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w400,
                        fontSize: 25),
                    textAlign: TextAlign.end,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.all(10),
                  child: Slider(
                    label: _sliderValue.toString(),
                    value: _sliderValue,
                    onChanged: (double value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                    min: 0,
                    max: 100,
                    divisions: 10,
                    thumbColor: Colors.purple,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "ما الشي الغير مناسب",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w400,
                        fontSize: 25),
                    textAlign: TextAlign.end,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CheckboxListTile(
                          title: Text("الموقع"),
                          value: stats1,
                          onChanged: (val) {
                            setState(() {
                              stats1 = val!;
                            });
                          }),
                      CheckboxListTile(
                          title: Text("اثاث البيت"),
                          value: stats2,
                          onChanged: (val) {
                            setState(() {
                              stats2 = val!;
                            });
                          }),
                      CheckboxListTile(
                          title: Text("الطقس"),
                          value: stats3,
                          onChanged: (val) {
                            setState(() {
                              stats3 = val!;
                            });
                          }),
                    ],
                  ),
                )
              ]),
          MaterialButton(
            textColor: Colors.white,
            // onPressed: (){},
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context, '/', (route) => false, // Remove all routes
              );
              print("تم");
            },
            color: Colors.purple,
            child: Text("ارسال"),
            minWidth: 10,
          ),
        ],
      ),
    );
  }
}
