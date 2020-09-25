import pandas as pd

GreenHouse = pd.read_csv('Database-course-material/TextFiles/greenhouse_gas_inventory_data_data.csv')
Population = pd.read_csv('Database-course-material/TextFiles/populationbycountry19802010millions.csv')

co2 = GreenHouse.iloc[:, [0,2]]
co2Sorted = co2.sort_values(by=['value'],axis=0, ascending=False)
co2SortedWithoutDuplicates = co2Sorted.drop_duplicates(subset=['country_or_area'], keep='first')
print(co2SortedWithoutDuplicates.head(5))

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
print(countries)

topPop = Population.iloc[:, [0,31]]
topPop = topPop.fillna("0")
topPopSorted = topPop.sort_values(by=["2010"], axis=0, ascending=False, kind='mergesort')
topPopSorted = topPopSorted.sort_values(by=["2010"], axis=0, ascending=False, kind='mergesort')
#print(topPopSorted.head(50))
max = topPopSorted.iloc[:, [1]].max()

#print(max)


