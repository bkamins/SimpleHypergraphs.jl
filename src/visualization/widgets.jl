struct Widget
    type
    body
end

function widgetColorEdge(data)
    w= Widget("colorEdge", """
    <head>
    <link rel="stylesheet" type="text/css" href="https://isislab-unisa.github.io/hypergraphs-plot/css/color-edge-style.css">
    </head>
    <div class="hg-plot"></div>
    <script src="https://isislab-unisa.github.io/hypergraphs-plot/bundle.v1.0.js"></script>
    <script>
    hgplot.drawing.hgColorEdgePlot({graph:"""*data*"""});
    </script>
    """)

    return w
end

#<script src="./bundle.v1.0.js"></script>
function widgetVenn(data)
    w= Widget("venn", """
    <head>
    <link rel="stylesheet" type="text/css" href="https://isislab-unisa.github.io/hypergraphs-plot/css/venn-style.css">
    </head>
    <div id="venn"></div>
    <script src="https://isislab-unisa.github.io/hypergraphs-plot/bundle.v1.0.js"></script>
    <script>
    hgplot.drawing.hgVennNodesPlot({graph:"""*data*"""});
    </script>
    """)

    return w
end

function widgetRadal(data)
    w= Widget("radal", """
    <head>
    <link rel="stylesheet" type="text/css" href="https://isislab-unisa.github.io/hypergraphs-plot/css/radal-style.css">
    </head>
    <div class="radarChart"></div>
    <script src="https://isislab-unisa.github.io/hypergraphs-plot/bundle.v1.0.js"></script>
    <script>
    hgplot.drawing.hgRadalPlot({graph:"""*data*"""})
    </script>
    """)

    return w
end

function display(w::Widget)
    HTML(w.body)
end