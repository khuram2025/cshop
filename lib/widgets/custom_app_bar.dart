import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  bool isMobile(BuildContext context) {
    return getDeviceType(MediaQuery.of(context).size) == DeviceScreenType.mobile;
  }

  bool isTablet(BuildContext context) {
    return getDeviceType(MediaQuery.of(context).size) == DeviceScreenType.tablet;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: <Widget>[
          Text("Chnnab"),  // Site Name
          Spacer(),  // Pushes everything to the right
          if (!isMobile(context) && !isTablet(context))
            Container(
              width: 400,
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.blue[700],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                ),
              ),
            ),
          if (isMobile(context) || isTablet(context))
            Expanded(
              child: AnimatedContainer(
                width: _isFocused ? double.infinity : null,
                duration: Duration(milliseconds: 300),
                child: TextField(
                  focusNode: _focusNode,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.blue[700],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                  ),
                ),
              ),
            ),
          SizedBox(width: 20),  // Spacing between search box and notification icon
          Icon(Icons.notifications),
          SizedBox(width: 20),  // Spacing between notification icon and profile details
          ValueListenableBuilder(
            valueListenable: ValueNotifier<bool>(
                getDeviceType(MediaQuery.of(context).size) == DeviceScreenType.mobile ||
                    getDeviceType(MediaQuery.of(context).size) == DeviceScreenType.tablet
            ),
            builder: (context, bool isMobileTablet, child) {
              return isMobileTablet ? CircleAvatar() : Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(width: 10),  // Spacing between image and name
                    Text("Username", style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.blue,
    );
  }
}
