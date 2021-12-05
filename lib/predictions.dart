import 'package:flutter/material.dart';
import 'package:greentech/drawer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Predictions extends StatefulWidget {
  const Predictions({Key? key}) : super(key: key);

  @override
  State<Predictions> createState() => _PredictionsState();
}

class _PredictionsState extends State<Predictions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          elevation: 0.5,
        ),
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xFFf4791f),
                    Color(0xFFFBD786),
                  ],
                  begin: FractionalOffset(0.0, 1.0),
                  end: FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Sousou,",
                              style: TextStyle(fontSize: 50.0),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Bikech",
                              style: TextStyle(fontSize: 70.0),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    "These are your weekly consumption",
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: MediaQuery.of(context).size.width,
                      child: SfCartesianChart(
                          primaryXAxis: CategoryAxis(),
                          title: ChartTitle(
                              text: 'Half yearly food consumption analysis',
                              textStyle: const TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold)),
                          legend: Legend(
                            isVisible: true,
                            position: LegendPosition.bottom,
                          ),
                          series: <LineSeries<ConsumptionData, String>>[
                            LineSeries<ConsumptionData, String>(
                              name: "Tomato",
                              dataSource: <ConsumptionData>[
                                ConsumptionData('Jan', 100),
                                ConsumptionData('Feb', 98),
                                ConsumptionData('Mar', 87),
                                ConsumptionData('Apr', 90),
                                ConsumptionData('May', 96)
                              ],
                              xValueMapper: (ConsumptionData consumption, _) =>
                                  consumption.year,
                              yValueMapper: (ConsumptionData consumption, _) =>
                                  consumption.consumption,
                            ),
                            LineSeries<ConsumptionData, String>(
                              name: "Potato",
                              dataSource: <ConsumptionData>[
                                ConsumptionData('Jan', 110),
                                ConsumptionData('Feb', 113),
                                ConsumptionData('Mar', 109),
                                ConsumptionData('Apr', 96),
                                ConsumptionData('May', 99)
                              ],
                              xValueMapper: (ConsumptionData consumption, _) =>
                                  consumption.year,
                              yValueMapper: (ConsumptionData consumption, _) =>
                                  consumption.consumption,
                            ),
                            LineSeries<ConsumptionData, String>(
                              name: "Bread",
                              dataSource: <ConsumptionData>[
                                ConsumptionData('Jan', 105),
                                ConsumptionData('Feb', 100),
                                ConsumptionData('Mar', 105),
                                ConsumptionData('Apr', 130),
                                ConsumptionData('May', 123)
                              ],
                              xValueMapper: (ConsumptionData consumption, _) =>
                                  consumption.year,
                              yValueMapper: (ConsumptionData consumption, _) =>
                                  consumption.consumption,
                            ),
                          ])),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Center(
                      child: Column(children: <Widget>[
                    const Text(
                      "What you should buy less",
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: Table(
                        //defaultColumnWidth: const FixedColumnWidth(120.0),
                        border: TableBorder.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2),
                        children: [
                          TableRow(children: [
                            Column(children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Product',
                                    style: TextStyle(fontSize: 20.0)),
                              )
                            ]),
                            Column(children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Quantity',
                                    style: TextStyle(fontSize: 20.0)),
                              )
                            ]),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(children: const [Text('Potato')]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  children: const [Text('Less with 9%')]),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(children: const [Text('Bread')]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  children: const [Text('Less with 7%')]),
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ])),
                  Center(
                      child: Column(children: <Widget>[
                    const Text(
                      "What you should buy more",
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: Table(
                        //defaultColumnWidth: const FixedColumnWidth(120.0),
                        border: TableBorder.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2),
                        children: [
                          TableRow(children: [
                            Column(children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Product',
                                    style: TextStyle(fontSize: 20.0)),
                              )
                            ]),
                            Column(children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Quantity',
                                    style: TextStyle(fontSize: 20.0)),
                              )
                            ]),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(children: const [Text('Tomato')]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  children: const [Text('More with 3%')]),
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ])),
                ],
              ),
            ),
          ),
        ));
  }
}

class ConsumptionData {
  ConsumptionData(this.year, this.consumption);
  final String year;
  final double consumption;
}
