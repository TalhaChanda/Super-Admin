import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:get/get.dart';
import 'package:super_admin/helpers/app_colors.dart';
import 'package:super_admin/helpers/gaps.dart';
import 'package:super_admin/helpers/routes.dart';
import 'package:super_admin/helpers/sizes.dart';
import 'package:super_admin/helpers/styles.dart';
import 'package:super_admin/views/home/dashboard/view/dashboard_view.dart';
import 'package:super_admin/views/home/main/controller/main_controller.dart';
import 'package:super_admin/views/home/users/view/users_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());
    return AdminScaffold(
      appBar: AppBar(
        backgroundColor: AppColors.aliceBlue,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
            preferredSize: Size(screenWidth(context), 1),
            child: Container(
              height: 1,
              color: AppColors.gray,
            )),
        title: AutoSizeText(
          "LOGO",
          style: Styles.fontMedium.copyWith(color: AppColors.secondary, fontSize: 28),
          maxLines: 1,
        ),
        actions: [
          PopupMenuButton(
            color: AppColors.white,
            child: Row(
              children: [
                const Icon(Icons.account_circle, size: 28),
                horizontalGap(3),
                AutoSizeText(
                  "Admin",
                  style: Styles.fontSmall.copyWith(fontSize: 15),
                ),
                horizontalGap(3),
                const Icon(Icons.keyboard_arrow_down, size: 20),
              ],
            ),
            itemBuilder: (context) {
              return controller.adminMenuItems.map((AdminMenuItem item) {
                return PopupMenuItem<AdminMenuItem>(
                  value: item,
                  child: Row(
                    children: [
                      Icon(item.icon),
                      horizontalGap(5),
                      Text(item.title),
                    ],
                  ),
                );
              }).toList();
            },
          ),
          horizontalGap(20)
        ],
      ),
      sideBar: SideBar(
        backgroundColor: AppColors.aliceBlue,
        activeBackgroundColor: AppColors.transparent,
        borderColor: AppColors.gray,
        
        iconColor: AppColors.black,
        activeIconColor: AppColors.primary,
        textStyle: Styles.fontSmall.copyWith(fontSize: 13),
        activeTextStyle: Styles.fontSmall.copyWith(fontSize: 13, color: AppColors.primary),
        items: controller.sideBarItems,
        selectedRoute: controller.selectedRoute.value,
        onSelected: (item) {
          controller.selectedRoute.value = item.route.toString();
        },
        header: Container(
          height: 15,
          color: AppColors.aliceBlue,
        ),
      ),
      body: SingleChildScrollView(
        child: Obx(
          () {
            if (controller.selectedRoute.value == Routes.dashboard) {
              return DashboardView();
            } else {
              return UsersView();
            }
          },
        ),
      ),
    );
  }
}
