Return-Path: <devicetree+bounces-310544-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nTMGFHv0Kmr9zwMAu9opvQ
	(envelope-from <devicetree+bounces-310544-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 19:46:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A37AC67421F
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 19:46:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WBGOLwOP;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310544-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310544-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7C753455355
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 17:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B47334963D0;
	Thu, 11 Jun 2026 17:34:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A4D4B8DC9;
	Thu, 11 Jun 2026 17:34:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781199273; cv=none; b=Y7e0kNPe2j8gQ6WhzVdAfAcWJgKbUB4DFytE3fPzYSpZMWD/4MRKDXVyZ4JxC4ffVySKNwifi/2OHx5IltkNHoK9Nfb5h+XP9aji64TGdw7FY89fxyj4xA5otmG+qsk2qaK2v2e2PGVDRdKKWPBX7bkaeBZ2Yy1A2zEok5+Wa3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781199273; c=relaxed/simple;
	bh=MciWf+M20QPVtTaY40UDNHXUlrLT7qxgSUVPIX1y9sY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HYn/JAKu8Afogv+jnw+w7LQBy/J+BOLbKFF+LHpWSqaCYbqF978BAL74XaK0L/pQLnHeTPw5npyeWnlKQiVzLh7EXNX5/0/1nuOACnypUo/+b8HVw9HSiZNsGcX/QxAB7OG4S+1yb3g5pM7Nlk3HDZopYb8A2TatOEfTMVgm55E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBGOLwOP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80CB41F00893;
	Thu, 11 Jun 2026 17:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781199270;
	bh=GKHh+i98qXgSxoXMtEh8DwSS3JvwNP6esO4z1NwS6xM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WBGOLwOPKlQV6+sE9zz8JwaW+U6eQ41T1PaK4+OBs710o7wY/sz3qlenlWQgkh8dD
	 aCG+5Kp5ivhAeQ7yiguw217xqOzRHMDMbqF1DNHt8Zhenu5WIo5TXnzSCX2VMCGSm8
	 gU/MCaNbgGqO2nKYO1UKqbZA4u0O7n/TAC9A7WNkhIXNqmNblPqP4FiFNILC5nAes/
	 w56jKalmnmKxLWh9UsPQZCAZqUkMZJb7LP1/DMRhGCZQt4tWlV0yvT4qdApvYO64dE
	 ugtkv//iFm0fFAYCSCwndkfW/oMXDCwuDpX/SGvNHRV2dB1Imij6q8gqc+Nflu66J0
	 eiKiohCDZcmUQ==
Date: Thu, 11 Jun 2026 18:34:26 +0100
From: Conor Dooley <conor@kernel.org>
To: Chi-Wen Weng <cwweng.linux@gmail.com>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, cwweng@nuvoton.com
Subject: Re: [PATCH v3 1/2] dt-bindings: spi: nuvoton,ma35d1-qspi: Add
 Nuvoton MA35D1 QSPI
Message-ID: <20260611-decoy-glamorous-81903a5fd1f9@spud>
References: <20260611091246.2070485-1-cwweng.linux@gmail.com>
 <20260611091246.2070485-2-cwweng.linux@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y2HC3MSDBPXqvEKI"
Content-Disposition: inline
In-Reply-To: <20260611091246.2070485-2-cwweng.linux@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310544-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:cwweng.linux@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cwweng@nuvoton.com,m:cwwenglinux@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url,vger.kernel.org:from_smtp,nuvoton.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A37AC67421F


--y2HC3MSDBPXqvEKI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 11, 2026 at 05:12:45PM +0800, Chi-Wen Weng wrote:
> From: Chi-Wen Weng <cwweng@nuvoton.com>
>=20
> Add a devicetree binding for the Quad SPI controller found in
> Nuvoton MA35D1 SoCs.
>=20
> The controller supports SPI memory devices such as SPI NOR and SPI NAND
> flashes. It has one register range, one clock input and one reset line,
> and supports up to two chip selects.
>=20
> Signed-off-by: Chi-Wen Weng <cwweng@nuvoton.com>
> ---
>  .../bindings/spi/nuvoton,ma35d1-qspi.yaml     | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/spi/nuvoton,ma35d1-=
qspi.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/spi/nuvoton,ma35d1-qspi.ya=
ml b/Documentation/devicetree/bindings/spi/nuvoton,ma35d1-qspi.yaml
> new file mode 100644
> index 000000000000..d3b36e612eb0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/nuvoton,ma35d1-qspi.yaml
> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/spi/nuvoton,ma35d1-qspi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Nuvoton MA35D1 Quad SPI Controller
> +
> +maintainers:
> +  - Chi-Wen Weng <cwweng@nuvoton.com>
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-controller.yaml#
> +
> +properties:
> +  compatible:
> +    const: nuvoton,ma35d1-qspi
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
> +  resets:
> +    maxItems: 1
> +
> +  num-cs:
> +    maximum: 2

Missing a default of 2, unless you make the property required.
FWIW, your driver doesn't appear to read this value.

pw-bot: changes-requested

Cheers,
Conor.

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - resets
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
> +    #include <dt-bindings/reset/nuvoton,ma35d1-reset.h>
> +
> +    soc {
> +        #address-cells =3D <2>;
> +        #size-cells =3D <2>;
> +
> +        spi@40680000 {
> +            compatible =3D "nuvoton,ma35d1-qspi";
> +            reg =3D <0 0x40680000 0 0x100>;
> +            interrupts =3D <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks =3D <&clk QSPI0_GATE>;
> +            resets =3D <&sys MA35D1_RESET_QSPI0>;
> +            #address-cells =3D <1>;
> +            #size-cells =3D <0>;
> +        };
> +    };
> +
> --=20
> 2.25.1
>=20

--y2HC3MSDBPXqvEKI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCairxogAKCRB4tDGHoIJi
0t3XAP9qcUqAyCExrvNM+WH+fRqlgDWYgVPPEhDhcx5b6gpGFAEA8y09z/Esd2jw
HHAZ8eWuMulndEiQ+EbaDJydemUtwA4=
=JpZM
-----END PGP SIGNATURE-----

--y2HC3MSDBPXqvEKI--

