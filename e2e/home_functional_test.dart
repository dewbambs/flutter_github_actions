import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_github_actions/main.dart' as app;

import 'robots/home_robot.dart';

void main(List<String> args) {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  HomeRobot homeRobot;

  testWidgets(
    '''
1. When increment button is tapped 3 times count should display 3.
2. When decrement button is pressed 1 time count should be 2.
3. When decrement button is pressed 4 times count should be 0.''',
    (tester) async {
      app.main();

      homeRobot = HomeRobot(tester);

      await homeRobot.waitForHomeScreen();

      await homeRobot.tapIncrementButton();
      await homeRobot.tapIncrementButton();
      await homeRobot.tapIncrementButton();

      await homeRobot.checkVisibleCount('3');

      await homeRobot.tapDecrementButton();

      await homeRobot.checkVisibleCount('2');

      await homeRobot.tapDecrementButton();
      await homeRobot.tapDecrementButton();
      await homeRobot.tapDecrementButton();
      await homeRobot.tapDecrementButton();

      await homeRobot.checkVisibleCount('0');
    },
  );
}
