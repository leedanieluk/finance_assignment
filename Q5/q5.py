import pandas as pd
import numpy as np

df_stock_1 = pd.read_csv('../Q4/AHT_L.csv')
df_stock_2 = pd.read_csv('../Q4/CRDA_L.csv')
df_stock_3 = pd.read_csv('../Q4/SGE_L.csv')

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

v = (returns_stock_1.mean() + returns_stock_2.mean() + returns_stock_3.mean()) / 3
cov = np.cov(X)
variance = (cov[0][0] + cov[1][1] + cov[2][2]) / 3

print("v: "+str(v),"variance: "+str(variance))

exp_return_vector = np.array([[returns_stock_1.mean(), returns_stock_2.mean(), returns_stock_3.mean()]])

new_cov_matrix = v * np.dot(exp_return_vector, exp_return_vector.T) + variance * np.identity(3)

print(new_cov_matrix)