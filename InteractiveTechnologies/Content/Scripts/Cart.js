
    //For testing purposes only
    console.clear();
    for (var i = 0; i < cart.length; i++) {

        console.log(cart[i]);
    }

    //Make the span visible
    document.getElementById('cart-notification').style.display =
        "block";

    //Total number of books in the cart
    var cartQty = db.
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