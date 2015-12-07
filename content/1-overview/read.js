// declare our variable
var desks= []

//
// set rows 0,1,2 to contain an array of their own
//
desks[0]= ['Adam', 'Ben', 'Carl', 'David']
desks[1]= ['Edward', 'Frank', 'Georgia', 'Helen']
desks[2]= ['Isabelle', 'Joan', 'Kelly', 'Linda']


for(var row= 0; row < desks.length; row++){
	var studentRow= ''
	for(var column= 0; column < desks[row].length; column++){
		console.log('row[' +row+ ']col[' +column+ ']= ' +desks[row][column]);
	}
}