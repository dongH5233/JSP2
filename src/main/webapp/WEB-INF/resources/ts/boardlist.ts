// Ajax 는 두 종류 명칭으로 쓰인다
// Ajax 라는 기본 통신형 대분류 명칭
// Jquery 의 Ajax 기술의 명칭이 Ajax

// XMLHttpRequest -> 클래스 new XMLHttpRequest()
// fetch -> 함수 fetch(url)

// fetch는 url과 options 을 넣으면 해당하는 url로 request를 보내고 response를 받는 일방형 통신 기술
// 페이지 이동이 특별히 필요하지 않으면 없다
// fetch는 결과값으로 무엇을 돌려주는가?
// 결과값을 Promise형태로 받아오기 때문

//@ts-nocheck
async function ajax(url:string, option?:any){
    return fetch(url, option).then((res)=> JSON.parse(res.json()))
}

// form -> submit
// formdata 가 파일을 전송할 때 자동적으로 boundary 작업 -> 경계선

// AjaxFilter 에 password로 Hello를 보내면
// Hello+EncodeData 를 전송
// AjaxFilter +EncodeData를 떼고 Hello만 출력



ajax("/api/boardlist",{
    method:"POST",
    // headers:{
    //     "Content-Type": "application/json",
    //     "Authorization":"ABCD",
    //     "User-Agent":"robots"
    //     // accept:"application/json"
    // },
    // // body:new FormData()
    // mode:"cors",
    // cache:"default",
    //     // no-store, reload, no-cache, force-cache, only-if-cached
    // redirect:"follow",
    //     //follow, error, menual
    // referrer:"no-referrer",
    //     // strict-origin, unsafe
}).then((json)=>{
    console.log(json);
    
        let boards:HTMLElement | null = document.querySelector("#boards");
        let template:HTMLTemplateElement | null = document.querySelector("#boards template");
        if(template){
            for(let data of json.data){
                template.content.querySelector(".id").innerHTML = data.id;
                template.content.querySelector(".title").innerHTML = data.title;
                template.content.querySelector(".author").innerHTML = data.boarduser.name;
                let div:HTMLElement | null = document.createElement("div");
                div.innerHTML = template.innerHTML;
                if(boards){
                    boards.appendChild(div);
                }
            }
        }
    })

    //filter

// fetch("/api/boardlist",{
//     method:"POST",
// }).then((res)=>res.json())
//     .then((json)=>{
//         console.log(json);
        
//     })
