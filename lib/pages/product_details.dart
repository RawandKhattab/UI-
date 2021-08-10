import 'dart:ui';

import 'package:flutter/material.dart';

class productsDetails extends StatefulWidget {
  final productsDetails_name;
  final productsDetails_new_price;
  final productsDetails_old_price;
  final productsDetails_picture;

  const productsDetails(
      {Key key,
      this.productsDetails_name,
      this.productsDetails_new_price,
      this.productsDetails_old_price,
      this.productsDetails_picture})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _productsDetails();
  }
}

class _productsDetails extends State<productsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("Fashion"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, color: Colors.white),
          )
        ],
      ),
      body: ListView(children: [
        Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productsDetails_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.productsDetails_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "\$${widget.productsDetails_old_price}",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.productsDetails_new_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
        Row(
          children: [
            Expanded(
                child: MaterialButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("size"),
                        content: Text("choose the size"),
                        actions: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: Text("close"),
                          )
                        ],
                      );
                    });
              },
              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.2,
              child: Row(
                children: [
                  Expanded(
                    child: Text("size"),
                  ),
                  Expanded(
                    child: Icon(Icons.arrow_drop_down),
                  ),
                ],
              ),
            )),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("colors"),
                          content: Text("choose the color"),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                      child: Text("color"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Quantity"),
                                  content: Text("choose the Qty"),
                                  actions: [
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(context);
                                      },
                                      child: Text("close"),
                                    )
                                  ],
                                );
                              });
                        },
                        color: Colors.white,
                        textColor: Colors.grey,
                        elevation: 0.2,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text("Qty"),
                            ),
                            Expanded(
                              child: Icon(Icons.arrow_drop_down),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: MaterialButton(
              onPressed: () {},
              color: Colors.red,
              textColor: Colors.white,
              elevation: 0.5,
              child: Text("Buy now"),
            )),
            IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
          ],
        ),
        Divider(),
        ListTile(
          title: Text("Company details"),
          subtitle: Text(
              "Fendi is an Italian luxury fashion house known for its designer luxury handbags. Started in 1925 with a fur and leather store in Rome, it is now a global luxury goods brand owned by the Louis Vuitton Group."),
        ),
        Divider(),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
              child: Text(
                "Product name",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(widget.productsDetails_name),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
              child: Text(
                "Product brand",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("FENDI"),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
              child: Text(
                "Product condition",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("New"),
            ),
          ],
        )
      ]),
    );
  }
}
