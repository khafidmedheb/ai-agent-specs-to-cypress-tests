"""
Reporter to format Cypress results.
"""

def generate_report():
    """
    Generate dummy test report in Markdown format.
    """
    report = "# Test Report\n\n- All tests passed.\n"
    with open("test_report.md", "w") as f:
        f.write(report)
    return report
