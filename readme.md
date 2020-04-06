# readme.md

## Requerimientos

Para usar el script que viene en este repositorio debe crear un ambiente para Python

```
virtualenv venv
```

Actívelo

```
source venv/bin/activate
```

Instale dependencias

```
pip3 install -r requirements.txt
```

## Ejecucion

El archivo `./getTweetsGivenTime.sh` espera recibir tres argumentos:

 * usuario en twitter
 * fecha de inicio en formato "yyyy-mm-dd hh:mm:ss"
 * fecha de finalizacion en formato "yyyy-mm-dd hh:mm:ss"

Una forma de invocar su ejecución es como sigue:

```
./getTweetsGivenTime.sh ColombiaET 2020-03-08 2020-04-05
```

Esta ejecución trae todos los tweets del usuario en twitter `ColombiaET` desde el 2020-03-08 al 2020-04-05.

Se recuperaron los tweets de los siguientes usuarios:

| Usuario | Tipo | Desc. | URL Tweeter | Archivo JSON | Corta Desc. |
|:-:|:-:|---|:-:|:-:|---|
| ColombiaET | El Espectador | Periódico | [URL](https://twitter.com/elespectador) | [JSON.GZ](Tweets-elespectador-2020-03-08-2020-04-05.json.gz) | Tweets de 2020-03-08 a 2020-04-05 |
| elpaiscali | El País Cali | Periódico | [URL](https://twitter.com/elpaiscali) | [JSON.GZ](Tweets-elpaiscali-2020-03-08-2020-04-05.json.gz)| Tweets de 2020-03-08 a 2020-04-05 |
| colombiaet | El Tiempo | Periódico | [URL](https://twitter.com/colombiaet?lang=en) |[JSON.GZ](Tweets-ColombiaET-2020-03-08-2020-04-05.json.gz) | Tweets de 2020-03-08 a 2020-04-05 |
| BluRadioCo | Blu Radio Colombia | Radio | [URL](https://twitter.com/BluRadioCo) | [JSON.GZ](Tweets-bluradioco-2020-03-08-2020-04-05.json.gz) | Tweets de 2020-03-08 a 2020-04-05 |
| lafm | La FM | Radio | [URL](https://twitter.com/lafm) | [JSON.GZ](Tweets-lafm-2020-03-08-2020-04-05.json.gz) | Tweets de 2020-03-08 a 2020-04-05 |
| NoticiasCaracol | Noticias Caracol | TV | [URL](https://twitter.com/NoticiasCaracol) | [JSON.GZ](Tweets-NoticiasCaracol-2020-03-08-2020-04-05.json.gz) | Tweets de 2020-03-08 a 2020-04-05 |
| NoticiasRCN | Noticias RCN | TV | [URL](https://twitter.com/NoticiasRCN) | [JSON.GZ](Tweets-NoticiasRCN-2020-03-08-2020-04-05.json.gz) | Tweets de 2020-03-08 a 2020-04-05 |
