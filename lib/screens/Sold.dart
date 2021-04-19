import 'package:admin_layout/constants.dart';
import 'package:flutter/material.dart';
import 'package:admin_layout/models/Bill.dart';

class Sold extends StatelessWidget {
  const Sold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sold'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: bills.length,
          itemBuilder: (context, index) => SoldCard(
            size: size,
            bill: bills[index],
          ),
        ),
      ),
    );
  }
}

class SoldCard extends StatelessWidget {
  final Size size;
  final Bill bill;

  const SoldCard({Key key, this.size, this.bill}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding / 2),
        height: size.height * 0.1,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                bill.product.name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              Text(
                bill.product.price.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
