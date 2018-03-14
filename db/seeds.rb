# create_table "arcanas", force: :cascade do |t|
#   t.string "name"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "cards", force: :cascade do |t|
#   t.string "name"
#   t.string "number"
#   t.integer "arcana_id"
#   t.integer "suit_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.string "alternate_names", default: [], array: true
#   t.string "img_url"
# end
#
# create_table "suits", force: :cascade do |t|
#   t.string "name"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.string "alternate_names", default: [], array: true
# end
#Create arcanas
Arcana.delete_all
Arcana.reset_pk_sequence
Arcana.create(name:'Major')
Arcana.create(name:'Minor')

#Create suits
Suit.delete_all
Suit.reset_pk_sequence
Suit.create(name:'')
Suit.create(name:'Wands', alternate_names:['Batons', 'Clubs', 'Staves'], element:'fire', associated_class:'peasantry', faculty:'creativity and will')
Suit.create(name:'Coins', alternate_names:['Pentacles', 'Disks', 'Rings'], element:'earth', associated_class:'merchants', faculty:'material body or possessions')
Suit.create(name:'Cups', alternate_names:['Chalices'], element:'water', associated_class:'clergy', faculty:'emotions and love')
Suit.create(name:'Swords', element:'air', associated_class:'nobility and military', faculty:'reason')

