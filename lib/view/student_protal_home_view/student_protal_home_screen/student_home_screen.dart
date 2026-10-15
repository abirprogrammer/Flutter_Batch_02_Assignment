import 'package:flutter/material.dart';
import 'package:flutter_batch_02_assignment/view/student_profile_view/student_profile_screen/student_profile_screen.dart';
import 'package:flutter_batch_02_assignment/view/student_protal_home_view/student_protal_home_widget/bottom_home_Item_widget.dart';
import 'package:flutter_batch_02_assignment/view/student_protal_home_view/student_protal_home_widget/midle_quick_menu_item_widget.dart';
import 'package:flutter_batch_02_assignment/view/student_protal_home_view/student_protal_home_widget/student_home_header_widget.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // header_section_by_column
              StudentHomeHeaderWidget(),

              SizedBox(height: 10),

              /// quick action section by row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MidleQuickMenuItemWidget(
                      title: 'My course',
                      icon: Icons.menu_book_rounded,
                      color: Colors.red,
                      onTap: () {



                        /* Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SecondScreen()),
                      );*/
                      },
                    ),
                    SizedBox(width: 10,),

                    MidleQuickMenuItemWidget(
                      title: 'Routine',
                      icon: Icons.calendar_month,
                      color: Colors.green,
                      onTap: (){


                        /// profile e pathabo

                      },
                    ),
                    SizedBox(width: 10,),

                    MidleQuickMenuItemWidget(
                      title: 'Assignment',
                      icon: Icons.assignment,
                      color: Colors.orange,
                      onTap: (){


                        /// profile e pathabo

                      },
                    ),

                    SizedBox(width: 10,),

                    MidleQuickMenuItemWidget(
                      title: 'My Profile',
                      icon: Icons.person,
                      color: Colors.blue,
                      onTap: (){


                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StudentProfileScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              /// title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Classes',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),

              /// bottom item senctoin
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BottomHomeItemWidget(
                        title: "Flutter Course",
                        subtitle: "Room: 301",
                        time: "10:00AM -11:00AM",
                        onTap: (){},
                      imageUrl: 'https://www.biztechcs.com/wp-content/uploads/2021/04/Why-Flutter-is-Better-for-App-Development.jpg',)
                    ,
                    BottomHomeItemWidget(
                      title: "Database System",
                      subtitle: "Room: 323",
                      time: "09:00AM -12:00PM",
                      onTap: (){},
                      imageUrl: 'https://tse2.mm.bing.net/th/id/OIP.zkbyXAD5EgU5yQbPfstVlAHaEK?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',)
                    ,
                    BottomHomeItemWidget(
                      title: "Web Technology",
                      subtitle: "Room: 201",
                      time: "12:00PM -11:00PM",
                      onTap: (){},
                      imageUrl: 'https://simitech.in/wp-content/uploads/2025/02/what-is-web-technology-1050x591.png',)
                    ,
                    BottomHomeItemWidget(
                      title: "Cyber Security",
                      subtitle: "Room: 501",
                      time: "03:00PM -11:00PM",
                      onTap: (){},
                      imageUrl: 'https://static.vecteezy.com/system/resources/previews/025/466/198/original/cyber-security-technology-concept-in-the-shape-of-sphere-with-hexagon-pattern-in'
                          '-wireframe-hand-information-protect-and-safe-cyber-data-security-or-network-security-idea-illustration-vector.jpg',)
                    ,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

