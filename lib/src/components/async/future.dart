/// Questa libreria dimostra l'uso di async/await in Dart per gestire
/// operazioni asincrone, come le richieste HTTP, che possono richiedere del tempo
/// per essere completate.
/// Dart supporta pienamente la programmazione asincrona tramite il concetto di
/// Future, simile a Promise in JavaScript.
library;

import 'package:http/http.dart' as http; // Per eseguire richieste HTTP
import 'dart:convert' as convert; // Per lavorare con JSON

// Funzione principale asincrona che dimostra l'uso di varie richieste HTTP
void future() async {
  print('First step: Esecuzione iniziata'); // Stampato prima dell'await

  try {
    // Effettuiamo una richiesta HTTP GET usando async/await
    final getResponse = await performHTTPRequest('GET');
    print("Risposta GET con async/await: $getResponse\n");

    // Deserializziamo la risposta JSON in un oggetto Todo
    final jsonResponse = convert.jsonDecode(getResponse);
    final todo = Todo.fromJson(jsonResponse);

    // Stampiamo l'oggetto deserializzato
    print("Risultato deserializzato: $todo\n");

    // Eseguiamo una richiesta HTTP POST con async/await
    final postResponse = await performHTTPRequest('POST');
    print("Risposta POST: $postResponse\n");

    // Eseguiamo una richiesta HTTP PUT con async/await
    final putResponse = await performHTTPRequest('PUT');
    print("Risposta PUT: $putResponse\n");

    // Eseguiamo una richiesta HTTP DELETE con async/await
    final deleteResponse = await performHTTPRequest('DELETE');
    print("Risposta DELETE: $deleteResponse\n");
  } catch (e) {
    print("Errore durante l'esecuzione di operazioni asincrone: $e");
  }

  print('Last step: Esecuzione terminata'); // Stampato dopo l'await
}

/// Funzione asincrona per eseguire una richiesta HTTP, gestendo vari metodi (GET, POST, PUT, DELETE)
Future<String> performHTTPRequest(String method) async {
  final url = Uri.https('jsonplaceholder.typicode.com', '/todos/1');

  // A seconda del metodo HTTP richiesto, eseguiamo l'operazione corrispondente
  http.Response response;

  switch (method) {
    case 'GET':
      response = await http.get(url); // Richiesta GET
      break;
    case 'POST':
      response =
          await http.post(url, body: {'title': 'New Todo'}); // Richiesta POST
      break;
    case 'PUT':
      response =
          await http.put(url, body: {'title': 'Updated Todo'}); // Richiesta PUT
      break;
    case 'DELETE':
      response = await http.delete(url); // Richiesta DELETE
      break;
    default:
      throw Exception('Metodo HTTP non supportato');
  }

  // Verifichiamo lo status della risposta HTTP
  if (response.statusCode == 200 || response.statusCode == 201) {
    // Se la richiesta è andata a buon fine, restituiamo il corpo della risposta
    return response.body;
  } else {
    // Se la richiesta fallisce, lanciamo un'eccezione
    throw Exception('Failed to perform $method request');
  }
}

/// Classe Todo per rappresentare un oggetto Todo recuperato dal server.
class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  const Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  // Metodo di fabbrica per deserializzare un oggetto JSON in un'istanza di Todo
  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        completed: json['completed'],
      );

  // Metodo toString per ottenere una rappresentazione leggibile
  @override
  String toString() =>
      "Todo: userId=$userId, id=$id, title='$title', completed=$completed";
}
