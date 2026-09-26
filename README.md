# Simple Interest Calculator - TYPO FIXED

A simple yet powerful Bash script to calculate simple interest based on principal amount, rate of interest, and time period.

## Overview

The Simple Interest Calculator is a command-line tool designed to help users quickly and accurately calculate simple interest. It uses the mathematical formula **SI = (P × R × T) / 100**, where:

- **P** = Principal amount (initial investment)
- **R** = Rate of interest per annum (in percentage)
- **T** = Time period (in years)

## Features

✨ **User-Friendly Interface**
- Interactive command-line prompts
- Color-coded output for better readability
- Clear and informative error messages

🔒 **Input Validation**
- Validates all user inputs
- Ensures numeric values only
- Requires positive numbers
- Prevents empty input errors

📊 **Accurate Calculations**
- Precise decimal calculations using `bc`
- Calculates both Simple Interest and Total Amount
- Shows detailed results breakdown

🔄 **Multiple Calculations**
- Perform unlimited calculations in one session
- Option to continue or exit after each calculation
- Persistent session state

## Installation

### Prerequisites

- Bash shell (version 4.0 or higher)
- `bc` utility (for precise calculations)
- Unix-like operating system (Linux, macOS, or WSL on Windows)

### Setup

1. Clone or download the repository:
   ```bash
   git clone https://github.com/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub.git
   cd Calculator
   ```

2. Ensure the script is executable:
   ```bash
   chmod +x simple-interest.sh
   ```

## Usage

### Running the Calculator

```bash
./simple-interest.sh
```

Or:

```bash
bash simple-interest.sh
```

### Input Prompts

The calculator will prompt you for:

1. **Principal Amount (P)**: The initial amount of money (e.g., 1000, 5000.50)
2. **Rate of Interest (R)**: Annual interest rate in percentage (e.g., 5, 10.5)
3. **Time Period (T)**: Duration in years (e.g., 1, 2.5, 10)

### Example Session

```
======================================
    Simple Interest Calculator        
======================================

Enter Principal Amount (P): 1000
Enter Rate of Interest (R) in %: 5
Enter Time Period (T) in years: 2

======================================
           Calculation Results         
======================================
Principal Amount (P):     1000
Rate of Interest (R):     5%
Time Period (T):         2 years

Simple Interest (SI):     100
Total Amount:            1100
======================================

Do you want to calculate again? (yes/no): no
Thank you for using Simple Interest Calculator!
Goodbye!
```

## Formula and Calculation

### Simple Interest Formula

```
SI = (P × R × T) / 100
```

### Total Amount Formula

```
Total Amount = Principal + Simple Interest
```

### Example Calculation

Given:
- Principal (P) = $1000
- Rate of Interest (R) = 5% per annum
- Time Period (T) = 2 years

Calculation:
```
SI = (1000 × 5 × 2) / 100
SI = 10000 / 100
SI = $100

Total Amount = 1000 + 100 = $1100
```

## Features in Detail

### 1. Input Validation

The calculator validates all inputs to ensure:
- No empty values are accepted
- Only numeric values (integers or decimals) are allowed
- All values must be positive numbers
- Re-prompts if invalid input is provided

### 2. Color-Coded Output

The calculator uses color codes for better readability:
- 🔵 Blue: Headers and section dividers
- 🟢 Green: Success messages and results
- 🟡 Yellow: Input labels
- 🔴 Red: Error messages

### 3. Decimal Precision

Using the `bc` utility, the calculator provides:
- 2 decimal places for all monetary calculations
- Accurate arithmetic for large numbers
- Prevention of floating-point errors

## File Structure

```
Calculator/
├── README.md                    # Project documentation
├── LICENSE                      # Apache License 2.0
├── CODE_OF_CONDUCT.md          # Community guidelines
├── CONTRIBUTING.md             # Contribution guidelines
├── simple-interest.sh           # Main calculator script
├── forked-repo                 # Fork information
├── merge_branches              # Merge operation details
├── bug-fix-revert              # Pull request verification
└── github-branches             # Branch information
```

## Examples

### Example 1: Savings Account Interest

```
Principal: $5000
Rate: 3.5%
Time: 3 years

SI = (5000 × 3.5 × 3) / 100 = $525
Total = $5525
```

### Example 2: Fixed Deposit

```
Principal: $10000
Rate: 8%
Time: 5 years

SI = (10000 × 8 × 5) / 100 = $4000
Total = $14000
```

