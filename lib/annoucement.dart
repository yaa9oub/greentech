import 'package:flutter/material.dart';
import 'package:greentech/annouce.dart';
import 'package:greentech/drawer.dart';

// ignore: must_be_immutable
class Annoucement extends StatelessWidget {
  Annoucement({Key? key}) : super(key: key);

  List<Annouce> annouceList = [
    Annouce(
        username: "Resto Sami",
        foodtype: "L7am",
        location: "Taffela City ",
        phone: "99101001",
        quantity: "5kg"),
    Annouce(
        username: "Resto Lella elbeya",
        foodtype: "khobz tebboun",
        location: "Taffela City ",
        phone: "99101111",
        quantity: "20 ka3ba"),
    Annouce(
        username: "Hotel elksar",
        foodtype: "1000 feuilles",
        location: "Khzama",
        phone: "99101011",
        quantity: "2000"),
    Annouce(
        username: "3am Naceur",
        foodtype: "ma9rouna",
        location: "Taffela City ",
        phone: "99111111",
        quantity: "10kg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text("Announcement"),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount: annouceList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(15.0),
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Doner ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(annouceList[index].username),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Location ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(annouceList[index].location),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Phone ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(annouceList[index].phone),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Food Type ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(annouceList[index].foodtype),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Quantity ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(annouceList[index].quantity),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
