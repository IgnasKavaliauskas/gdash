/// @func _reverse(array)
/// @desc Reverses the order of elements in array.
/// @param {Array} array The array to modify
/// @returns {Array} The reversed array
/// @note This method mutates the input array. To create a new array instead, use `_backward`
/*
@example
var arr = [0, 1, 2];
_reverse(arr);
// => [2, 1, 0];
*/

var i;
var arr;
var half;
var len;
var tmp;

arr = argument0;
len = array_length_1d(arr);
half = len div 2;

for (i = 0; i < half; i++) {
	tmp = arr[@ i];
	arr[@ i] = arr[@ len - 1 - i];
	arr[@ len - 1 - i] = tmp;
}

return arr;
