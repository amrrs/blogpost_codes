#!/usr/bin/env python
# coding: utf-8

# In[198]:


from verbalexpressions import VerEx


# In[199]:


verEx = VerEx()


# In[200]:


strings = ['123Abdul233',
           '233Raja434',
           '223Ethan Hunt444']


# In[201]:


expression = verEx.range('a','z','A','Z',' ')


# In[202]:


expression.source()


# In[204]:


import re

re_exp = expression.compile()


# In[205]:


re.findall(re_exp,strings[0])


# In[206]:


[''.join(re.findall(re_exp,line)) for line in strings]

