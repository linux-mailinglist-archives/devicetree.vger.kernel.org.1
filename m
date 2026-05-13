Return-Path: <devicetree+bounces-296553-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oE0xBKnNA2rx+gEAu9opvQ
	(envelope-from <devicetree+bounces-296553-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 03:02:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEE252BB78
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 03:02:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BC1673030F8A
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 01:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45894318EEE;
	Wed, 13 May 2026 01:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPYJegWw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0569299929;
	Wed, 13 May 2026 01:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778634145; cv=none; b=U0cOebCxTBZA6AdpichsIQwu3qrqa+qdjowA77ozA2PpkYXCpbhJJpuRrtE+TiyLL9o7kMXRvttHeVEK3D6GwlMkxBzxZ353A+oFTeadfuq2TQ/xWNdJOfm8cLimLy3qv3t7MYddd/DKX80dp9iwvQ9KD2F5F2oTmZTtBEczh5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778634145; c=relaxed/simple;
	bh=/m8IIh5p88Q0k+jI72tlQ89ReyEX/okTEYIeE2M4/O0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oPb2xMZ0wOoAG3pSPMAYeG1kPs941m8uM10+OBvclLYM2ZhSqUT9NMPrWmq6vlYPJQNDpXKcUk/awb9j39D2GiHsaATe+O6m2P6+qhyFRckkDaInWenjI7+gQXvY7W7ec1RqlKzccF6L2x6gg7FDbtOo3k/AXelqTE+2uMKH1O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPYJegWw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BF96C2BCB8;
	Wed, 13 May 2026 01:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778634143;
	bh=/m8IIh5p88Q0k+jI72tlQ89ReyEX/okTEYIeE2M4/O0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=KPYJegWw14Dz89JXD34hYgzgK8Mtdjc2Bjr7gel8Y2JkBZPrfCvaQ20hdNilpu/mL
	 qQQVHM67sJrNISev0m5kLCFFCx4Hcpb1oxgT74qRsvf77WxdScfeZRYlq6TbDuRnFG
	 p/jmq3nUBzHS58qvcsxwT/5gmv6j+IQ+dhhVotJ1ZpQH2wYq0W/jjQraTUqNzG0FaQ
	 JITTRWA17celgXtbwxk4u6SOfpJ9G+J/1gfW4AynwBMuilD6mJ8aR1/ywRawRoYdRb
	 IX5ssKiCS9pfUhv/pzLE8HOCKC0SphBhkmx6NaLVfJFajgVRFT5vfaF98vRgxKxG7d
	 MvRP05yra22BQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] arm64: dts: allwinner: Cubie A5E: enable SPI flash
Reply-To: sashiko-reviews@lists.linux.dev
To: "Andre Przywara" <andre.przywara@arm.com>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, robh@kernel.org, linux-sunxi@lists.linux.dev, conor+dt@kernel.org
In-Reply-To: <20260511221741.25888-1-andre.przywara@arm.com>
References: <20260511221741.25888-1-andre.przywara@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 01:02:22 +0000
Message-Id: <20260513010223.6BF96C2BCB8@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 0DEE252BB78
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-296553-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.0:email,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,arm.com:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Missing `spi-rx-bus-width` and `spi-tx-bus-width` properties res=
trict the SPI flash to 1-bit mode despite hardware Quad SPI configuration.
- [Low] Unnecessary `#address-cells` and `#size-cells` defined in the `flas=
h@0` node without child nodes.
--

commit 90d57abd1dc9fc1a77a15be6ce437a4b3378df17
Author: Andre Przywara <andre.przywara@arm.com>

arm64: dts: allwinner: Cubie A5E: enable SPI flash

This commit enables the SPI0 device tree node for the Cubie A5E board.
It describes the configuration for the 16MiB SPI NOR flash connected
to the SPI0 bus.

> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts b/ar=
ch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> --- a/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> @@ -344,6 +344,21 @@ &r_pio {
>  	vcc-pm-supply =3D <&reg_aldo3>;
>  };
> =20
> +&spi0  {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&spi0_pc_pins>, <&spi0_cs0_pc_pin>,
> +		    <&spi0_hold_pc_pin>, <&spi0_wp_pc_pin>;
> +	status =3D "okay";
> +
> +	flash@0 {
> +		compatible =3D "winbond,w25q128", "jedec,spi-nor";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <40000000>;

Since the pinctrl-0 configuration explicitly maps the hardware WP and HOLD
pins to the SPI controller, should this node also include
spi-rx-bus-width =3D <4> and spi-tx-bus-width =3D <4>?

Without these properties, the SPI driver defaults to standard 1-bit mode,
failing to utilize the board's wired Quad SPI capabilities. Additionally,
if the board lacks external pull-ups, could muxing the active-low WP and
HOLD pins to the SPI controller in 1-bit mode leave the pins floating and
risk unintended write-protect or hold states?

> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;

This isn't a bug, but since this flash node does not contain any child
partition nodes, these #address-cells and #size-cells properties are
unnecessary and trigger standard dtc warnings.

> +	};
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511221741.2588=
8-1-andre.przywara@arm.com?part=3D1

