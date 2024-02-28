/// Async/await in Dart:
/// Dart sorride al paradigma event-dreamer
/// semplificando la programmazione reattiva programmata agli eventi.
/// - "async" = funzione asincrone.
/// - "await" = attendo il risultato di una "future".
/// - "future" = sono come le promise su js.
/// quindi sono delle func che non restituiscono subito un valore
/// ma eseguono delle computazioni in modo asincrono in background
/// quando il risultato è pronto viene restituito al chiamate.
///
///
library;

// Importazioni necessarie
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

// Funzione principale asincrona
void future() async {
  print('first step'); // Vengono stampati prima del await

  try {
    // Esecuzione di operazioni asincrone con async/await
    final response = await performHTTPRequest();
    print("Risposta con async/await: $response\n");

    // Deserializzazione del JSON in un oggetto Todo
    final jsonResponse = convert.jsonDecode(response);
    final todo = Todo.fromJson(jsonResponse);

    // Stampa dell'oggetto risultante
    print("Chiamata deserializzata: $todo");
  } catch (e) {
    print("Errore durante l'esecuzione dell'operazione asincra: $e");
  }

  print('last step'); // Vengono stampati dopo del await;
}

// Funzione asincrona per eseguire una chiamata HTTP
Future<String> performHTTPRequest() async {
  // la funziona get è essa stessa una future:
  // con then specifico il risultato ottenuto dalla future.
  // tuttavia romperebbe il flusso di esecuzione dle metodo:
  // http.get(url).then((response) {...});
  final url = Uri.https('jsonplaceholder.typicode.com', '/todos/1');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to load page');
  }
}

// Classe Todo per rappresentare un oggetto Todo
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

  // Metodo toString per una rappresentazione leggibile
  @override
  String toString() =>
      "Todo: userId=$userId, id=$id, title='$title', completed=$completed";
}
