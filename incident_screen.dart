import 'package:flutter/material.dart';

class IncidentScreen extends StatelessWidget {

  const IncidentScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Incident Management"),
      ),

      body: ListView(

        padding: const EdgeInsets.all(16),

        children: [

          Card(

            child: ListTile(
              leading: const Icon(
                Icons.car_crash,
                color: Colors.red,
              ),

              title: const Text("Accident"),

              subtitle: const Text(
                "CBD Junction",
              ),

              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text("View"),
              ),
            ),
          ),

          Card(

            child: ListTile(
              leading: const Icon(
                Icons.construction,
                color: Colors.orange,
              ),

              title: const Text("Road Block"),

              subtitle: const Text(
                "Airport Road",
              ),

              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text("View"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnalyticsScreen extends StatelessWidget {

  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Analytics"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            Card(
              child: SizedBox(
                height: 250,

                child: Center(
                  child: Text(
                    "Vehicle Trend Chart",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Card(
              child: SizedBox(
                height: 250,

                child: Center(
                  child: Text(
                    "Congestion Heatmap",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall,
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
