import 'package:get/get.dart';
import 'package:super_admin/views/auth/view/auth_view.dart';
import 'package:super_admin/views/home/dashboard/view/dashboard_view.dart';
import 'package:super_admin/views/home/users/view/users_view.dart';

class Routes {
  static String auth = "/auth";
  static String dashboard = "/";
  static String users = "/users";

  static List<GetPage> routes = [
    GetPage(name: auth, page: () => const AuthView()),
    GetPage(name: dashboard, page: () => const DashboardView()),
    GetPage(name: users, page: () => const UsersView()),
  ];
}
