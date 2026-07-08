Return-Path: <devicetree+bounces-323089-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0py1ERiITmr+OgIAu9opvQ
	(envelope-from <devicetree+bounces-323089-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 19:25:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4037292A3
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 19:25:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SEjhNR9J;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323089-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323089-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 007A8300D876
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 17:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7821D37C112;
	Wed,  8 Jul 2026 17:23:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F57126B0A9;
	Wed,  8 Jul 2026 17:23:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783531423; cv=none; b=aqpd1ghBYyEEw0vE13uZIF0EeF9B2G9Nt/v6JHZH0qhHYOlbUnMNyyp/zpZi4JwjgnlVioV1MDD4pB7DbPcTJYrdKaJDxYwR7lZyXITK8F8xwZ/ur5qLYFbIIjQ0XrWrjFIX/jFyMqrYk8ToP6hjqEp0GXa3UwtXcT9MH702+cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783531423; c=relaxed/simple;
	bh=bBgNLGVNsB1fJsFCTqLzYxXYGVGN3oHzTVfLH7qOKDM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FR6lRr8bakcQp2knGgoYwsxbrDfsRHPZ0msDS1MlikPsqtzcbBlEwXjEdpvGbhMNweWw3p8MTNFIuJiFSHDKy24M3cXdX/PtKbWjKkxVm1OJxxx1RCV7VGnZIocwJlTP2IkYvLOiAfxbCX7LwUzx6CL/+qz56tuJ0PJTcPQMo2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEjhNR9J; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91DD91F000E9;
	Wed,  8 Jul 2026 17:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783531422;
	bh=+PrrRsYnh8HgeKwD8LeMPX+IopNgbVL9Xpwx9+ev7nQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SEjhNR9J5TDpWhC9LGqqEpcORxWeRVOS4nrtq9fubYSZCb9ypg2k8jTxtzqewRCqF
	 UrB9umMF7wyvOmMzHcHI9+5Nzo4OCh5KmUXnlBldBCqueU5iECf/6+IWyMnOPu3v3x
	 v6O2ORiuClSCH/0YjLpSXg2ZeCIv09cCqUMXu0ciFYgyJV/fjsoNDQEyGor1N22HiZ
	 44WZYsoI3EoyrAUCckCCyVS0kLixLaW2+tDV1lHYwyhQeHHxjs8kRBsYLfwZ1S91Y8
	 ThkwKG2pO82UGSGtZXamLMmXxxG/LpTG4kFgdXfAn87yllUmfZErKn0DlpfrirqTUD
	 uvXSKhtZD8qlA==
Date: Wed, 8 Jul 2026 18:23:37 +0100
From: Mark Brown <broonie@kernel.org>
To: Robert Marko <robert.marko@sartura.hr>
Cc: conor@kernel.org, nicolas.ferre@microchip.com, claudiu.beznea@tuxon.dev,
	robh@kernel.org, krzk+dt@kernel.org, alexandre.belloni@bootlin.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, daniel.machon@microchip.com,
	luka.perkov@sartura.hr
Subject: Re: [PATCH 1/4] spi: atmel-quadspi: add controller init callback
Message-ID: <550f7779-8188-45db-8de3-c25eda948cbb@sirena.org.uk>
References: <20260708165201.624271-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6TE0aoWDj9Btiv3j"
Content-Disposition: inline
In-Reply-To: <20260708165201.624271-1-robert.marko@sartura.hr>
X-Cookie: The other line moves faster.
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-323089-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:robert.marko@sartura.hr,m:conor@kernel.org,m:nicolas.ferre@microchip.com,m:claudiu.beznea@tuxon.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:alexandre.belloni@bootlin.com,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniel.machon@microchip.com,m:luka.perkov@sartura.hr,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirena.org.uk:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8F4037292A3


--6TE0aoWDj9Btiv3j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 08, 2026 at 06:51:08PM +0200, Robert Marko wrote:
> Allow controller variants to provide a custom initialization callback
> through their capability data.

This doesn't apply against current code (specifically the DT patch).

As mentioned in submitting-patches.rst when submitting a patch series
you should supply a cover letter for that patch series which describes
the overall content of the series.  This helps people understand what
they are looking at and how things fit together.

--6TE0aoWDj9Btiv3j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmpOh5gACgkQJNaLcl1U
h9Dk8gf/ZWiafVMit4ybyk/QcKkGlLhMiMcvBEq9FzlhkcJu5qqJpsM70pjK6CX/
SlOTKs+luGUtZWRU8T0r2vjmQAghwTKWWo4iyvgSdGPYru8m+agD6/7CEi5BXLez
QZ3VBNcvSSBEJZuLtN9HLLDn95JR05wXBatohjN1cJIgodkeV4IRq8dtoqb6FUe8
OC3mPNq1Yohsip/UUixj1LeRWgBxoxi/F1gJgi0ss5C3w9bwbYvWNqob9YRumcK9
CCjEbYDYc5MSNnETmKtB5E5Vpe1K+1cYUGuvvE7k9BETM/kX5lkykPBqjGP6IBc4
Ly+sgd7CsD/vZXZvsuNkNsyE4hphog==
=EpTC
-----END PGP SIGNATURE-----

--6TE0aoWDj9Btiv3j--

