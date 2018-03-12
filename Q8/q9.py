import pandas as pd

df = pd.read_csv('./c2925.csv', header=None)
df.columns = ['Date','Option Price','Asset Value']

strike_price = 2925 # we can buy at this price at the maturity date, which means if price of the asset goes up so does option price
interest_rate = 0.06

df['Date'] = df['Date'] - df['Date'].values.min()



print(df)

# print(df)