import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/shared_values.dart';
import 'package:flutter_application_1/ui/widgets/wg_grid_custom.dart';
import 'package:flutter_application_1/ui/widgets/wg_list_custom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kecilMargin),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(15, 50, 15, 10),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.person),
                    Row(
                      children: [
                        Icon(Icons.notifications_none),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.settings),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Guest",
                        style: blackTextStyle.copyWith(
                            fontSize: 21, fontWeight: bold),
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      Row(
                        children: [
                          Text(
                            "Widget Grid View",
                            style: blackTextStyle.copyWith(
                                fontSize: 18, fontWeight: semiBold),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        height: 210,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return const WidgetGrid(
                              artis: "SZA",
                              song: "Kill Bill",
                            );
                          },
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Widget List View',
                            style: blackTextStyle.copyWith(
                                fontSize: 18, fontWeight: semiBold),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        height: 326,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return const WidgetList(
                              headline: "SZA - Kill Bill",
                              deskripsi:
                                  "Open Arms is a song by American singer-songwriter SZA",
                              date: "Today.",
                              time: "23 min",
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
