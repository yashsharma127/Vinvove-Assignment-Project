import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vinove_assignemnt/LiveLocationScreen.dart';
import 'package:vinove_assignemnt/LocationHistoryScreen.dart';

import 'Member.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('ATTENDACE', style: TextStyle(color: Colors.white),),
        ),
        drawer: myDrawer(),
        body: Column(
          children: [
            // All member section
            Container(
              color:Color(0xFF4C3BBD).withOpacity(0.12),
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15, // You can adjust the size
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/736x/0d/64/98/0d64989794b1a4c9d89bff571d3d5842.jpg'), // Replace with your image URL or asset
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('All Members', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Change',
                        style: TextStyle(color: Colors.blue,fontSize: 16,),
                      ),
                    ),
                  ],
                ),

            ),

            // Date Picker Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.arrow_back_ios_new, color: Colors.grey),
                  Row(
                    children: [
                      Text(
                        DateTime.now().toString(),
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),


                    ],
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  SizedBox(width: 15),
                  Icon(Icons.calendar_today_outlined, color: Colors.grey),
                ],
              ),
            ),

            Divider(),

            SingleChildScrollView(

              child: Column(
                children: [
                  MyListTile(img: 'https://i.pinimg.com/736x/57/9d/43/579d43cb47e2e29bc5836d1cea823e65.jpg',
                    name : 'Wade Warren',
                    id: 'WW1234',
                    isWorking: true,
                    isLogin: true,
                    incoming: '09:30 am',
                    outgoing: '06:30 pm',
                  ),
                  Divider(),
                  MyListTile(img: 'https://newsmeter.in/h-upload/2021/11/10/308083-jhanvi-kapoor.webp',
                    name : 'Ester Howard',
                    id: 'EH243242',
                    isWorking: false,
                    isLogin: true,
                    incoming: '09:30 am',
                    outgoing: '06:40 pm',
                  ),
                  Divider(),
                  MyListTile(img: 'https://img.paisawapas.com/ovz3vew9pw/2024/07/01115924/shradha-kapoor.jpg',
                    name : 'Camerin Williomson',
                    id: 'CW2345',
                    isWorking: false,
                    isLogin: false,
                    incoming: '09:30 am',
                    outgoing: '06:40 pm',
                  ),
                  Divider(),
                  MyListTile(img: 'https://easy-peasy.ai/cdn-cgi/image/quality=80,format=auto,width=700/https://fdczvxmwwjwpwbeeqcth.supabase.co/storage/v1/object/public/images/dece2e61-d57e-48db-a193-16e29722eee2/5b8738f3-8bae-472e-bc62-06ff12e2620c.png',
                    name : 'Brookyln Simmons',
                    id: 'BS54542',
                    isWorking: false,
                    isLogin: true,
                    incoming: '09:30 am',
                    outgoing: '06:40 pm',
                  ),
                  Divider(),
                  MyListTile(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn8ukg0wFYmBhrQOOScmr-GQ_Igm0b3HTQJEMmMj7HttBMFiIoPZhvXV5pOVF6oz1UxpQ&usqp=CAU',
                    name : 'Savnah Nagyuen',
                    id: 'SN324432',
                    isWorking: false,
                    isLogin: true,
                    incoming: '09:30 am',
                    outgoing: '06:40 pm',
                  ),
                  Divider(),
                  MyListTile(img: 'https://media.themoviedb.org/t/p/w500/upKrdABAMK7jZevWAoPYI24iKlR.jpg',
                    name : 'Naglie Alexander',
                    id: 'NA324432',
                    isWorking: false,
                    isLogin: true,
                    incoming: '09:30 am',
                    outgoing: '06:40 pm',
                  ),
                  // Divider(),
                  // MyListTile(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu2oWITfZn9ussqvTNPFtsZn9DzH_Mdo7Tqg&s',
                  //   name : 'Kathrne Murphy',
                  //   id: 'KM3453245',
                  //   isWorking: false,
                  //   isLogin: true,
                  //   incoming: '09:30 am',
                  //   outgoing: '06:40 pm',
                  // ),
                  //
                  // Divider(),
                ],
              ),
            ),
            // Member List Item


          ],
        ),
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
   MyListTile({
    super.key,
     required this.img,
     required this.name,
     required this.id,
     required this.isLogin,
     required this.isWorking,
     required this.outgoing,
     required this.incoming,
  });

  final String img;
  final String name;
  final String id;
  bool isLogin;
  bool isWorking;
  final String outgoing;
  final String incoming;



  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  img, // Replace with the avatar image
                ),
              ),
              SizedBox(width: 10,),
              Text(
                name+" ("+id+")",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          if(isLogin) Row(
            children: [
              IconButton(icon:Icon(Icons.calendar_month, size: 30), color: Colors.black38,onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LocationHistoryScreen(new Member("Mohit Sharma", "MS1706", "Online", "12345", "13243")),
                ),
              );},),
              SizedBox(width: 8),
              IconButton(icon: Icon(Icons.gps_fixed ,size: 25 ), color: Color(0xFF4C3BBD).withOpacity(0.75),onPressed: (){Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => LiveLocationScreen(new Member("Mohit Sharma", "MS1706", "Online", "12345", "13243")),
    ),
    );},),
            ],
          ),
        ],
      ),
      subtitle: isLogin?Row(
        children: [
          Icon(Icons.call_made, color: Colors.green),
          SizedBox(width: 4),
          Text(
            incoming,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(width:25),

          if(isWorking)Icon(Icons.warning_rounded, color: Colors.orange, size: 18),
          SizedBox(width: 8),

          isWorking?
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              'WORKING',
              style: TextStyle(fontSize: 12,color: Colors.green, fontWeight: FontWeight.w500),
            ),
          ):Row(
            children: [
              Icon(Icons.call_received, color: Colors.red),
              SizedBox(width: 4),
              Text(
                incoming,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ],
      )
          :
      Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              'NOT LOGGED IN YET',
              style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      onTap: () {
        // Define the action for onTap
      },
    );
  }
}

