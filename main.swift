import Kitura
//Create a new router
let router=Router()
router.get("/"){
	request, response, next in
	response.send("Hello,World!")
	next()
}
//Add an HTTP server and connect it to the router
Kitura.addHTTPServer(onPort: 8080, with: router)

// Start the Kitura runloop (this call never returns)
Kitura.run()
