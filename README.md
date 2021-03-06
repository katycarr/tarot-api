## Tarot Api

**Models**
----
* Card `/cards{/id}`
  * id: integer
  * name: string
  * number: string
  * arcana: API resource
  * suit: APIT resource
  * alternate_names: array of strings
  * img_url: string
  * upright_meanings: array of meanings
  * reversed_meanings: array of meanings
* Suit `/suits{/id}`
  * id: integer
  * name: string
  * alternate_names: array of strings
  * element: string
  * associated_class: string
  * faculty: string
* Arcana `/arcanas`
  * id: integer
  * name: string
* Meaning `/meanings{/id}`
  * id: integer
  * name: string
  * cards: array of cards
* Spread `/spreads{/id}`
  * id: integer
  * name: string
  * number_of_cards: integer
  * positions: array of positions
    * id: integer
    * number: integer
    * signifies: string

**Optional Parameters:**
* `q=[string]`
* `suit=[string]`
* `meaning=[string]`
* `sort=[asc OR desc]`

**Sample Call:**
`fetch('/cards?q=fool')`

**Response:**
```
[{
  "id":1,
  "name":"The Fool",
  "number":"0",
  "alternate_names":["The Jester"],
  "arcana": {
    "name":"Major"
  }
}]
```
