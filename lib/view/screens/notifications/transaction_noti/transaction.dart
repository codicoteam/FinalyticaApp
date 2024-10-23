import 'package:flutter/material.dart';

class TrnsactionNoti extends StatefulWidget {
  const TrnsactionNoti({super.key});

  @override
  State<TrnsactionNoti> createState() => _TrnsactionNotiState();
}

class _TrnsactionNotiState extends State<TrnsactionNoti> {
  @override
  Widget build(BuildContext context) {
    List<String> departmentNames = [
      " 07 Jan 2024",
      "16 Jan 2024",
      "20 Jan 2024",
    ];
    List<String> usersNames = [
      "You have received \$30  \n in your CBZ bank account now \n your total amount is \$300",
      " You have successfully  \n ay your Dstv .You can now  \n start enjoy it until next month  \n this time",
      "You have paid you your \n rentals to the construction  \n house topica meya noti ",
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: departmentNames.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 248, 252),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            usersNames[index],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.visible,
                          ),

                          SizedBox(height: 10,),
                          Text(
                            ' Date:  ${departmentNames[index]}',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
