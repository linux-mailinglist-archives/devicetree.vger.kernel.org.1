Return-Path: <devicetree+bounces-310775-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2kQ3CA/BK2qLEQQAu9opvQ
	(envelope-from <devicetree+bounces-310775-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 10:19:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7311F677BD7
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 10:19:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eGMLfup9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310775-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310775-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E5FD3003634
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 08:16:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91DAE37AA95;
	Fri, 12 Jun 2026 08:16:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D98637C0F6
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 08:16:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781252194; cv=none; b=tsgHEZ6wYvIAQ712OKpU3oMyB5Z7+oQbGLNs9bi5kLCDmxlExGen56ikrNLNQBHmJLfwcsfRZNLrCn6bjGejCk34zwAzmBxHZjwnlFdHf0309PYYyVW0kfLuSHIuEofm0e5/9VTwZ1frq2eLkZqLkYUd0m8SKGqKQ+X5QGt2y1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781252194; c=relaxed/simple;
	bh=XtfhJiDRtO0qVS5lt27jFgSYop8poG8IwV4ZWs4MENI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OZYFiCQIksAu57ZPo3m9BeksBWsiyrV1/rTnNnETZ5r6KJN3HdHs1+c2oxN/tqfkxhmYeu5DcgwVH6gHrs0ucIBrMtNv1I4h6Y0pPbtENigM4ruI1KZgxFvJLPF/E3QJFMHos4RsKOHFsKO69sXP34OSE7QSt4opwjJ0pcCpXCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGMLfup9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AA171F000E9;
	Fri, 12 Jun 2026 08:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781252192;
	bh=CFimSGTUOZRs7o47a92OpeJOaJEa9ZiP5H34Nzryqag=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eGMLfup9b856hHyBDE8kS42KoyDvyg9RUWgYG8gby03NUK5MipFOLPJNc2Go3xCSB
	 l+cmcc23dm67Ij8XEmCACjX77TAERMZ93il7kjFp7NPIGvf21fjFbS2A+ZxveA1l5r
	 lJDKLdNKjeLWHTVDBNxmOiiESyyeQMTn6zkKzvZKncvIyNl0waYCKCIdoWf5fEK2Il
	 TnCGaxMjYdJe5MsSxBvEZCF+j6ON8CPr94QDc7xVvrriGBxP2ggD6Z0qvcj0QeJa8W
	 jzoP017E+kijQJWzg8MxmrLJy71jZ7EXsXlPUnMBxNJx1QCjKGfLdANUlE+EzKcIQH
	 Fg7wo1K9XYoqA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] ARM: dts: renesas: r9a06g032: Describe SPI
 controllers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wolfram Sang" <wsa+renesas@sang-engineering.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260612080354.57459-5-wsa+renesas@sang-engineering.com>
References: <20260612080354.57459-5-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 08:16:30 +0000
Message-Id: <20260612081631.3AA171F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-310775-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sang-engineering.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7311F677BD7

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Target-only SPI controllers missing the `spi-slave` property and i=
mproperly configured as hosts.
- [Low] The `spi-max-frequency` property is improperly placed on SPI contro=
ller nodes.
--

commit 812adfb1b6b8e7de5a970209c3fa9a2a938214f8
Author: Wolfram Sang <wsa+renesas@sang-engineering.com>

ARM: dts: renesas: r9a06g032: Describe SPI controllers

This commit adds device tree nodes for the six SPI controllers on the Renes=
as
RZ/N1D SoC. The first four controllers are configured as hosts, while the
remaining two are designated as targets.

> diff --git a/arch/arm/boot/dts/renesas/r9a06g032.dtsi b/arch/arm/boot/dts=
/renesas/r9a06g032.dtsi
> index 442ea26b40f53..e5c76b38a58e4 100644
> --- a/arch/arm/boot/dts/renesas/r9a06g032.dtsi
> +++ b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
> @@ -563,6 +563,96 @@ gic: interrupt-controller@44101000 {
>  				<GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_HIGH)>;
>  		};
> =20
> +		/* Controller only */
> +		spi1: spi@50005000 {
> +			compatible =3D "renesas,r9a06g032-spi", "renesas,rzn1-spi";
> +			reg =3D <0x50005000 0x200>;
> +			interrupts =3D <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&sysctrl R9A06G032_CLK_SPI0>, <&sysctrl R9A06G032_HCLK_SP=
I0>;
> +			clock-names =3D "ssi_clk", "pclk";
> +			power-domains =3D <&sysctrl>;
> +			spi-max-frequency =3D <12500000>;

[Severity: Low]
Does the spi-max-frequency property belong on the controller node?

According to the SPI bindings, spi-max-frequency is meant to specify the
maximum operating frequency of an SPI peripheral child node, rather than the
controller itself.

Setting it on the controller node might be ignored by the driver and could
trigger dtbs_check warnings. This same pattern appears to be repeated for
spi2 through spi6.

> +			num-cs =3D <4>;
> +			status =3D "disabled";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +		};

[ ... ]

> +		/* Target only */
> +		spi5: spi@50009000 {
> +			compatible =3D "renesas,r9a06g032-spi", "renesas,rzn1-spi";
> +			reg =3D <0x50009000 0x200>;
> +			interrupts =3D <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&sysctrl R9A06G032_CLK_SPI4>, <&sysctrl R9A06G032_HCLK_SP=
I4>;
> +			clock-names =3D "ssi_clk", "pclk";
> +			power-domains =3D <&sysctrl>;
> +			spi-max-frequency =3D <12500000>;
> +			num-cs =3D <1>;
> +			status =3D "disabled";
> +			#address-cells =3D <1>;

[Severity: High]
Since this node is designated as "Target only", should it include the
spi-slave boolean property?

Without spi-slave, the DesignWare SPI core driver evaluates
device_property_read_bool(dev, "spi-slave") as false and unconditionally
configures the hardware as an SPI host. This would cause the controller to
incorrectly attempt to drive the SCK and CS lines.

Additionally, standard SPI slave bindings expect #address-cells =3D <0> and
generally do not use the num-cs property for slave nodes.

> +			#size-cells =3D <0>;
> +		};
> +
> +		/* Target only */
> +		spi6: spi@5000a000 {
> +			compatible =3D "renesas,r9a06g032-spi", "renesas,rzn1-spi";
> +			reg =3D <0x5000a000 0x200>;
> +			interrupts =3D <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&sysctrl R9A06G032_CLK_SPI5>, <&sysctrl R9A06G032_HCLK_SP=
I5>;
> +			clock-names =3D "ssi_clk", "pclk";
> +			power-domains =3D <&sysctrl>;
> +			spi-max-frequency =3D <12500000>;
> +			num-cs =3D <1>;
> +			status =3D "disabled";
> +			#address-cells =3D <1>;

[Severity: High]
Is this node missing the spi-slave property as well?

Similar to the spi5 node, omitting spi-slave will cause the core driver to
configure this as a host instead of a target.

The num-cs and #address-cells properties here also appear to violate standa=
rd
target node bindings.

> +			#size-cells =3D <0>;
> +		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612080354.5745=
9-4-wsa+renesas@sang-engineering.com?part=3D1

