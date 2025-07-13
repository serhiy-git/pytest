# QA Automation Challenge - Proof of Concept

This project is a PoC for API and integration test automation using `pytest`, `Makefile`, and GitLab CI/CD. It demonstrates:
- Separation of test logic and test data
- Reusability and maintainability principles
- Basic configuration for CI pipelines

## MERGE REQUEST

A merge request description should have the following format

```md
WHAT
- requirements.txt: Added missing libraries and pytest-html for enhanced test reporting
- Makefile: Added scripts to run tests using markers
- .gitlab-ci.yml: Defined CI pipeline to run API and integration tests
- config/__init__.py: Initialized the config package
- pytest.ini: Configured Pytest defaults
- /tests/ folder with tests

WHY
To separate test data from logic for better reusability and maintainability
To establish a clean configuration and utility structure supporting scalable integration and API testing

TESTS
To run locally:
create .env and add there real user values or any other needed variables

Note:
USER_PASSWORD must be the Base64-encoded version of your actual password.
echo -n "your_password" | base64

run those commands:
- make install-virtual-environment
- make install-dependencies
- make compose-up
- make all-tests


REMARKS
Future test files should follow this separation-of-concerns pattern to keep the suite maintainable and scalable
```

### GIT COMMIT CONVENTIONS

#### Format: `qa-challenge | <type>: <subject>`

| Type | Description |
|------| ----------- |
| `docs` | Documentation updates |

