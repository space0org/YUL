# YUL Blockchain

YUL is a Bitcoin SV v1.1.0-based blockchain implementation with identical security parameters and settings.

## Overview

YUL blockchain provides a secure, scalable platform for mining and transaction processing, built on the proven Bitcoin SV codebase.

## Features

- Based on Bitcoin SV v1.1.0
- Identical security parameters to BSV mainnet
- Easy deployment across platforms (Mac, Windows, Ubuntu)
- Built-in monitoring and management tools

## Quick Start for Miners

1. Install Docker and Docker Compose
2. Clone this repository:
   ```bash
   git clone https://github.com/space0org/YUL.git
   cd YUL
   ```
3. Copy configuration templates:
   ```bash
   cp config/templates/bitcoin.conf.template config/bitcoin.conf
   cp .env.template .env
   ```
4. Edit `.env` with your settings
5. Start your node:
   ```bash
   docker-compose up -d
   ```

## Configuration

See [Configuration Guide](docs/setup/CONFIGURATION.md) for detailed settings.

## Parameters

All parameters match Bitcoin SV v1.1.0. See [Parameters Documentation](docs/setup/PARAMETERS.md).

## Mining

1. Configure your node using `config/bitcoin.conf`
2. Start mining:
   ```bash
   bitcoin-cli -conf=/data/bitcoin.conf generate 1
   ```

## Monitoring

Access the dashboard at `http://localhost:3010`

## Security

All security settings match BSV v1.1.0 mainnet configuration.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
