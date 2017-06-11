@RuleName = "postalCode"
c:[Type == "http://schemas.microsoft.com/ws/2008/06/identity/claims/windowsaccountname"] => add(store = "Active Directory", types = ("http://schemas.xmlsoap.org/ws/2005/05/identity/claims/postalCode"), query = ";postalCode;{0}", param = c.Value);

@RuleName = "urn:mace:dir:attribute-def:postalCode"
c:[Type == "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/postalCode"] => issue(Type = "urn:mace:dir:attribute-def:postalCode", Value = c.Value, Properties["http://schemas.xmlsoap.org/ws/2005/05/identity/claimproperties/attributename"] = "urn:oasis:names:tc:SAML:2.0:attrname-format:uri");
