module Link = %styled.a(
  (~color=CssJs.hex("4299E1")) =>
    `
  font-size: 1.875rem;
  line-height: 1.5;
  text-decoration: none;
  margin: 0px;
  padding: 10px 0px;
  color: $(color);
`
)

module Button = {
  @react.component
  let make = (~count: int) => {
    let times = switch count {
    | 1 => "once"
    | 2 => "twice"
    | n => Belt.Int.toString(n) ++ " times"
    }
    let msg = "Click me " ++ times

    <button> {msg->React.string} </button>
  }
}
