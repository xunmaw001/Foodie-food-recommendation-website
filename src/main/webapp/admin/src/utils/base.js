const base = {
    get() {
                return {
            url : "http://localhost:8080/ssm3uxuc/",
            name: "ssm3uxuc",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm3uxuc/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "美食网站设计与实现"
        } 
    }
}
export default base
