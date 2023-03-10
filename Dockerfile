FROM python:3.7.2-stretch

# Set the working directory to /AppPython
WORKDIR /230309_Bank_Note_Authentication_01
COPY . /230309_Bank_Note_Authentication_01

# Copy requirements.txt file in current folder into the container at /AppPython 
ADD requirements.txt .

# Install the dependencies
RUN pip install --upgrade streamlit
RUN pip install -r requirements.txt

# Jupyter listens port: 1234
EXPOSE 2865:8501
