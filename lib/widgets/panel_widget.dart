import 'package:ewire_test/widgets/credit_card.dart';
import 'package:ewire_test/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;

  const PanelWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //padding: EdgeInsets.zero,
      //controller: controller,
      children: <Widget>[
        buildDragHandle(),
        CustomCreditCard(),
        TransactionList(),
      ],
    );
  }

  buildDragHandle() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Center(
          child: Container(
        width: 30,
        height: 5,
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(12)),
      )),
    );
  }
}
