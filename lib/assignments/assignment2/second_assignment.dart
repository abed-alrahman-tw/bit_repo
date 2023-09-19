import 'package:bti_training2/assignments/assignment2/data/data.dart';
import 'package:bti_training2/assignments/assignment2/screens/cart_screen.dart';
import 'package:bti_training2/assignments/assignment2/screens/fragments/products_fragment.dart';
import 'package:bti_training2/assignments/assignment2/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class SecondAssignment extends StatefulWidget {
  const SecondAssignment({super.key});

  @override
  State<SecondAssignment> createState() => _SecondAssignmentState();
}

class _SecondAssignmentState extends State<SecondAssignment> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Main"),
          backgroundColor: Colors.red.shade700,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreen()));
              },
              icon: const Icon(Icons.shopping_cart),
              splashRadius: 20,
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
                "https://images.crunchbase.com/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/gkklwfovmqbetq7tmqhv"),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                textAlign: TextAlign.start,
              ),
            ),
            TabBar(indicatorColor: Colors.red.shade700, isScrollable: true, tabs: [
              ...categories
                  .map<Tab>((e) => Tab(
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: CategoryWidget(category: e),
                        ),
                      ))
                  .toList()
            ]),
            // TabBarView(children: categories.map((e) => ))

            SizedBox(
                height: MediaQuery.sizeOf(context).height / 2 - 20,
                child: TabBarView(
                    children: categories
                        .map((e) => ProductsFragment(
                              products: e.products,
                              function: () {
                                setState(() {});
                              },
                            ))
                        .toList(growable: false)))
          ],
        ),
      ),
    );
  }
}
