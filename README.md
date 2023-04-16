# SyncMonitor

BTC SyncMonitor is a Bash script that allows you to monitor the synchronization status of the Bitcoin blockchain by comparing the current block height with the block height of your local Bitcoin node.

## Features

- Displays the current block height of the Bitcoin blockchain
- Retrieves the block height of the last synced block from your local Bitcoin node
- Calculates the days difference between the current blockchain height and the local synced block height
- Displays the synced block date based on an average of 10 minutes per block
- Provides an interface with colored text for easy readability

## Requirements

- curl
- bitcoin-cli (Bitcoin Core command-line interface)

## Usage

1. Clone the repository or download the `monitor.sh` script to your local machine.
2. Make sure the script has executable permissions. If not, you can set the permissions using `chmod +x monitor.sh`.
3. Run the script by executing `./monitor.sh` in your terminal.
4. The script will display the current block height, the synced block date, and the days difference between the synced block and the current date.

## Example Output

<img width="675" alt="Screenshot 2023-04-16 at 17 07 55" src="https://user-images.githubusercontent.com/64737169/232322102-47a34656-2b3d-4f6b-83f9-77e738927d8f.png">

## License

This script is released under the [MIT License](LICENSE).

## Disclaimer

BTC SyncMonitor is provided for informational and educational purposes only. It does not provide financial or investment advice, and you should use it at your own risk. Always do your own research and seek professional advice before making any investment decisions related to cryptocurrencies.

## Contributions

Contributions to BTC SyncMonitor are welcome! If you find any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.
