function sortProperties(sortObj, fn) {
  // convert object into array
  var sortable = [];

  for (var key in sortObj) {
    // skip loop if the property is from prototype
    if (!sortObj.hasOwnProperty(key)) {
      continue;
    }

    var obj = sortObj[key];
    sortable.push([obj.overlap, obj.overlapWith]); // each item is an array in format [key, value]
  }

  // sort items by value
  if (fn) {
    sortable.sort(fn);
  }

  return sortable; // array in format [ [ key1, val1 ], [ key2, val2 ], ... ]
}
