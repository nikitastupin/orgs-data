# orgs-data


The main goal of this repository is to facilitate bug bounty and vulnerability disclosure in the context of (1) leaked secrets (e.g. with [trufflesecurity/trufflehog](https://github.com/trufflesecurity/trufflehog)) and (2) GitHub Actions workflow vulnerabilities (e.g. with [nikitastupin/pwnhub](https://github.com/nikitastupin/pwnhub)) but also (3) to help with reconnaissance (e.g. gathering domains and parameter names from organization's repositories). Having said that, feel free to find and share other ways to use this repository!

## Contributing

> It is challenging to keep the database like this up-to-date. However, when each of us contributes a bit it becomes much easier and benefits everyone!

We are open to contributions and appreciate your willingness to help! In particular, we are happy when you share missing (1) GitHub organizations and (2) BBPs/VDPs. See the [contributing guide](CONTRIBUTING.md) for detailed instructions.

## Usage

### Legend

| Second Column value | Meaning |
| --- | --- |
| `?` | this is a new program and nobody has looked for GitHub organization(s) |
| `-` | someone has looked for GitHub organization(s) and haven't found one |
| non-GitHub URL | the program has multiple policy pages; this is the "main" policy page (e.g. https://hackerone.com/sifchain) |
| GitHub org URL | a GitHub organization (e.g. https://github.com/github) |

### Scripts

Use `all-orgs.sh` to list all GitHub organization names.

```bash
./scripts/all-orgs.sh
```

```
0xcap
18F
1debit
1inch-exchange
20Minuten
23andMe
...
```

Use `todo.sh` to list programs that you may find organizations for.

```bash
./scripts/todo.sh
```

```
/path/to/orgs-data/orgs-data/hackerone.external_program.tsv:https://hackerone.com/coinpayments	?
/path/to/orgs-data/orgs-data/orgs-data/hackerone.external_program.tsv:https://hackerone.com/ethereum	?
...
```

## Dependencies

- https://github.com/arkadiyt/bounty-targets-data
- https://github.com/disclose/bug-bounty-platforms
- :heart: https://github.com/disclose/diodb
- https://github.com/projectdiscovery/public-bugbounty-programs

## Acknowledgements

We are grateful to

- Danila Stupin
- [Ilya Tsaturov](https://twitter.com/itsaturov)

for their contributions during the early stages
