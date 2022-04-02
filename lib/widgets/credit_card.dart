import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

class CustomCreditCard extends StatelessWidget {
  const CustomCreditCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreditCardWidget(
                  cardNumber: '1234 5678 9101',
                  expiryDate: '07/24',
                  cardHolderName: 'Adil C',
                  cvvCode: '007',
                  showBackView: false,
                  onCreditCardWidgetChange: (CreditCardBrand) {},
              );
  }
}