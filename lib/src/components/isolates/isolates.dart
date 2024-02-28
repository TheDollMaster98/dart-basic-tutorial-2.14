/// Isolates in Dart:
///
/// Gli isolates in Dart offrono una soluzione per sfruttare le architetture multi-core senza ricorrere direttamente all'uso di threads. Un isolate rappresenta un contesto di esecuzione isolato, fornendo un ambiente separato con la propria memoria e gestione degli errori.
///
/// Principali Caratteristiche:
///
/// 1. Contesto Isolato:
///    - Gli isolates operano in contesti di esecuzione indipendenti, ciascuno con la propria memoria e stack di chiamate.
///    - Questo isolamento previene molti problemi legati alla concorrenza, poiché gli isolati non condividono direttamente lo stato della memoria.
///
/// 2. Comunicazione Asincrona:
///    - La comunicazione tra isolati avviene attraverso il meccanismo di messaggistica asincrona.
///    - Gli isolati possono scambiare informazioni solo inviando messaggi, evitando la condivisione diretta di variabili o oggetti.
///
/// 3. Creazione di Isolati:
///    - L'utilizzo di isolati inizia con la creazione di nuovi isolati tramite la funzione `Isolate.spawn`.
///    - Ogni isolato esegue una funzione specificata durante la creazione.
///
///
/// Vantaggi degli Isolati:
/// - Concorrenza Efficiente: Consentono l'esecuzione di operazioni concorrenti sfruttando le capacità multi-core senza la complessità dei thread.
/// - Isolamento: Ogni isolato ha il proprio spazio di memoria, riducendo i rischi associati alla condivisione dello stato.
/// - Scalabilità: Gli isolati possono essere sfruttati per migliorare le prestazioni su architetture multi-core.
///
/// Gli isolati rappresentano una scelta efficace per gestire operazioni concorrenti in Dart, garantendo al contempo sicurezza e facilità di programmazione.
library;

import 'dart:isolate';

/// In questo esempio
/// viene creato un nuovo isolato utilizzando `Isolate.spawn`
/// e la funzione `isolateFunction` viene eseguita in modo indipendente rispetto all'isolato principale.
/// La comunicazione avviene attraverso il passaggio di un messaggio.
void isolates() {
  // Creazione di un nuovo isolato e specifica della funzione da eseguire.
  Isolate.spawn(isolateFunction, "Hello from main isolate!");
}

// Funzione eseguita in un nuovo isolato.
void isolateFunction(message) {
  print("Isolate received message: $message");
}
