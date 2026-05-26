Return-Path: <devicetree+bounces-303166-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKNnJVMNFmoGhQcAu9opvQ
	(envelope-from <devicetree+bounces-303166-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 23:14:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CCA5DC9CC
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 23:14:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 80FE63023DCC
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 21:14:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B773C3C1F5E;
	Tue, 26 May 2026 21:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4QpiBPj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 829A432AAA8
	for <devicetree@vger.kernel.org>; Tue, 26 May 2026 21:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779830096; cv=none; b=WmnI9JzS559sRXnaeFUE1EobUef5nFJs9ZbqeB814dXKrzDDJDMk7z2vUs/OhUyuH3ZdGWfAURfWo7KkP4P+y8Ty2dn/iQlRBY4nwL1Th6Fqj+krR0v69KKPyXxGIdQnD8eE9wCOAXQBDLPmyGLB+9lY30HWpeU1feyilFq6WvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779830096; c=relaxed/simple;
	bh=GXKhzhdJBPx/RDEnJPZZEJlUYZgH14ChJFwpO5XFZlE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=A3MwALiswVrVhl0p9LJ1Tue3hDLrZufX0RT6HCmud1LDkARlr+JWhgkrkXQzE/HnRm97z5IFbKEeCyF6HimzoW7ZtJZ6eneekb7r/mmM8LIVm7NDLPJu7zBJM+Fs3dZXd1/J+ZC51JqnmIMLpGcNZx9mgapwwLPAbc8EIhBRPEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4QpiBPj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F24C1F000E9;
	Tue, 26 May 2026 21:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779830095;
	bh=bQWl+jJ96JZ+H3dW8hllh7Tlx76uuearytYoBT2DskQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=m4QpiBPjgJYNgvi8f58sXAbOHVpzAL6LKxsvnXGNpdWGcbYyrl6okpxOsOyeAA6VO
	 b0Y6iufx3z4zDbvcHi5Py0HQQH23sGb4sdrtbrIdsSWO+tkITJgKbFxfHox4blIg10
	 McfMlZwYcty1p9HFuUCAdksofVjSz0Gn44aNzY5vxla/AP4IjW8O6q/zzqX3/1IZys
	 IM5iIbsSK/0YnFHug27v3Yr3wtAOVp6ZfVnYCJYU8jfvsSvECiBUTIUbz1Q/eVJHWJ
	 HiFGGov3s1T2CyXUI4gIdkGu9CeUZ/92mFdzsjh3XKAfIA4OEjMPJEIiOv4C8vWLkW
	 rWJ/oR9BuD74g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: renesas: r9a09g087: Add xSPI nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: conor+dt@kernel.org, wsa+renesas@sang-engineering.com, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260526204045.3481604-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260526204045.3481604-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 May 2026 21:14:54 +0000
Message-Id: <20260526211455.1F24C1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303166-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,renesas.com:email,801c1000:email];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: E9CCA5DC9CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The xSPI nodes provide incomplete clock and reset properties for=
 the fallback compatible string (`renesas,r9a09g047-xspi`), which will caus=
e schema validation errors.
- [Low] Mixed decimal and hexadecimal notation for reset indices in sibling=
 nodes.
--

commit 7421051c9fdf7ba19830d3741837bab97e76f110
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

arm64: dts: renesas: r9a09g087: Add xSPI nodes

Add device tree nodes for the two xSPI (Expanded SPI) controllers
integrated into the RZ/N2H (R9A09G087) SoC.

> diff --git a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi b/arch/arm64/boot=
/dts/renesas/r9a09g087.dtsi
> index f697e9698ed39..e63a6b74d90b0 100644
> --- a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi

[ ... ]

> @@ -1009,6 +1009,44 @@ mii_conv3: mii-conv@3 {
>  			};
>  		};
> =20
> +		xspi0: spi@801c0000 {
> +			compatible =3D "renesas,r9a09g087-xspi", "renesas,r9a09g047-xspi";
> +			reg =3D <0 0x801c0000 0 0x1000>,
> +			      <0 0x40000000 0 0x10000000>;
> +			reg-names =3D "regs", "dirmap";
> +			interrupts =3D <GIC_SPI 654 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 655 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names =3D "pulse", "err_pulse";
> +			clocks =3D <&cpg CPG_MOD 4>,
> +				 <&cpg CPG_CORE R9A09G087_XSPI_CLK0>;
> +			clock-names =3D "ahb", "spi";
> +			resets =3D <&cpg 0x4>;
> +			reset-names =3D "hresetn";

[Severity: Medium]
Will this node pass schema validation for the r9a09g047-xspi fallback?

The YAML binding schema for renesas,r9a09g047-xspi requires four clocks (ah=
b,
axi, spi, spix2) and two resets (hresetn, aresetn), but only two clocks and
one reset are provided here.

Because device tree schema lists match positionally by index, providing spi
at index 1 of clock-names violates the schema that expects axi at that
position, which will cause dtbs_check to fail.

Additionally, should the primary compatible string renesas,r9a09g087-xspi be
documented in the bindings before adding it here?

> +			power-domains =3D <&cpg>;
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +			status =3D "disabled";
> +		};
> +
> +		xspi1: spi@801c1000 {
> +			compatible =3D "renesas,r9a09g087-xspi", "renesas,r9a09g047-xspi";
> +			reg =3D <0 0x801c1000 0 0x1000>,
> +			      <0 0x50000000 0 0x10000000>;
> +			reg-names =3D "regs", "dirmap";
> +			interrupts =3D <GIC_SPI 656 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 657 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names =3D "pulse", "err_pulse";
> +			clocks =3D <&cpg CPG_MOD 5>,
> +				 <&cpg CPG_CORE R9A09G087_XSPI_CLK1>;
> +			clock-names =3D "ahb", "spi";
> +			resets =3D <&cpg 5>;

[Severity: Low]
This isn't a bug, but is it intentional to use decimal notation here
compared to hexadecimal notation for the reset index in the xspi0 node?

The xspi0 node uses <&cpg 0x4> while xspi1 uses <&cpg 5>. Should these use
a consistent notation base since they are identical adjacent hardware block=
s?

> +			reset-names =3D "hresetn";
> +			power-domains =3D <&cpg>;
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +			status =3D "disabled";
> +		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260526204045.3481=
604-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D2

