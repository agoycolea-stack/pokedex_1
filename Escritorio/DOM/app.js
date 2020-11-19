document.addEventListener('DOMContentLoaded', function(event) {
  var div = document.createElement("div");
  div.classList.add("row", "mx-5", "my-5" );
    
  document.body.appendChild(div);
  var div2 = document.createElement("div");

  div2.classList.add("col-md-4");
  div2.classList.add("order-md-2");

  div2.classList.add("mb-4");
  div.appendChild(div2);
  var h4 = document.createElement("h4");
  h4.classList.add("d-flex", "justify-content-between", "align-items-center", "mb-3");
  div2.appendChild(h4);

  const span = document.createElement("span");
  const text = document.createTextNode("Your cart");
  span.appendChild(text);
  span.classList.add("text-muted");
  h4.appendChild(span);

  const span2 = document.createElement("span");
  const text2 = document.createTextNode("3");
  span2.appendChild(text2);
  span2.classList.add("badge", "badge-secondary", "badge-pill");
  h4.appendChild(span2);

  var ul = document.createElement("ul");
  ul.classList.add("list-group", "mb-5");
  div2.appendChild(ul);

  //----------------------------------------------------------------
  
  var li = document.createElement("li");
  li.classList.add("list-group-item", "d-flex", "justify-content-between" ,"lh-condensed");
  ul.appendChild(li);

  var div3 = document.createElement("div");
  li.appendChild(div3);

  var h6 = document.createElement("h6");
  const product = document.createTextNode("First Product");
  h6.appendChild(product);
  h6.classList.add("my-1");
  div3.appendChild(h6);
  var small = document.createElement("small");
  const description = document.createTextNode("Brief description");
  small.appendChild(description);
  small.classList.add("text-muted");
  div3.appendChild(small);

  const span3 = document.createElement("span");
  const price = document.createTextNode(" $12");
  span3.appendChild(price);
  span3.classList.add("text-muted");
  li.appendChild(span3);
  
  ///-----------------------------------------------------------------------

  var li2 = document.createElement("li");
  li2.classList.add("list-group-item", "d-flex", "justify-content-between" ,"lh-condensed");
  ul.appendChild(li2);

  var div4 = document.createElement("div");
  li2.appendChild(div4);

  var secondh6 = document.createElement("h6");
  const product2 = document.createTextNode("Second product");
  secondh6.appendChild(product2);
  secondh6.classList.add("my-1");
  div4.appendChild(secondh6);
  var small2 = document.createElement("small");
  const description2 = document.createTextNode("Brief description");
  small2.appendChild(description2);
  small2.classList.add("text-muted");
  div4.appendChild(small2);

  const span4 = document.createElement("span");
  const price2 = document.createTextNode(" $8");
  span4.appendChild(price2);
  span4.classList.add("text-muted");
  li2.appendChild(span4);

  ///-----------------------------------------------------

  var li3 = document.createElement("li");
  li3.classList.add("list-group-item", "d-flex", "justify-content-between" ,"lh-condensed");
  ul.appendChild(li3);

  var div5 = document.createElement("div");
  li3.appendChild(div5);

  var thirdh6 = document.createElement("h6");
  const product3 = document.createTextNode("Third product");
  thirdh6.appendChild(product3);
  thirdh6.classList.add("my-1");
  div5.appendChild(thirdh6);
  var small3 = document.createElement("small");
  const description3 = document.createTextNode("Brief description");
  small3.appendChild(description3);
  small3.classList.add("text-muted");
  div5.appendChild(small3);

  const span5 = document.createElement("span");
  const price3 = document.createTextNode(" $5");
  span5.appendChild(price3);
  span5.classList.add("text-muted");
  li3.appendChild(span5);

  ///----------------------------------------------------------

  var li4 = document.createElement("li");
  li4.classList.add("list-group-item", "d-flex", "justify-content-between" ,"lh-condensed");
  ul.appendChild(li4);
 
  var div6 = document.createElement("div");
  li4.appendChild(div6);
 
  var promoh6 = document.createElement("h6");
  const product4 = document.createTextNode("Promo code");
  promoh6.appendChild(product4);
  promoh6.classList.add("my-1", "text-success");
  div6.appendChild(promoh6);
  var small4 = document.createElement("small");
  const description4 = document.createTextNode("EXAMPLECODE");
  small4.appendChild(description4);
  small4.classList.add("text-success");
  div6.appendChild(small4);
 
  const span6 = document.createElement("span");
  const price4 = document.createTextNode("-$5");
  span6.appendChild(price4);
  span6.classList.add("text-success");
  li4.appendChild(span6);

  ///----------------------------------------------------------------

  var li5 = document.createElement("li");
  li5.classList.add("list-group-item", "d-flex", "justify-content-between" ,"lh-condensed");
  ul.appendChild(li5);
  const span7 = document.createElement("span");
  const total = document.createTextNode("Total (USD)");
  span7.appendChild(total);
  li5.appendChild(span7);

  const strong = document.createElement("strong");
  const totalprice = document.createTextNode("$20");
  strong.appendChild(totalprice);
  li5.appendChild(strong);

   //-----------------------------------------------------------------

  var form = document.createElement("form");
  form.classList.add("card", "p-2");
  div2.appendChild(form);
  var divform = document.createElement("div");
  divform.classList.add("input-group");
  form.appendChild(divform);
  var input = document.createElement("input");
  input.type = "text";
  input.className = "form-control";
  input.setAttribute('placeholder', 'Promo code');
  divform.appendChild(input);
  var divreddem = document.createElement("div");
  divreddem.classList.add("input-group-append");
  var button = document.createElement("button");
  button.classList.add("btn", "btn-secondary");
  const reddem= document.createTextNode("Reddem");
  button.appendChild(reddem);
  divreddem.appendChild(button);
  divform.appendChild(divreddem);


});