class myDrawer extends StatelessWidget {
  const myDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 20,
      child: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white), // Change icon color here
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(
                        Icons.timelapse_rounded,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'workstatus',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
        
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25, // You can adjust the size
                        backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-photo/androgynous-avatar-non-binary-queer-person_23-2151100270.jpg?size=338&ext=jpg&ga=GA1.1.1887574231.1728950400&semt=ais_hybrid'), // Replace with your image URL or asset
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cameron Williomson',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'cameronwilliomson@gmail.com',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            CustomTile(title: 'Timer', icon: Icons.alarm, onTap: () {}),
            CustomTile(
              title: 'ATTENDANCE',
              icon: Icons.calendar_month,
              onTap: () {},
            ),
            CustomTile(title: 'Activity', icon: Icons.auto_graph, onTap: () {}),
            CustomTile(
                title: 'Timesheet',
                icon: Icons.developer_board_sharp,
                onTap: () {}),
            CustomTile(title: 'Report', icon: Icons.dashboard, onTap: () {}),
            CustomTile(
                title: 'Jobsite',
                icon: Icons.account_balance_outlined,
                onTap: () {}),
            CustomTile(title: 'Team', icon: Icons.person, onTap: () {}),
            CustomTile(title: 'Time Off', icon: Icons.flight, onTap: () {}),
            CustomTile(
                title: 'Schedules', icon: Icons.calendar_today, onTap: () {}),
            Divider(),
            CustomTile(
                title: 'Request to join organisation',
                icon: Icons.account_tree_outlined,
                onTap: () {}),
            CustomTile(
                title: 'Change Password', icon: Icons.password, onTap: () {}),
          ],
        ),
      ),
    );
  }
}

class CustomTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final void Function()? onTap;


  CustomTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(widget.icon),
      title: Text(widget.title),
      selected: false,
      selectedTileColor: Colors.blueAccent[100],
      onTap: () {
        setState(() {
          selectedIndex = 0;
        });
        Navigator.pop(context); // Close the drawer
      },
    );
  }
}