# CREATE MAJOR ARCANA
Card.delete_all
Card.reset_pk_sequence
Card.create(name:'The Fool', alternate_names:['The Jester'], number:'0', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/9/90/RWS_Tarot_00_Fool.jpg/220px-RWS_Tarot_00_Fool.jpg", arcana_id:1, suit_id:1)
Card.create(name:'The Magician', alternate_names:['The Magus, The Juggler'], number:'I', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/d/de/RWS_Tarot_01_Magician.jpg/150px-RWS_Tarot_01_Magician.jpg", arcana_id:1, suit_id:1)
Card.create(name:'The High Priestess', alternate_names:['The Popess'], number:'II', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/8/88/RWS_Tarot_02_High_Priestess.jpg/220px-RWS_Tarot_02_High_Priestess.jpg", arcana_id:1, suit_id:1)
Card.create(name:'The Empress', number:'III', img_url:"https://upload.wikimedia.org/wikipedia/en/d/d2/RWS_Tarot_03_Empress.jpg", arcana_id:1, suit_id:1)
Card.create(name:'The Emperor', number:'IV', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/RWS_Tarot_04_Emperor.jpg/150px-RWS_Tarot_04_Emperor.jpg", arcana_id:1, suit_id:1)
Card.create(name:'The Hierophant', alternate_names:['The Pope'], number:'V', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/8/8d/RWS_Tarot_05_Hierophant.jpg/150px-RWS_Tarot_05_Hierophant.jpg", arcana_id:1, suit_id:1)
Card.create(name:'The Lovers', number:'VI', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/d/db/RWS_Tarot_06_Lovers.jpg/220px-RWS_Tarot_06_Lovers.jpg", arcana_id:1, suit_id:1)
Card.create(name:'The Chariot', number:'VII', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/RWS_Tarot_07_Chariot.jpg/220px-RWS_Tarot_07_Chariot.jpg", arcana_id:1, suit_id:1)
Card.create(name:'Strength', alternate_names:['Fortitude', 'Lust'], number:'VIII', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/f/f5/RWS_Tarot_08_Strength.jpg/150px-RWS_Tarot_08_Strength.jpg", arcana_id:1, suit_id:1)
Card.create(name:'The Hermit', number:'IX', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/4/4d/RWS_Tarot_09_Hermit.jpg/220px-RWS_Tarot_09_Hermit.jpg", arcana_id:1, suit_id:1)
Card.create(name:'Wheel of Fortune', number:'X', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/RWS_Tarot_10_Wheel_of_Fortune.jpg/150px-RWS_Tarot_10_Wheel_of_Fortune.jpg", arcana_id:1, suit_id:1)
Card.create(name:'Justice', number:'XI', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/e/e0/RWS_Tarot_11_Justice.jpg/220px-RWS_Tarot_11_Justice.jpg", arcana_id:1, suit_id:1)
Card.create(name:'The Hanged Man', number:'XII', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/2/2b/RWS_Tarot_12_Hanged_Man.jpg/150px-RWS_Tarot_12_Hanged_Man.jpg", arcana_id:1, suit_id:1)
Card.create(name:'Death', number:'XIII', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/d/d7/RWS_Tarot_13_Death.jpg/220px-RWS_Tarot_13_Death.jpg", arcana_id:1, suit_id:1)
Card.create(name:'Temperance', number:'XIV', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/f/f8/RWS_Tarot_14_Temperance.jpg/150px-RWS_Tarot_14_Temperance.jpg", arcana_id:1, suit_id:1)
Card.create(name:'The Devil', number:'XV', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/5/55/RWS_Tarot_15_Devil.jpg/220px-RWS_Tarot_15_Devil.jpg", arcana_id:1, suit_id:1)
Card.create(name:'The Tower', number:'XVI', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/5/53/RWS_Tarot_16_Tower.jpg/220px-RWS_Tarot_16_Tower.jpg", arcana_id:1, suit_id:1)
Card.create(name:'The Star', number:'XVII', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/d/db/RWS_Tarot_17_Star.jpg/150px-RWS_Tarot_17_Star.jpg", arcana_id:1, suit_id:1)
Card.create(name:'The Moon', number:'XVIII', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/7/7f/RWS_Tarot_18_Moon.jpg/220px-RWS_Tarot_18_Moon.jpg", arcana_id:1, suit_id:1)
Card.create(name:'The Sun', number:'XIX', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/1/17/RWS_Tarot_19_Sun.jpg/170px-RWS_Tarot_19_Sun.jpg", arcana_id:1, suit_id:1)
Card.create(name:'Judgement', number:'XX', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/d/dd/RWS_Tarot_20_Judgement.jpg/220px-RWS_Tarot_20_Judgement.jpg", arcana_id:1, suit_id:1)
Card.create(name:'The World', number:'XXI', img_url:"https://upload.wikimedia.org/wikipedia/en/thumb/f/ff/RWS_Tarot_21_World.jpg/150px-RWS_Tarot_21_World.jpg", arcana_id:1, suit_id:1)


#Create minor arcana
ranks = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Page', 'Knight', 'Queen', 'King']
suits = Suit.all.select {|suit| suit.name != '' }

ranks.each do |rank|
  suits.each do |suit|
    card = Card.new
    card.name = rank+' of '+suit.name
    card.number = rank
    card.arcana_id = 2
    card.suit_id = suit.id
    card.save
  end
end

def addImg(card, img)
  found = Card.find_by(name:card)
  found.img_url = img
  found.save
end

addImg('Ace of Wands', 'https://upload.wikimedia.org/wikipedia/en/1/11/Wands01.jpg')
addImg('Two of Wands', 'https://upload.wikimedia.org/wikipedia/en/0/0f/Wands02.jpg')
addImg('Three of Wands', 'https://upload.wikimedia.org/wikipedia/en/f/ff/Wands03.jpg')
addImg('Four of Wands', 'https://upload.wikimedia.org/wikipedia/en/a/a4/Wands04.jpg')
addImg('Five of Wands', 'https://upload.wikimedia.org/wikipedia/en/9/9d/Wands05.jpg')
addImg('Six of Wands', 'https://upload.wikimedia.org/wikipedia/en/3/3b/Wands06.jpg')
addImg('Seven of Wands', 'https://upload.wikimedia.org/wikipedia/en/e/e4/Wands07.jpg')
addImg('Eight of Wands', 'https://upload.wikimedia.org/wikipedia/en/6/6b/Wands08.jpg')
addImg('Nine of Wands', 'https://upload.wikimedia.org/wikipedia/en/e/e7/Wands09.jpg')
addImg('Ten of Wands', 'https://upload.wikimedia.org/wikipedia/en/0/0b/Wands10.jpg')
addImg('Page of Wands', 'https://upload.wikimedia.org/wikipedia/en/6/6a/Wands11.jpg')
addImg('Knight of Wands', 'https://upload.wikimedia.org/wikipedia/en/1/16/Wands12.jpg')
addImg('Queen of Wands', 'https://upload.wikimedia.org/wikipedia/en/0/0d/Wands13.jpg')
addImg('King of Wands', 'https://upload.wikimedia.org/wikipedia/en/c/ce/Wands14.jpg')

addImg('Ace of Coins', 'https://upload.wikimedia.org/wikipedia/en/f/fd/Pents01.jpg')
addImg('Two of Coins', 'https://upload.wikimedia.org/wikipedia/en/9/9f/Pents02.jpg')
addImg('Three of Coins', 'https://upload.wikimedia.org/wikipedia/en/4/42/Pents03.jpg')
addImg('Four of Coins', 'https://upload.wikimedia.org/wikipedia/en/3/35/Pents04.jpg')
addImg('Five of Coins', 'https://upload.wikimedia.org/wikipedia/en/9/96/Pents05.jpg')
addImg('Six of Coins', 'https://upload.wikimedia.org/wikipedia/en/a/a6/Pents06.jpg')
addImg('Seven of Coins', 'https://upload.wikimedia.org/wikipedia/en/6/6a/Pents07.jpg')
addImg('Eight of Coins', 'https://upload.wikimedia.org/wikipedia/en/4/49/Pents08.jpg')
addImg('Nine of Coins', 'https://upload.wikimedia.org/wikipedia/en/f/f0/Pents09.jpg')
addImg('Ten of Coins', 'https://upload.wikimedia.org/wikipedia/en/4/42/Pents10.jpg')
addImg('Page of Coins', 'https://upload.wikimedia.org/wikipedia/en/e/ec/Pents11.jpg')
addImg('Knight of Coins', 'https://upload.wikimedia.org/wikipedia/en/d/d5/Pents12.jpg')
addImg('Queen of Coins', 'https://upload.wikimedia.org/wikipedia/en/8/88/Pents13.jpg')
addImg('King of Coins', 'https://upload.wikimedia.org/wikipedia/en/1/1c/Pents14.jpg')

addImg('Ace of Cups', 'https://upload.wikimedia.org/wikipedia/en/3/36/Cups01.jpg')
addImg('Two of Cups', 'https://upload.wikimedia.org/wikipedia/en/f/f8/Cups02.jpg')
addImg('Three of Cups', 'https://upload.wikimedia.org/wikipedia/en/7/7a/Cups03.jpg')
addImg('Four of Cups', 'https://upload.wikimedia.org/wikipedia/en/3/35/Cups04.jpg')
addImg('Five of Cups', 'https://upload.wikimedia.org/wikipedia/en/d/d7/Cups05.jpg')
addImg('Six of Cups', 'https://upload.wikimedia.org/wikipedia/en/1/17/Cups06.jpg')
addImg('Seven of Cups', 'https://upload.wikimedia.org/wikipedia/en/a/ae/Cups07.jpg')
addImg('Eight of Cups', 'https://upload.wikimedia.org/wikipedia/en/6/60/Cups08.jpg')
addImg('Nine of Cups', 'https://upload.wikimedia.org/wikipedia/en/2/24/Cups09.jpg')
addImg('Ten of Cups', 'https://upload.wikimedia.org/wikipedia/en/8/84/Cups10.jpg')
addImg('Page of Cups', 'https://upload.wikimedia.org/wikipedia/en/a/ad/Cups11.jpg')
addImg('Knight of Cups', 'https://upload.wikimedia.org/wikipedia/en/f/fa/Cups12.jpg')
addImg('Queen of Cups', 'https://upload.wikimedia.org/wikipedia/en/6/62/Cups13.jpg')
addImg('King of Cups', 'https://upload.wikimedia.org/wikipedia/en/0/04/Cups14.jpg')

addImg('Ace of Swords', 'https://upload.wikimedia.org/wikipedia/en/1/1a/Swords01.jpg')
addImg('Two of Swords', 'https://upload.wikimedia.org/wikipedia/en/9/9e/Swords02.jpg')
addImg('Three of Swords', 'https://upload.wikimedia.org/wikipedia/en/0/02/Swords03.jpg')
addImg('Four of Swords', 'https://upload.wikimedia.org/wikipedia/en/b/bf/Swords04.jpg')
addImg('Five of Swords', 'https://upload.wikimedia.org/wikipedia/en/2/23/Swords05.jpg')
addImg('Six of Swords', 'https://upload.wikimedia.org/wikipedia/en/2/29/Swords06.jpg')
addImg('Seven of Swords', 'https://upload.wikimedia.org/wikipedia/en/3/34/Swords07.jpg')
addImg('Eight of Swords', 'https://upload.wikimedia.org/wikipedia/en/a/a7/Swords08.jpg')
addImg('Nine of Swords', 'https://upload.wikimedia.org/wikipedia/en/2/2f/Swords09.jpg')
addImg('Ten of Swords', 'https://upload.wikimedia.org/wikipedia/en/d/d4/Swords10.jpg')
addImg('Page of Swords', 'https://upload.wikimedia.org/wikipedia/en/4/4c/Swords11.jpg')
addImg('Knight of Swords', 'https://upload.wikimedia.org/wikipedia/en/b/b0/Swords12.jpg')
addImg('Queen of Swords', 'https://upload.wikimedia.org/wikipedia/en/d/d4/Swords13.jpg')
addImg('King of Swords', 'https://upload.wikimedia.org/wikipedia/en/3/33/Swords14.jpg')

def find_or_create_meanings(card, phrases)
  card = Card.find_by(name:card)
  phrases.each do |phrase|
    meaning = Meaning.find_or_create_by(name:phrase)
    card.meanings << meaning
  end
end
# ADD MEANINGS

Meaning.delete_all
Meaning.reset_pk_sequence
CardMeaning.delete_all
CardMeaning.reset_pk_sequence
# Major Arcana
find_or_create_meanings('The Fool', ['carefree', 'foolish', 'important decisions', 'new beginnings', 'optimistic'])
find_or_create_meanings('The Magician', ['confident', 'creative', 'important communications', 'skillful', 'talented and proficient'])
find_or_create_meanings('The High Priestess', ['feminine influences', 'insightful', 'mystery', 'understanding', 'wisdom'])
find_or_create_meanings('The Empress', ['abundant creativity', 'fertility', 'fullfillment', 'mother figure', 'productivity'])
find_or_create_meanings('The Emperor', ['authority', 'father figure', 'masculine influence', 'rational', 'stable'])
find_or_create_meanings('The Hierophant', ['approval', 'conformity', 'consent', 'good advice', 'marriage', 'union'])
find_or_create_meanings('The Lovers', ['attachment', 'combination', 'conflicting choices', 'partners', 'relationships', 'union'])
find_or_create_meanings('The Chariot', ['journey', 'progression', 'strong character', 'success from effort', 'transportation', 'movement'])
find_or_create_meanings('Strength', ['energy', 'facing problems', 'strength', 'vitality', 'willpower'])
find_or_create_meanings('The Hermit', ['detachment', 'guidance', 'solitude', 'soul-searching', 'introspection', 'thinking', 'reflection'])
find_or_create_meanings('Wheel of Fortune', ['change', 'destiny', 'good luck', 'life cycles', 'new direction'])
find_or_create_meanings('Justice', ['balance', 'equality', 'fairness', 'justice', 'law', 'legal matters'])
find_or_create_meanings('The Hanged Man', ['transition', 'gaining for sacrifice', 'suspending', 'restricting', 'discontinued'])
find_or_create_meanings('Death', ['end', 'new beginnings', 'loss', 'dramatic change', 'destruction'])
find_or_create_meanings('Temperance', ['capable', 'control', 'harmony', 'balance', 'moderation', 'self-confidence'])
find_or_create_meanings('The Devil', ['anger', 'jealousy', 'resentment', 'self-delusion', 'selfishness', 'violence'])
find_or_create_meanings('The Tower', ['destruction', 'dramatic change', 'loss', 'ruin', 'new beginnings', 'unexpected events'])
find_or_create_meanings('The Star', ['calm', 'serenity', 'destiny', 'hope', 'opportunity', 'renewal'])
find_or_create_meanings('The Moon', ['be careful', 'caution', 'confusion', 'delusion', 'risk'])
find_or_create_meanings('The Sun', ['abundance', 'achievement', 'joy', 'productivity', 'success'])
find_or_create_meanings('Judgement', ['change', 'decisions', 'success', 'transformation', 'upheaval'])
find_or_create_meanings('The World', ['certainty', 'completion', 'positive', 'reward', 'satisfaction'])

#Cups
find_or_create_meanings('King of Cups', ['compassionate', 'good advice', 'helpful', 'integrity', 'mature, authoritative man', 'spouse'])
find_or_create_meanings('Queen of Cups', ['intuitive', 'mature, sensitive woman', 'spouse', 'virtuous', 'wisdom'])
find_or_create_meanings('Knight of Cups', ['arrival', 'creative', 'invitation', 'new opportunities', 'proposal'])
find_or_create_meanings('Page of Cups', ['announcement', 'birth', 'creative ideas', 'good news', 'message'])
find_or_create_meanings('Ten of Cups', ['abundance', 'achievement', 'commitment', 'family', 'happiness'])
find_or_create_meanings('Nine of Cups', ['complete', 'fullfillment', 'generosity', 'pleasure', 'satisfaction'])
find_or_create_meanings('Eight of Cups', ['abandonment', 'avoidance', 'changes in lifestyle', 'leaving', 'going', 'personal developemtn'])
find_or_create_meanings('Seven of Cups', ['confusion', 'dreams', 'ambitions', 'speculation', 'decisions', 'temptation'])
find_or_create_meanings('Six of Cups', ['apology', 'past associations', 'reconciliation', 'reminiscent', 'return'])
find_or_create_meanings('Five of Cups', ['avoidance', 'detachment', 'loss', 'new hope', 'regret'])
find_or_create_meanings('Four of Cups', ['boredom', 'disappointment', 'dissatisfaction', 're-evaluation', 'tedious'])
find_or_create_meanings('Three of Cups', ['abundance', 'celebration', 'creativity', 'entertainment', 'gathering'])
find_or_create_meanings('Two of Cups', ['commitment', 'friendship', 'love', 'partnership', 'relationships'])
find_or_create_meanings('Ace of Cups', ['abundance', 'creativity', 'intense relationships', 'satisfaction', 'success'])

#Swords
find_or_create_meanings('King of Swords', ['mature, authoritative man', 'assertive', 'authority', 'government', 'law', 'leadership'])
find_or_create_meanings('Queen of Swords', ['mature, perceptive woman', 'independence', 'loss', 'pain', 'separation'])
find_or_create_meanings('Knight of Swords', ['conflict', 'destruction', 'domineering', 'loss', 'unexpected'])
find_or_create_meanings('Page of Swords', ['aggressive', 'challenging', 'change', 'intelligence', 'vigilance'])
find_or_create_meanings('Ten of Swords', ['end', 'failure', 'mortality', 'new hope', 'ruin'])
find_or_create_meanings('Nine of Swords', ['accidents', 'paranoia', 'depression', 'grief', 'mental anguish'])
find_or_create_meanings('Eight of Swords', ['constraint', 'disillusionment', 'frustration', 'obstacles', 'restricting'])
find_or_create_meanings('Seven of Swords', ['avoiding confrontation', 'failure', 'incomplete', 'theft', 'unknown opponents'])
find_or_create_meanings('Six of Swords', ['journey', 'better future', 'escape', 'left over challenges', 'travel'])
find_or_create_meanings('Five of Swords', ['conflict', 'defeat', 'loss', 'low self-esteem', 'separation'])
find_or_create_meanings('Four of Swords', ['delays', 'healing', 'rest', 'sickness', 'withdrawal'])
find_or_create_meanings('Three of Swords', ['new beginnings', 'loss', 'pain', 'separation', 'suffering'])
find_or_create_meanings('Two of Swords', ['balance', 'conflict resolution', 'decisions', 'peace of mind', 'prejudice'])
find_or_create_meanings('Ace of Swords', ['achievement', 'advantage', 'mental focus', 'victory'])

#Wands
find_or_create_meanings('King of Wands', ['authority figure', 'financial gain', 'honest', 'trustworthy', 'mediation', 'professional'])
find_or_create_meanings('Queen of Wands', ['career-oriented', 'hard-worker', 'honest', 'independence', 'home-loving', 'thoughtful'])
find_or_create_meanings('Knight of Wands', ['challenging', 'determination', 'travel', 'leadership', 'unpredictability'])
find_or_create_meanings('Page of Wands', ['adventurous', 'ambitious', 'energetic', 'active', 'new beginnings', 'skillful'])
find_or_create_meanings('Ten of Wands', ['burdens', 'challenges', 'intense pressure', 'oppression', 'overcommitment'])
find_or_create_meanings('Nine of Wands', ['afraid', 'cautious', 'defensive', 'impermanent security', 'inner strength'])
find_or_create_meanings('Eight of Wands', ['hasty actions', 'journey', 'travel', 'flight', 'motion', 'end to a delay'])
find_or_create_meanings('Seven of Wands', ['coping', 'resistance', 'courage', 'long-term successes', 'perseverance', 'strength'])
find_or_create_meanings('Six of Wands', ['completion', 'good news', 'reward', 'recognition', 'success', 'triumph'])
find_or_create_meanings('Five of Wands', ['anxiety', 'conflict', 'disagreement', 'strife', 'struggle'])
find_or_create_meanings('Four of Wands', ['celebration', 'happiness', 'completion', 'harmony', 'new beginnings', 'pleasure'])
find_or_create_meanings('Three of Wands', ['achievement', 'fresh starts', 'long-term success', 'partnership', 'trade'])
find_or_create_meanings('Two of Wands', ['achievement', 'anxiety', 'gain', 'goals', 'partnership'])
find_or_create_meanings('Ace of Wands', ['birth', 'commencement', 'creativity', 'inventiveness', 'new beginnings'])

#Pentacles
find_or_create_meanings('King of Coins', ['confidence', 'reliability', 'security', 'success', 'wealth'])
find_or_create_meanings('Queen of Coins', ['abundance', 'financial help', 'practicality', 'prosperity', 'wealth'])
find_or_create_meanings('Knight of Coins', ['ambitious', 'dependable', 'faithful', 'honorable', 'thorough'])
find_or_create_meanings('Page of Coins', ['attentive', 'motivated', 'scholarship', 'skillful', 'studious'])
find_or_create_meanings('Ten of Coins', ['close relationships', 'family', 'fortune', 'inheritance', 'prosperity'])
find_or_create_meanings('Nine of Coins', ['abundance', 'financial security', 'opulence', 'prosperity', 'wealth'])
find_or_create_meanings('Eight of Coins', ['apprentice', 'career', 'craftsmanship', 'new skills', 'prudence'])
find_or_create_meanings('Seven of Coins', ['business', 'trade', 'long-term success', 'occupation', 'perseverance', 'wealth'])
find_or_create_meanings('Six of Coins', ['distribution', 'donation', 'favor', 'prosperity', 'solvency'])
find_or_create_meanings('Five of Coins', ['emotional troubles', 'financial troubles', 'inqdequacy', 'poverty', 'scarcity', 'worry'])
find_or_create_meanings('Four of Coins', ['certainty', 'possessiveness', 'reliability', 'security', 'tenacity'])
find_or_create_meanings('Three of Coins', ['excellence', 'mastery', 'satisfaction', 'success', 'teamwork'])
find_or_create_meanings('Two of Coins', ['balance', 'fluctuating wealth', 'juggling', 'prudence', 'transfer', 'exchange'])
find_or_create_meanings('Ace of Coins', ['emotional stability', 'financial gain', 'luck', 'recognition', 'success'])


#Create spreads
Spread.delete_all
Spread.reset_pk_sequence
Position.delete_all
Position.reset_pk_sequence

three = Spread.create(name:"Three Card", number_of_cards:3)
three.positions.build(number:1, signifies:'past').save
three.positions.build(number:2, signifies:'present').save
three.positions.build(number:3, signifies:'future').save

cross = Spread.create(name:"Celtic Cross", number_of_cards:10)
cross.positions.build(number:1, signifies:'current situation').save
cross.positions.build(number:2, signifies:'tools or obstacles').save
cross.positions.build(number:3, signifies:'past').save
cross.positions.build(number:4, signifies:'future, current path').save
cross.positions.build(number:5, signifies:'subconscious influences').save
cross.positions.build(number:6, signifies:'conscious desires').save
cross.positions.build(number:7, signifies:'you').save
cross.positions.build(number:8, signifies:'environment').save
cross.positions.build(number:9, signifies:'hopes and/or fears').save
cross.positions.build(number:10, signifies:"what's to come").save

dream = Spread.create(name:"Dream Exploration", number_of_cards:3)
dream.positions.build(number:1, signifies:'relevance to life').save
dream.positions.build(number:2, signifies:'lessons to be learned').save
dream.positions.build(number:3, signifies:'application to life').save


# Create reversed meanings
def create_reverse_meaning(card, phrases)
  card = Card.find_by(name:card)
  phrases.each do |phrase|
    meaning = Meaning.find_or_create_by(name:phrase)
    CardMeaning.create(card_id:card.id, meaning_id:meaning.id, reversed:true)
  end
end

create_reverse_meaning('The Fool', ['naive', 'foolish', 'risk-taking'])
create_reverse_meaning('The Magician', ['manipulation', 'weakness', 'lack of imagination', 'self-doubt'])
create_reverse_meaning('The High Priestess', ['hidden agendas', 'selfishness', 'lack of understanding'])
create_reverse_meaning('The Empress', ['indecisiveness', 'over dependence', 'infidelity'])
create_reverse_meaning('The Emperor', ['dominance', 'immaturity', 'indecisiveness', 'deceit'])
create_reverse_meaning('The Hierophant', ['bad advice', 'single-mindedness', 'rebelliousness'])
create_reverse_meaning('The Lovers', ['distrust', 'manipulation', 'unrealistic expectations'])
create_reverse_meaning('The Chariot', ['failure', 'aggression', 'unexpected loss', 'self-indulgence'])
create_reverse_meaning('Strength', ['self-doubt', 'weakness', 'alienation', 'lack of self discipline'])
create_reverse_meaning('The Hermit', ['isolation', 'loneliness', 'risk-taking', 'self-pity', 'immaturity'])
create_reverse_meaning('Wheel of Fortune', ['bad luck', 'lack of control', 'unforeseen events'])
create_reverse_meaning('Justice', ['unfairness', 'dishonesty', 'intolerance', 'bias'])
create_reverse_meaning('The Hanged Man', ['indecision', 'delay', 'martyrdom'])
create_reverse_meaning('Death', ['resistance to change', 'stagnation', 'stuck', 'avoidance'])
create_reverse_meaning('Temperance', ['imbalance', 'excess', 'impatience', 'self-indulgence'])
create_reverse_meaning('The Devil', ['detachment', 'breaking free', 'emotional imprisonment', 'overcoming adversity'])
create_reverse_meaning('The Tower', ['fear of change', 'procrastination', 'avoidance of disaster'])
create_reverse_meaning('The Star', ['despair', 'discouragement', 'unwillingness to adapt', 'illness'])
create_reverse_meaning('The Moon', ['self-deceit', 'confusion', 'mood swings'])
create_reverse_meaning('The Sun', ['loneliness', 'depression', 'broken union'])
create_reverse_meaning('Judgement', ['self-doubt', 'illness', 'fear of death', 'denial'])
create_reverse_meaning('The World', ['disappointment', 'hesitation', 'unfinished business', 'lack of closure'])
