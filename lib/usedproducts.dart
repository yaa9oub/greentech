import 'package:flutter/material.dart';
import 'package:greentech/product.dart';

class UsedProduct extends StatefulWidget {
  const UsedProduct({Key? key}) : super(key: key);

  @override
  _UsedProductState createState() => _UsedProductState();
}

class _UsedProductState extends State<UsedProduct> {
  final nameCtl = TextEditingController();
  final qteCtl = TextEditingController();
  List<Product> productPurchasedList = [
    Product(name: "Tomato", price: "1500", qte: "12")
  ];

  addProduct(String name, String price, String qte) {
    if (name.isNotEmpty && qte.isNotEmpty) {
      Product product = Product(name: name, price: price, qte: qte);
      productPurchasedList.add(product);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/bg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Column(
                  children: [
                    TextField(
                      controller: nameCtl,
                      keyboardType: TextInputType.name,
                      decoration:
                          const InputDecoration(hintText: "Product name"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: TextField(
                            controller: qteCtl,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(hintText: "Quantity"),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              addProduct(nameCtl.text, "", qteCtl.text);
                              setState(() {});
                            },
                            child: const Text("Add"))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.70,
                child: ListView.builder(
                    itemCount: productPurchasedList.length,
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
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(15.0),
                          width: 100,
                          height: MediaQuery.of(context).size.height * 0.12,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.40,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Product ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(productPurchasedList[index].name),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.40,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Quantity ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(productPurchasedList[index].qte),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        productPurchasedList.removeAt(index);
                                        setState(() {});
                                      },
                                      child: const Icon(Icons.delete)),
                                  InkWell(
                                      onTap: () {
                                        nameCtl.text =
                                            productPurchasedList[index].name;
                                        qteCtl.text =
                                            productPurchasedList[index].qte;

                                        productPurchasedList.removeAt(index);
                                        setState(() {});
                                      },
                                      child: const Icon(Icons.update)),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
