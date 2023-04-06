import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';

enum DeliveryAddressEnum { Home, Office }

enum PaymentMethodEnum { Credit, Paypal, Google, Apple }

class checkout extends StatefulWidget {
  const checkout({super.key});

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  DeliveryAddressEnum? _deliveryAddressEnum;

  PaymentMethodEnum? _paymentMethodEnum;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Row(
            children: [
              InkWell(
                  onTap: () => {Navigator.pop(context)},
                  child: Icon(
                    Icons.arrow_back,
                    color: text1,
                  )),
              SizedBox(
                width: 16,
              ),
              Text(
                "Your Cart",
                style: heading2.copyWith(color: text1),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "2 Items in your cart",
                style: paragraph1.copyWith(color: text3),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Total",
                    style: paragraph1.copyWith(color: text1),
                  ),
                  Text(
                    '\$185.00',
                    style: heading3.copyWith(color: text1),
                  )
                ],
              )
            ],
          )
        ],
      );
    }

    Widget deliveryAddress() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Delivery Address",
            style: heading2.copyWith(color: text1),
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.1))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: RadioListTile<DeliveryAddressEnum>(
                      value: DeliveryAddressEnum.Home,
                      contentPadding: EdgeInsets.all(0),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "(205) 555-024",
                            style: paragraph1.copyWith(color: text3),
                          ),
                          Text(
                            "1786 Wheeler Bridge",
                            style: paragraph1.copyWith(color: text3),
                          ),
                        ],
                      ),
                      groupValue: _deliveryAddressEnum,
                      title: Text(DeliveryAddressEnum.Home.name),
                      onChanged: (value) {
                        setState(() {
                          _deliveryAddressEnum = value;
                        });
                      }),
                ),
                Icon(
                  Icons.edit,
                  color: text3,
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.1))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: RadioListTile<DeliveryAddressEnum>(
                      value: DeliveryAddressEnum.Office,
                      contentPadding: EdgeInsets.all(0),
                      groupValue: _deliveryAddressEnum,
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "(205) 555-024",
                            style: paragraph1.copyWith(color: text3),
                          ),
                          Text(
                            "1786 w Dallas St underfield",
                            style: paragraph1.copyWith(color: text3),
                          ),
                        ],
                      ),
                      title: Text(DeliveryAddressEnum.Office.name),
                      onChanged: (value) {
                        setState(() {
                          _deliveryAddressEnum = value;
                        });
                      }),
                ),
                Icon(
                  Icons.edit,
                  color: text3,
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => null,
                child: Row(
                  children: [
                    Icon(Icons.add, color: primary),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Add Address",
                      style: paragraph1.copyWith(color: primary),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      );
    }

    Widget paymentMethods() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Payment Method",
            style: heading2.copyWith(color: text1),
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.1))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: Color.fromRGBO(0, 0, 0, 0.1))),
                              child:
                                  Image.asset("assets/img/payment-credit.png")),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Credit Card",
                            style: heading2.copyWith(color: text1),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                          value: PaymentMethodEnum.Credit,
                          groupValue: _paymentMethodEnum,
                          contentPadding: EdgeInsets.all(0),
                          onChanged: (value) {
                            setState(() {
                              _paymentMethodEnum = value;
                            });
                          }),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: Color.fromRGBO(0, 0, 0, 0.1))),
                              child:
                                  Image.asset("assets/img/payment-paypal.png")),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Paypal",
                            style: heading2.copyWith(color: text1),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                          value: PaymentMethodEnum.Paypal,
                          groupValue: _paymentMethodEnum,
                          contentPadding: EdgeInsets.all(0),
                          onChanged: (value) {
                            setState(() {
                              _paymentMethodEnum = value;
                            });
                          }),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: Color.fromRGBO(0, 0, 0, 0.1))),
                              child:
                                  Image.asset("assets/img/payment-google.png")),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Google Pay",
                            style: heading2.copyWith(color: text1),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                          value: PaymentMethodEnum.Google,
                          groupValue: _paymentMethodEnum,
                          contentPadding: EdgeInsets.all(0),
                          onChanged: (value) {
                            setState(() {
                              _paymentMethodEnum = value;
                            });
                          }),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: Color.fromRGBO(0, 0, 0, 0.1))),
                              child:
                                  Image.asset("assets/img/payment-apple.png")),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Credit Card",
                            style: heading2.copyWith(color: text1),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                          value: PaymentMethodEnum.Apple,
                          groupValue: _paymentMethodEnum,
                          contentPadding: EdgeInsets.all(0),
                          onChanged: (value) {
                            setState(() {
                              _paymentMethodEnum = value;
                            });
                          }),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      );
    }

    Widget footer() {
      return InkWell(
        onTap: () => {Navigator.pushReplacementNamed(context, '/success')},
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(65, 87, 255, 0.1),
                blurRadius: 14,
                offset: Offset(0, 12))
          ], color: primary, borderRadius: BorderRadius.circular(32)),
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Center(
            child: Text(
              "Pay Now \$185.00",
              style: heading3.copyWith(color: text2),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              SizedBox(
                height: 16,
              ),
              deliveryAddress(),
              SizedBox(
                height: 16,
              ),
              paymentMethods(),
              SizedBox(
                height: 16,
              ),
              footer(),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
