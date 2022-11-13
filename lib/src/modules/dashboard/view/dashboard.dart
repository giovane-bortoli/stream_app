import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:stream_app/main.dart';
import 'package:stream_app/src/modules/dashboard/controller/dashboard_store.dart';
import 'package:stream_app/src/shared/theme/font_theme.dart';
import 'package:stream_app/src/shared/utils/app_colors.dart';

class DashBoardView extends StatefulWidget {
  final List<String>? filters;

  const DashBoardView({
    Key? key,
    this.filters,
  }) : super(key: key);

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final dashboardStore = getIt<DashBoardStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: const Color(0x000000ff),
      body: content(context),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.format_align_left),
      ),
      elevation: 0,
      backgroundColor: const Color(0x000000ff),
      actions: [
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(150),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Material(
              borderRadius: BorderRadius.circular(150),
              color: AppColors.deepPurple,
              child: Stack(
                clipBehavior: Clip.none,
                children: const [
                  SizedBox(
                    width: 40,
                    height: 50,
                    child: Icon(Icons.person),
                  ),
                  CircleAvatar(
                    radius: 5,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget content(context) {
    return SingleChildScrollView(
      child: Observer(builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Favorites',
              style: CustomTextTheme.textTheme.headline4,
            ),
            Text(
              'Streams',
              style: CustomTextTheme.textTheme.headline4,
            ),
            _listChips(),
          ],
        );
      }),
    );
  }

  Widget _listChips() => SizedBox(
        height: 80,
        child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: dashboardStore.filterChips.length,
            itemBuilder: (context, index) {
              final dashboard = dashboardStore.filterChips[index];
              return Padding(
                padding: const EdgeInsets.only(right: 8, left: 8),
                child: FilterChip(
                  selected: index.isFinite,
                  selectedColor: AppColors.deepPurple,
                  backgroundColor: AppColors.neutralColorLowLight,
                  label: Text(dashboard),
                  onSelected: (value) {},
                ),
              );
            }),
      );
}
