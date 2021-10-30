# ECON190

[MIT licensed](https://github.com/PaulTran47/ECON190/blob/main/LICENCE.md).

<details>
  <summary>Table of contents</summary>
  <ul>
    <li>
      <a href="#overview">Overview</a>
      <ul>
        <li><a href="#data">Data</a></li>
        <li><a href="#paper">Paper</a></li>
        <li><a href="#programmes">Programmes</a></li>
      </ul>
    </li>
    <li><a href="#prerequisites">Prerequisites</a></li>
  </ul>
</details>

=========================================================================

## Overview
=========================================================================

This repository hosts all the assets and source code used to create my and Derrick Choes' senior thesis in economics, in accordance with the requirements for the Pomona College course, "Senior Seminar in Economics (ECON190)", in spring of 2017.

Abstract: This senior exercise investigates the empirical applicability of the Profits Theory of Investment, and whether it affirms the robustness of investment in the face of increasing market concentration in the United States. We find that whilst the relationship between market concentration and profitability across industries is both statistically significant and strong, the Profits Theory of Investment is statistically significant but weak in terms of the magnitude of its effects. As a result, investment levels in the United States are at risk of declining as markets become less competitive.

The final paper can be found [hosted on Gary Smith's website](http://economics-files.pomona.edu/garysmith/Econ190/econ190.html) or in this subdirectory here.

<p align="right">
  (<a href="#econ190">back to top.</a>)
</p>

=========================================================================

### Data
=========================================================================

This subdirectory hosts the datasets used for the creation of this senior thesis. The two main data sources for this thesis are Compustat North America and the Economic Census. The following datasets are merged.

* Computat North America can be found in Compustat2.dta.
  * Provides firm-level information from years 1950 -- 2016. Dataset used to derive measures of profitability and investment across firms and time. Relevant variables include:
    * _gp_: Gross profits;
    * _capx_: Capital expenditure;
    * _xrd_: Research and development expense.

* The Economic Census can be found in censusnaics.dta.
  * Provides industry concentration data reported every five years. The sample size ranges from the years 2002 -- 2012. NAICS codes up to 6 digits are reported, as well as the per cent of revenue (for non-manufacturing industries) and the per cent of valued added (for manufacturing industries) held by the top four, eight, 20, and 50 firms in each respective sector.
    * We aggregate profit levels by industry with the purposes of linking industry concentration to profitability. This relevant variable is _revperc50_.

<p align="right">
  (<a href="#econ190">back to top.</a>)
</p>

=========================================================================

### Paper
=========================================================================

This subdirectory hosts all the assets and LaTeX source code used to create the senior thesis itself.

<p align="right">
  (<a href="#econ190">back to top.</a>)
</p>

=========================================================================

### Programmes
=========================================================================

This subdirectory hosts the two Stata .do files used to conduct the actual empirical analysis of our senior thesis.

<p align="right">
  (<a href="#econ190">back to top.</a>)
</p>

=========================================================================

## Prerequisites:
=========================================================================

* Latest version of Stata.

<p align="right">
  (<a href="#econ190">back to top.</a>)
</p>

=========================================================================