# Conventional Commits 

## Summary
The Conventional Commits specification is a lightweigh convention on top of commit messages. It provides an easy set of rules for creating an explicit commit history. Which makes it easier to write automated tools on top of. This convention dovetail with SemVer, by describing the features, fixes, and breaking changes made in commit messages.

The commit message should be structured as follows:

    <\type>[optional scope] : <\description>
    [optional body]
    [optional footer(s)]

The commit contains the following structural elements, to communicate intent to the consumers of your library:

    1. fix: a commit of the type fix patches a bug in your codebase.
    2. feat: a commit of the type feat introduces a new feature to the codebase.
    3. BREAKING CHANGE: a commit that has a footer BREAKING CHANGE: or appends a ! after the type/scope, introduces a breaking API change.
    4. types other than fix: feat: are allowed, for example: buid, chore, ci (Continuous Integration), docs, style, refactor, perf, test and others
    5. footers other than BREAKING CHANGE: <description> may be previded and follow a convention similar to git trailer format.

Additional types are not mandated the Conventional Commits specification, and have no implicit effect in Semantic versioning (unless they include a BREAKING CHANGE). A scope may be provided to a commit's type, to provide additional contextual information and is contained within parenthesis,. feat(parser): add ability to parse arrays.

# Examples
## Commit message with description and breakign change footer
    feat: allow provided config object to exten other configs
    BREAKING CHANE: 'extend' key in config file is now used for extending other config files
## Commit message with ! to draw attention to breaking change
    feat!= send an email to the customer when a product is shipped
## Commit message with scope and ! to draw attention to breaking change
    feat(api)!: send an email to the customer when a producrt is shipped
## Commit message with both ! and BREAKING CHANGE footer
    chore!: drop support for Node 6
    BREAKING CHANGE: use JavaScript features not available in Node 6.
## Commit message with no body
    docs: correct spelling of CHANGLOG
## Commit message with scope
    feat(lang): add Polish language
## Commit message with multi-paragraph body and multipke footers
    fix: prevent racing of requests
    Introduce a request id and a reference to latest request. Dismiss incoming responses other than from latest request.

    Remove timouts which were used to mitigate the racing issue but are obsolete now

    Reviewed-by: X
    Refs: #123

## Specification
The key words "MUST". "MUST NOT", "REQUIRED","SHALL","SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTINAL" in this document are to be interpreted as described in [RFC 2119.](https://www.ietf.org/rfc/rfc2119.txt)

    1. Commit MUST be prefixed with a tyoe, which consists of a noun, feat,fix, etc.., followed by the OPTIONAL scope, OPTIONAL !, and REQUITED terminal colon and space.
    2. The type feat MUST be used when a commit adds a new feature to your application or library.
    3. The type fix MUST be used when a commit represents a bug fix for your application.
    4. A scope MAY be providede after a type, A scope MUST consist of a noun describing a section of the codebase surrounded by parenthesis fix(parser):
    5. A description MUST immediately follow the colon and space after the type/scope prefix. The desciption is a short summary of the code changes, a.g. fix: array parsing issue when multiple spaces were contained in string.
    6. A longer commit body MAY be provided after the short description, providing additional contextual information about the code changes. The body MUST begin one blank line after the description.
    7. A commit body is free-form and MAY consit of any number of newline separated paragraphs.
    8. One or moer footers MAY be provided one blank line after the body. Each footer MUST consist of a word token, followed by either a :< space> or < space># separator, followed by a string value.
    9. A footer's token MUST use - in place of whitespace characters, e.g. Acked-by (this helps differentiate the footer section from a multi-paragraph body). An exeption is made for BREAKING CHANGE, which MAY also be used as a token.
    10. A footer's value MAY contain spaces and newlines, and parsing MUST terminate when the next valid footer token/separator pair is observed.
    11. Breaking changes MUST be indicated in the type/scope prefix of a commit, or as an entry in the footer.
    12. If included as a footer, a breaking change MUST consist of the uppercase text BREAKING CHANGE, followed by a colon, space, and description, e.g., BREAKING CHANGE: environment variables now take precedence over config files.
    13. If included in the type/scope prefix, breaking changes MUST be indicated by a ! immediately before the :. If ! is used, BREAKING CHANGE: MAY be omitted from the footer section, and the commit description SHALL be used to describe the breaking change.
    14. Types other than feat and fix MAY be used in your commit messages, e.g., docs: update ref docs/
    15. he units of information that make up Conventional Commits MUST NOT be treated as case sensitive by implementors, with the exception of BREAKING CHANGE which MUST be uppercase.
    16. BREAKING_CHANGE MUST be synonymous with BREAKING CHANGE, when used as a tolen in footer.

# Why Use Conventional Commits

- Automatically generating CHANGELOGs.
- Automatically determining a semantic version bump(based on the types of commits landed).
- Communicating the nature of changes ti teammates, the public, and other stakeholders.
- Triggering build and publish processes.
- Making it easier for people to contribute to your projects, by allowing them to explore a more structurex commit history.