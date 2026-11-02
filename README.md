# Mason Playground

A 2022 sandbox for learning [Mason](https://pub.dev/packages/mason_cli), the Dart code-template tool. It holds two homemade bricks plus Mason's sample `hello` brick. The newer, maintained bricks live in [mason-bricks](https://github.com/trey-a-hope/mason-bricks).

## Bricks

| Brick | Source | Generates |
| --- | --- | --- |
| `hello` | Mason's sample brick from brickhub.dev (`0.1.0+1`) | a `HELLO.md` greeting |
| `ui` | `bricks/ui` | a GetX page: `{{name}}_view.dart` (a `StatelessWidget` with `GetBuilder`) and `{{name}}_view_model.dart`, from a `name` variable (default `home`) |
| `services` | `bricks/services` | GetX services copied from the Critic app: `auth_service.dart` (Firebase Auth sign-in, sign-up, sign-out, delete user, reset password) and `fcm_notification_service.dart` (sends push notifications through FCM) |

The `services` templates import `package:critic/...`, so they only compile inside the Critic project unless those imports are changed.

## Usage

```sh
dart pub global activate mason_cli
mason get
mason make hello
mason make ui --name profile
mason make services
```

`mason.yaml` registers the local bricks as `path: ui` and `path: services`, but the folders are in `bricks/ui` and `bricks/services`. Change those to `path: bricks/ui` and `path: bricks/services` (or run Mason from inside `bricks/`) before `mason get`.
