## Active Records Association

 ## belongs to

 - foreign key => will be housed in child object tables


 ## has Many

 ## has Many through

### Association
  author => has many posts, has many categories through posts
  category => has many posts, has many authors through posts
  post => belongs to an author, belongs to a category