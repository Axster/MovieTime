# MovieTime

MovieTime è un'applicazione Flutter che sfrutta l'API di TMDB per fornire informazioni sui film attualmente in proiezione nei cinema in Italia. Gli utenti possono visualizzare un elenco di film insieme a dettagli come valutazioni, date di uscita e poster. Inoltre, gli utenti possono accedere a informazioni dettagliate su ciascun film, tra cui genere, trama, valutazione per età, valutazioni e trailer da YouTube.

## Funzionalità

- Sfoglia un elenco di film attualmente in proiezione nei cinema italiani.
- Visualizza dettagli del film, inclusi valutazioni, date di uscita e poster.
- Accedi a informazioni dettagliate su ciascun film come genere, trama e valutazione per età.
- Guarda i trailer dei film su YouTube cliccando sul poster del film.

## Dipendenze

- [flutter_bloc](https://pub.dev/packages/flutter_bloc): Libreria di gestione dello stato per Flutter.
- [freezed_annotation](https://pub.dev/packages/freezed_annotation): Generazione di codice per classi immutabili.
- [go_router](https://pub.dev/packages/go_router): Routing dichiarativo per Flutter.
- [http](https://pub.dev/packages/http): Libreria per effettuare richieste HTTP.
- [url_launcher](https://pub.dev/packages/url_launcher): Plugin Flutter per aprire URL in applicazioni mobili, desktop e web.

## Crediti

- Dati sui film forniti da [TMDB](https://www.themoviedb.org/).

## Prima di iniziare

Prima di eseguire il progetto, è necessario registrarsi su TMDB e ottenere una chiave API. Successivamente, crea un file denominato `api_key.dart` all'interno della directory `lib` e aggiungi il seguente codice:

```dart
// api_key.dart

const String apiKey = 'La_tua_chiave_API_TMDB';

```

Sostituisci 'La_tua_chiave_API_TMDB' con la tua chiave API TMDB.
 