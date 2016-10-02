var nistantriApp = angular.module("nistantriApp", ['ngRoute']);
nistantriApp.config(function($routeProvider){
    $routeProvider.when("/",{templateUrl: "views/banner.html",
                            controller: "homePageController"
                       }).when("/aboutme",{templateUrl:"views/middlecontainer.html",
                                               controller: "aboutme"
        
                       }).when("/getcaricatcher",{templateUrl:"views/cariget.html",
                                                  controller:"getcaricatcher"
                        }).when("/illustration",{templateUrl:"views/illustrations.html",
                                                  controller:"illustrations"
                        }).when("/getillustration",{templateUrl:"views/getillustrations.html",
                                                    controller:"getillustrations"
                        }).when("/photostock",{templateUrl:"views/photostock.html",
                                               controller:"photostock"
                        }).when("/hirephotographer",{templateUrl:"views/getphotographer.html",
                                                    controller:"hirephotographer"
                        })
    
});



 function swipeme(){
        var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true,
        nextButton:".swiper-button-next",
           prevButton:".swiper-button-prev",
           simulateTouch:true,
           autoplay:6000,
           onInit:function(){$(".caption").show(); } 
            
    }); 
     swiper.on('slideChangeStart', function () {
    $(".caption").hide(); 
});   
swiper.on('slideChangeEnd', function () {
    $(".caption").show(); 
});

    }



nistantriApp.service("nistantriServe", ['$http',function($http){  
	var obj = {};
	
	obj.headerContent = function(){   /*This just to demonstrate common usage of factories to serve $http responses, by returning the entire promise */
		return $http.get('json/header.json');
	}
    obj.logoContent = function(){   /*This just to demonstrate common usage of factories to serve $http responses, by returning the entire promise */
		return $http.get('json/logo.json');
	}
obj.bannerContent = function() {
    
    return $http.get('json/banner.json');
}
obj.middleContent = function() {
    
    return $http.get('json/middlecontainer.json');
}
	obj.galleryContent = function() {
    
    return $http.get('json/gallery.json');
}
	
	return obj;		

}]);

nistantriApp.controller('homePageController',function($scope,$timeout,nistantriServe){
     $timeout(swipeme, 6);
  
	$scope.getInfo = function(){
		nistantriServe.headerContent().success(function(response){ /*This just to demonstrate common usage of factories to serve $http responses, by returning the entire promise */
			$scope.headerContents = response;
            
		});
        nistantriServe.logoContent().success(function(response){ /*This just to demonstrate common usage of factories to serve $http responses, by returning the entire promise */
			$scope.logoContents = response;
            
		});
        nistantriServe.bannerContent().success(function(response){
            
            $scope.bannerContents =  response;
        });
        nistantriServe.middleContent().success(function(response){
           $scope.middleContents = response; 
        });
        nistantriServe.galleryContent().success(function(response){
           $scope.galleryContents = response; 
        });

	}
   

});
/*Lightbox by udey*/
var dataTarget;
var dataPrevTarget;


function CountNextPrevImages(){
    
$(".current-pic").bind("click",function(){
   dataTarget = $(this).attr("data-target-id");
    console.log("Data value"+dataTarget);

}); 
var parseData = parseInt(dataTarget);

$(".next-button").on("click",function(){
parseData+= 1;
     $(".next-button").attr("data-target","#data"+(parseData));
});  
$(".prev-button").on("click",function(){
parseData-= 1;
     $(".prev-button").attr("data-target","#data"+(parseData));
});
    
}
nistantriApp.directive("nextButton", function() {
    return {
        restrict : "C",
        link: CountNextPrevImages
    };
});
/*Lightbox by udey*/
/*slide menu */
nistantriApp.directive("clickMenu",function(){
   return{
      restrict: "C",
       link: function(){
           $(".click-menu, .complete-overlay").on("click",function(){
               $(".mobile-menu").toggle("slide",{"direction":"left"},500);
               $(".complete-overlay").toggle();
           });
       }
   } ;
});