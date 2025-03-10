import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/pages/delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  //user tapped pay
  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      //payment logic
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Confirm Payment"),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Text("Card Number: $cardNumber"),
                      Text("Expiry Date: $expiryDate"),
                      Text("Card Holder Name: $cardHolderName"),
                      Text("CVV Code: $cvvCode"),
                    ],
                  ),
                ),
                actions: [
                  //cancel button
                  MyButton(
                    onTap: () => Navigator.pop(context),
                    text: "Cancel",
                  ),

                  //yes button
                  MyButton(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DeliveryProgressPage(),
                        ),
                      );
                      Navigator.pop(context);
                    },
                    text: "Yes",
                  ),
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        title: const Text('Checkout'),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          //credit card
          CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
            onCreditCardWidgetChange: ((p0) {}),
          ),

          //credit card form
          CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (data) {
              setState(() {
                cardNumber = data.cardNumber;
                expiryDate = data.expiryDate;
                cardHolderName = data.cardHolderName;
                cvvCode = data.cvvCode;
                isCvvFocused = data.isCvvFocused;
              });
            },
            formKey: formKey,
          ),
          const Spacer(),

          //pay button
          MyButton(
            onTap: userTappedPay,
            text: "Pay Now",
          ),

          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
