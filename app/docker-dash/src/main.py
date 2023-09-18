from dash import Dash, html, dcc, callback, Output, Input
import plotly.express as px
import pandas as pd
import os

# get HUB metrics in path from environment
hub_in_path = os.environ.get("HUB_IN", default="./in")

df = pd.read_json(os.path.join(hub_in_path, 'metrics.jsonl'), lines=True)

app = Dash(__name__)

app.layout = html.Div([
    html.H1(children='HUB Action Dash App', style={'textAlign': 'center'}),
    dcc.Dropdown(df.metric.unique(), 'test_metric', id='dropdown-selection'),
    dcc.Graph(id='graph-content')
])


@callback(
    Output('graph-content', 'figure'),
    Input('dropdown-selection', 'value')
)
def update_graph(value):
    dff = df[df.metric == value]
    return px.line(dff, x='@timestamp', y='value')


if __name__ == '__main__':
    app.run(debug=True)
