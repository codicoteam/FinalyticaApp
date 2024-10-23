import 'package:financialanalysis/utils/colors/primary_colors.dart';
import 'package:flutter/material.dart';

class TransactionDetails extends StatefulWidget {
  const TransactionDetails({super.key});

  @override
  State<TransactionDetails> createState() => _TransactionDetailsState();
}

class _TransactionDetailsState extends State<TransactionDetails> {
  @override
  Widget build(BuildContext context) {

    List<String> departmentNames = [
      "My Departments",
      "Biling History",
      "Help And Resource",
      "Management Subscription",
    ];

    List<IconData> departmentIcons = [
      Icons.people,
      Icons.attach_money,
      Icons.engineering,
      Icons.support_agent,
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
          ),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 243, 249, 253),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                      const SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                              Icons.arrow_back_ios,
                              size: 25,
                              color: Color(0xFF14123D),
                            ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
            
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 55, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 248, 114, 105),
                          ),
                          child:     const Icon(
                          Icons.cancel,
                          size: 50,
                          color: Colors.white,
                        ),
                        ),
                    
                      ],
                    ),
                  ),
                  Text(
                    'Withdraw Failed  ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: PrimaryColors.darkblue,
                    ),
                  ),
                  Text(
                    'Your withdraw has not been successful',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 208, 239, 253),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                             Text(
                         'Amount',
                          style: const TextStyle(
                            color: Color(0xFF14123D),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                         '\$1000',
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                     
                      ],
                    ),
                    SizedBox(height: 15,),

                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                             Text(
                         'Payment Status',
                          style: const TextStyle(
                            color: Color(0xFF14123D),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                         'Failed',
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                     
                      ],
                    ),
                      SizedBox(height: 15,),

                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                             Text(
                         'Account Number ',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 117, 116, 116),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                         '7676-SA5D-65FV-UY98',
                          style: const TextStyle(
                            color: Color(0xFF14123D),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                     
                      ],
                    ),
                      SizedBox(height: 15,),

                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                             Text(
                         'Funding Source ',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 117, 116, 116),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                         'Sebatech',
                          style: const TextStyle(
                            color: Color(0xFF14123D),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                     
                      ],
                    ),
                      SizedBox(height: 15,),

                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                             Text(
                         'Withdraw Destination   ',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 117, 116, 116),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                         'PayPal',
                          style: const TextStyle(
                            color: Color(0xFF14123D),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                     
                      ],
                    ),
                      SizedBox(height: 15,),

                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                             Text(
                         'Payment Time ',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 117, 116, 116),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                         '09 Jan 2024 | 09:30',
                          style: const TextStyle(
                            color: Color(0xFF14123D),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                     
                      ],
                    ),
                     SizedBox(height: 15,),

                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                             Text(
                         'Email  ',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 117, 116, 116),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                         'sebatech@gmail.com',
                          style: const TextStyle(
                            color: Color(0xFF14123D),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                     
                      ],
                    ),
                  ],
                ),
              ),
      )
    );
  }
}
