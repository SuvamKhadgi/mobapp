import 'package:flutter/material.dart';
import 'package:mobapp/screen/login_screen.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Dashboard',
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ),

      // Body of the dashboard
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Heading
            const Text(
              'Welcome to your Dashboard!',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(height: 20),

            // Cards displaying information
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // Card 1
                Card(
                  elevation: 5,
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle,
                            size: 50, color: Colors.blue),
                        SizedBox(height: 10),
                        Text('Profile', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
                // Card 2
                Card(
                  elevation: 5,
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.notifications, size: 50, color: Colors.blue),
                        SizedBox(height: 10),
                        Text('Notifications', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Another row with cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // Card 3
                const Card(
                  elevation: 5,
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings, size: 50, color: Colors.blue),
                        SizedBox(height: 10),
                        Text('Settings', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
                // Card 4
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) =>
                //               LoginScreen()), // Navigate to login screen
                //     );
                //   },
                //   child: Card(
                //     elevation: 5,
                //     child: SizedBox(
                //       width: 150,
                //       height: 150,
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Icon(Icons.exit_to_app, size: 50, color: Colors.blue),
                //           SizedBox(height: 10),
                //           Text('Logout', style: TextStyle(fontSize: 18)),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              LoginScreen()), // Navigate to login screen
                    );
                  },
                  child: const Card(
                    elevation: 5,
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.exit_to_app, size: 50, color: Colors.blue),
                          SizedBox(height: 10),
                          Text('Logout', style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
