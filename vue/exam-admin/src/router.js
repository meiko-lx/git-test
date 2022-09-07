import Vue from 'vue'
import Router from 'vue-router'
import Layout from '@/layout'

Vue.use(Router)

const constantRoutes = [
  {
    path: '/redirect',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '/redirect/:path*',
        component: () => import('@/views/redirect/index')
      }
    ]
  },
  {
    path: '/login',
    name: 'Login',
    hidden: true,
    component: () => import('@/views/login/index'),
    meta: { title: '登录' }
  },
  {
    path: '/',
    component: Layout,
    redirect: '/dashboard',
    children: [
      {
        path: 'dashboard',
        component: () => import('@/views/dashboard/index'),
        name: 'Dashboard',
        meta: { title: '主页', icon: 'home', affix: true }
      }
    ]
  },
  {
    path: '/user',
    component: Layout,
    name: 'UserPage',
    meta: {
      title: '用户管理',
      icon: 'users'
    },
    children: [
      {
        path: 'user/list',
        component: () => import('@/views/user/user/list'),
        name: 'UserPageList',
        meta: { title: '用户列表', noCache: true }
      },
      {
        path: 'user/edit',
        component: () => import('@/views/user/user/edit'),
        name: 'UserEdit',
        meta: { title: '用户编辑', noCache: true, activeMenu: '/user/user/list' },
        hidden: true
      },
      {
        path: 'user/details',
        component: () => import('@/views/user/user/details'),
        name: 'UserEdit',
        meta: { title: '用户详情', noCache: true, activeMenu: '/user/user/list' },
        hidden: true
      },
      {
        path: 'admin/list',
        component: () => import('@/views/user/admin/list'),
        name: 'UserAdminPageList',
        meta: { title: '管理员列表', noCache: true }
      },
      {
        path: 'admin/edit',
        component: () => import('@/views/user/admin/edit'),
        name: 'UserAdminEdit',
        meta: { title: '管理员编辑', noCache: true, activeMenu: '/user/admin/list' },
        hidden: true
      }
    ]
  },
  {
    path: '/video',
    component: Layout,
    name: 'ExamPage',
    meta: {
      title: '媒体管理',
      icon: 'exam'
    },
    children: [
      {
        path: 'list',
        component: () => import('@/views/video/list'),
        name: 'VideoPageList',
        meta: { title: '视频列表', noCache: true }
      },
      {
        path: 'edit',
        component: () => import('@/views/video/edit'),
        name: 'Edit',
        meta: { title: '视频编辑', noCache: true, activeMenu: '/video/list' },
        hidden: true
      },
      {
        path: 'details',
        component: () => import('@/views/video/details'),
        name: 'Details',
        meta: { title: '视频详情', noCache: true, activeMenu: '/video/list' },
        hidden: true
      },
      {
        path: 'play',
        component: () => import('@/views/video/play'),
        name: 'Play',
        meta: { title: '视频播放', noCache: true, activeMenu: '/video/list' },
        hidden: true
      },
      {
        path: 'video/upload',
        component: () => import('@/views/video/upload'),
        name: 'VideoUpload',
        meta: { title: '视频上传', noCache: true }
      }
     
    ]
  },
  {
    path: '/analysis',
    component: Layout,
    name: 'Analysis',
    meta: {
      title: '数媒数据分析',
      icon: 'task'
    },
    alwaysShow: true,
    children: [
      {
        path: 'list',
        component: () => import('@/views/analysis/userList'),
        name: 'TaskListPage',
        meta: { title: '用户属性分析', noCache: true }
      },
      {
        path: 'edit',
        component: () => import('@/views/analysis/userList'),
        name: 'TaskEditPage',
        meta: { title: '视频属性分析', noCache: true }
      },
      {
        path: 'userAnalysis',
        component: () => import('@/views/analysis/userAnalysis'),
        name: 'userAnalysis',
        meta: { title: '用户分析', noCache: true, activeMenu: '/analysis/userList' },
        hidden: true
      },
    ]
  },
  {
    path: '/recommend',
    component: Layout,
    name: 'RecommendPage',
    meta: {
      title: '视频推荐',
      icon: 'education'
    },
    alwaysShow: true,
    children: [
      {
        path: 'UserList',
        component: () => import('@/views/analysis/userList'),
        name: 'UserList',
        meta: { title: '用户属性推荐', noCache: true }
      },
      {
        path: 'subject/edit',
        component: () => import('@/views/analysis/userList'),
        name: 'EducationSubjectEditPage',
        meta: { title: '视频属性推荐', noCache: true },
      }
    ]
  },
  {
    path: '/message',
    component: Layout,
    name: 'MessagePage',
    meta: {
      title: '消息中心',
      icon: 'message'
    },
    alwaysShow: true,
    children: [
      {
        path: 'list',
        component: () => import('@/views/message/list'),
        name: 'MessageListPage',
        meta: { title: '消息列表', noCache: true }
      },
      {
        path: 'send',
        component: () => import('@/views/message/send'),
        name: 'MessageSendPage',
        meta: { title: '消息发送', noCache: true }
      }
    ]
  },
  {
    path: '/log',
    component: Layout,
    name: 'LogPage',
    meta: {
      title: '日志中心',
      icon: 'log'
    },
    alwaysShow: true,
    children: [
      {
        path: 'user/list',
        component: () => import('@/views/log/list'),
        name: 'LogUserPage',
        meta: { title: '用户日志', noCache: true }
      }
    ]
  },
  {
    path: '/profile',
    component: Layout,
    hidden: true,
    children: [
      {
        path: 'index',
        component: () => import('@/views/profile/index'),
        name: 'Profile',
        meta: { title: '个人简介', icon: 'user', noCache: true }
      }
    ]
  },
  { path: '*',
    hidden: true,
    component: () => import('@/views/error-page/404'),
    meta: { title: '404', noCache: true }
  }
]

const router = new Router({
  routes: constantRoutes
})

export {
  constantRoutes,
  router
}
