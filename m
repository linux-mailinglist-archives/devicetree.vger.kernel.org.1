Return-Path: <devicetree+bounces-308437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WyIrIRECJ2qopgIAu9opvQ
	(envelope-from <devicetree+bounces-308437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:55:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 19710659733
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:55:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eHfhaDTw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308437-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308437-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F5323436E19
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 17:13:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D4353D45EF;
	Mon,  8 Jun 2026 17:13:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17902145B27;
	Mon,  8 Jun 2026 17:13:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780938816; cv=none; b=rmt8fosIiZc77uUcQEKPIxx3n8vh0yllhl+DX7lDJEniJZQKuP5WnpmGf/1IfMMmgQSWI9ytZ70zjbJu6d0ElL+blKyt4OpHQU1kK77+T2y6CbkT1uzNfD0II8c+6G2E0xXzaXYinbWLA+/rCcC22Cw+07nBp7UUR9B5hwbqOeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780938816; c=relaxed/simple;
	bh=I1Dm1UZtLoXei8QEHaq33r05yLbZK80SyueG807JzK8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p97cseADsAv9YJil83DB9zl6NkGemi9pw6jYhawNlFsvPOEcm0IbgtmEBQajlSmjO1P89KZ2odwrD1wM5FtthTzUHd8nkPubB/pyPjKoNove6RUhSay41GXY3R4IyzezpRlzbxut4LKRkVmQ7m/3Ud2/vT+Kg/MZx5fsCh5EBts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHfhaDTw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DD5F1F00893;
	Mon,  8 Jun 2026 17:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780938814;
	bh=Agw3RPBx+rEdiI9+GrD22R8MsCRma82AJ2HxfOh2TsU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eHfhaDTwnxVpRU3gMCeUP0NOoj2+Dah6ThGZEDM1j2u8sQz8g8OPq5q/wiOSKK1Wj
	 Dg1IJi788ugGJCVSLVeCMh4HsbZDhE6OetUxsYhZqRYiFLANzSIe88VdglMBYlHe6f
	 BlQJDdeRrYMXsDXg/IWK19Z20yFJOuCywkJVAYaniP/Jc7KpRGyHiBQlSB8Oem9hJu
	 x3+AuT7MQVHd2FpHRcaRUo3lmmfpkyH7nWS8GaZicNG9cX+wiXWjikDjTihb5CXO5p
	 HonGw6PIZerOMZk0MEXUvPcv3eOALEZorQA5tqTdTw++k9TdheflrhyC1rg/LVaF9E
	 NZ9InNO5zPwfg==
Date: Mon, 8 Jun 2026 18:13:30 +0100
From: Conor Dooley <conor@kernel.org>
To: Romain Gantois <romain.gantois@bootlin.com>
Cc: Puranjay Mohan <puranjay@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Wil Stark <wil_stark@keysight.com>, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: ti,tmp117: add binding for the
 TMP119
Message-ID: <20260608-huskiness-kosher-536ee4991d36@spud>
References: <20260608-tmp119-v2-0-30c3537d5097@bootlin.com>
 <20260608-tmp119-v2-1-30c3537d5097@bootlin.com>
 <20260608-scrambled-quack-7833e0348830@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MpCGs1H4qpwZru7r"
Content-Disposition: inline
In-Reply-To: <20260608-scrambled-quack-7833e0348830@spud>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308437-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:romain.gantois@bootlin.com,m:puranjay@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thomas.petazzoni@bootlin.com,m:wil_stark@keysight.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,spud:mid,bootlin.com:email,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 19710659733


--MpCGs1H4qpwZru7r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 08, 2026 at 06:12:06PM +0100, Conor Dooley wrote:
> On Mon, Jun 08, 2026 at 06:00:24PM +0200, Romain Gantois wrote:
> > The TMP119 has the same register layout as the TMP117, and a better loc=
al
> > sensor accuracy. Add a compatible for it.
> >=20
> > Use ti,tmp117 as a fallback compatible for ti,tmp119.
> >=20
> > Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
> > ---
> >  .../devicetree/bindings/iio/temperature/ti,tmp117.yaml   | 16 ++++++++=
+++-----
> >  1 file changed, 11 insertions(+), 5 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/iio/temperature/ti,tmp11=
7.yaml b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
> > index fbba5e934861c..d12dfef315b6c 100644
> > --- a/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
> > +++ b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
> > @@ -7,19 +7,25 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
> >  title: TI TMP117 - Digital temperature sensor with integrated NV memory
> > =20
> >  description: |
> > -    TI TMP116/117 - Digital temperature sensor with integrated NV memo=
ry that
> > -    supports I2C interface.
> > +    TI TMP116/117/119 - Digital temperature sensor with integrated NV =
memory
> > +    that supports I2C interface.
> >        https://www.ti.com/lit/gpn/tmp116
> >        https://www.ti.com/lit/gpn/tmp117
> > +      https://www.ti.com/lit/gpn/tmp119
> > =20
> >  maintainers:
> >    - Puranjay Mohan <puranjay12@gmail.com>
> > =20
> >  properties:
> >    compatible:
> > -    enum:
> > -      - ti,tmp116
> > -      - ti,tmp117
> > +    oneOf:
> > +      - enum:
> > +        - ti,tmp116
> > +        - ti,tmp117
> > +      - items:
> > +        - enum:
> > +          - ti,tmp119
> > +        - const: ti,tmp117
>=20
> Indent here looks undersized, is that just the diff being weird?

It's not just the diff. Testing the binding would show you what's wrong.
pw-bot: changes-requested

>=20
> > =20
> >    reg:
> >      maxItems: 1
> >=20
> > --=20
> > 2.54.0
> >=20



--MpCGs1H4qpwZru7r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaib4OgAKCRB4tDGHoIJi
0qbUAP9gz7yyQvuhAs+YrJFJ2BPnpK7eCsis95xtWiuziqTj4AD+KM7fO0Up9Gyz
QLVIqWDLCgzCuJREBLpeMaS5LuzaHwg=
=asTc
-----END PGP SIGNATURE-----

--MpCGs1H4qpwZru7r--

