<template>
  <div class="app-container">

    <el-form :model="form" ref="form" label-width="100px" v-loading="formLoading" >
      <el-form-item label="视频名字："  prop="videoName" >
        <el-input v-model="form.videoName" style="width: 80%"></el-input>
      </el-form-item>
      <el-form-item :key="index" :label="'视频标签'+(index+1)+'：'" required v-for="(titleItem,index) in form.videoTagList">
        <el-input v-model="titleItem.tagName" style="width: 80%"/>
      </el-form-item>
      <el-form-item :key="index" :label="'播放记录'+(index+1)+'：'" required v-for="(titleItem,index) in form.videoPlayList">
        <el-input v-model="titleItem.videoName" style="width: 80%"/>
      </el-form-item>
      <el-form-item :key="index" :label="'视频操作'+(index+1)+'：'" required v-for="(titleItem,index) in form.videoOperationList">
        <el-input v-model="titleItem.videoName" style="width: 80%"/>
      </el-form-item>
      <el-form-item :key="index" :label="''+(index+1)+'同类视频：'" required v-for="(titleItem,index) in form.videoRecommendList">
        <el-input v-model="titleItem.videoName" style="width: 80%"/>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import videoApi from '@/api/video'

export default {
  data () {
    return {
      form: {
        id: null,
        videoName: '',
        videoPlayList:[],
        videoOperationList:[],
        videoTagList:[],
        videoRecommendList:[]
      },
      formLoading: false
    }
  },
  created () {
    let id = this.$route.query.id
    let _this = this
    if (id && parseInt(id) !== 0) {
      _this.formLoading = true
      videoApi.getVideoDetailByVideoId(id).then(re => {
        _this.form = re.response
        _this.formLoading = false
      })
    }
  }
}
</script>
