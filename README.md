# Snippes collection

## How to Loop through plain JavaScript object with objects as members?

```javascript
for (var key in validation_messages) {
    // skip loop if the property is from prototype
    if (!validation_messages.hasOwnProperty(key)) continue;
var obj = validation_messages[key];
    for (var prop in obj) {
        // skip loop if the property is from prototype
        if(!obj.hasOwnProperty(prop)) continue;

        // your code
        alert(prop + " = " + obj[prop]);
    }
}
```

## check existence of a var that equals 0

```javascript
Number.isInteger(nTest);
```

## The tilde ~
It is a unary operator that takes the expression to its right performs this small algorithm on it (where `n` is the expression to the right of the tilde): `-(n+1)`

```javascript
console.log(~-2); // 1
console.log(~-1); // 0
console.log(~0);  // -1
console.log(~1);  // -2
```

`~~` converts a string to number
```javascript
console.log(~~-2); // -2
console.log(~~"-1"); // -1
```

### ~-1 is 0

If you look back at the first code sample, you’ll see that using ~ on -1 converts it to 0. The number 0 is a falsey value, meaning that it will evaluate to false when converted to a Boolean. That might not seem like a big insight at first, but remember functions like indexOf will return -1 when the query is not found. This means that instead of writing something similar to this:

```javascript
if (someStr.indexOf("a") >= 0) {
	// Found it
} else  {
	// Not Found
}
```

You can now have fewer characters in your code so you can write it like this:
```javascript
if (~someStr.indexOf("a")) {
	// Found it
} else  {
	// Not Found
}
```

## sortProperties

```javascript
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
```

## How to get a JavaScript object's class?

### Depending on what you need getClass() for, there are several options in JavaScript:
* typeof
* instanceof
* obj.constructor
* func.prototype, proto.isPrototypeOf

*A few examples:*
```javascript
function Foo() {}
var foo = new Foo();
typeof Foo;             // == "function"
typeof foo;             // == "object"
foo instanceof Foo;     // == true
foo.constructor.name;   // == "Foo"
Foo.name                // == "Foo"    
Foo.prototype.isPrototypeOf(foo);   // == true
Foo.prototype.bar = function (x) {return x+x;};
foo.bar(21);            // == 42
```

# Git snippes

## create a new repository on the command line
```
echo "# snippes" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/S3lected/snippes.git
git push -u origin master
```

### push an existing repository from the command line
```
git remote add origin https://github.com/S3lected/snippes.git
git push -u origin master
```

## Ignore files that have already been committed to a Git repository

To untrack a single file that has already been added/initialized to your repository, i.e., stop tracking the file but not delete it from your system use: `git rm --cached filename`

To untrack every file that is now in your .gitignore:

First commit any outstanding code changes, and then, run this command: `git rm -r --cached .`

This removes any changed files from the index(staging area), then just run: `git add .`

Commit it: `git commit -m ".gitignore is now working"`

# npm snippes

## Proxy settings
add in `~/.npmrc` follow line `https-proxy=http://urlToProxy:8080`
