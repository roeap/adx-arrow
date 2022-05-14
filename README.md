<p align="center">
  <img src="assets/adx_arrow.png" alt="dash-bootstrap-components logo" width="400">
</p>

# ADX-Arrow

High performance Kusto (Azure Data Explorer) client based on Apache Arrow and Rust.

## Usage

```py
from arrow_adx import KustoClient
import pyarrow as pa

client = KustoClient("<service-url>")

batches = client.execute("<database>", "<query>")
table = pa.Table.from_batches(batches)
```
