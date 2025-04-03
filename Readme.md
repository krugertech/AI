# AI QuickStart Scripts for Windows

This repository provides a streamlined set of Windows batch scripts to quickly set up and run environments for AI tasks on Windows—whether you're using a CPU-only machine or a CUDA-enabled GPU.

## Purpose

These scripts are designed to eliminate the overhead of manually configuring environments. You can be up and running with AI training or inference in just a few minutes.

---

## Script Overview

### 🔧 Setup Scripts (One-time Environment Setup)

#### 1. `WindowsCpuTrainingSetup.bat`

**Purpose:**  
Sets up a Conda environment for training AI models on CPU.

**Key Actions:**
- Creates a new Conda environment (if not already created)
- Installs Python, PyTorch (CPU-only), Transformers, Datasets, etc.
- Optionally includes Jupyter for development

---

#### 2. `WindowsCudaTrainingSetup.bat`

**Purpose:**  
Sets up a Conda environment for training AI models on NVIDIA GPUs using CUDA.

**Key Actions:**
- Creates and activates a new Conda environment
- Installs PyTorch with CUDA support, Transformers, Datasets, etc.
- Validates GPU compatibility
- Installs Jupyter (optional)

---

### 🚀 Run Scripts (Use After Setup)

#### 3. `RunWindowsCpuEnvironment.bat`

**Purpose:**  
Launches the pre-configured CPU Conda environment for inference or continued development.

**Key Actions:**
- Activates CPU training environment
- Opens a shell for running your AI workflows

---

#### 4. `RunWindowsCudaEnvironment.bat`

**Purpose:**  
Launches the CUDA-based Conda environment for training or inference with GPU acceleration.

**Key Actions:**
- Activates GPU training environment
- Opens a shell for running GPU-accelerated workflows

---

## Usage

1. Clone this repository.
2. Open Command Prompt in the repo directory.
3. Run a setup script once to install the environment:
   ```bash
   WindowsCpuTrainingSetup.bat
   or
   WindowsCudaTrainingSetup.bat
   ```
4. Later, run the corresponding launch script to use the environment:
	```bash
	RunWindowsCpuEnvironment.bat
	or 
	RunWindowsCudaEnvironment.bat
	```
