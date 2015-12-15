# UniTodo
UniTodo is a text-based todo specifications that supports multi-languages, extensions, and can be implemented using only a text editor.
UniTodo is an acronym for Universal Todo which emphasises on its simplicity, extensibility and multi-language support.
UniTodo specifications are released under the [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/).
Current version of the specifications: 0.1 (December 2015).

## Features
UniTodo specifications are designed with simplicity and compatibility in mind.

- Text-based storage for compatibility (.txt files, or any other text-based format)
- Simple, no clutter todo format
- Support multi-languages, UTF-8, right-to-left languages, etc.
- Extensible, where new options and features can be added easily as described in the specifications

## Summary

| Operator | Todo message | Separator | Extensions |
| ---| --- | --- | --- |
| `+` for new/uncompleted tasks, or `-` for completed tasks | Any text or characters except `---` | `---` | `-@` extension 1 `-@` extension 2 |
| Mandatory | Mandatory | Optional | Optional (but mandatory if `---` is used. `-@` is mandatory for each extension |

# Specifications
## Format
The format of a task uses, in its basic form, two components: an operator and the todo message.

```
operator My todo message
```

Operator can either be `+` or `-`. The `+` operator indicates a new or uncompleted task. The `-` operator indicates a completed task.

The choice of operators follows an _add centric_ approach. Users add a task, thus the `+` sign, and when the task is completed, it is archived or deleted, thus the `-` sign.

The `+` and `-` operators are also chosen for their multi-language capabilities. These signs are used in the majority of languages in the exact same form and design. Other characters were candidates, such as @, %, # or /, but they lack multi-language support (typically, the % character is written differently in Arabic as ٪) and/or are widely used for emails or hashtags.

A valid UniTodo must start with the `+` or `-`. These characters can be then used in the task message as only their first occurrence (which **must** be the first character in the task) is considered as the todo operator.

Text messages can be any text input with the exception of `---` as this is used as an extension separator. All other characters and text including `+` and `-` are valid.

The operator and the todo message are mandatory.

### Example
```
Shopping list
+ Milk
+ Butter
+ Cereals
+ كاتشاب
- Honey
- Rice
```

## Extensions
UniTodo specifications are built with extensibility in mind. The `---` operator is used to separate the main task message from the extension text.
`---` is also supported by most languages, not widely used and can be typed directly (without using Shift or Alt keys) on most keyboard layouts.

Multiple extensions can be used at the same time. To separate extensions, a specific operator is defined to separate them: `-@`.
The format of each extension is kept free for each extension provider. UniTodo does not specify additional requirements, even the `---` operator can be used again as only the first occurrence of this operator indicates a separation between the core todo format and the extensions. However, we recommend avoiding using `---` in extensions.

The separation operator and the extensions are optional. However, extensions and their `-@` operators are mandatory if the separation operator `---` is used.

### Example
```
+ Milk --- -@ project:Shopping
+ Book --- -@ user:Tom -@ project:Shopping
```

# Implementations
UniTodo specifications are released under a (link: https://creativecommons.org/licenses/by-sa/4.0/ text: creative commons license). Developers can implement the specifications under any license, including closed-source ones. However, we encourage developers to implement the specifications under a free license.

- [UniTodo C++ Implementation (unitodocpp)](https://github.com/adelnoureddine/unitodo/tree/master/unitodocpp)