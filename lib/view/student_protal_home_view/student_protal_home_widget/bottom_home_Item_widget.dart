
import 'package:flutter/material.dart';

class BottomHomeItemWidget extends StatelessWidget {
final String title;
final String subtitle;
final String time;
final String? imageUrl;
final IconData icon;
final Color color;
final VoidCallback onTap;

const BottomHomeItemWidget({
super.key,
required this.title,
required this.subtitle,
required this.time,
required this .imageUrl,
this.icon = Icons.arrow_forward_ios,
this.color = const Color(0xFF4F46E5),
required this.onTap,
});

@override
Widget build(BuildContext context) {
return Card(
elevation: 2,
margin: const EdgeInsets.symmetric(
horizontal: 16,
vertical: 8,
),
color: Colors.white,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(16),
),
child: InkWell(
onTap: onTap,
borderRadius: BorderRadius.circular(16),
child: Padding(
padding: const EdgeInsets.all(14),
child: Row(
children: [
// Leading Image or Icon
Container(
width: 80,
height: 70,
decoration: BoxDecoration(
color: color.withValues(alpha: 0.12),
borderRadius: BorderRadius.circular(14),
),
child: imageUrl != null && imageUrl!.isNotEmpty
? ClipRRect(
borderRadius: BorderRadius.circular(14),
child: Image.network(
imageUrl!,
fit: BoxFit.cover,
errorBuilder: (context, error, stackTrace) {
return Icon(
icon,
color: color,
size: 30,
);
},
),
)
    : Icon(
icon,
color: color,
size: 30,
),
),

const SizedBox(width: 14),

// Title and Details
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
title,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: const TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold,
color: Color(0xFF1F2937),
),
),
const SizedBox(height: 6),
Text(
subtitle,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: const TextStyle(
fontSize: 13,
color: Colors.blueGrey,
),
),
const SizedBox(height: 5),
Row(
children: [
Icon(
Icons.access_time_rounded,
size: 15,
color: color,
),
const SizedBox(width: 5),
Expanded(
child: Text(
time,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: TextStyle(
fontSize: 12,
color: color,
fontWeight: FontWeight.w500,
),
),
),
],
),
],
),
),

const SizedBox(width: 8),

// Trailing Arrow
Icon(
Icons.arrow_forward_ios_rounded,
size: 18,
color: Colors.grey.shade500,
),
],
),
),
),
);
}
}
