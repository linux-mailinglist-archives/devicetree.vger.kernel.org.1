Return-Path: <devicetree+bounces-266236-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OgsDdirlGl7GQIAu9opvQ
	(envelope-from <devicetree+bounces-266236-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:56:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C0A14EC92
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:56:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AA790305BFC4
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:54:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C7A2372B2F;
	Tue, 17 Feb 2026 17:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qs2jZeVS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C9A372B28;
	Tue, 17 Feb 2026 17:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771350842; cv=none; b=pUKXnB3/Cll8pGCGRI5AG7tV5rcnmD9uVQ4xuzLRYjd8q7f3YmeT05fFnMRz4siuFeVXM74MDYEk5jl8ndOESix2qO6p7CZHiDj3dt9a66LxpCCnn1pXRrS1RBnmwwt37uUBJcsUdpgAYaDa2MXwhfz0TUcJbTtGHb7pt5towdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771350842; c=relaxed/simple;
	bh=w2FJAsoQAGKXXqIH/ZeQVPy+EAquuJJzIcWDe5OYWb4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NW0uXx8NmNKzIplOjhOrRYxLMbT2FgeBFxxuJHOIiKX4FXm8g9BO4e/ZT45um3iwmPOjbqRzFwlLxnuYFhXzY4VFROBQ3C3DFcnjldmlL1FdQaMKMzSwwQslSpzHWjwULZwxx+RH0bG2z9yrb1v9C6Zx0ocaqPll4yxJuEDHnHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qs2jZeVS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F05ABC19425;
	Tue, 17 Feb 2026 17:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771350842;
	bh=w2FJAsoQAGKXXqIH/ZeQVPy+EAquuJJzIcWDe5OYWb4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qs2jZeVSHoAT5xtEbpDxiDhRvdUj5g/Wcn9vCUIXaOG0L2C8ezhLi+HOmRuREhDZJ
	 xRfnFvYdHEeIq8CnnA9RVGE5IM7P9bSNLniHk/edLs1v2f1Aa980r4xF+2gzhaMmOQ
	 yfyxUlxkzRDsCexPvRDt7LFdg0fCj4gE/8kX3Iit92CwWzMrpHEEo78VsnZg6DdgtA
	 2YTkZptFWor88zvx/qswFecZtKfQwfXZgQxh9UPZaFDYOak2K0lw07g9dXyCZWeu2m
	 C/35NrycDxrgpFZ7bvVtX9zcNNxukGzY7yaParmeOVGZEFpyXiNnAjLbFwPCdgYj1W
	 tcYjRYaTpD+/Q==
Date: Tue, 17 Feb 2026 17:53:57 +0000
From: Conor Dooley <conor@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/5] dt-bindings: arm: microchip,sam9x60-pit64b : convert
 to DT schema
Message-ID: <20260217-surgical-gently-7f58e6fb5e5e@spud>
References: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
 <20260217-arm-microchip-v1-3-ae5d907e10e3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b27VbrnZhyUo1vZR"
Content-Disposition: inline
In-Reply-To: <20260217-arm-microchip-v1-3-ae5d907e10e3@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266236-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A0C0A14EC92
X-Rspamd-Action: no action


--b27VbrnZhyUo1vZR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 17, 2026 at 05:24:21PM +0000, Akhila YS wrote:
> Convert Atmel Periodic interval timer of 64bit (PIT64b) binding to YAML
> format.
> Changes during conversion:
> - Add missing compatible "microchip,sama7g5-pit64b" along with a fallback
> compatible "microchip,sam9x60-pit64b".
>=20
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
>  .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 71 ++++++++++++++++=
++++++
>  1 file changed, 71 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit6=
4b.yaml b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.ya=
ml
> new file mode 100644
> index 000000000000..6bf8e81d4c72
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/microchip,sam9x60-pit64b.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip PIT64B 64-bit Periodic Interval Timer
> +
> +maintainers:
> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
> +  - Claudiu Beznea <claudiu.beznea@microchip.com>
> +
> +description:
> +  The Microchip PIT64B is a 64-bit periodic interval timer used in
> +  several modern Microchip ARM SoCs including SAM9X60, SAM9X7 and
> +  SAMA7D65 families. It provides extended timing range, flexible
> +  clock selection and supports both periodic and one-shot interrupt
> +  generation modes.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: microchip,sam9x60-pit64b

> +      - items:
> +          - const: microchip,sama7d65-pit64b
> +          - const: microchip,sam9x60-pit64b
> +      - items:
> +          - const: microchip,sama7g5-pit64b
> +          - const: microchip,sam9x60-pit64b
> +      - items:
> +          - const: microchip,sam9x7-pit64b
> +          - const: microchip,sam9x60-pit64b

These three can be merged into one enum + const items list.

> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    oneOf:
> +      - const: pclk
> +      - items:
> +          - const: pclk
> +          - const: gclk

This can be an items list with minItems: 1, but there should be some
conditional logic used to permit gclk only where it is valid. The text
binding removal is missing so I cannot say exactly what that logic
should be.

pw-bot: changes-requested

Cheers,
Conor.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/clock/at91.h>
> +    timer@f0028000 {
> +        compatible =3D "microchip,sama7g5-pit64b", "microchip,sam9x60-pi=
t64b";
> +        reg =3D <0xf0028000 0x100>;
> +        interrupts =3D <37 IRQ_TYPE_LEVEL_HIGH 7>;
> +        clocks =3D <&pmc PMC_TYPE_PERIPHERAL 37>, <&pmc PMC_TYPE_GCK 37>;
> +        clock-names =3D "pclk", "gclk";
> +    };
> +...
>=20
> --=20
> 2.43.0
>=20

--b27VbrnZhyUo1vZR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZSrNQAKCRB4tDGHoIJi
0snqAP9WAtNwebWwwNMLqSegPZVNJSYGdpVGU3DpvMr5Px3t3gEAsSrCuNO6/02a
HgrWRrt6Y4/hZY70/ZP3onU0LEW+rgM=
=3Tpv
-----END PGP SIGNATURE-----

--b27VbrnZhyUo1vZR--

