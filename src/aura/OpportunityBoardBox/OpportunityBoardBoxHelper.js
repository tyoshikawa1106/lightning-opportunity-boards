({
  getOpportuniesByApex : function(component) {
    var action = component.get("c.getOpportunies");
    action.setCallback(this, function(data) {
      component.set("v.opportunies", data.getReturnValue());
    });
    $A.enqueueAction(action);
  }
})