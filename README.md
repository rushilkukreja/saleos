# Sustainability Analytics for Low Earth Orbit Satellites (saleos)

Welcome to the `saleos` repository.

There is increasing concern about adverse environmental impacts produced by Low Earth Orbit (LEO) mega-constellations.

While LEO mega-constellations are fronted as an alternative to terrestrial broadband networks, there is a need to place thousands of satellite assets in orbit to provide global coverage. 

`Figure 1` illustrates the configuration of three of the main LEO satellite constellations, including Amazon's Kuiper, OneWeb and SpaceX's Starlink. 

#### Figure 1 Three key LEO constellations: Kuiper, OneWeb and Starlink (Deatils as of 29th August 2023).
<p align="center">
  <img src="/vis/figures/readme/fig_1.jpg" />
</p>

Emissions produced during the launching of satellites depend on the utilized rocket vehicle. 

Most operators planning or launching LEO broadband satellites have used (or intend to use) SpaceX’s Falcon-9 or Falcon-Heavy, the European Space Agency’s Ariane-5, or prior to Spring 2022, Russia’s Soyuz-FG rocket, as detailed in `Figure 2`. 

#### Figure 2 Technical details of launch rocket systems.
<p align="center">
  <img src="/vis/figures/readme/fig_2.jpg" />
</p>

The `saleos` codebase provides an open-source integrated assessment model capable of concurrently estimating broadband capacity, environmental emissions, and costs for different LEO satellite networks.

Citation
---------
Osoro, B., & Oughton, E. (2022). Universal Broadband Assessment of Low Earth Orbit Satellite Constellations: Evaluating Capacity, Coverage, Cost, and Environmental Emissions. Coverage, Cost, and Environmental Emissions (August 2, 2022) [https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4178732].

## Sustainability metrics

The `saleos` codebase is capable of estimating a range of sustainability metrics. Figure 3 illustrates a selection of these including the estimated emissions per subscriber (plot b), potential mean monthly traffic per subscriber (plot d), and the financial cost per subscriber (plot f).

#### Figure 3 Aggregate sustainability metrics for Kuiper, OneWeb and Starlink
<p align = 'center'>
  <img src= '/vis/figures/readme/c_aggregate_metrics.png' />
</p>

## Method

The method is based on (i) a stochastic engineering simulation model estimating constellation capacity using the Friss Transmission Equation, (ii) a Life Cycle Assessment (LCA) model of environmental emissions and other impacts, and (iii) a techno-economic model of the associated financial costs. `Figure 4` illustrates the approach.

#### Figure 4 Integrated assessment method
<p align = 'center'>
  <img src= '/vis/figures/readme/model.png' />
</p>

## Team
- Bonface Osoro, George Mason University (Model development)
- Edward Oughton, George Mason University (Project lead and corresponding author)
- Andrew Wilson, University of Strathclyde (LCA modeling)
- Akhil Rao, Middlebury College (Policy and economics)
