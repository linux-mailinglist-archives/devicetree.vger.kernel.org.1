Return-Path: <devicetree+bounces-316297-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Y2WdLFTYP2poZAkAu9opvQ
	(envelope-from <devicetree+bounces-316297-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 16:04:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3345E6D2106
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 16:04:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=igug3ZAI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316297-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316297-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39C903018ACE
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 14:03:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 830433AD53D;
	Sat, 27 Jun 2026 14:03:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 827C61C5D72;
	Sat, 27 Jun 2026 14:03:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782569015; cv=none; b=HpICElIx240lX2oRSvhHYGHJC9ETloJ7lnO08QkPYMEqWkqS8xm3BFSV/u/gMoANvm2rnGG/x3YZE0m4CqhHSA6fvlA0V+mmWfeptoO5WvWZsfUiTBfTOfyX274GZWY1cFaSHRtkaoec2srM8al+qOjhX6W/8CRTLVmar/bexHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782569015; c=relaxed/simple;
	bh=2jp4dUgNN7qxpz2GlUubMNn0MTODUMmhv6mJ1wohE0U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MEDdE7F2t9mbQehCz2dgy84ocEp8d3V6jqQ0wzh6EZ26qdRqZPBEQCcGBtycQH15Bz3fi7qnHfL/2V/zTUDx5ZXnhZ2lvHr4HCNsIL2zq3zmtwBnR99rhPEmln5tTeHP8aGjgt92DyaYkeAw2PLpU/lraWFNK3GdfiCrCzUHVxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igug3ZAI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80C381F000E9;
	Sat, 27 Jun 2026 14:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782569014;
	bh=9mCDnmGglO2sIeCdvnxemRXH84TvTrXTDYrvwilcTY0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=igug3ZAIsoMLorqrCWKf6R3eZ6aVNgYxZIs6W4ojHX0Hps5V/wB3ef52NoUDS4Bfs
	 sHeL9YnpsVALScg+Norm49emNg1gr5W8PJeDxsr/pdQNy6d++j4CbfQqbpM8aVDnoR
	 A9J7GOeYtYc8Ooo1L59GRbfVih0XY8nCy9e1MQvDd+eCu1lrhnfYSakZ0/bbhb4VRd
	 8PMnXm9ptN5oRKI+NwnbWD2mCTktqjrPO57O+bq48VRXa/ID40zG3N8ioKJqtfObuB
	 vfxh7RVDDlRrshc4aAq+ghcUBn5cQRmBhajoTfZa/XMsCuz0yjsb4j48oVnSz+d8UL
	 VNKAjSAL2sQJw==
Date: Sat, 27 Jun 2026 15:03:29 +0100
From: Conor Dooley <conor@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chris Hall <c-hall@ti.com>,
	Patrick Edwards <pedwards@ti.com>, Kurt Borja <kuurtb@gmail.com>,
	Nguyen Minh Tien <zizuzacker@gmail.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/8] dt-bindings: iio: adc: add ti,ads122c14
Message-ID: <20260627-corridor-word-0fbe89fd2294@spud>
References: <20260625-iio-adc-ti-ads122c14-v2-0-ceb9b0b561cb@baylibre.com>
 <20260625-iio-adc-ti-ads122c14-v2-5-ceb9b0b561cb@baylibre.com>
 <20260626-rising-legged-dea08bb68bfe@spud>
 <82294468-c4cf-4003-93f1-31a113c79979@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cPC/5N2jzs1o5Frl"
Content-Disposition: inline
In-Reply-To: <82294468-c4cf-4003-93f1-31a113c79979@baylibre.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:c-hall@ti.com,m:pedwards@ti.com,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316297-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,ti.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3345E6D2106

--cPC/5N2jzs1o5Frl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 26, 2026 at 01:35:22PM -0500, David Lechner wrote:

> >> +required:
> >> +  - compatible
> >=20
> > reg?
>=20
> I thought reg being required by i2c-controller.yaml was already good enou=
gh.
>=20
> https://github.com/devicetree-org/dt-schema/blob/2203c1720f4ebeebd7f8d10e=
9dc1812993482fab/dtschema/schemas/i2c/i2c-controller.yaml#L219

Nothing mandates that this is a device on a bus at all without requiring
reg, since that's a schema applied by the parent.
It's unlikely that that will actually occur, but I think properties
mandated by schema that are not referenced in a binding should be
required by the binding.

>=20
> >=20
> >> +  - avdd-supply
> >> +  - dvdd-supply
> >> +
> >> +dependencies:
> >> +  refn-supply: [ refp-supply ]
> >> +
> >> +oneOf:
> >> +  - required: [ refp-supply ]
> >> +  - required: [ "ti,refp-refn-resistor-ohms" ]
> >> +  - properties:
> >> +      refp-supply: false
> >> +      refn-supply: false
> >> +      ti,refp-refn-resistor-ohms: false
> >=20
> > I assume you've tested this to make sure it enforces the behaviour that
> > you want?
>=20
>=20
> yes

:)=20

--cPC/5N2jzs1o5Frl
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaj/YMQAKCRB4tDGHoIJi
0hkDAP0fT+KcpXeoZEwFJKmE0QbRfiO7M+R1m+EzEjRU5i4NegD/StMTfqxIlFFQ
QfFYwRqT3ot3StMAeHG4I9X2WnKIsg0=
=NIhp
-----END PGP SIGNATURE-----

--cPC/5N2jzs1o5Frl--

