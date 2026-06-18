# Numerical Analysis of a Simplified FCC Reactor Model

![MATLAB](https://img.shields.io/badge/MATLAB-Simulation-blue?logo=mathworks&logoColor=white)
![Course](https://img.shields.io/badge/Course-ESC--113M-green)
![Institution](https://img.shields.io/badge/Institution-IIT--Kanpur-orange)

## 📌 Project Overview

This repository contains the course project for **ESC-113M (Term Project, 2025 Even Semester)** by Group 10 at IIT Kanpur. 

The project focuses on the **numerical analysis and simulation of a simplified Fluid Catalytic Cracking (FCC) Reactor**. The simulation solves a system of autonomous Ordinary Differential Equations (ODEs) that represent the dynamics of the reactor along its length, including the conversion of the reactant, temperature variation, and catalyst deactivation.

### Authors
*   **Shlok Sharma** (240988)
*   **Siddhant Tomer** (241012)
*   **Shivansh Pandey**

---

## 🔬 Theoretical Model

The model tracks three primary state variables along the spatial coordinate $z$:
1.  **Conversion ($X$)**: The fraction of feed converted.
2.  **Temperature ($T$)**: The temperature inside the reactor.
3.  **Catalyst Activity ($A$)**: The activity level of the catalyst undergoing deactivation.

The reactor dynamics are governed by the following system of coupled, autonomous ODEs evaluated in `FCC_eqn.m`:

$$ \frac{dX}{dz} = k \cdot A \cdot (1 - X) $$

$$ \frac{dT}{dz} = -\left( \frac{\Delta H}{\rho \cdot C_p} \right) \cdot k \cdot A \cdot (1 - X) $$

$$ \frac{dA}{dz} = -k_d \cdot A $$

Where $k$ and $k_d$ are the Arrhenius temperature-dependent rate constants for the main reaction and the deactivation process, respectively.

---

## 🧮 Numerical Methods

To solve the system of ODEs, custom numerical solvers were implemented in MATLAB. The project includes implementations of Runge-Kutta methods of orders 1 through 4:

*   `RK1.m` (Euler's Method)
*   `RK2.m` (Heun's Method)
*   `RK3.m`
*   `RK4.m` (Classic 4th Order Runge-Kutta)

These methods are used to discretize the reactor length by defined step sizes and numerically integrate the state variables from initial boundary conditions.

---

## 💻 MATLAB App (`FCC_APP.mlapp`)

To provide an intuitive and interactive way to visualize the reactor's behavior, a custom MATLAB App Designer GUI (`FCC_APP.mlapp`) was developed. 

*(Replace the placeholder below with a screenshot of your app running)*

> **[🖼️ Add Screenshot Here: `app_screenshot.png`]**
> 
> *Screenshot of the FCC Reactor Simulation App showing the parameter inputs and resulting dynamic plots.*

---

## 🚀 How to Run the Simulation

1.  **Clone the repository** (or download as a ZIP file):
    ```bash
    git clone https://github.com/your-username/your-repo-name.git
    cd your-repo-name
    ```
2.  **Open MATLAB**.
3.  Navigate to the project directory within the MATLAB environment.
4.  Double-click on `FCC_APP.mlapp` to open the App Designer.
5.  Click the **Run** button to launch the GUI.
6.  Input the desired kinetic and physical parameters, select the Runge-Kutta method, and observe the spatial profiles of Conversion, Temperature, and Activity.

---

## 📚 Documentation

Detailed documentation and presentations related to the project are included in this repository:

*   📖 [**Project Proposal**](./Project%20Proposal.pdf): Details the scope and objectives of the numerical analysis.
*   📊 [**Presentation Slides**](./FCC_ppt.pdf): Summarizes the methodology, equations, and results.
*   📘 [**User Manual**](./FCC_App_User_Manual.docx): Comprehensive guide on using the `FCC_APP.mlapp` graphical interface.
