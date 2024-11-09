# Use official Rust image as the builder
FROM rust:1.72 as builder

# Set the working directory
WORKDIR /usr/src/rust

# Copy Cargo.toml and src directory to the working directory
COPY Cargo.toml .
COPY src/ ./src/

# Build the application
RUN cargo build --release

# Use Ubuntu as the runtime image
FROM ubuntu:22.04

# Install required dependencies for Actix Web
RUN apt-get update && apt-get install -y \
    libssl-dev \
    pkg-config \
    libc6 \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /usr/src/rust

# Copy the compiled binary from the builder image
COPY --from=builder /usr/src/rust/target/release/rust .

# Expose port 8080
EXPOSE 8080

# Run the application
CMD ["./rust"]
