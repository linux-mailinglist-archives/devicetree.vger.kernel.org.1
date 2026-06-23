Return-Path: <devicetree+bounces-314928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W10SA27COmpKGAgAu9opvQ
	(envelope-from <devicetree+bounces-314928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 19:29:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0096B90D4
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 19:29:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZRkqcBor;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314928-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314928-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D5A1E3053EA4
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 17:28:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B89F38B13C;
	Tue, 23 Jun 2026 17:28:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD8D38AC96;
	Tue, 23 Jun 2026 17:28:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782235696; cv=none; b=ZYM9NUUEVcgNuHeDH3HE6b4uV99iYzp5A7XdW9bvCXUPtJSLDi4epzGd2Ixl2A55C0sjpSM9DAc2Kq8W5CZijGjZnTEXOAbt1VARJ+OujG9Yzrn7A35mS9c/BH4B7LJEmQMiM4FMON8GAQtgy3l9XPEmrk4t2N3oS4EoJSEgJqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782235696; c=relaxed/simple;
	bh=Djp3oc49PVHscwMFqdDpFv7he3xHUq+Wd8GbhbV3wDk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n2FEXmXH0Neo47vvwXXhr8T2b4hJUzUjx/HoyV23n6n8mKGFYYk0nO3/ouWeglKQcSocCxrMsFqeYUoeTragfxoFbDa3QPyvxZ4Ds1kKNutkRg3a0lMD0C1iFeKB1KrXbqcvFWk44uV68bptAETzcIEM9f1LaZyaN9RvRhdxIgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRkqcBor; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18E661F000E9;
	Tue, 23 Jun 2026 17:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782235695;
	bh=y17qniJxNNgKnaPXUfFps2+zoxLFn1xLNpne1RKDvqM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZRkqcBor+AahiKUsM/BTHq2kLO+CzRWW5qGI+Op6SxDpPFuBOy1fefA7BLPrFAh9E
	 VhRZ7tPjSZR/590akyAx9uu772aw9ilWdJC5y6nLiDhOfOMp3v446/AbVlMtFoB+eY
	 YAW1924NnJkMFT3dm3eiLX43AGoR9A5/u3iG0vLkAEqrNBUIGl7v4L8dWwUkykgV9S
	 rwUkpdkcXxHB2HZgPRlMJQEoBkVEtweyeLgXmDzWHIxXaPLsvIKkYalzsdVXZsERsI
	 E3nKG74IFJrUub/e1f2MyZMaE7QbIISnmpN2s9pWnzBeEF40S7YLHIkRBpzU6Gymvz
	 PQGCbqoT94q0Q==
Date: Tue, 23 Jun 2026 18:28:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Varshini Rajendran <varshini.rajendran@microchip.com>
Cc: ehristev@kernel.org, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev, srini@kernel.org,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 04/12] dt-bindings: nvmem: microchip,sama7g5-otpc: add
 sama7d65 and dt node example
Message-ID: <20260623-profanity-devotion-b501a11e1539@spud>
References: <20260623105944.128840-1-varshini.rajendran@microchip.com>
 <20260623105944.128840-5-varshini.rajendran@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AlyPrU4+HCxj3Al1"
Content-Disposition: inline
In-Reply-To: <20260623105944.128840-5-varshini.rajendran@microchip.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
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
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:varshini.rajendran@microchip.com,m:ehristev@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.ferre@microchip.com,m:alexandre.belloni@bootlin.com,m:claudiu.beznea@tuxon.dev,m:srini@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314928-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C0096B90D4


--AlyPrU4+HCxj3Al1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 23, 2026 at 04:29:36PM +0530, Varshini Rajendran wrote:
> Add support for sama7d65 and a dt node example that shows tag can be used
> to reference a packet stored in the OTP memory.
>=20
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> ---
>  .../nvmem/microchip,sama7g5-otpc.yaml         | 28 +++++++++++++++++--
>  1 file changed, 25 insertions(+), 3 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/nvmem/microchip,sama7g5-ot=
pc.yaml b/Documentation/devicetree/bindings/nvmem/microchip,sama7g5-otpc.ya=
ml
> index cc25f2927682..3cc16b0044a6 100644
> --- a/Documentation/devicetree/bindings/nvmem/microchip,sama7g5-otpc.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/microchip,sama7g5-otpc.yaml
> @@ -20,9 +20,15 @@ allOf:
> =20
>  properties:
>    compatible:
> -    items:
> -      - const: microchip,sama7g5-otpc
> -      - const: syscon
> +    oneOf:
> +      - items:
> +          - const: microchip,sama7g5-otpc
> +          - const: syscon
> +      - items:
> +          - enum:
> +              - microchip,sama7d65-otpc
> +          - const: microchip,sama7g5-otpc
> +          - const: syscon
> =20
>    reg:
>      maxItems: 1
> @@ -48,4 +54,20 @@ examples:
>          };
>      };
> =20
> +  - |
> +    otp_controller: efuse@e8c00000 {

Drop the unused label since you have to respin the series.
With it gone
Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

Cheers,
Conor.

> +        compatible =3D "microchip,sama7d65-otpc", "microchip,sama7g5-otp=
c", "syscon";
> +        reg =3D <0xe8c00000 0x100>;
> +
> +        nvmem-layout {
> +            compatible =3D "fixed-layout";
> +            #address-cells =3D <1>;
> +            #size-cells =3D <1>;
> +
> +            temp_calib: calib@41435354 {
> +                reg =3D <0x41435354 0x2c>;    /* Temp calib data packet =
TAG */
> +            };
> +        };
> +    };
> +
>  ...
> --=20
> 2.34.1
>=20

--AlyPrU4+HCxj3Al1
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajrCKgAKCRB4tDGHoIJi
0jBvAQDNKMDgUwrE0sGqDYdHwfUjnzJV5jbM+1YipRyP5t495wEAsGlK4mgvg9QD
+u0hTlC+4W8hAMDoW8PXtHnc2j9cNwQ=
=WG7b
-----END PGP SIGNATURE-----

--AlyPrU4+HCxj3Al1--

