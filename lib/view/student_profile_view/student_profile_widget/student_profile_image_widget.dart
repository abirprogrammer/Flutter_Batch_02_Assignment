
import 'package:flutter/material.dart';

class StudentProfileImageWidget extends StatelessWidget {
final String studentName;
final String designation;
final String? profileImageUrl;

const StudentProfileImageWidget({
super.key,
required this.studentName,
required this.designation,
required this.profileImageUrl,
});

@override
Widget build(BuildContext context) {
return Center(
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
  SizedBox(height: 10,),
// Profile Image with Gradient Border
Container(
width: 150,
height: 150,
padding: const EdgeInsets.all(4),
decoration: BoxDecoration(
shape: BoxShape.circle,
gradient: const LinearGradient(
colors: [
Color(0xFF6366F1),
Color(0xFF06B6D4),
Color(0xFF8B5CF6),
],
begin: Alignment.topLeft,
end: Alignment.bottomRight,
),
boxShadow: [
BoxShadow(
color: const Color(0xFF6366F1)
    .withOpacity(0.22),
blurRadius: 20,
offset: const Offset(0, 8),
),
],
),
child: Container(
padding: const EdgeInsets.all(3),
decoration: const BoxDecoration(
shape: BoxShape.circle,
color: Colors.white,
),
child: ClipOval(
child: _buildProfileImage(),
),
),
),

const SizedBox(height: 10),

// Student Name
Padding(
padding: const EdgeInsets.symmetric(
horizontal: 20,
),
child: Text(
studentName.trim().isNotEmpty
? studentName.trim()
    : 'Student Name',
textAlign: TextAlign.center,
maxLines: 2,
overflow: TextOverflow.ellipsis,
style: const TextStyle(
fontSize: 24,
fontWeight: FontWeight.w700,
color: Color(0xFF172033),
letterSpacing: 0.2,
),
),
),

const SizedBox(height: 9),

// Designation Badge
Container(
padding: const EdgeInsets.symmetric(
horizontal: 18,
vertical: 8,
),
decoration: BoxDecoration(
color: const Color(0xFFEEF2FF),
borderRadius: BorderRadius.circular(30),
border: Border.all(
color: const Color(0xFF6366F1)
    .withOpacity(0.15),
),
),
child: Row(
mainAxisSize: MainAxisSize.min,
children: [
const Icon(
Icons.school_rounded,
size: 17,
color: Color(0xFF4F46E5),
),
const SizedBox(width: 7),
Text(
designation.trim().isNotEmpty
? designation.trim()
    : 'Student',
style: const TextStyle(
fontSize: 14,
fontWeight: FontWeight.w600,
color: Color(0xFF4F46E5),
),
),
],
),
),
],
),
);
}

Widget _buildProfileImage() {
final imageUrl = profileImageUrl?.trim() ?? '';

if (imageUrl.isEmpty) {
return _buildDefaultAvatar();
}

return Image.network(
imageUrl,
width: 124,
height: 124,
fit: BoxFit.cover,
loadingBuilder: (context, child, loadingProgress) {
if (loadingProgress == null) {
return child;
}

return Container(
color: const Color(0xFFEEF2FF),
alignment: Alignment.center,
child: const CircularProgressIndicator(
strokeWidth: 2.5,
color: Color(0xFF6366F1),
),
);
},
errorBuilder: (context, error, stackTrace) {
return _buildDefaultAvatar();
},
);
}

Widget _buildDefaultAvatar() {
return Container(
width: 124,
height: 124,
color: const Color(0xFFEEF2FF),
alignment: Alignment.center,
child: const Icon(
Icons.person_rounded,
size: 72,
color: Color(0xFF6366F1),
),
);
}
}
