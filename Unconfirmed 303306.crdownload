import streamlit as st
import pandas as pd
import pyodbc
import plotly.express as px

st.set_page_config(page_title="Hyperlocal Delivery Dashboard", layout="wide")
st.title("📦 Hyperlocal Delivery SQL Dashboard")

# --- DATABASE CONNECTION ---
@st.cache_resource
def get_connection():
    return pyodbc.connect(
        'DRIVER={SQL Server};' #Your Driver From SQL SERVER
        'SERVER=STARK\SQLEXPRESS;' #Your Server Name
        'DATABASE=mybase;' #Your Database (which include tables)
        'Trusted_Connection=yes;'
    )

conn = get_connection()

# --- DATAFRAMES ---
products_df = pd.read_sql("""
    SELECT p.productId, p.name AS productName, c.categoryName, p.price
    FROM Products p
    JOIN ProductCategories c ON p.categoryId = c.categoryId
""", conn)

inventory_df = pd.read_sql("""
    SELECT v.vendorName, p.name AS productName, i.quantityAvailable
    FROM Inventory i
    JOIN Vendors v ON i.vendorId = v.vendorId
    JOIN Products p ON i.productId = p.productId
""", conn)

category_df = products_df.groupby('categoryName').size().reset_index(name='productCount')
vendor_inventory_df = inventory_df.groupby('vendorName').agg({'quantityAvailable': 'sum'}).reset_index()

# --- VISUALS ---

st.subheader("🛍️ All Products")
st.dataframe(products_df, use_container_width=True)

st.subheader("📊 Category-wise Product Count")
st.plotly_chart(px.bar(category_df, x='categoryName', y='productCount', title='Products per Category'), use_container_width=True)

st.subheader("🏪 Inventory Quantity by Vendor")
st.plotly_chart(px.pie(vendor_inventory_df, names='vendorName', values='quantityAvailable', title='Vendor-wise Inventory'), use_container_width=True)

# Optional filter/query runner
with st.expander("🔍 Run Custom SQL Query"):
    query = st.text_area("Enter SQL Query")
    if st.button("Run") and query.strip() != "":
        try:
            result_df = pd.read_sql(query, conn)
            st.dataframe(result_df)
        except Exception as e:
            st.error(f"Query Error: {e}")

