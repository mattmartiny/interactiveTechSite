//Array to store user's cart info
var cart = [];

//Function to add items to the cart - will be wired up
//to <a> in the HTML
function addToCart(id) {
    //Check to see if a book has been added to the cart yet.
    //If not, create a .qty property and assign it a value of 1.
    var bookObj = books[id - 1];
    if (typeof bookObj.qty === "undefined") {
        bookObj.qty = 1;
        cart.push(bookObj);
        //The first time they click a button to add it to the cart,
        //push() the bookObj to the array
    }
    //otherwise, add 1 to the qty
    else {
        bookObj.qty += 1;
    }

    //For testing purposes only
    console.clear();
    for (var i = 0; i < cart.length; i++) {

        console.log(cart[i]);
    }

    //Make the span visible
    document.getElementById('cart-notification').style.display =
        "block";

    //Total number of books in the cart
    var cartQty = 0;
    for (var p = 0; p < cart.length; p++) {
        cartQty += cart[p].qty;
    }

    //Display # of books on the notification-counter
    document.getElementById('cart-notification').innerHTML =
        cartQty;

    //Calling a function that will return the title,
    //author, price, and qty of each book
    document.getElementById('cart-contents').innerHTML =
        getCartContents();

}


//This function returns a string of all items in the cart
function getCartContents() {
    var cartContent = "";
    var cartTotal = 0;

    for (var i = 0; i < cart.length; i++) {
        cartContent += cart[i].title + '<br />By ' +
            cart[i].author + '<br />Qty: ' + cart[i].qty +
            ' at $' + cart[i].price + ' each. <br /><br />';

        cartTotal += cart[i].qty * cart[i].price;
    }

    cartContent += "Cart Total: $" + cartTotal.toFixed(2);

    return cartContent;
}