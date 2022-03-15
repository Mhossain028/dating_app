import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              "TT Dating App",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            color: Theme.of(context).primaryColor,
            icon: Icon(Icons.message)),
        IconButton(
            onPressed: () {},
            color: Theme.of(context).primaryColor,
            icon: Icon(Icons.person)),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);
}
