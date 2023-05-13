import 'package:flutter/material.dart';
import 'package:quiz/presentation/welcome_screen/welcome_screen.dart';
import 'package:quiz/presentation/register_screen/register_screen.dart';
import 'package:quiz/presentation/login_screen/login_screen.dart';
import 'package:quiz/presentation/reset_password_screen_one_screen/reset_password_screen_one_screen.dart';
import 'package:quiz/presentation/reset_password_screen_two_screen/reset_password_screen_two_screen.dart';
import 'package:quiz/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:quiz/presentation/reset_password_screen_three_screen/reset_password_screen_three_screen.dart';
import 'package:quiz/presentation/home_screen_one_screen/home_screen_one_screen.dart';
import 'package:quiz/presentation/profile_screen_container_screen/profile_screen_container_screen.dart';
import 'package:quiz/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:quiz/presentation/leader_board_screen/leader_board_screen.dart';
import 'package:quiz/presentation/global_leader_board_screen/global_leader_board_screen.dart';
import 'package:quiz/presentation/challenges_screen/challenges_screen.dart';
import 'package:quiz/presentation/quiz_screen/quiz_screen.dart';
import 'package:quiz/presentation/theory_screen_one_screen/theory_screen_one_screen.dart';
import 'package:quiz/presentation/theory_screen/theory_screen.dart';
import 'package:quiz/presentation/theory_screen_two_screen/theory_screen_two_screen.dart';
import 'package:quiz/presentation/quiz_challenge_screen_two_screen/quiz_challenge_screen_two_screen.dart';
import 'package:quiz/presentation/quiz_challenge_screen/quiz_challenge_screen.dart';
import 'package:quiz/presentation/quiz_challenge_screen_three_screen/quiz_challenge_screen_three_screen.dart';
import 'package:quiz/presentation/quiz_challenge_screen_one_screen/quiz_challenge_screen_one_screen.dart';
import 'package:quiz/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreenPage = '/home_screen_page';

  static const String welcomeScreen = '/welcome_screen';

  static const String registerScreen = '/register_screen';

  static const String loginScreen = '/login_screen';

  static const String resetPasswordScreenOneScreen =
      '/reset_password_screen_one_screen';

  static const String resetPasswordScreenTwoScreen =
      '/reset_password_screen_two_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordScreenThreeScreen =
      '/reset_password_screen_three_screen';

  static const String homeScreenOneScreen = '/home_screen_one_screen';

  static const String profileScreenPage = '/profile_screen_page';

  static const String profileScreenContainerScreen =
      '/profile_screen_container_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String leaderBoardScreen = '/leader_board_screen';

  static const String globalLeaderBoardScreen = '/global_leader_board_screen';

  static const String challengesScreen = '/challenges_screen';

  static const String quizScreen = '/quiz_screen';

  static const String theoryScreenOneScreen = '/theory_screen_one_screen';

  static const String theoryScreen = '/theory_screen';

  static const String theoryScreenTwoScreen = '/theory_screen_two_screen';

  static const String quizChallengeScreenTwoScreen =
      '/quiz_challenge_screen_two_screen';

  static const String quizChallengeScreen = '/quiz_challenge_screen';

  static const String quizChallengeScreenThreeScreen =
      '/quiz_challenge_screen_three_screen';

  static const String quizChallengeScreenOneScreen =
      '/quiz_challenge_screen_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomeScreen: (context) => WelcomeScreen(),
    registerScreen: (context) => RegisterScreen(),
    loginScreen: (context) => LoginScreen(),
    resetPasswordScreenOneScreen: (context) => ResetPasswordScreenOneScreen(),
    resetPasswordScreenTwoScreen: (context) => ResetPasswordScreenTwoScreen(),
    resetPasswordScreen: (context) => ResetPasswordScreen(),
    resetPasswordScreenThreeScreen: (context) =>
        ResetPasswordScreenThreeScreen(),
    homeScreenOneScreen: (context) => HomeScreenOneScreen(),
    profileScreenContainerScreen: (context) => ProfileScreenContainerScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    leaderBoardScreen: (context) => LeaderBoardScreen(),
    globalLeaderBoardScreen: (context) => GlobalLeaderBoardScreen(),
    challengesScreen: (context) => ChallengesScreen(),
    quizScreen: (context) => QuizScreen(),
    theoryScreenOneScreen: (context) => TheoryScreenOneScreen(),
    theoryScreen: (context) => TheoryScreen(),
    theoryScreenTwoScreen: (context) => TheoryScreenTwoScreen(),
    quizChallengeScreenTwoScreen: (context) => QuizChallengeScreenTwoScreen(),
    quizChallengeScreen: (context) => QuizChallengeScreen(),
    quizChallengeScreenThreeScreen: (context) =>
        QuizChallengeScreenThreeScreen(),
    quizChallengeScreenOneScreen: (context) => QuizChallengeScreenOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
