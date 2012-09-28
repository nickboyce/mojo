use Mojolicious::Lite;

# Default route
get '/' => {text => 'Hello World!'};

# Route with placeholder
get '/foo/:foo' => sub {
  my $self = shift;
  my $foo = $self->param('foo');
  $self->render(text => "Hello from $foo.");
};

app->start;