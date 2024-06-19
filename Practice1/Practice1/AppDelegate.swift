/*AppDelegate는 전박적인 앱 라이프 사이클을 다루고 있다
 Meta Data는 앱이 특겆ㅇ한 하드웨어 사용할때 허락을 구하거나 특정 상황에서 어떤 메시지를 보낼 지에 대한 부분을 담당한다. 민감한 정보
 허락을 구하는 것은 선택이 아닌 필수 앱 스토어 배포 정책
 UIKit앱의 구조는 MVC디자인 패턴을 기반으로한다
 
 Model 앱의 오브젝트 데이터들을 관리
 View 에서는 데이터들의 시각적인 표현
 Controller Model과 View 사이에서 다리 같은 역할 */




import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // 앱이 실행되고 초기 설정이 완료된 후 호출됩니다.
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("App did finish launching")
        sleep(3)
        return true
    }

    // 앱이 비활성화 상태로 전환될 때 호출됩니다
    func applicationWillResignActive(_ application: UIApplication) {
        print("App will resign active")
    }

    // 앱이 백그라운드로 전환될 때 호출됩니다.
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("App did enter background")
    }

    // 앱이 포그라운드로 전환될 때 호출됩니다.
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("App will enter foreground")
    }

    // 앱이 활성 상태가 되었을 때 호출됩니다.
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("App did become active")
    }

    // 앱이 종료될 때 호출됩니다.
    func applicationWillTerminate(_ application: UIApplication) {
        print("App will terminate")
    }
}

