/// Astrazione di tipo Generics:
///
/// I generics in Dart permettono di scrivere codice che può lavorare su diversi tipi di dati
/// senza dover specificare il tipo in modo esplicito. Questa caratteristica
/// rende il codice più flessibile e riusabile.
///
/// Invece di definire un tipo specifico per una variabile, parametro di funzione o valore di ritorno,
/// è possibile utilizzare un tipo generico che verrà specificato quando si utilizza la funzione o la classe.
///
/// Esempio:
/// Una lista generica può contenere elementi di qualsiasi tipo, dichiarata come List<T>.
///
/// Utilità dei Generics:
/// - **Riusabilità del Codice**: Scrivere codice che funziona con qualsiasi tipo di dato.
/// - **Type Safety**: Rilevamento degli errori a tempo di compilazione per garantire la correttezza del tipo.
/// - **Performance**: Ottimizzazione del codice generato dal compilatore per ciascun tipo specificato.
///
/// Sintassi Base:
/// - `<T>`: Definisce un tipo generico, dove `T` è un placeholder per il tipo.
/// - `List<T>`: Esempio di utilizzo di un tipo generico in una lista.
void generics() {
  // Stack di interi
  final stack = Stack();

  stack.push(2);
  stack.push(5);
  stack.push(10);

  print("Stack di int: $stack");

  stack.pop();
  print(stack);

  // Stack generica di stringhe
  final stackString = StackGenerica<String>();

  stackString.push("Hello");
  stackString.push("Sono");
  stackString.push("Dart");

  print("Stack di stringhe: $stackString");

  stackString.pop();
  print(stackString);

  // Stack generica estesa con i numeri decimali
  final stackNumber = StackNumber<double>();

  stackNumber.push(3.5);
  stackNumber.push(2);
  stackNumber.push(5.55);

  print("Stack di numeri: $stackNumber");

  stackNumber.pop();
  print(stackNumber);
}

class Stack {
  final List<int> items;

  Stack() : items = [];

  void push(int item) => items.add(item); // Aggiunge un elemento
  void pop() => items.removeLast(); // Rimuove l'ultimo elemento
  int top() => items.last; // Restituisce l'ultimo elemento
  bool get isEmpty => items.isEmpty; // Verifica se la pila è vuota

  @override
  String toString() => items.toString();
}

/// Classe generica da utilizzare con qualsiasi tipo.
/// Fino a quando non è specificato, sarà di tipo dynamic.
class StackGenerica<T> {
  final List<T> items;

  StackGenerica() : items = [];

  void push(T item) => items.add(item); // Aggiunge un elemento
  void pop() => items.removeLast(); // Rimuove l'ultimo elemento
  T top() => items.last; // Restituisce l'ultimo elemento
  bool get isEmpty => items.isEmpty; // Verifica se la pila è vuota

  @override
  String toString() => items.toString();
}

/// Non può essere di tipo stringa perché ho esteso num.
class StackNumber<T extends num> {
  final List<T> items;

  StackNumber() : items = [];

  void push(T item) => items.add(item); // Aggiunge un elemento
  void pop() => items.removeLast(); // Rimuove l'ultimo elemento
  T top() => items.last; // Restituisce l'ultimo elemento
  bool get isEmpty => items.isEmpty; // Verifica se la pila è vuota

  @override
  String toString() => items.toString();
}
