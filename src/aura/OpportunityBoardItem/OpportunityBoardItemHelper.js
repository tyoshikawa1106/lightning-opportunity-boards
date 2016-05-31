({
  setAmountValue : function(component) {
    var opportunity = component.get("v.opportunity");
    var amount = opportunity.Amount - 500;
    if (amount < 0) {
      amount = 0;
    }
    var intervalId = setInterval(function(){
      if (amount < opportunity.Amount) {
        amount = amount + 1;
        component.set("v.amount", amount);
      } else {
        clearInterval(intervalId);
      }
    }, 1);
  },
})