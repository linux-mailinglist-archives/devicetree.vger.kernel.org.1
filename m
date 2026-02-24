Return-Path: <devicetree+bounces-268004-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGADO2DknWnpSQQAu9opvQ
	(envelope-from <devicetree+bounces-268004-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:48:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5590618AB6D
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:48:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 16434303EB8E
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87F1639E6C1;
	Tue, 24 Feb 2026 17:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHwUdkdI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63938288C22;
	Tue, 24 Feb 2026 17:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771955292; cv=none; b=hnMvBUGuTzKmizHmRdQi7xQCBavc2Sr+2AxtIljR2ckL6rrROfn+m5JnPA4xDOLaub5iO9TOmyA50/s/ZFI/bgWr1Q75w9g/VgzxUweinWzaxnFq3vfAWWgsHPFVSfBPEFtmpuFh2jDYij1tVK3ysH0E0gCh/tKdFhhMYuSRC5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771955292; c=relaxed/simple;
	bh=0UX790U79He2CA/O8Pgt3kt0yvCMfFPH+Roj2u+UMIk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=efnvPX0AXAvC0atWkphM6evL+946arqovrpSnOVgb/y2oIaU0vssDtajw8k077vtVwg7uxHyahMysxDgyawUku0l3Er/kNFxw78U1VecVDeHfxjtWij1Y8pxbzWAOJijC0hLbfn92QxoKffM5tR1M2VaaLq98wCrWd6HSHeuw3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHwUdkdI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAA6FC116D0;
	Tue, 24 Feb 2026 17:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771955292;
	bh=0UX790U79He2CA/O8Pgt3kt0yvCMfFPH+Roj2u+UMIk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iHwUdkdINDseoYmpudh+QQZSereSkKJNvNTd0G4EcRLrjZNkj5lJIdM9eiXG0fBBd
	 nuPdn5YP0/brTVya/EBzyJ4959Ri0fgyk59cguPAncd3V+PPKQlTGnxgWknPvdJsEv
	 2uFY+1OhTH7jGLY/YZoq99K/l70+YikDia3NOzGpmkxUIszB6PLIrT/z1i58GgIpch
	 LndvpPS4rqW4kQ3dChhTbu+21WnF64m/Us5DDj8NN0OnIL1Tf0HBUfkgK1LyB7JCVn
	 fthrohws8VBeqGaUjuak6cBNL/6OLlQlTkEigRZbJ/ImWpwF7NuPiLH0avxKtTrKTr
	 /nlypmTaxNr5A==
Date: Tue, 24 Feb 2026 17:48:07 +0000
From: Conor Dooley <conor@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu@tuxon.dev>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 4/5] dt-bindings: arm: atmel,at91rm9200-st: convert to
 DT schema
Message-ID: <20260224-gout-exquisite-1ee0b67c58cd@spud>
References: <20260224-arm-microchip-v2-0-8bedacd2cdcb@gmail.com>
 <20260224-arm-microchip-v2-4-8bedacd2cdcb@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/Pg2x2GyqsqOrWxi"
Content-Disposition: inline
In-Reply-To: <20260224-arm-microchip-v2-4-8bedacd2cdcb@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268004-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 5590618AB6D
X-Rspamd-Action: no action


--/Pg2x2GyqsqOrWxi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 24, 2026 at 02:46:49PM +0000, Akhila YS wrote:
> Convert System Timer binding to YAML format.
>=20
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
>  .../bindings/arm/atmel,at91rm9200-st.yaml          | 65 ++++++++++++++++=
++++++
>  1 file changed, 65 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/atmel,at91rm9200-st.ya=
ml b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-st.yaml
> new file mode 100644
> index 000000000000..ff485b37cba8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-st.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/atmel,at91rm9200-st.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Atmel System Timer
> +
> +maintainers:
> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
> +  - Claudiu Beznea <claudiu@tuxon.dev>
> +
> +description:
> +  The System Timer (ST) module in AT91RM9200 provides periodic tick and
> +  alarm capabilities. It is exposed as a simple multi-function device
> +  (simple-mfd + syscon) because it shares its register space and interru=
pt
> +  with other System Controller blocks.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: atmel,at91rm9200-st
> +      - const: syscon
> +      - const: simple-mfd
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  watchdog:
> +    type: object
> +    description: Watchdog timer subnode.
> +    properties:
> +      compatible:
> +        const: atmel,at91rm9200-wdt
> +    required:
> +      - compatible

This should just be a ref to the binding providing the watchdog.

I am guessing you didn't test this against all bindings, only against
/this/ binding and therefore missed the fact that it doesn't comply with
the binding for the watchdog itself.

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
> +    timer@fffffd00 {
> +        compatible =3D "atmel,at91rm9200-st", "syscon", "simple-mfd";
> +        reg =3D <0xfffffd00 0x100>;
> +        interrupts =3D <1 IRQ_TYPE_LEVEL_HIGH 7>;
> +        clocks =3D <&slow_xtal>;
> +
> +        watchdog {
> +                compatible =3D "atmel,at91rm9200-wdt";
> +        };
> +    };
> +...
>=20
> --=20
> 2.43.0
>=20

--/Pg2x2GyqsqOrWxi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZ3kVwAKCRB4tDGHoIJi
0gXZAP49Up33liGlbEUsjKxmAU71c0fojkmD3O3Lv8taQFFbjgD+PW/4ysDU1+V9
7XU9ZxqFXmnCw7Qp1BddpexXQWXSzQE=
=eSoA
-----END PGP SIGNATURE-----

--/Pg2x2GyqsqOrWxi--

