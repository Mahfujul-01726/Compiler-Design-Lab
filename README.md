# Compiler Design Lab

## Course Overview
This repository contains practical implementations and experiments for the Compiler Design course. The lab focuses on lexical analysis, parsing, and compiler construction using Flex (Fast Lexical Analyzer) and related tools.

## Prerequisites
- Basic knowledge of C programming
- Understanding of regular expressions
- Familiarity with formal languages and automata theory

## Tools Required
- **Flex (Fast Lexical Analyzer)** - For generating lexical analyzers
- **GCC Compiler** - For compiling C programs
- **Text Editor/IDE** - For writing and editing code

## Lab Structure

### Experiments

#### **Experiment 1** - Introduction to Flex
- **File**: `Exp1/exp1.l`
- **Objective**: Basic Flex program structure and setup
- **Description**: Simple "Welcome to NUBTK" program to understand Flex syntax

#### **Experiment 2** - Character Classification
- **File**: `Exp2/exp2.l`
- **Objective**: Recognize and classify uppercase and lowercase letters
- **Description**: Demonstrates pattern matching for different character classes

#### **Experiment 3** - Advanced Pattern Matching
- **File**: `Exp3/exp3.l`
- **Objective**: Complex pattern recognition and processing

#### **Experiment 4** - Token Recognition
- **File**: `Exp4/exp4.l`
- **Objective**: Identify and process different types of tokens

#### **Experiment 5** - Lexical Analysis
- **File**: `Exp5/exp5.l`
- **Objective**: Comprehensive lexical analyzer implementation

#### **Experiment 6** - Line and Character Counter
- **File**: `Exp6/exp6.l`
- **Objective**: Count lines, spaces, and other characters in input
- **Features**: 
  - Line counting (`\n`)
  - Space counting
  - Other character counting

#### **Experiment 7** - Advanced Lexical Features
- **File**: `Exp7/exp7.l`
- **Objective**: Advanced lexical analysis techniques

#### **Experiment 8** - Complete Lexical Analyzer
- **File**: `Exp8/exp8.l`
- **Objective**: Full-featured lexical analyzer implementation

### Projects

#### **Calculator Implementation**
- **Location**: `Calculator/`
- **File**: `calculator.l`
- **Features**:
  - Basic arithmetic operations (+, -, *, /)
  - Integer calculations
  - Error handling for division by zero
  - Interactive expression evaluation

## How to Compile and Run

### For Flex Programs (.l files):
```bash
# Step 1: Generate C code from Flex file
flex filename.l

# Step 2: Compile the generated C code
gcc lex.yy.c -o output_program

# Step 3: Run the program
./output_program
```

### Example for Calculator:
```bash
cd Calculator
flex calculator.l
gcc lex.yy.c -o calculator
./calculator
```

## File Structure
```
Compiler-Design-Lab/
├── Exp1/                 # Basic Flex introduction
├── Exp2/                 # Character classification
├── Exp3/                 # Advanced patterns
├── Exp4/                 # Token recognition
├── Exp5/                 # Lexical analysis
├── Exp6/                 # Character/line counter
├── Exp7/                 # Advanced features
├── Exp8/                 # Complete analyzer
├── Calculator/           # Calculator project
├── HomeWork/             # Assignment files
├── Lab1/                 # Additional lab work
├── Lab2/                 # Additional lab work
├── Lab Report.pdf        # Comprehensive lab report
└── README.md            # This file
```

## Key Concepts Covered

1. **Lexical Analysis**
   - Pattern matching with regular expressions
   - Token recognition and classification
   - Character and string processing

2. **Flex Programming**
   - Flex syntax and structure
   - Pattern-action pairs
   - Built-in variables and functions

3. **Compiler Construction Basics**
   - Lexical analyzer design
   - Error handling
   - Input processing techniques

## Learning Outcomes

After completing these experiments, students will be able to:
- Design and implement lexical analyzers using Flex
- Understand the role of lexical analysis in compiler design
- Write pattern-matching programs for various text processing tasks
- Handle different types of tokens and input validation
- Implement basic arithmetic expression evaluators

## Additional Resources

- **Lab Report**: `Lab Report.pdf` - Contains detailed explanations and results
- **Cover Page**: `CoverPage.pdf` - Course information and documentation
- **Experiment Documentation**: `Experiment No.docx` - Detailed experiment descriptions

## Getting Started

1. Clone this repository
2. Navigate to any experiment folder
3. Follow the compilation steps above
4. Run the programs with sample inputs
5. Modify the code to experiment with different patterns

## Notes

- Each experiment builds upon previous concepts
- Generated files (`lex.yy.c`, `.exe`) are included for reference
- Backup files (`.bak`) contain previous versions of implementations
- Make sure to have Flex installed on your system before running the programs

## Course Institution
**Northern University Of Business And Technology Khulna (NUBTK)**

---
*This repository serves as a comprehensive guide for understanding lexical analysis and the fundamentals of compiler design through practical implementation.*