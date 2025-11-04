# Contributing to RouteCorrector

Thank you for your interest in contributing to **RouteCorrector**!  
This document explains how to report issues, suggest improvements, and collaborate in the development of the plugin.

---

## Reporting Issues

If you encounter a bug, please include:
- A clear description of the problem and what you expected to happen.
- Steps to reproduce the issue.
- Screenshots (if relevant).
- Your system information:
  - QGIS version (e.g., 3.34 Prizren)
  - Operating system (e.g., Windows 11, macOS 14)
  - Python version (from QGIS → Python Console → `import sys; print(sys.version)`)

You can open an issue here:  
 [GitHub Issues](https://github.com/daperezmora/RouteCorrector/issues)

---

## Suggesting Features

We welcome ideas that can make RouteCorrector better!  
When suggesting a new feature:
1. Explain the motivation — what problem it would solve.
2. Describe how it should work in QGIS.
3. Provide examples or mockups if possible.

Please check existing issues first to avoid duplicates.

---

## Development Setup

To test or modify the plugin locally:

1. Clone the repository:
   ```bash
   git clone https://github.com/daperezmora/RouteCorrector.git
   ```

2. Copy the folder to your local QGIS plugins directory:
   - **Windows:** `C:\Users\<user>\AppData\Roaming\QGIS\QGIS3\profiles\default\python\plugins\`
   - **macOS:** `~/Library/Application Support/QGIS/QGIS3/profiles/default/python/plugins/`

3. Restart QGIS → enable **RouteCorrector** from  
   `Plugins → Manage and Install Plugins → Installed`.

---

## Code Style and Structure

Please follow these guidelines:
- Python code should comply with **PEP8**.
- Use clear variable names and include brief inline comments.
- Commit messages should be short and descriptive.
- If you modify user interface elements, update the related `.ui` file.
- Keep translation strings (`tr()`) where visible text is used in the interface.

---

## Acknowledgments

RouteCorrector is developed collaboratively by:
- **Ana Laura Jiménez Chávez (InIAT, Universidad Iberoamericana)** – Lead developer  
- **Francisco Esquembre Martínez (University of Murcia)** – Conceptual guidance  
- **Daniel Alejandro Pérez de la Mora (InIAT, Universidad Iberoamericana)** – UX and coordination  
- **Antonia Baeza Caracena (University of Murcia)** – Validation and domain expertise  

Your contributions are welcome to expand and refine the plugin!

---

## Contact

For questions or collaboration opportunities:  
  **analaura.jimenez.ch@gmail.com**
  **daniel.perez@ibero.mx**

