App.AppAdapter = Em.Mixin.create # DS.RESTAdapter.extend
  name: "AppAdapter"

# DS.RESTAdapter.configure("plurals", { party: "parties" });    

# App.Store= DS.Store.extend
#   revision:11
#   adapter: DS.RESTAdapter.createWithMixins(App.AppAdapter, {
#     url:"http://localhost:3000"
#   })