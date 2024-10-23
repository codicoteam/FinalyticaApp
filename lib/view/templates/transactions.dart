import 'package:financialanalysis/view/widgets/piechat.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {

  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {



  @override
  Widget build(BuildContext context) {

    bool trans = true;


     List<String> departmentNames = [
      " 07:30",
      "16:20",
      "20:20",
    ];
    List<String> usersNames = [
      " Monthly Pay ",
      " Payment Dstv",
      "Payment for Rent ",
    ];

      List<String> money = [
      " \$100",
      " \$210",
      " \$430",
    ];


    List<String> userImageUrl = [
      "https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png",
      "https://cdn-icons-png.flaticon.com/128/3177/3177440.png",
      "https://cdn-icons-png.flaticon.com/128/3177/3177440.png",
    ];

  

    List<Color> colors = [
      Colors.green,
            Colors.red,
      Colors.red,

    ];




    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    trans == false? "Today " : "09 Dec 2024",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.arrow_drop_up,
                    size: 28.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 7,
            ),
           

             Expanded(
                    child: ListView.builder(
                      itemCount: departmentNames.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 208, 239, 253),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 22,
                                      backgroundImage: NetworkImage(
                                        userImageUrl[index],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          usersNames[index],
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        Text(
                                       '   ${departmentNames[index]}',
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                     
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 24,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: colors[index]
                                        
                                  ,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                         
                                          Text(
                                              money[index],
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                 
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
            
          ],
        ),
      ),
    );
  }
}
