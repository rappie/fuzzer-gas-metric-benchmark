> **🛠️ Update (Aug 2025):**  
> The gas metric issue for **Echidna** has been fixed in version **2.2.8**. If you're running a benchmark, make sure you're on the latest version to get accurate results.

# Fuzzer Gas Metric Benchmark

This repository aims to analyze and compare the gas usage metrics between **Echidna**, **Medusa**, and **Foundry**. 

## Benchmark Overview

To compare the gas usage metrics, we benchmark the process of minting ERC20 tokens and executing a custom `power` function repeatedly in a loop. This simulates a computationally intensive task aimed to provide a good indicator of gas consumption.

You can view the relevant code used for this benchmark in [`Benchmark.sol`](https://github.com/rappie/fuzzer-gas-metric-benchmark/blob/main/src/Benchmark.sol#L13-L17).

## Results

The following are the gas usage metrics observed from each tool:

- **Echidna**: `592,767`
- **Medusa**:  `601,767`
- **Foundry**: `601,817`

