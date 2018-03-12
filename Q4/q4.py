import pandas as pd
import numpy as np

df_stock_1 = pd.read_csv('./AHT_L.csv')
df_stock_2 = pd.read_csv('./CRDA_L.csv')
df_stock_3 = pd.read_csv('./SGE_L.csv')

print(df_stock_1['Close'].size)
print(df_stock_2['Close'].size)
print(df_stock_3['Close'].size)

closing_price_stock_1 = df_stock_1['Close'].values
closing_price_stock_2 = df_stock_2['Close'].values
closing_price_stock_3 = df_stock_3['Close'].values

returns_stock_1 = (closing_price_stock_1[1:377] - closing_price_stock_1[0:376]) / closing_price_stock_1[0:376]
returns_stock_2 = (closing_price_stock_2[1:377] - closing_price_stock_2[0:376]) / closing_price_stock_2[0:376]
returns_stock_3 = (closing_price_stock_3[1:377] - closing_price_stock_3[0:376]) / closing_price_stock_3[0:376]

print("Expected Return AHT: " + str(returns_stock_1.mean()))
print("Expected Return CRDA: " + str(returns_stock_2.mean()))
print("Expected Return SGE: " + str(returns_stock_3.mean()))

X = np.stack((returns_stock_1, returns_stock_2, returns_stock_3), axis=0)

print("Covariance Matrix: " + str(np.cov(X)))

# 1 / N return for the rest of the time period
# returns_stock_1 = (closing_price_stock_1[379:757] - closing_price_stock_1[378:756]) / closing_price_stock_1[378:756]
# returns_stock_2 = (closing_price_stock_2[379:757] - closing_price_stock_2[378:756]) / closing_price_stock_2[378:756]
# returns_stock_3 = (closing_price_stock_3[379:757] - closing_price_stock_3[378:756]) / closing_price_stock_3[378:756]

naive_portfolio_1 = (closing_price_stock_1[757] - closing_price_stock_1[378]) / closing_price_stock_1[378]
naive_portfolio_2 = (closing_price_stock_2[757] - closing_price_stock_2[378]) / closing_price_stock_2[378]
naive_portfolio_3 = (closing_price_stock_3[757] - closing_price_stock_3[378]) / closing_price_stock_3[378]

naive_portfolio = (naive_portfolio_1 + naive_portfolio_2 + naive_portfolio_3) / 3

portfolio_1 = 0*naive_portfolio_1 + 0.0494*naive_portfolio_2 + 0.9506*naive_portfolio_3
portfolio_2 = 0*naive_portfolio_1 + 0.197*naive_portfolio_2 + 0.8025*naive_portfolio_3
portfolio_3 = 0.0003*naive_portfolio_1 + 0.3453*naive_portfolio_2 + 0.6544*naive_portfolio_3
portfolio_4 = 0.0682*naive_portfolio_1 + 0.5572*naive_portfolio_2 + 0.3746*naive_portfolio_3

mv_portfolio = returns_stock_2.mean()

print("Naive Portfolio Return: " + str(naive_portfolio))
print("Naive Portfolio 1: " + str(portfolio_1))
print("Naive Portfolio 2: " + str(portfolio_2))
print("Naive Portfolio 3: " + str(portfolio_3))
print("Naive Portfolio 4: " + str(portfolio_4))
