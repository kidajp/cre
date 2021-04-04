import "bulma/css/bulma.css";
import { render } from "react-dom";
import App from "./App"; //カレントディレクトリのApp.jsを読み込む

render(<App />, document.querySelector("#content")); //#contentにマウント