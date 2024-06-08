// import 'package:flutter/material.dart';
// import 'package:nyntaxfluttertask1/controller/additional_charge_controller.dart';
// import 'package:nyntaxfluttertask1/model/additional_charge_model.dart';
// import 'package:nyntaxfluttertask1/view/pages/constants.dart';
// import 'package:nyntaxfluttertask1/view/pages/summary_page.dart';
// import 'package:nyntaxfluttertask1/view/widgets/title_widget.dart';
// import 'package:provider/provider.dart';

// class AdditionalChargesPage extends StatefulWidget {
//   const AdditionalChargesPage({super.key});

//   @override
//   State<AdditionalChargesPage> createState() => _AdditionalChargesPageState();
// }

// class _AdditionalChargesPageState extends State<AdditionalChargesPage> {
//   bool isTick1 = false;
//   bool isTick2 = false;
//   bool isTick3 = false;

//   final List<AdditionalCharge> _charges = [
//     AdditionalCharge(id: 1, title: "Collision Damage Waiver", price: 9.00),
//     AdditionalCharge(id: 2, title: "Liability Insurance", price: 15.00),
//     AdditionalCharge(
//         id: 3, title: "Rental Tax", price: 11.5, isPercentage: true),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     AdditionalChargeController additionalChargeController =
//         Provider.of<AdditionalChargeController>(context);
//     return Scaffold(
//       appBar: AppBar(
//         titleSpacing: 0,
//         title: const Text(
//           'Back',
//           style: TextStyle(fontSize: 20),
//         ),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios_new_rounded),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             // title
//             const TitleWidget(titleText: 'Additional Charges'),
//             const SizedBox(height: 20),

//             // container
//             Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   border: Border.all(color: greyColor.withOpacity(.5))),
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // charge 1
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Checkbox(
//                                 activeColor: primaryBlue,
//                                 value: isTick1,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     isTick1 = value!;
//                                   });
//                                 }),
//                             const Text(
//                               "Collision Damage Waiver",
//                               style: TextStyle(fontSize: 15),
//                             ),
//                           ],
//                         ),
//                         const Text(
//                           "\$9.00",
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ],
//                     ),
//                     // charge 2
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Checkbox(
//                                 activeColor: primaryBlue,
//                                 value: isTick2,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     isTick2 = value!;
//                                   });
//                                 }),
//                             const Text(
//                               "Liability Insurance",
//                               style: TextStyle(fontSize: 15),
//                             ),
//                           ],
//                         ),
//                         const Text(
//                           "\$15.00",
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ],
//                     ),
//                     // charge 3
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Checkbox(
//                                 activeColor: primaryBlue,
//                                 value: isTick3,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     isTick3 = value!;
//                                   });
//                                 }),
//                             const Text(
//                               "Rental Tax",
//                               style: TextStyle(fontSize: 15),
//                             ),
//                           ],
//                         ),
//                         const Text(
//                           "11.5%",
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             const SizedBox(height: 50),

//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(5)),
//                     backgroundColor: primaryBlue),
//                 onPressed: () {
//                   additionalChargeController.setTick(isTick1, isTick2, isTick3);
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (builder) => const SummaryPage()));
//                 },
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//                   child: Text(
//                     "Next",
//                     style: TextStyle(color: whiteColor),
//                   ),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:nyntaxfluttertask1/controller/additional_charge_controller.dart';
import 'package:nyntaxfluttertask1/model/additional_charge_model.dart';
import 'package:nyntaxfluttertask1/view/pages/constants.dart';
import 'package:nyntaxfluttertask1/view/pages/summary_page.dart';
import 'package:nyntaxfluttertask1/view/widgets/title_widget.dart';
import 'package:provider/provider.dart';

class AdditionalChargesPage extends StatefulWidget {
  const AdditionalChargesPage({super.key});

  @override
  State<AdditionalChargesPage> createState() => _AdditionalChargesPageState();
}

class _AdditionalChargesPageState extends State<AdditionalChargesPage> {
  final List<AdditionalCharge> _charges = [
    AdditionalCharge(id: 1, title: "Collision Damage Waiver", price: 9.00),
    AdditionalCharge(id: 2, title: "Liability Insurance", price: 15.00),
    AdditionalCharge(
        id: 3, title: "Rental Tax", price: 11.5, isPercentage: true),
  ];

  @override
  Widget build(BuildContext context) {
    final additionalChargeController =
        Provider.of<AdditionalChargeController>(context);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text(
          'Back',
          style: TextStyle(fontSize: 20),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const TitleWidget(titleText: 'Additional Charges'),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: greyColor.withOpacity(.5)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: ListView.builder(
                  shrinkWrap: true, 
                  itemCount: _charges.length,
                  itemBuilder: (context, index) {
                    final charge = _charges[index];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: primaryBlue,
                              value: additionalChargeController
                                  .isSelected(charge.id),
                              onChanged: (value) => setState(() {
                                additionalChargeController.setSelected(
                                    charge.id, value!);
                              }),
                            ),
                            Text(
                              charge.title,
                              style: const TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Text(
                          charge.isPercentage
                              ? '${charge.price}%'
                              : '\$${charge.price.toStringAsFixed(2)}',
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: primaryBlue,
              ),
              onPressed: () {
                final selectedCharges = _charges
                    .where((charge) =>
                        additionalChargeController.isSelected(charge.id))
                    .toList();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) =>
                        SummaryPage(selectedCharges: selectedCharges),
                  ),
                );
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Text(
                  "Next",
                  style: TextStyle(color: whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
