
import 'package:flutter/material.dart';

class StudentHomeHeaderWidget extends StatelessWidget {
const StudentHomeHeaderWidget({super.key});

@override
Widget build(BuildContext context) {
return Container(
height: 340,
width: double.infinity,
color: Colors.white,
child: ClipRRect(
borderRadius: const BorderRadius.only(
bottomLeft: Radius.circular(20),
bottomRight: Radius.circular(20),
),
child: Container(
decoration: const BoxDecoration(
image: DecorationImage(
image: NetworkImage(
'https://www.harvard.edu/wp-content/uploads/2023/11/110823_Features_KS_713-scaled.jpg',
),
fit: BoxFit.cover,
),
),
child: Container(
decoration: BoxDecoration(
gradient: LinearGradient(
begin: Alignment.topCenter,
end: Alignment.bottomCenter,
colors: [
Colors.black.withValues(alpha: 0.30),
Colors.black.withValues(alpha: 0.75),
],
),
),
child: SafeArea(
bottom: false,
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
// App Bar
Padding(
padding: const EdgeInsets.only(
left: 8,
right: 8,
top: 2,
),
child: Row(
mainAxisAlignment:
MainAxisAlignment.spaceBetween,
children: [
IconButton(
padding: const EdgeInsets.all(8),
constraints: const BoxConstraints(
minWidth: 44,
minHeight: 44,
),
onPressed: () {
Scaffold.maybeOf(context)?.openDrawer();
},
icon: const Icon(
Icons.menu,
color: Colors.white,
size: 28,
),
),

// Notification Icon
Padding(
padding: const EdgeInsets.only(right: 4),
child: Stack(
clipBehavior: Clip.none,
children: [
IconButton(
padding: const EdgeInsets.all(8),
constraints: const BoxConstraints(
minWidth: 44,
minHeight: 44,
),
onPressed: () {
// Open notifications screen
},
icon: const Icon(
Icons.notifications_none,
color: Colors.white,
size: 28,
),
),
Positioned(
right: 5,
top: 3,
child: Container(
width: 17,
height: 17,
alignment: Alignment.center,
decoration: const BoxDecoration(
color: Colors.red,
shape: BoxShape.circle,
),
child: const Text(
'1',
style: TextStyle(
color: Colors.white,
fontSize: 10,
fontWeight: FontWeight.bold,
),
),
),
),
],
),
),
],
),
),

const Spacer(),

// Welcome Section
const Padding(
padding: EdgeInsets.symmetric(horizontal: 24),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'Welcome,',
style: TextStyle(
color: Colors.white,
fontSize: 22,
fontWeight: FontWeight.w500,
),
),
SizedBox(height: 2),
Text(
'Abir',
style: TextStyle(
color: Colors.white,
fontSize: 38,
fontWeight: FontWeight.bold,
letterSpacing: 0.5,
height: 1.15,
),
),
SizedBox(height: 5),
Text(
'Good to see you again!',
style: TextStyle(
color: Colors.white,
fontSize: 15,
height: 1.4,
),
),
],
),
),

const SizedBox(height: 20),

// Search Bar
Padding(
padding: const EdgeInsets.symmetric(
horizontal: 20,
),
child: Container(
height: 52,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(15),
boxShadow: [
BoxShadow(
color: Colors.black.withValues(alpha: 0.12),
blurRadius: 10,
offset: const Offset(0, 3),
),
],
),
child: const TextField(
textInputAction: TextInputAction.search,
textAlignVertical: TextAlignVertical.center,
decoration: InputDecoration(
hintText: 'Search something...',
hintStyle: TextStyle(
color: Colors.blueGrey,
fontSize: 14,
),
prefixIcon: Icon(
Icons.search,
color: Colors.blueGrey,
size: 25,
),
suffixIcon: Icon(
Icons.filter_list,
color: Colors.black87,
size: 23,
),
border: InputBorder.none,
enabledBorder: InputBorder.none,
focusedBorder: InputBorder.none,
contentPadding: EdgeInsets.symmetric(
vertical: 0,
horizontal: 12,
),
),
),
),
),

const SizedBox(height: 18),
],
),
),
),
),
),
);
}
}
