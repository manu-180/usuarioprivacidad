import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Opciones de Privacidad',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PrivacyOptionsScreen(),
    );
  }
}

class PrivacyOptionsScreen extends StatelessWidget {
  const PrivacyOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opciones de Privacidad del Usuario'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Opciones de Privacidad de Assistify',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Última actualización: [Fecha]',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 20),
            _buildSection('1. Control de Datos Personales', [
              '• Puedes actualizar o eliminar tu información personal desde la configuración de tu cuenta.',
              '• Si deseas eliminar tu cuenta y todos los datos asociados, contáctanos a manunv97@gmail.com.',
            ]),
            _buildSection('2. Preferencias de Notificaciones', [
              '• Puedes gestionar y personalizar las notificaciones en la configuración de la app.',
              '• Si deseas desactivar todas las notificaciones, accede a los ajustes de tu dispositivo.',
            ]),
            _buildSection('3. Gestión de Suscripciones', [
              '• Para cancelar una suscripción en Google Play, ve a la sección de suscripciones en la Play Store.',
              '• Para cancelar una suscripción en la App Store, accede a la configuración de tu ID de Apple.',
            ]),
            _buildSection('4. Solicitudes de Acceso y Eliminación de Datos', [
              '• Puedes solicitar una copia de tus datos personales en cualquier momento enviando un correo a manunv97@gmail.com.',
              '• Si deseas que eliminemos toda tu información de nuestros servidores, envíanos una solicitud de eliminación.',
            ]),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                child: const Text(
                  'Guardar Preferencias',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<String> content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ...content.map((text) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Text(
                text,
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
            )),
      ],
    );
  }
}
