import 'package:flutter/material.dart';
import 'package:nyntaxfluttertask1/controller/customer_info_controller.dart';
import 'package:nyntaxfluttertask1/view/pages/constants.dart';
import 'package:nyntaxfluttertask1/view/pages/vehicle_info_page.dart';
import 'package:nyntaxfluttertask1/view/widgets/input_form_widget.dart';
import 'package:nyntaxfluttertask1/view/widgets/title_widget.dart';
import 'package:provider/provider.dart';

class CustomerInformationPage extends StatefulWidget {
  const CustomerInformationPage({super.key});

  @override
  State<CustomerInformationPage> createState() =>
      _CustomerInformationPageState();
}

class _CustomerInformationPageState extends State<CustomerInformationPage> {
  final TextEditingController _fName = TextEditingController();
  final TextEditingController _lName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();

  @override
  void dispose() {
    _fName.dispose();
    _lName.dispose();
    _email.dispose();
    _phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CustomerInformationController customerInformationController =
        Provider.of<CustomerInformationController>(context);
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text(
          'Back',
          style: TextStyle(fontSize: 20),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // title
              const TitleWidget(titleText: 'Customer Information'),
              const SizedBox(height: 20),
          
              // container
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: greyColor.withOpacity(.5))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      // first name
                      InputFormWidget(
                        headingText: 'First Name',
                        asteric: "*",
                        controller: _fName,
                      ),
                      const SizedBox(height: 10),
          
                      // last name
                      InputFormWidget(
                          headingText: 'Last Name',
                          asteric: "*",
                          controller: _lName),
                      const SizedBox(height: 10),
          
                      // email
                      InputFormWidget(
                        headingText: 'Email',
                        asteric: "*",
                        controller: _email,
                      ),
                      const SizedBox(height: 10),
          
                      // phone
                      InputFormWidget(
                        headingText: 'Phone',
                        asteric: "*",
                        controller: _phone,
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
          
              const SizedBox(height: 50),
          
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: primaryBlue),
                  onPressed: () {
                    customerInformationController.setCustomerInfo(
                        _fName.text, _lName.text, _email.text, _phone.text);
          
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const VehicleInfoPage()));
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    child: Text(
                      "Next",
                      style: TextStyle(color: whiteColor),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
