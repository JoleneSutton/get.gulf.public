
<!-- README.md is generated from README.Rmd. Please edit that file -->

# get.gulf <img src="man/figures/logo.png" align="right" height="138" alt="" />

<!-- badges: start -->
<!-- badges: end -->

R functions to retrieve DFO data housed internally and often associated
with package `gulf` (*e.g.,*
[here](https://github.com/dfo-gulf-science/gulf/tree/master),
[here](https://github.com/ricardd/gulf2), and
[here](https://github.com/TobieSurette/gulf.data)), and perform
downstream processing and quality control prior to analysis.

# Availability

- A fully functional **get.gulf** is available to DFO Gulf Fisheries
  staff who have the in-house `gulf` package as well as access to
  `\\ENT.dfo-mpo.ca\dfo-mpo\GROUP\GLF\Regional_Shares\AquaRes_Common\FishFramSci`.

# Installation

Contact <jolene.sutton@dfo-mpo.gc.ca>

# Southern Gulf of St. Lawrence September Research Vessel (sGSL RV)

## Survey overview

- **Years:** 1971 - 2024

- **Vessels:**

  - E.E. Prince (1971 - 1985) fishing a Yankee-36 trawl
  - Lady Hammond (1985 - 1991) fishing a Western IIA bottom-trawl
  - CCGS Alfred Needler (1992 - 2002, and 2004 - 2005) fishing a Western
    IIA bottom-trawl
  - CCGS Wilfred Templeman (2003) fishing a Western IIA bottom-trawl
  - CCGS Teleost (2004 - 2022) fishing a Western IIA bottom-trawl
  - CCGS Capt. Jacques Cartier (2021 - 2024), fishing a modified version
    of the Northeast Fisheries Science Center Ecosystem Survey Trawl,
    NEST (trawl details in [Denton
    2020](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/4087638x.pdf);
    modifications outlined in [Ricard et
    al. 2023](https://publications.gc.ca/collections/collection_2023/mpo-dfo/Fs97-6-3547-eng.pdf)).

## Vessel correction factors

- **get.gulf** currently applies vessel correction factors for years
  1993 onward
- When catches are adjusted for vessel effects, non-Teleost catches are
  adjusted to Teleost equivalents
- To adjust catches from the CCGS Alfred Needler and the CCGS Wilfred
  Templeman, **get.gulf** applies vessel correction factors described in
  [Benoît
  2006](https://www.dfo-mpo.gc.ca/csas-sccs/publications/resdocs-docrech/2006/2006_008-eng.htm).
- To adjust catches from the CCGS Capt. Jacques Cartier, **get.gulf**
  applies vessel correction factors described in [Benoît and Yin,
  2023](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/41220614.pdf).
- See `?get_catch`

### Correction factors to adjust catches by the CCGS Alfred Needler and the CCGS Wilfred Templeman to be equivalent to the CCGS Teleost.

<img src="man/figures/ltab01.png" align="center" height="200" alt="" />

| Species             | Vessel correction |
|:--------------------|------------------:|
| American plaice     |              1.15 |
| Atlantic cod        |                NA |
| Atlantic halibut    |                NA |
| Atlantic herring    |              1.52 |
| Atlantic mackerel   |                NA |
| Greenland halibut   |                NA |
| Redfish             |                NA |
| White hake          |              1.32 |
| Winter flounder     |                NA |
| Witch flounder      |                NA |
| Yellowtail flounder |                NA |

### Correction factors to adjust catches by the CCGS Capt. Jacques Cartier to be equivalent to the CCGS Teleost.

| Species | Vessel correction |
|:---|:---|
| American plaice | Benoit and Yin 2023, Model BB5, figure 12b, dotted black line |
| Atlantic cod | Benoit and Yin 2023, Model BB5, figure 7b, dotted black line |
| Atlantic halibut | NA |
| Atlantic herring | Benoit and Yin 2023, Model BB5, figure 16b, dotted black line |
| Atlantic mackerel | NA |
| Greenland halibut | NA |
| Redfish | Benoit and Yin 2023, Model BB4, figure 9b, dotted black line |
| White hake | Benoit and Yin 2023, model BB4, figure 8b, dotted black line |
| Winter flounder | Benoit and Yin 2023, Model BB5, figure 15b, dotted black line |
| Witch flounder | Benoit and Yin 2023, Model BB1 figure 13b, dotted black line |
| Yellowtail flounder | Benoit and Yin 2023, Model BB4, figure 14b, dotted black line |

## Diel correction factors

- **get.gulf** applies diel correction factors to night catches made
  from the CCGS Teleost, or to night catches that have been adjusted to
  be equivalent to the CCGS Teleost.
- Correction factors used by **get.gulf** are described in [Benoît and
  Swain,
  2003a](https://academic.oup.com/icesjms/article/60/6/1298/653532?login=true),
  [Benoît and Swain,
  2003b](https://publications.gc.ca/collections/collection_2012/mpo-dfo/Fs97-6-2505-eng.pdf),
  and [Benoît
  2006](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/331162.pdf).
- Diel correction factors are only implemented for specific species, and
  only for years 1993 and onward.
- See `?get_catch`.

### Correction factors to adjust night catches to be equivalent to day.

<table>
<thead>
<tr>
<th style="text-align:left;">
Species
</th>
<th style="text-align:left;">
Diel correction
</th>
<th style="text-align:left;">
Restriction
</th>
<th style="text-align:left;">
Source
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
American plaice
</td>
<td style="text-align:left;">
no correction necessary
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
Benoit and Swain 2003b
</td>
</tr>
<tr>
<td style="text-align:left;">
Atlantic cod
</td>
<td style="text-align:left;">
no correction necessary
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
Benoit and Swain 2003b
</td>
</tr>
<tr>
<td style="text-align:left;">
Atlantic halibut
</td>
<td style="text-align:left;">
0.781
</td>
<td style="text-align:left;">
none
</td>
<td style="text-align:left;">
Benoit and Swain 2003a
</td>
</tr>
<tr>
<td style="text-align:left;">
Atlantic herring
</td>
<td style="text-align:left;">
-1.963
</td>
<td style="text-align:left;">
none
</td>
<td style="text-align:left;">
Benoit and Swain 2003b
</td>
</tr>
<tr>
<td style="text-align:left;">
Atlantic mackerel
</td>
<td style="text-align:left;">
-2.21
</td>
<td style="text-align:left;">
none
</td>
<td style="text-align:left;">
Benoit and Swain 2003b
</td>
</tr>
<tr>
<td style="text-align:left;">
Greenland halibut
</td>
<td style="text-align:left;">
no correction necessary
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
Benoit and Swain 2003a
</td>
</tr>
<tr>
<td style="text-align:left;">
Redfish
</td>
<td style="text-align:left;">
no correction necessary
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
Benoit and Swain 2003a
</td>
</tr>
<tr>
<td style="text-align:left;">
White hake
</td>
<td style="text-align:left;">
5.307 - 0.271 \* L + 0.0030 \* L^2
</td>
<td style="text-align:left;">
length-dependent
</td>
<td style="text-align:left;">
Benoit and Swain 2003b
</td>
</tr>
<tr>
<td style="text-align:left;">
Winter flounder
</td>
<td style="text-align:left;">
no correction necessary
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
Benoit and Swain 2003a; Benoit and Swain 2003b
</td>
</tr>
<tr>
<td style="text-align:left;">
Witch flounder
</td>
<td style="text-align:left;">
0.2115 + 3.4729 \* exp(-0.0162 \* D)
</td>
<td style="text-align:left;">
depth-dependent
</td>
<td style="text-align:left;">
Benoit and Swain 2003b
</td>
</tr>
<tr>
<td style="text-align:left;">
Yellowtail flounder
</td>
<td style="text-align:left;">
0.047 + 15.305 \* exp(-0.120 \* L)
</td>
<td style="text-align:left;">
length-dependent
</td>
<td style="text-align:left;">
Benoit and Swain 2003b
</td>
</tr>
</tbody>
</table>

# Commercial Landings

Commercial landings data go back to 1985. **get.gulf** retrieves data
housed at DFO Quebec Region. See `?get_ziff`.
