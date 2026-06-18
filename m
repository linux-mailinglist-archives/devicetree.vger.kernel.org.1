Return-Path: <devicetree+bounces-313545-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NwS6E0QONGpvMgYAu9opvQ
	(envelope-from <devicetree+bounces-313545-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 17:27:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2BC6A13B1
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 17:26:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BCYWCXA4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313545-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-313545-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 441DB31033A3
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 15:22:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFC303FBEB8;
	Thu, 18 Jun 2026 15:22:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF803FA5D4;
	Thu, 18 Jun 2026 15:22:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781796152; cv=none; b=DH+N2cphkdt1SXCwI07jWVn05LBcE/B9CwE7qbpwqlrgqRZx8AugndTg8e6Gz6ZQgEwrBkgNDqNt+UtBswzB4dx+MOMMzvGWKT890vq3TEQCfUFV6iTkIhnXJhxMShYVP1WnwuJ5ExcyOWNBCvVO3NReWXzKBK+NrkmD3w4rdmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781796152; c=relaxed/simple;
	bh=jSdlNlpM8SAob/fGvaYLbUYW1FfKn1bUWerBX6EGHS0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ebmCTkb2dzesfOMgXMBGFkEIfNYySrhopvmxK+MXMs9h/kPCdcy95eRfbesYTt9WmK9hzK0gJC8YgKY+ZmEljlFjQ0QYn0k7xriuJPI+N0oUNQ21aq4dAjSHCj5K/f0Mboa0EJsGTrf0CydDXLUyZOsmOsyciPT1W9KeaIp3sOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCYWCXA4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EDDD1F000E9;
	Thu, 18 Jun 2026 15:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781796151;
	bh=jSdlNlpM8SAob/fGvaYLbUYW1FfKn1bUWerBX6EGHS0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BCYWCXA4WBW0a7fOg9IHEBtPOvt4tAiLJQCBJu5A247pvIg6g8zrZqkpCgituH9WU
	 U4HyXCKQQTCFCbXwePxJLY/YoR84Hz1VyBcO6Hk7Bq++HcYYC+MsXNf+uG2H2QgtzE
	 tHSYz/hhqbOK8hUycbYK33jM+q6y+Wm5rOLu6OO4yCV+N47cnFbZGP6bimMYALa8Fh
	 hSrClZbjnhoe6Pkf45gaevjI8voZq2AYTApVrTAuclx+rRW9F35F39tHXUn/6IQ24l
	 uXWfsd9CyNt2Qa2iDR2RjeK+j8HdGzOaPEAdzdvFV3E5kpiXLuL8SceqVB8ujO/v7k
	 f9MyiavN9TkdQ==
Date: Thu, 18 Jun 2026 16:22:26 +0100
From: Mark Brown <broonie@kernel.org>
To: david@ixit.cz
Cc: David Rhodes <david.rhodes@cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, patches@opensource.cirrus.com,
	Bjorn Helgaas <bhelgaas@google.com>, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	phone-devel@vger.kernel.org
Subject: Re: [PATCH RFC] dt-bindings: sound: Convert cirrus,cs35l36 to DT
 schema
Message-ID: <6d0187ac-5b52-43d7-b874-9739a62860aa@sirena.org.uk>
References: <20260618-dt-cirrus-cs35l36-v1-1-1a43515666ad@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QufLE/0Kc9+EiCqz"
Content-Disposition: inline
In-Reply-To: <20260618-dt-cirrus-cs35l36-v1-1-1a43515666ad@ixit.cz>
X-Cookie: This unit... must... survive.
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-313545-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:david@ixit.cz,m:david.rhodes@cirrus.com,m:rf@opensource.cirrus.com,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:patches@opensource.cirrus.com,m:bhelgaas@google.com,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:phone-devel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[cirrus.com,opensource.cirrus.com,gmail.com,kernel.org,google.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ixit.cz:email,sirena.org.uk:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB2BC6A13B1


--QufLE/0Kc9+EiCqz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 18, 2026 at 04:33:28PM +0200, David Heidelberg via B4 Relay wro=
te:
> From: David Heidelberg <david@ixit.cz>
>=20
> Convert CS35L36 Speaker Amplifier.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--QufLE/0Kc9+EiCqz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmo0DTEACgkQJNaLcl1U
h9DTvwf/ZDqT6lHklGiiZ/2ew8XLNomY7zRAa0SvFY7yLpFRhNuHbhhFE8O6/nVg
ayPBn+RsMYmy6brd9UIzOMI0p7h+KU9u4VbCsy5dY3IErlqkSzk/sYiJDRNDJeN6
QQ+93JnormAA/cFEscwNsB2zM94v51AnC8hpTGdPD6uixRi5lWP4/8v387HgkOcp
64x1dRAghOwQ1pGQsEVQYTGieF5ex/w68MQUabzgzavHOPR2Lgefi4b3LfUjkAre
eicUeTAd3V7EYaTtaZXwBLi0JsZM9RObcazADuKPcvMDVIdlcZdATYg3DQIi0cJe
B5Vn5Y2KRtF6HczMRhMfRvaeflUdPw==
=SS80
-----END PGP SIGNATURE-----

--QufLE/0Kc9+EiCqz--

