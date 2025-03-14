import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import dingdanpingjia from '@/views/modules/dingdanpingjia/list'
    import discussmeishifenxiang from '@/views/modules/discussmeishifenxiang/list'
    import zaixianshangcheng from '@/views/modules/zaixianshangcheng/list'
    import storeup from '@/views/modules/storeup/list'
    import users from '@/views/modules/users/list'
    import discussremenmeishi from '@/views/modules/discussremenmeishi/list'
    import meishifenlei from '@/views/modules/meishifenlei/list'
    import forum from '@/views/modules/forum/list'
    import meishifenxiang from '@/views/modules/meishifenxiang/list'
    import shangpinfenlei from '@/views/modules/shangpinfenlei/list'
    import yonghu from '@/views/modules/yonghu/list'
    import chat from '@/views/modules/chat/list'
    import orders from '@/views/modules/orders/list'
    import discusszaixianshangcheng from '@/views/modules/discusszaixianshangcheng/list'
    import config from '@/views/modules/config/list'
    import remenmeishi from '@/views/modules/remenmeishi/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/news',
        name: '美食资讯',
        component: news
      }
          ,{
	path: '/dingdanpingjia',
        name: '订单评价',
        component: dingdanpingjia
      }
          ,{
	path: '/discussmeishifenxiang',
        name: '美食分享评论',
        component: discussmeishifenxiang
      }
          ,{
	path: '/zaixianshangcheng',
        name: '在线商城',
        component: zaixianshangcheng
      }
          ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
          ,{
	path: '/users',
        name: '管理员',
        component: users
      }
          ,{
	path: '/discussremenmeishi',
        name: '热门美食评论',
        component: discussremenmeishi
      }
          ,{
	path: '/meishifenlei',
        name: '美食分类',
        component: meishifenlei
      }
          ,{
	path: '/forum',
        name: '用户交流',
        component: forum
      }
          ,{
	path: '/meishifenxiang',
        name: '美食分享',
        component: meishifenxiang
      }
          ,{
	path: '/shangpinfenlei',
        name: '商品分类',
        component: shangpinfenlei
      }
          ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
          ,{
	path: '/chat',
        name: '在线聊天',
        component: chat
      }
          ,{
        path: '/orders/:status',
        name: '订单管理',
        component: orders
      }
          ,{
	path: '/discusszaixianshangcheng',
        name: '在线商城评论',
        component: discusszaixianshangcheng
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
          ,{
	path: '/remenmeishi',
        name: '热门美食',
        component: remenmeishi
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
