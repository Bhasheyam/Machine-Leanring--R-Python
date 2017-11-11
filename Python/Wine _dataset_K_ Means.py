
# coding: utf-8

# In[5]:

import numpy as np
import pandas as pd

import matplotlib.pyplot as plt


from sklearn.datasets import load_wine
from sklearn.cluster import KMeans

from sklearn import preprocessing
from sklearn import metrics


# In[6]:

get_ipython().magic(u'matplotlib inline')


# In[7]:

dataset = load_wine()
df = pd.DataFrame(data=dataset.data,
                  columns=dataset.feature_names)
df_scaled = pd.DataFrame(data=preprocessing.scale(dataset.data),
                         columns=dataset.feature_names)


# In[11]:

print(dataset.DESCR)


# In[15]:

df_scaled.describe()


# In[18]:

class_labels = dataset.target
print (class_labels)


# In[30]:

clust_model = KMeans(n_clusters=6,
                     init='k-means++')
clust_labels = clust_model.fit_predict(df_scaled)
print(clust_labels)


# In[31]:

silhouette_avg = metrics.silhouette_score(df_scaled,
                                          clust_labels)

print(silhouette_avg)


# In[21]:

h_score = metrics.homogeneity_score(class_labels,
                                    clust_labels)
c_score = metrics.completeness_score(class_labels,
                                     clust_labels)
print(h_score,
      c_score)

