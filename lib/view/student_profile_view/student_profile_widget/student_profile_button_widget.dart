
import 'package:flutter/material.dart';

class StudentProfileButtonWidget extends StatelessWidget {
final String text;
final IconData prefixIcon;
final VoidCallback onPressed;

const StudentProfileButtonWidget({
super.key,
this.text = 'Logout',
this.prefixIcon = Icons.logout_rounded,
required this.onPressed,
});

@override
Widget build(BuildContext context) {
return SizedBox(
width: double.infinity,
height: 54,
child: ElevatedButton.icon(
onPressed: onPressed,

// Prefix Icon
icon: Icon(
prefixIcon,
size: 22,
color: Colors.white,
),

// Button Text
label: Text(
text,
style: const TextStyle(
fontSize: 16,
fontWeight: FontWeight.w600,
color: Colors.white,
),
),

// Button Style
style: ElevatedButton.styleFrom(
backgroundColor: Colors.red,
foregroundColor: Colors.white,
elevation: 0,
alignment: Alignment.center,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(14),
),
),
),
);
}
}
