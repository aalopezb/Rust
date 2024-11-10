use actix_web::{web, App, HttpServer};

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    let port = std::env::var("PORT").unwrap_or_else(|_| String::from("8080"));
    HttpServer::new(|| {
        App::new()
            .route("/", web::get().to(|| async { "Hello, world!" }))
    })
    .bind(format!("0.0.0.0:{}", port))?
    .run()
    .await
}
