Return-Path: <devicetree+bounces-311356-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aDdMN1SBLWokhAQAu9opvQ
	(envelope-from <devicetree+bounces-311356-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 18:12:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4689F67F08C
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 18:12:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311356-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311356-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1685F300A52D
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 16:12:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1263332918;
	Sat, 13 Jun 2026 16:12:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from leonov.paulk.fr (leonov.paulk.fr [185.233.101.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B1D305689
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 16:11:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781367120; cv=none; b=Uc5CunjAldH7iIuF1C7Buzj+mZcw4KtYwlSxJIdlpbFNkBjcmzGTsBe/UK8QtrEYYFGL8WQ9VPDyUs8qcKv1RfX6LbB+f51cueoApB/u3ri3jIuZRQ3ZCRpUYhFf27NtN0oRnpTFAF85oPIUJkXBQfOXCJgCirZZuTnpXRjv2Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781367120; c=relaxed/simple;
	bh=rK08wLNI77fa8ftWKk5658x5Fxv8woM3vweBw5iC/+4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z7oB9Rh2SWKu8P6E6SrfpHJz3PIXzYzIF6en5ZLwCBnDAW1RuykyU9eiY2toowgGXcljrtRjGFUz+4k98FHbDM3wL2vRggRvV0tyAQhPi67d5wXVP+7tt4MdMPaTW1+4Xpwo08JCuLAfe6KQxDswDc6zjle+wJLoiEHBQ1QaVA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sys-base.io; spf=pass smtp.mailfrom=sys-base.io; arc=none smtp.client-ip=185.233.101.22
Received: from laika.paulk.fr (12.234.24.109.rev.sfr.net [109.24.234.12])
	by leonov.paulk.fr (Postfix) with ESMTPS id 393A737002EF
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 16:11:57 +0000 (UTC)
Received: by laika.paulk.fr (Postfix, from userid 65534)
	id 61173B45551; Sat, 13 Jun 2026 16:11:56 +0000 (UTC)
X-Spam-Level: 
Received: from collins (unknown [192.168.1.1])
	by laika.paulk.fr (Postfix) with ESMTPSA id BF63AB45548;
	Sat, 13 Jun 2026 16:11:55 +0000 (UTC)
Date: Sat, 13 Jun 2026 18:11:53 +0200
From: Paul Kocialkowski <paulk@sys-base.io>
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
	linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v10 4/6] dt-bindings: sun6i-a31-mipi-dphy: Add V3s SoC
 compatible entry
Message-ID: <ai2BSWKkgeC7Rdfh@collins>
References: <20260613152655.212490-5-paulk@sys-base.io>
 <20260613153532.EA04E1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="U9BF0t4XzhxQmoDs"
Content-Disposition: inline
In-Reply-To: <20260613153532.EA04E1F000E9@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.06 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311356-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[paulk@sys-base.io,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-sunxi@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[sys-base.io];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[paulk@sys-base.io,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sys-base.io:email,sys-base.io:url,sys-base.io:from_mime,paulk.fr:url,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4689F67F08C


--U9BF0t4XzhxQmoDs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Le Sat 13 Jun 26, 15:35, sashiko-bot@kernel.org a =C3=A9crit :
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [Medium] The newly added V3s compatible string is for an rx-only hardwa=
re variant, but the binding schema allows it to incorrectly default to `tx`.
> --
>=20
> commit 2fd664ce10fb7edbf45c93a3bcbbd8adb0bad2ea
> Author: Paul Kocialkowski <paulk@sys-base.io>
>=20
> dt-bindings: sun6i-a31-mipi-dphy: Add V3s SoC compatible entry
>=20
> The V3s/V3/S3 comes with a rx-only D-PHY paired with the MIPI CSI-2
> controller. It is compatible with the D-PHY found on the A31.
> Add an entry with a new compatible and the A31 compatible as fallback.
>=20
> > diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-=
mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-=
mipi-dphy.yaml
> > index 6a4fd49299590..3ca1a1c47032f 100644
> > --- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dp=
hy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dp=
hy.yaml
> > @@ -21,6 +21,9 @@ properties:
> >        - items:
> >            - const: allwinner,sun50i-a64-mipi-dphy
> >            - const: allwinner,sun6i-a31-mipi-dphy
> > +      - items:
> > +          - const: allwinner,sun8i-v3s-mipi-dphy
> > +          - const: allwinner,sun6i-a31-mipi-dphy
>=20
> [Severity: Medium]
> Since the commit message indicates the V3s D-PHY is rx-only, should this
> schema include an if-then block to enforce the rx direction?
>=20
> The base binding defines allwinner,direction with a default of tx:
>=20
>   allwinner,direction:
>     ...
>     enum:
>       - tx
>       - rx
>     default: tx
>=20
> Without an allOf if-then block constraining this property for the
> allwinner,sun8i-v3s-mipi-dphy compatible string, a V3s device tree node
> that omits the property will implicitly default to tx.
>=20
> Would this allow an incomplete device tree node to pass schema validation
> while misconfiguring the rx-only hardware?

That is correct, but maybe a bit over the top. If someone thinks this
should be done, feel free to let me know and I can respin.

All the best,

Paul

--=20
Paul Kocialkowski,

Independent contractor - sys-base - https://www.sys-base.io/
Free software developer - https://www.paulk.fr/

Expert in multimedia, graphics and embedded hardware support with Linux.

--U9BF0t4XzhxQmoDs
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEAbcMXZQMtj1fphLChP3B6o/ulQwFAmotgUkACgkQhP3B6o/u
lQxdmw//Z+Dx8/Pg/K0GJo5PU8TOtG9EhLN4W0o5qRZzc9356wX4fA3tIeLhVp0R
DZjTF6EaNjSsz2d5tj1q5jYRo5JFWyCDrsm0vHoaiWlFdI9bIUMLtZ3AJpY+J00l
a7IkShSE+EXSCnBJynD5q6BlcrgvlsPGxuJcwe30yfLNILXY2VnJm2FW/yqdTv1l
8S9hPbUSaMkSXzX4BYg6Lp5FkOWceW9V5TjIQrc0BclA0uhkGNtZjOnkBhff85go
mgpTPGUXLOi+L4bbj7leIwFopCKADVa8B3JI8EUbE7rzIbMGxmvJJ472D8yc2Duk
Zz1Bg8nOj8AIHKsLw2o4JZd0mPFX1kZHPYI8pT4lOoTijw4SNEQbAv878LWGBAMi
WIc1yPhUFX5PXzqjj/cHPiS2/iGKhyIm6QQ5IZmmBh6dZYwXTpSrp8nxA/rqeLBF
P1zFpPz/SQxIGW+hLyn8CgUYLxVbyPNPps9gUGlrl8RqW6bunKEDAnxQpb74NwaO
mW0WYmqyW5zdCcCvKU+4uVXveHxQckD4mgAp12BpOCyTGU04nwurIOM+a+9lPtR6
+P1zEy6N/rbb0a6B4NLWmFwplnR+SbdDPlKD8OsIxFPUhk/fihQWtstOeaBCLcgP
X5zGcBgBoQzIzJq13TDaUc057UYBUoJFP+d9O0rwzF9QvUw8J6A=
=xeRG
-----END PGP SIGNATURE-----

--U9BF0t4XzhxQmoDs--

