(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-9d57659c"],{"093a":function(e,i,t){"use strict";var n=t("b775");i["a"]={getVideoPageList:function(e){return Object(n["a"])("/api/admin/video/page/list",e)},createVideo:function(e){return Object(n["a"])("/api/admin/video/create",e)},editVideo:function(e){return Object(n["a"])("/api/admin/video/edit",e)},selectVideo:function(e){return Object(n["a"])("/api/admin/video/select/"+e)},deleteVideo:function(e){return Object(n["a"])("/api/admin/video/delete/"+e)},selectByVideoName:function(e){return Object(n["a"])("/api/admin/video/selectByVideoName",e)},getVideoDetailByVideoId:function(e){return Object(n["a"])("/api/admin/video/getVideoDetailByVideoId/"+e)},userAnalysis:function(e){return Object(n["a"])("/api/admin/video/userAnalysis/"+e)}}},"3bfe":function(e,i,t){"use strict";t.r(i);var n=function(){var e=this,i=e.$createElement,t=e._self._c||i;return t("div",{staticClass:"app-container"},[t("el-form",{directives:[{name:"loading",rawName:"v-loading",value:e.formLoading,expression:"formLoading"}],ref:"form",attrs:{model:e.form,"label-width":"100px"}},e._l(e.form.videoRecommendList,(function(i,n){return t("el-form-item",{key:n,attrs:{label:"推荐视频"+(n+1)+"：",required:""}},[t("el-input",{staticStyle:{width:"80%"},model:{value:i.videoName,callback:function(t){e.$set(i,"videoName",t)},expression:"titleItem.videoName"}})],1)})),1)],1)},a=[],o=t("093a"),r={data:function(){return{form:{id:null,videoRecommendList:[]},formLoading:!1}},created:function(){var e=this.$route.query.id,i=this;e&&0!==parseInt(e)&&(i.formLoading=!0,o["a"].userAnalysis(e).then((function(e){i.form=e.response,i.formLoading=!1})))}},d=r,c=t("2877"),u=Object(c["a"])(d,n,a,!1,null,null,null);i["default"]=u.exports}}]);