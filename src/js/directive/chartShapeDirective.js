/*
    ==========example====================

*/
module.exports = function (testSrv) {
    return {
        restrict: 'A',
        scope: false,
        link: function (scope, e, a) {
            var id = a.id;
            console.log(id)
            scope.category = 'twitter'; 
            $('#'+id+' .ui.dropdown').dropdown({
                onChange: function (value, text, $selectedItem) {
                    scope.category = value;
                    var selector = "div.side[page='" + value + "']";
                    // var shapSelector = $selectedItem.parent().parent().parent().siblings().find(selector);
                    e.find("div.shape").shape('set next side', selector).shape('flip up')
                    var dom = e.find(selector).find(".echart");
                    echarts.getInstanceByDom(dom.get(0)).resize();
                }
            });
            var leftButton = angular.element(e.find(".ui.left.icon.button")[0]),
                rightButton = angular.element(e.find(".ui.right.icon.button")[0]),
                cateInput = angular.element(e.find("input:hidden"));
            var flipLeft = function () {
                e.find("div.shape").shape('flip left');
                resizeChart();
            }
            var flipRight = function () {
                e.find("div.shape").shape('flip right');
                resizeChart();
            }
            leftButton.bind("click", flipLeft);
            rightButton.bind("click", flipRight);
            function resizeChart() {
                var dom = e.find(".side.active").next().find(".echart");
                echarts.getInstanceByDom(dom.get(0)).resize();
            }

        }
    }
}