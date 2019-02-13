class Todo{
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  //default constructor
  Todo(this._title, this._priority , this._date, [this._description]);
  //named constructor as there can only be a single default constructor
  //used incases such as editing
  Todo.withId(this._title, this._priority , this._date, [this._description]);

  //getters
  int get id => _id;
  String get title => _title;
  String get description => _description;
  String get date => _date;
  int get priority => _priority;

  //setters
  // we dont need setters for id because it will never change after tod creation
  set title (String newTitle){
    if(newTitle.length <= 255){
      _title = newTitle;
    }
  }

  set description (String newDescription){
    if(newDescription.length <= 255){
      _description = newDescription;
    }
  }

  set date (String newDate){
    _date = newDate;
  }
  set priority (int  newPriority){
    if(newPriority > 0 && newPriority<=3){
      _priority = newPriority;
    }
  }

  Map <String, dynamic>toMap(){
    var map = Map <String, dynamic>();
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;
    if (_id != null){
      map['id'] = _id;
    }
    return map;
  }
  // does the oposite of map ie takes in an object and transforms it
  // to a todoo
  Todo.fromObject(dynamic obj){
    this._id = obj['id'];
    this._title = obj['title'];
    this._description = obj['description'];
    this._priority = obj['priority'];
    this._date = obj['date'];
  }
}



