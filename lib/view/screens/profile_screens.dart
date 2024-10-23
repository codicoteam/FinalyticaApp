import 'package:financialanalysis/utils/colors/primary_colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
              color: PrimaryColors.darkblue,
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
              Text(
                      'Profile ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 35, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.edit,
                          size: 21,
                          color: Colors.white,
                        ),
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: CircleAvatar(
                            radius: 42,
                            backgroundImage: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/128/3177/3177440.png',
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.settings,
                          size: 21,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Ashton Mapunga ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'ashton@cbz.co.zw ',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
      body:  Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: departmentNames.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 208, 239, 253),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          departmentIcons[index],
                          color: const Color(0xFF14123D),
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        departmentNames[index],
                        style: const TextStyle(
                          color: Color(0xFF14123D),
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF14123D),
                    size: 18,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
