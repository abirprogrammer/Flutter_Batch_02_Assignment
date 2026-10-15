
import 'package:flutter/material.dart';

class StudentProfileDetailsWidget extends StatelessWidget {
final String rollNo;
final String department;
final String email;
final String phone;
final String date;

const StudentProfileDetailsWidget({
super.key,
required this.rollNo,
required this.department,
required this.email,
required this.phone,
required this.date,
});

@override
Widget build(BuildContext context) {
return Container(
padding: const EdgeInsets.symmetric(
horizontal: 14,
vertical: 4,
),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(16),
boxShadow: [
BoxShadow(
color: Colors.black.withOpacity(0.04),
blurRadius: 8,
offset: const Offset(0, 3),
),
],
border: Border.all(
color: const Color(0xFFF0F2F5),
),
),
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
_buildDetailRow(
icon: Icons.person_rounded,
title: 'Roll No',
value: rollNo,
),
_buildDivider(),
_buildDetailRow(
icon: Icons.school_rounded,
title: 'Department',
value: department,
),
_buildDivider(),
_buildDetailRow(
icon: Icons.email_rounded,
title: 'Email',
value: email,
),
_buildDivider(),
_buildDetailRow(
icon: Icons.phone_rounded,
title: 'Phone',
value: phone,
),
_buildDivider(),
_buildDetailRow(
icon: Icons.calendar_month_rounded,
title: 'Date',
value: date,
),
],
),
);
}

Widget _buildDetailRow({
required IconData icon,
required String title,
required String value,
}) {
return Padding(
padding: const EdgeInsets.symmetric(
vertical: 10,
),
child: Row(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Icon(
icon,
size: 25,
color: const Color(0xFF566273),
),
const SizedBox(width: 18),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
mainAxisSize: MainAxisSize.min,
children: [
Text(
title,
style: const TextStyle(
fontSize: 12,
color: Color(0xFF687386),
fontWeight: FontWeight.w500,
),
),
const SizedBox(height: 3),
Text(
value.isNotEmpty ? value : 'Not provided',
style: const TextStyle(
fontSize: 14,
color: Color(0xFF374151),
fontWeight: FontWeight.w500,
),
softWrap: true,
),
],
),
),
],
),
);
}

Widget _buildDivider() {
return const Divider(
height: 1,
thickness: 0.7,
color: Color(0xFFF0F1F4),
);
}
}
