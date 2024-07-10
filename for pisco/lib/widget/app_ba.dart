// import 'package:flutter/material.dart';
//
// Widget topbar({
//   title,
//   actions,
//   context,
// }){
//
//   String title;
//   Widget actions;
//
//   return AppBar(
//     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//     title: Text(title),
//     actions:  [
//       actions,
//     ],
//   );
// }
//
// class TopBar extends StatefulWidget {
//   TopBar({
//     required this.title,
//     this.actions = const SizedBox(),
//   });
//   String title;
//   Widget actions;
//
//   @override
//   State<TopBar> createState() => _TopBarState();
// }
//
// class _TopBarState extends State<TopBar> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       title: Text(widget.title),
//       actions:  [
//         widget.actions
//       ],
//     );
//   }
// }
