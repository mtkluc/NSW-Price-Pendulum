from flask import Flask, render_template, request
import pandas as pd

app = Flask(__name__)

# Load and reshape data
houses_data = pd.read_csv('Data/houses_data.csv')
units_data = pd.read_csv('Data/units_data.csv')

houses_data = pd.melt(
    houses_data,
    id_vars=['propertyLocality'],
    var_name='year',
    value_name='average_price_per_sqm'
)
units_data = pd.melt(
    units_data,
    id_vars=['propertyLocality'],
    var_name='year',
    value_name='average_price_per_sqm'
)

houses_data['year'] = houses_data['year'].astype(int)
units_data['year'] = units_data['year'].astype(int)

@app.route('/')
def index():
    years = sorted(houses_data['year'].unique())
    localities = sorted(houses_data['propertyLocality'].unique())
    return render_template('index.html', years=years, localities=localities)

@app.route('/results', methods=['POST'])
def results():
    property_type = request.form['property_type']  # 'houses' or 'units'
    start_year = int(request.form['start_year'])
    end_year = int(request.form['end_year'])
    locality = request.form['locality']

    data = houses_data if property_type == 'houses' else units_data

    filtered_data = data[
        (data['propertyLocality'] == locality) & 
        (data['year'].isin([start_year, end_year]))
    ]
    if len(filtered_data) < 2:
        return "Not enough data for the selected parameters."

    start_price = filtered_data[filtered_data['year'] == start_year]['average_price_per_sqm'].values[0]
    end_price = filtered_data[filtered_data['year'] == end_year]['average_price_per_sqm'].values[0]
    percent_change = ((end_price - start_price) / start_price) * 100

    return render_template(
        'results.html',
        property_type=property_type.capitalize(),
        locality=locality,
        start_year=start_year,
        end_year=end_year,
        start_price=start_price,
        end_price=end_price,
        percent_change=percent_change
    )

if __name__ == '__main__':
    app.run(debug=True)
