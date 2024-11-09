use actix_web::{web, App, HttpServer, Responder};

async fn hello_world() -> impl Responder {
    "Hello World from Rust!"
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new()
            .route("/", web::get().to(hello_world))
    })
    .bind("0.0.0.0:8080")?
    .run()
    .await
}
