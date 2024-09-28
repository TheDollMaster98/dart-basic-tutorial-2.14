/// Questa libreria dimostra l'uso di async/await in Dart per gestire
/// operazioni asincrone, come le richieste HTTP, che possono richiedere del tempo
/// per essere completate.
/// Dart supporta pienamente la programmazione asincrona tramite il concetto di
/// Future, simile a Promise in JavaScript.
library;

import 'package:http/http.dart' as http; // Per eseguire richieste HTTP
import 'dart:convert' as convert; // Per lavorare con JSON

// Costante per la base URL del servizio REST API
const String baseUrl = 'jsonplaceholder.typicode.com';

/// Funzione principale asincrona che dimostra l'uso di varie richieste HTTP
void future() async {
  print('First step: Esecuzione iniziata'); // Stampato prima dell'await

  try {
    // Effettuiamo una richiesta HTTP GET, passando il percorso relativo
    final getResponse = await performHTTPRequest('GET', '/todos/1');
    print("Risposta GET con async/await: $getResponse\n");

    // Deserializziamo la risposta JSON in un oggetto Todo
    final jsonResponse = convert.jsonDecode(getResponse);
    final todo = Todo.fromJson(jsonResponse);

    // Stampiamo l'oggetto deserializzato
    print("Risultato deserializzato: $todo\n");

    // Eseguiamo una richiesta HTTP POST con un body
    final postResponse = await performHTTPRequest(
      'POST',
      '/todos',
      body: {'title': 'New Todo'},
    );
    print("Risposta POST: $postResponse\n");

    // Eseguiamo una richiesta HTTP PUT con un body
    final putResponse = await performHTTPRequest(
      'PUT',
      '/todos/1',
      body: {'title': 'Updated Todo'},
    );
    print("Risposta PUT: $putResponse\n");

    // Eseguiamo una richiesta HTTP DELETE, passando solo il percorso
    final deleteResponse = await performHTTPRequest('DELETE', '/todos/1');
    print("Risposta DELETE: $deleteResponse\n");
  } catch (e) {
    // Gestione degli errori nel caso in cui qualcosa vada storto
    print("Errore durante l'esecuzione di operazioni asincrone: $e");
  }

  print('Last step: Esecuzione terminata'); // Stampato dopo l'await
}

/// Funzione asincrona per eseguire una richiesta HTTP.
/// Accetta il metodo HTTP, l'URL e un body opzionale per POST/PUT.
Future<String> performHTTPRequest(String method, String urlPath,
    {Map<String, dynamic>? body}) async {
  // Creiamo l'URL completo usando Uri.https
  final url = Uri.https(baseUrl, urlPath);

  // Dichiarazione della variabile per contenere la risposta
  http.Response response;

  // A seconda del metodo HTTP richiesto, eseguiamo l'operazione corrispondente
  switch (method) {
    case 'GET':
      // Richiesta GET
      response = await http.get(url);
      break;
    case 'POST':
      // Richiesta POST, inviamo un oggetto JSON nel body se fornito
      response = await http.post(
        url,
        body: body != null ? convert.jsonEncode(body) : null,
        headers: {
          'Content-Type': 'application/json'
        }, // Definiamo l'header del contenuto
      );
      break;
    case 'PUT':
      // Richiesta PUT, inviamo un oggetto JSON aggiornato nel body se fornito
      response = await http.put(
        url,
        body: body != null ? convert.jsonEncode(body) : null,
        headers: {
          'Content-Type': 'application/json'
        }, // Definiamo l'header del contenuto
      );
      break;
    case 'DELETE':
      // Richiesta DELETE
      response = await http.delete(url);
      break;
    default:
      // Se il metodo non è riconosciuto, lanciamo un'eccezione
      throw Exception('Metodo HTTP non supportato');
  }

  // Verifichiamo lo status della risposta HTTP
  if (response.statusCode == 200 || response.statusCode == 201) {
    // Se la richiesta è andata a buon fine, restituiamo il corpo della risposta
    return response.body;
  } else {
    // Se la richiesta fallisce, lanciamo un'eccezione con il codice errore
    throw Exception(
        'Failed to perform $method request, Status code: ${response.statusCode}');
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
