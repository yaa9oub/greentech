import 'package:flutter/material.dart';
import 'package:greentech/product.dart';

class PurchasedProduct extends StatefulWidget {
  const PurchasedProduct({Key? key}) : super(key: key);

  @override
  _PurchasedProductState createState() => _PurchasedProductState();
}

class _PurchasedProductState extends State<PurchasedProduct> {
  final nameCtl = TextEditingController();
  final qteCtl = TextEditingController();
  final priceCtl = TextEditingController();
  List<Product> productPurchasedList = [
    Product(name: "Tomato", price: "1500", qte: "20")
  ];

  addProduct(String name, String price, String qte) {
    if (name.isNotEmpty && price.isNotEmpty && qte.isNotEmpty) {
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
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height,
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
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: TextField(
                            controller: qteCtl,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(hintText: "Quantity"),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: TextField(
                            controller: priceCtl,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(hintText: "Price"),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              addProduct(
                                  nameCtl.text, priceCtl.text, qteCtl.text);
                              setState(() {});
                            },
                            child: const Text("Add"))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
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
                          height: MediaQuery.of(context).size.height * 0.15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                          "Price ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(productPurchasedList[index].price),
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
                                        priceCtl.text =
                                            productPurchasedList[index].price;
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
