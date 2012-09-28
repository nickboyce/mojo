use Mojolicious::Lite;

# Route with placeholder
get '/foo/:slug' => sub {
  my $self = shift;
  my $slug = $self->param('slug');
  $self->respond_to(
    html => {text => "Hello $slug"},
    json => {json => {hello => $slug}}
  );
};

app->start;