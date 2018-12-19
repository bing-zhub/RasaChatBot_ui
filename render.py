import os

from jinja2 import Template


def render(input_file, output_file):

    with open(input_file, encoding='utf_8') as input_fd, open(output_file, mode='w', encoding='utf_8') as output_fd:
        template = Template(input_fd.read())

        server_url = os.environ.get('CORE_SERVER_URL', 'http://127.0.0.1:5002')
        print("Will connect to {}".format(server_url))

        rendered_string = template.render(server_url=server_url)

        output_fd.write(rendered_string)


if __name__ == "__main__":
    render('index.html.tpl', 'index.html')
