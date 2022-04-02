import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          //controller: controller,
          itemCount: 20,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.person),
              trailing: Text("Shopping",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 15,
                  )),
              title: Text("List item $index"),
            );
          }),
    );
  }
}
