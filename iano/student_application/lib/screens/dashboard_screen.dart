import 'package:flutter/material.dart';
import '../widgets/dashboard_card.dart';

class DashboardScreen extends StatelessWidget {

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Traffic Management Dashboard",
        ),
      ),

      drawer: Drawer(

        child: ListView(
          children: const [

            DrawerHeader(
              child: Text(
                "Navigation",
                style: TextStyle(fontSize: 22),
              ),
            ),

            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Dashboard"),
            ),

            ListTile(
              leading: Icon(Icons.traffic),
              title: Text("Traffic Signals"),
            ),

            ListTile(
              leading: Icon(Icons.warning),
              title: Text("Incidents"),
            ),

            ListTile(
              leading: Icon(Icons.analytics),
              title: Text("Analytics"),
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "System Overview",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Wrap(
              spacing: 20,
              runSpacing: 20,

              children: const [

                DashboardCard(
                  title: "Vehicles",
                  value: "15,234",
                  icon: Icons.directions_car,
                ),

                DashboardCard(
                  title: "Signals",
                  value: "122",
                  icon: Icons.traffic,
                ),

                DashboardCard(
                  title: "Incidents",
                  value: "6",
                  icon: Icons.warning,
                ),

                DashboardCard(
                  title: "Average Speed",
                  value: "48 km/h",
                  icon: Icons.speed,
                ),
              ],
            ),

            const SizedBox(height: 30),

            Expanded(

              child: Card(

                child: Container(

                  width: double.infinity,

                  alignment: Alignment.center,

                  child: const Text(
                    "Traffic Map Placeholder",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
