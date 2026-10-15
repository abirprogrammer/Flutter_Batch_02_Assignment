import 'package:flutter/material.dart';
import 'package:flutter_batch_02_assignment/view/student_profile_view/student_profile_widget/student_profile_button_widget.dart';
import 'package:flutter_batch_02_assignment/view/student_profile_view/student_profile_widget/student_profile_details_widget.dart';
import 'package:flutter_batch_02_assignment/view/student_protal_home_view/student_protal_home_widget/bottom_home_Item_widget.dart';
import 'package:flutter_batch_02_assignment/view/student_protal_home_view/student_protal_home_widget/midle_quick_menu_item_widget.dart';
import 'package:flutter_batch_02_assignment/view/student_protal_home_view/student_protal_home_widget/student_home_header_widget.dart';

import '../student_profile_widget/student_profile_image_widget.dart';

class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text("My Profile",
        style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold,

        ),),
        centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.edit,color: Colors.white,),
            )
        ],


      ),
      backgroundColor: Colors.white,
      body: SafeArea(

        top: false,
        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children:[
                StudentProfileImageWidget(studentName: 'Md.Abir',
                  designation: 'Student',
                  profileImageUrl: 'https://avatars.githubuserconte'
                      'nt.com/u/338652689?s=400&u=b72f86e89f80ba05933'
                      'bc9c5652ed5405b487552&v=4',),
                SizedBox(height: 10,),

                StudentProfileDetailsWidget(rollNo: "772480",
                    department: "Computer Science",
                    email: "kmdabirbin@gmail.com",
                    phone: "01967848464",
                    date: "15-10-2026",),
                SizedBox(height: 10,),

                StudentProfileButtonWidget(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Logout Successfully'),
                        backgroundColor: Colors.red,
                        behavior: SnackBarBehavior.floating,
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                ),
                SizedBox(height: 10,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

