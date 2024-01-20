import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFFFFFF),
      elevation: 0,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            const Icon(
              Icons.menu,
              size: 34,
              color: Color(0xFF19191B),
            ),
            const SizedBox(width: 10),
            Text(
              "Shoes Store",
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: const Color(0xFF19191B),
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined, size: 34))
      ]),
    );
  }
}
