Return-Path: <devicetree+bounces-266235-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHwQOr6qlGl7GQIAu9opvQ
	(envelope-from <devicetree+bounces-266235-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:51:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD7914EC04
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:51:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2C46030333F7
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5185736F41D;
	Tue, 17 Feb 2026 17:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSqFCk9G"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E90A33CE80;
	Tue, 17 Feb 2026 17:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771350716; cv=none; b=LCflrxQGYCJjPuFJDRh6FFgK+I5wmP9mOA6yrkYnfYf5nARCpbHNZYCCOHVLuZDFbYMiUxDVMkc/Hc1lj7uTHEilJyi6fYNj6TNoZxNKTljoEZllgXfFegybCsCSqlM2iTtPPcEx+/6vIF8nGfIoUZAqw9uMFnZ0yhsH6SLV09I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771350716; c=relaxed/simple;
	bh=nSlQybRCDf1ukcaNYL889KannvV086DVPELCuG/f9BE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CZE6bTxaLrJOWhit8E6x+gB13nZQoDaiGNdLdC0giZc9OI80vPNYVRMMR4TSdJyBXCHxMn47vH7nukFHcCiUFB4UzJuXRrDaElelGqNv1tP650mb21UEKyi3nUjbn7n/sxV3bdoJSNxOUvhdYhINIUX4RH3JgS+xVyAJonxyWV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSqFCk9G; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7442C4CEF7;
	Tue, 17 Feb 2026 17:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771350715;
	bh=nSlQybRCDf1ukcaNYL889KannvV086DVPELCuG/f9BE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fSqFCk9GF22E5iyln5OmUpGDTaQAzo/QLkCgApZTk6Jc/W2jps8X4ubPlnRkMDHmw
	 9DzIrMO6LTojMGEFNVsk7Rkyrq/nTffXKdPV4mgZ/8926kYH6vMftel+Ali9Z7iueJ
	 z9lAMosMzDTY9BAwdXvwHibRDE1yYItYhw4lNcYcXUB9CNq1EUvM5n0LThVwF8YxGo
	 7NYfJfdBUuRCZS0B9CHDTxDp1OEmowwCz/XcjCZSLDJEmliAMCxxjvjAS/SNOpftKh
	 OdlF7eLViuXWUUmI049XNvLm4uKRpEGidDS10rcY6jStXKxKDCA4q5KU4M7d5zNx+3
	 rBzavAKhrBsMA==
Date: Tue, 17 Feb 2026 17:51:51 +0000
From: Conor Dooley <conor@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/5] dt-bindings: arm: microchip,sama7g5-chipid : convert
 to DT schema
Message-ID: <20260217-fleshy-giddily-80987f509638@spud>
References: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
 <20260217-arm-microchip-v1-1-ae5d907e10e3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ycow4LfqyTcPTdK4"
Content-Disposition: inline
In-Reply-To: <20260217-arm-microchip-v1-1-ae5d907e10e3@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266235-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email,fc069000:email,devicetree.org:url,tuxon.dev:email]
X-Rspamd-Queue-Id: 5CD7914EC04
X-Rspamd-Action: no action


--Ycow4LfqyTcPTdK4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 17, 2026 at 05:24:19PM +0000, Akhila YS wrote:
> Convert Atmel system registers binding to YAML format.
>=20
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
>  .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41 ++++++++++++++++=
++++++
>  1 file changed, 41 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/microchip,sama7g5-chip=
id.yaml b/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.ya=
ml
> new file mode 100644
> index 000000000000..4227f308d43a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/microchip,sama7g5-chipid.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Atmel/Microchip RAMC SDRAM/DDR Controller
> +
> +maintainers:
> +  - Nicolas Ferre <nicolas.ferre@microchip.com>

> +  - Claudiu Beznea <claudiu.beznea@microchip.com>

This email no longer exists, think the new one is claudiu@tuxon.dev.
Look it up in MAINTAINERS.

> +
> +description:
> +  This binding describes the Atmel/Microchip Chip ID register block used
> +  for SoC identification and revision information. It requires compatible
> +  strings matching specific SoC families and a reg property defining the
> +  register address and size.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - atmel,sama5d2-chipid
> +      - microchip,sama7g5-chipid
> +      - microchip,sama7d65-chipid
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    chipid@fc069000 {
> +        compatible =3D "atmel,sama5d2-chipid";
> +        reg =3D <0xfc069000 0x8>;
> +    };
> +...
>=20
> --=20
> 2.43.0
>=20

--Ycow4LfqyTcPTdK4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZSqtwAKCRB4tDGHoIJi
0iE6AQCbn0DVPLFR3ihEmzGdFRLqcLHrtfP8u+++3NdkjCmugAEAyW4JRnhN6Tr3
rbcEKL3BsnvquINtkJwbola9wBp31A0=
=67/P
-----END PGP SIGNATURE-----

--Ycow4LfqyTcPTdK4--

