import world from "./world"

export function userCode() {
  console.log = "test"
    return {
      status: "success",
      message: `hello ${world()}`,
      msg: "{{request.query.INPUT_NAME}}"
    };
  }
