import 'dart:async';
import 'arguments.dart';
import 'console.dart';
import 'exceptions.dart';

class HelpCommand extends Command {
  HelpCommand() {
    addFlag(
      'verbose',
      abbr: 'v',
      help: 'When true, this command will print each command and its options.',
    );
    addOption(
      'command',
      abbr: 'c',
      help: "When a command is passed as an argument, prints only that command's verbose usage.",
    );
  }

  @override
  String get name => 'help';

  @override
  String get description => 'Prints usage information to the command line.';

  @override
  String? get help => 'Prints this usage information';

  @override
  FutureOr<String> run(ArgResults args) async {
    final buffer = StringBuffer();

    buffer.writeln(runner.usage);

    // 1. Flag --verbose: imprime detalhes de todos os comandos
    if (args.flag('verbose')) {
      for (var cmd in runner.commands) {
        buffer.write(_renderCommandVerbose(cmd));
      }
      return buffer.toString();
    }

    // 2. Opção --command: imprime detalhes de um comando específico
    if (args.hasOption('command')) {
      var (:option, :input) = args.getOption('command');
      var cmd = runner.commands.firstWhere(
        (command) => command.name == input,
        orElse: () {
          throw ArgumentException(
            'Input ${args.commandArg} is not a known command.',
            name,
            input.toString(),
          );
        },
      );
      return _renderCommandVerbose(cmd);
    }

    // 3. Caso padrão: imprime uso básico de todos os comandos
    for (var command in runner.commands) {
      buffer.writeln(command.usage);
    }
    return buffer.toString();
  }

  String _renderCommandVerbose(Command cmd) {
    final indent = ' ' * 10;
    final buffer = StringBuffer();

    buffer.writeln(cmd.usage);
    buffer.writeln('$indent ${cmd.help}');

    if (cmd.valueHelp != null) {
      buffer.writeln(
        '$indent [Argument] Required? ${cmd.requiresArgument}, Type: ${cmd.valueHelp}, Default: ${cmd.defaultValue ?? "none"}',
      );
    }

    buffer.writeln('$indent Options:');
    for (var option in cmd.options) {
      buffer.writeln('$indent ${option.usage}');
    }

    return buffer.toString();
  }
}
