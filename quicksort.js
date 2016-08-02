var quicksort = function(myArray) {
  if(myArray.length <= 1) {
    return myArray;
  } 

  var pivot = Math.floor((myArray.length -1)/2);
  var pivotVal = myArray[pivot]
  var less = [] 
  var more = [];

  myArray.splice(pivot, 1);
  myArray.forEach(function(currentVal,index,a){
    currentVal < pivotVal ? less.push(currentVal) : more.push(currentVal);
  });
  return (quicksort(less)).concat([pivotVal],quicksort(more))
}

myArray = [54, 12, 26, 93, 17, 77, 55, 67, 31, 44, 55, 20]
quicksort(myArray);
