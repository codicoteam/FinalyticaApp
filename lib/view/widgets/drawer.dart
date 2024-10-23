import 'package:financialanalysis/utils/colors/primary_colors.dart';
import 'package:financialanalysis/view/screens/mycard/mycard.dart';
import 'package:financialanalysis/view/screens/spending_Screen/spending_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerComponent2 extends StatelessWidget {
  DrawerComponent2({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.80, //set dawer width
      elevation: 3,
      child: Material(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 50,
                        height: 50,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: PrimaryColors.darkblue),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/user.png',
                            fit: BoxFit.cover,
                            color: PrimaryColors.darkblue,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Ashton Mapunga",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        "sebatech@gmail.com",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Divider(
              color:PrimaryColors.darkblue.withOpacity(0.5),
              height: 3,
              thickness: 2,
            ),

            SizedBox(
              height: 15,
            ),


            ListTile(
              leading: Container(
                height: 35,
                width: 30,
                child: Icon(
                    Icons.person,
                    color: Colors.amber,
                    size: 28,
                  ),
              ),
              title: Text(
                'My account',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // color: appColors.white,
                ),
              ),
              onTap: () {
                // Helpers.temporaryNavigator(context, TripsTab());
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUs()));
              },
            ),

            ListTile(
              leading: Container(
                height: 35,
                width: 30,
                child: Icon(
                    Icons.home,
                    color: Colors.blue,
                    size: 28,
                  ),
              ),
              title: Text(
                'Bank Sync ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClientMany()));
              },
            ),
            ListTile(
              leading: Container(
                height: 35,
                width: 30,
                child: Icon(
                    Icons.support,
                    color: Colors.green,
                    size: 28,
                  ),
              ),
              title: Text(
                'Support',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // color: appColors.white,
                ),
              ),
              onTap: () {
                // Helpers.temporaryNavigator(context, Vehicles());
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUs()));
              },
            ),

               ListTile(
              leading: Container(
                height: 35,
                width: 30,
                child:Icon(
                    Icons.money_off_csred,
                    color: Colors.red,
                    size: 28,
                  ),
              ),
              title: Text(
                'Spending',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // color: appColors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SpendingScreen()));
              },
            ),
                 ListTile(
              leading: Container(
                height: 35,
                width: 30,
                child:Icon(
                    Icons.card_giftcard,
                    color: const Color.fromARGB(255, 4, 61, 107),
                    size: 28,
                  ),
              ),
              title: Text(
                'My Card',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // color: appColors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreditCardsPage()));
              },
            ),
              ListTile(
              leading: Container(
                height: 35,
                width: 30,
                child:Icon(
                    Icons.power,
                    color: Colors.green,
                    size: 28,
                  ),
              ),
              title: Text(
                'Goals',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // color: appColors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SpendingScreen()));
              },
            ),

              ListTile(
              leading: Container(
                height: 35,
                width: 30,
                child:Icon(
                    Icons.money_sharp,
                    color: Colors.orange,
                    size: 28,
                  ),
              ),
              title: Text(
                'Badgets',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // color: appColors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SpendingScreen()));
              },
            ),

             ListTile(
              leading: Container(
                height: 35,
                width: 30,
                child:Icon(
                    Icons.data_thresholding_outlined ,
                    color: Colors.green,
                    size: 28,
                  ),
              ),
              title: Text(
                'Investments',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // color: appColors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SpendingScreen()));
              },
            ),
             ListTile(
              leading: Container(
                height: 35,
                width: 30,
                child:Icon(
                    Icons.align_vertical_bottom_sharp,
                    color: Colors.pink,
                    size: 28,
                  ),
              ),
              title: Text(
                'Statistics',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // color: appColors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SpendingScreen()));
              },
            ),

            Divider(
              color: PrimaryColors.darkblue.withOpacity(0.5),
              height: 3,
              thickness: 2,
            ),
          

            ListTile(
              leading: Icon(Icons.logout_rounded, color: Colors.red,),
              title: Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              onTap: () {
                // _auth.signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}