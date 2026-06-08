Return-Path: <devicetree+bounces-308435-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6pMBE1X4Jmr8owIAu9opvQ
	(envelope-from <devicetree+bounces-308435-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:13:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC7165920E
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:13:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=lUgdTd0v;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308435-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308435-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2A5CF3020E95
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 17:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0E5D3D4132;
	Mon,  8 Jun 2026 17:12:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5606330307;
	Mon,  8 Jun 2026 17:12:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780938732; cv=none; b=rt3FpVcvkUKPCm6TLlvvV/VFQH0Jlcr2stT/A+nuAHzunRNl2rAdwacKA35mTn2jJ/txmDLmRX8pgv5BtZcgXZB/K48bLisHBsxMSRIFqwrTnk1G5+FjsXEbaizbIhotR/E9apnPmlHEDN6s8UDSOsDjmeobwULgdh9nVnI24P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780938732; c=relaxed/simple;
	bh=roO0q2NA0hqIfkSNiuLcww0RGric+vlE5VMTRsvys1U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z+y31TK6mHIvIuhn6TG1OqANQ1+/NJ5DMspCTMoJmesFA1SG4p84tqtAfmrcyxeHbnL1d+eJEAGLpX5G39L6TYm8M/rP5tGlgVK+/XYLR7T+hASDAa6B1xbK9wy5AuYLctWMHHbc4A6H2Fx+IcGoebwATf/7ziG4ocdhbAJ6r3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUgdTd0v; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCE6A1F00893;
	Mon,  8 Jun 2026 17:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780938731;
	bh=mcJ3rg/6j3zmSyzJlFFskmupYtzcGwCdVBCGTpSDsNU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=lUgdTd0v+TvjNJH6hbTPKkoNK99tHarljjURkb1M4t+e89yW2i4GQco/8p1gGseEy
	 BQ+NJVJt+qDcYMa8IOV88160R/EElTm6udSp70Lxw/989jM+Cvo7p96J9xaX/2wfcC
	 XGOhHcNhh9V9qUgIHvUnWEyBLiszs2Os7ZxB5I0moprq/xoadAWq9mCERUQA0eT70W
	 aIIC4NPsXa6IshexAhE5URTpxQrzDaBk+tFBqqi/XEFzFiT6UV7X5ziciAYkHLvepm
	 f0QtIJU+2sc+qAlEsH6NFVYGPFPXq2kJsq68bj/a12O3LMrCmAaimzpYuyL5swHquK
	 F1Ve9UOP021fA==
Date: Mon, 8 Jun 2026 18:12:06 +0100
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
Message-ID: <20260608-scrambled-quack-7833e0348830@spud>
References: <20260608-tmp119-v2-0-30c3537d5097@bootlin.com>
 <20260608-tmp119-v2-1-30c3537d5097@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n2Onr6CqXwKhAuw+"
Content-Disposition: inline
In-Reply-To: <20260608-tmp119-v2-1-30c3537d5097@bootlin.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308435-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:url,spud:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,devicetree.org:url,bootlin.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BDC7165920E


--n2Onr6CqXwKhAuw+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 08, 2026 at 06:00:24PM +0200, Romain Gantois wrote:
> The TMP119 has the same register layout as the TMP117, and a better local
> sensor accuracy. Add a compatible for it.
>=20
> Use ti,tmp117 as a fallback compatible for ti,tmp119.
>=20
> Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
> ---
>  .../devicetree/bindings/iio/temperature/ti,tmp117.yaml   | 16 ++++++++++=
+-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.=
yaml b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
> index fbba5e934861c..d12dfef315b6c 100644
> --- a/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
> +++ b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
> @@ -7,19 +7,25 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: TI TMP117 - Digital temperature sensor with integrated NV memory
> =20
>  description: |
> -    TI TMP116/117 - Digital temperature sensor with integrated NV memory=
 that
> -    supports I2C interface.
> +    TI TMP116/117/119 - Digital temperature sensor with integrated NV me=
mory
> +    that supports I2C interface.
>        https://www.ti.com/lit/gpn/tmp116
>        https://www.ti.com/lit/gpn/tmp117
> +      https://www.ti.com/lit/gpn/tmp119
> =20
>  maintainers:
>    - Puranjay Mohan <puranjay12@gmail.com>
> =20
>  properties:
>    compatible:
> -    enum:
> -      - ti,tmp116
> -      - ti,tmp117
> +    oneOf:
> +      - enum:
> +        - ti,tmp116
> +        - ti,tmp117
> +      - items:
> +        - enum:
> +          - ti,tmp119
> +        - const: ti,tmp117

Indent here looks undersized, is that just the diff being weird?

> =20
>    reg:
>      maxItems: 1
>=20
> --=20
> 2.54.0
>=20

--n2Onr6CqXwKhAuw+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaib35gAKCRB4tDGHoIJi
0q9EAQDXw0FehFMuPQTiW4ya4WniKMC0Ac1jvUixsztl3oFvjwEAvv7bd14yBTv/
DHdMoeBZwZldqIYscdO0HDVUCzkhOwE=
=N6OK
-----END PGP SIGNATURE-----

--n2Onr6CqXwKhAuw+--

