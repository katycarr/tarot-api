## Tarot Api

**Models**
----
* Card
  * name
  * number
  * arcana
  * suit
  * alternate_names
  * img_url
* Suit
  * name
  * alternate_names
  * element
  * associated_class
  * faculty

**Card Index**
----
Returns json data about cards
* **URL**
`/cards(.:params)`

* **Method:**
`GET`

* **URL Params**

**Optional:**
* `q=[string]`
* `suit=[string]`
* `meaning=[string]`
* `sort=[asc OR desc]`

* **Sample Call:**
`fetch('/cards?q=fool')`

**Response:**
```
[{
  "name": "The Fool",
  "number": "0",
  "img_url": "https://upload.wikimedia.org/wikipedia/en/thumb/9/90/RWS_Tarot_00_Fool.jpg/220px-RWS_Tarot_00_Fool.jpg",
  "alternate_names": [
    "The Jester"
  ],
  "meanings": [
    {
      "id": 1,
      "name": "carefree"
    },
    {
      "id": 2,
      "name": "foolish"
    },
    {
      "id": 3,
      "name": "important decisions"
    },
    {
      "id": 4,
      "name": "new beginnings"
    },
    {
      "id": 5,
      "name": "optimistic"
    }
  ],
  "arcana": {
    "name": "Major"
  }
}]
```
