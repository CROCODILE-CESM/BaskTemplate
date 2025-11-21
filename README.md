# BaskTemplate

A template repository for regional ocean modeling workflows using tools developed in the NSF-funded [CROCODILE](https://github.com/CROCODILE-CESM?view_as=public) project.

## Usage

This repository is designed to be forked (e.g., `BaskMyRegionalCase`). After forking, run the installation script to set up packages in your forked repository, where you can commit and track your work. BaskTemplate itself remains lightweight by not committing submodules, but its install scripts always point to specific versions of each submodule.

## Installation

Navigate to the `install/` directory and run:

```bash
cd install
./install.sh [flags]
```

### Available Flags

- `--crocodash`: Install CrocoDash model components
- `--crococamp`: Install CrocoCamp diagnostics tools
- `--cupid`: Install CUPiD diagnostics framework
- `--cesm`: Install CESM model
- `--dart`: Install DART data assimilation system
- `--all`: Install all packages
- `--default`: Use default paths for all packages (non-interactive)

You can combine multiple flags. If no `--default` flag is provided, the script will prompt for custom paths for each package.

### Example

```bash
# Install CrocoDash and CrocoCamp with default paths
./install.sh --crocodash --crococamp --default

# Install all packages with default paths
./install.sh --all --default
```

## Subpackages

- **CrocoDash**: CESM-MOM6 regional cases set up management
- **CrocoCamp**: Diagnostics and analysis tools for MOM6 (and soon ROMS) model output
- **CUPiD**: NCAR's unified framework for running analysis and diagnostics on climate model output
- **CESM**: Community Earth System Model for climate simulations
- **DART**: Data Assimilation Research Testbed for ensemble data assimilation

## Template Notebooks

The repository will contain a `notebooks/` folder with template notebooks. These notebooks require the relevant packages/submodules to be installed or linked to function properly.
