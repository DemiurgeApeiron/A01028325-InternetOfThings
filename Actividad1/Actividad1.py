import pandas as pd
import warnings
warnings.filterwarnings("ignore")

GreenHouse = pd.read_csv('Database-course-material/TextFiles/greenhouse_gas_inventory_data_data.csv')
Population = pd.read_csv('Database-course-material/TextFiles/populationbycountry19802010millions.csv')
co2Bool = GreenHouse['category'] == "greenhouse_gas_ghgs_emissions_including_indirect_co2_without_lulucf_in_kilotonne_co2_equivalent"
co2 = GreenHouse[co2Bool]
co2Value = co2.iloc[:, [0,2]]
co2Value['value'] = co2Value['value'].astype(float)
co2Sorted = co2Value.sort_values(by=['value'],axis=0, ascending=False)
co2SortedWithoutDuplicates = co2Sorted.drop_duplicates(subset=['country_or_area'], keep='first')
print("Top countries with greenhouse gas ghgs emissions")
print("\n")
print(co2SortedWithoutDuplicates.head(5))
print("\n")

USA = "United States"
EU = "Europe"
RU = "Russia"
JP = "Japan"
GM = "Germany"
C1 = Population.loc[Population['Country'] == USA]
C2 = Population.loc[Population['Country'] == EU]
C3 = Population.loc[Population['Country'] == RU]
C4 = Population.loc[Population['Country'] == JP]
C5 = Population.loc[Population['Country'] == GM]

countries = C1.append(C2, ignore_index=True).append(C3, ignore_index=True).append(C4, ignore_index=True).append(C5, ignore_index=True)
countries = countries.iloc[:, [0,31]]
print("Top countries with greenhouse emissions Population")
print("\n")
print(countries)
print("\n")
topPop = Population.iloc[:, [0,31]]

topPop['2010'] = topPop['2010'].str.replace('--', '0')
topPop['2010'] = topPop['2010'].str.replace('NA', '0')
topPop['2010'] = topPop['2010'].astype(float)
topPopSorted = topPop.sort_values(by=["2010"], axis=0, ascending=False, kind='mergesort')

print("Top countries Population")
print("\n")
print(topPopSorted.head(9))