### Example 3: Loan Interest

```
Principal: $2000
Rate: 6.5%
Time: 2 years

SI = (2000 × 6.5 × 2) / 100 = $260
Total = $2260
```

## Error Handling

The calculator handles various error scenarios:

| Error | Message | Solution |
|-------|---------|----------|
| Empty input | "Error: [Field] cannot be empty" | Enter a valid value |
| Non-numeric | "Error: [Field] must be a valid number" | Enter only numbers |
| Negative value | "Error: [Field] must be a positive number" | Enter a positive value |
| Invalid choice | "Invalid response. Please enter 'yes' or 'no'" | Type 'yes' or 'no' |

## Advanced Usage

### Using in Scripts

You can use this calculator in other shell scripts:

```bash
#!/bin/bash
# Calculate interest programmatically

principal=5000
rate=4
time=2

simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc -l)
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc -l)

echo "Principal: $principal"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"
```

### Batch Processing

Create a CSV file with calculations:

```bash
#!/bin/bash
echo "Principal,Rate,Time,SimpleInterest,Total" > results.csv

while IFS=',' read -r p r t; do
    si=$(echo "scale=2; ($p * $r * $t) / 100" | bc -l)
    total=$(echo "scale=2; $p + $si" | bc -l)
    echo "$p,$r,$t,$si,$total" >> results.csv
done < input.csv
```

## Requirements

- **Operating System**: Linux, macOS, or Windows (with WSL/Git Bash)
- **Shell**: Bash 4.0 or higher
- **Tools**: `bc` (usually pre-installed on most systems)
- **Disk Space**: ~5KB

## Troubleshooting

### Script Won't Run

```bash
# Make sure the script is executable
chmod +x simple-interest.sh

# Try running with bash explicitly
bash simple-interest.sh
```

### bc Command Not Found

```bash
# Install bc on Linux (Debian/Ubuntu)
sudo apt-get install bc

# Install bc on macOS
brew install bc
```

### Color Not Displaying

Some terminals don't support color codes. The script will still work, but without colored output. Run without color by removing color variables from the script.

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on:

- Reporting bugs
- Submitting enhancements
- Code style requirements
- Pull request process

## Code of Conduct

Please note that this project is governed by a [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

## License

This project is licensed under the **Apache License 2.0**. See [LICENSE](LICENSE) file for details.

## Authors and Contributors

- Created as part of IBM Developer Skills Network
- Enhanced with comprehensive documentation and features

## Support

For issues, questions, or suggestions:

1. Check the [CONTRIBUTING.md](CONTRIBUTING.md) file
2. Review existing issues on GitHub
3. Create a new issue with detailed information
4. Contact the maintainers

## Changelog

### Version 1.0.0 (Current)

- ✅ Initial release
- ✅ Interactive input prompts
- ✅ Input validation
- ✅ Color-coded output
- ✅ Decimal precision calculations
- ✅ Multiple calculation sessions
- ✅ Comprehensive documentation

## Roadmap

Future enhancements:

- [ ] Compound interest calculator
- [ ] CSV import/export functionality
- [ ] GUI version
- [ ] Multiple currency support
- [ ] Tax calculations
- [ ] Inflation adjustments

## Quick Reference

| Formula | Description |
|---------|-------------|
| SI = (P × R × T) / 100 | Simple Interest |
| Amount = P + SI | Total Amount |
| P = (SI × 100) / (R × T) | Principal (reverse calculation) |
| R = (SI × 100) / (P × T) | Rate (reverse calculation) |
| T = (SI × 100) / (P × R) | Time (reverse calculation) |

## Frequently Asked Questions

**Q: What's the difference between Simple Interest and Compound Interest?**

A: Simple Interest is calculated only on the principal amount, while Compound Interest is calculated on principal plus accumulated interest.

**Q: Can I use negative values?**

A: No, the calculator only accepts positive numbers for all inputs.

**Q: How accurate are the calculations?**

A: The calculator uses `bc` for arbitrary precision, accurate to 2 decimal places.

**Q: Can I modify the calculator?**

A: Yes! The project is open source. See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## Related Projects

- [IBM Developer Skills Network](https://github.com/ibm-developer-skills-network)
- [Git and GitHub Introduction](https://github.com/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub)

---

**Last Updated**: September 2026

**Status**: ✅ Active Development

**Maintained by**: IBM Developer Skills Network Community