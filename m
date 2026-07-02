Return-Path: <devicetree+bounces-319584-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dRguOHC7RmqTcQsAu9opvQ
	(envelope-from <devicetree+bounces-319584-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:26:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 137B96FC84A
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:26:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dhL15kIA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319584-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319584-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42BD33002116
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 19:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A08BF386422;
	Thu,  2 Jul 2026 19:20:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7BE4384254;
	Thu,  2 Jul 2026 19:20:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783020051; cv=none; b=I1ZE742uOEoacHXGEOSKK9zp78oVUtFZ6UQ+YMPuSgXZzp+E74+ja/6O6OxnoO4hAGKwtCEmcI/IylnI67cPSE8ev1aFGy96us76w+vwVpJJ1c24gUJc37+djWqIn4MQukcDa+brlv+GYb236VKNZD0u/A1lDtjkkfLMugR2VSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783020051; c=relaxed/simple;
	bh=njfPjw1vasZGkorgQQZuLlIvQZGHbLEOYPgFiYzXTGo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UhNJe4k2Qr/DwYzi4R6XffASgXvnfOwsQEXrJf1jGr4zHMJRRu1bmnd9S5h2D8yCx++akr0FatJgcGzX6Pvn0ox8IcE/I6aFwZgFfusiFk/keX45IR5u3XQxnP/h+htuHI+2djcZ6PCB1wcJNohAhN9CyBKh6AMB2HJ8zzEv8gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhL15kIA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C5C31F000E9;
	Thu,  2 Jul 2026 19:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783020050;
	bh=njfPjw1vasZGkorgQQZuLlIvQZGHbLEOYPgFiYzXTGo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dhL15kIAeCEM6Q2xLbK9Fz0jxb31bAoaOluoJ142BMOB/CiCEYMXT6QdA0v/os1DJ
	 4TMWT9nYv6cOdJVJtk4nC6ZSeWI2zuM3eyb+fQICdrpGxOENMhYFChTZMyxf2svkd1
	 r/E15ndzcvvmkHu70spN8+QKqJQ1cJ5suouyohJPZaBg9ajfInMDFsB/YYaQgC95GK
	 wjBeSRMobUNOog0cnLy3rzMW1ptP/oRxCefDI0L545l/VoFn0EkvOOEfkqW5xQM6YR
	 vf2P3GjMytzjLSyRmYb8MYkGT0RlsuHE2EDcfho8/SeJL+X+4hx0OdFYWnFBhrXneK
	 vd7cjFTqTbLcw==
Date: Thu, 2 Jul 2026 20:20:46 +0100
From: Conor Dooley <conor@kernel.org>
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Matti Vaittinen <matti.vaittinen@linux.dev>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: regulator: ROHM PMIC state-machine voltages
Message-ID: <20260702-dispute-licorice-85e7f5cd875e@spud>
References: <akZGe1CaQFDd3idm@mva-rohm>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KbV0JeECpGI9R6zI"
Content-Disposition: inline
In-Reply-To: <akZGe1CaQFDd3idm@mva-rohm>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319584-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:mazziesaccount@gmail.com,m:matti.vaittinen@fi.rohmeurope.com,m:matti.vaittinen@linux.dev,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[fi.rohmeurope.com,linux.dev,gmail.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,microchip.com:email,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 137B96FC84A

--KbV0JeECpGI9R6zI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--KbV0JeECpGI9R6zI
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaka6DgAKCRB4tDGHoIJi
0qdRAQD62ru9rTB6kSWBWsULelX51zbPDOK/8oCxjX/miMYwkwD+PqfkL0xtI1xM
mTZe4kcjO7d4gZDpvS9oe/bJjWlw8wM=
=SXon
-----END PGP SIGNATURE-----

--KbV0JeECpGI9R6zI--

