DEFAULT_PATHS = {
  'calendars' => '/bank-holidays',
  'collections-publisher' => '/mainstream-browse-pages',
  'contacts' => '/hm-revenue-customs',
  'contacts-admin' => '/admin',
  'imminence' => '/admin',
  'licensefinder' => '/licence-finder',
  'licensify-admin' => '/login',
  'licensing' => '/apply-for-a-license',
  'maslow' => '/needs',
  'publisher' => '/admin',
  'smartanswers' => '/calculate-your-maternity-pay',
  'specialist-publisher' => '/cma-cases',
  'travel-advice-publisher' => '/admin',
  'whitehall' => '/government/how-government-works',
  'whitehall-admin' => '/government/admin'
}

def application_external_url(app_name)
  "#{Plek.new.external_url_for(app_name)}"
end

def application_internal_url(app_name)
  "#{Plek.new.find(app_name)}"
end
