function chartload(test_list) {
	// chartContainer = document.getElementById('chartContainer')
	alert(test_list);
    var chart = new CanvasJS.Chart('chartContainer',
    {
        theme: "theme2",
        title:{
            text: "Project Categories"
        },

        data: [
        {
            type: "pie",
            showInLegend: true,
            toolTipContent: "{y} - #percent %",
            yValueFormatString: "#0.#,,. Million",
            legendText: "{indexLabel}",

            dataPoints: test_list
        }
        ]
    });
    chart.render();
}