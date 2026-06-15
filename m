Return-Path: <devicetree+bounces-311943-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EGQgE3/zL2rXJgUAu9opvQ
	(envelope-from <devicetree+bounces-311943-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:43:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9434068656F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:43:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QqCFSMoY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311943-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311943-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF50430C0257
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:36:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 716673F65EC;
	Mon, 15 Jun 2026 12:33:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D4D3F39C9
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 12:33:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781526804; cv=none; b=g/Qhv1oWe+15PIzyNkCHVNhl0o75Vx9xvgNHyYQQJ9xpbo8x063SswtzdDTc8rLkk04WxLNg1aUV3ngGha9oeh/EHj0ww6owMqb4M2sKGmjLbeValNPqCO9exZYBRz10q55stuozUMiD7247/jwTz09Kh+Do5hpk822uNtQoUGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781526804; c=relaxed/simple;
	bh=Bz2JE69nnVWGp4Rmv+iABZq95m3jGVNoEgPKuxox8Ng=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eK2R4BP4gy4eFHVMvf4j5cs9WKvfdjsxrVx3EKGqkPOfoYkCLHB7+oFpV4Uupe4tF+xmYuef+ZB+w7xqrui3It0Ip338d762SqJMDwtcYbBM9aY7Scpi1BNrhU37/n4ICm76RGIC3F/8/DUc5KYl2SpWOO0hDbjObJdOWJzIIDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqCFSMoY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABB4A1F00A3A;
	Mon, 15 Jun 2026 12:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781526795;
	bh=O2aTFB/DrFHIDNcN7rIAyBFwnTk+4PEAzhJSXzX8mnE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QqCFSMoYTA/aF66uDc2wzbz08gDpSxgXvtp32TSqXDI1MiVnHT5rTi/L0abgJkxpR
	 oN80bdDNtcmYr/tNjvoSBL8cmU0wUivtO4PykQoghXELG57ZKHwNP9nf4rDFpsuUPS
	 rRoxN2i7TZoUAlsls1bJdxbxOT4+FaHO7IAgvXUdkT6AfHbfeK676rmZYXgxs8qegG
	 RrA7gJ+smX4vhb6mZUVtT9ptlbTJAwayU/hfT0pT/xwFVDVgrSO8Oazh5KPJB21FWd
	 awgKuM5BWpAuHzSfxxGoI1N+qeG/g+LUDlMbxBsaNnqV9lXCEAL1D+QesSPN9i+dQH
	 mBr3qsXe/afOg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/7] riscv: dts: eswin: eic7700: add pinctrl support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pinkesh Vaghela" <pinkesh.vaghela@einfochips.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260615122016.1110206-4-pinkesh.vaghela@einfochips.com>
References: <20260615122016.1110206-4-pinkesh.vaghela@einfochips.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 12:33:15 +0000
Message-Id: <20260615123315.ABB4A1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311943-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:pinkesh.vaghela@einfochips.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,eswincomputing.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9434068656F

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] Dead Code / Missing Pinctrl Hogs
- [High] Invalid Pin Mux Function / Copy-Paste Error
- [High] Missing GPIO to Pinctrl Mapping
- [Low] Device Tree Standard Compliance
--

commit 7180be18ad292ee17c6b942dc71e252ce0fdbeef
Author: Yulin Lu <luyulin@eswincomputing.com>

riscv: dts: eswin: eic7700: add pinctrl support

Add pinctrl node and related pin configuration for EIC7700 SoC.

> diff --git a/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts b/=
arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
> index 1fb92f0e7c550..e7bb96e149585 100644
> --- a/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
> +++ b/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
> @@ -18,6 +19,15 @@ aliases {
>  	chosen {
>  		stdout-path =3D "serial0:115200n8";
>  	};
> +
> +	vcc_1v8: vcc1v8 {
> +		 compatible =3D "regulator-fixed";

[Severity: Low]
Should this node be named using the generic regulator-* pattern (such as
regulator-1v8) to avoid dtbs_check warnings for deprecated names?

There is also an extra leading space on the properties within this node
that deviates from standard spacing.

> +		 regulator-name =3D "vcc1v8";
> +		 regulator-always-on;
> +		 regulator-boot-on;
> +		 regulator-min-microvolt =3D <1800000>;
> +		 regulator-max-microvolt =3D <1800000>;
> +	 };
>  };

[ ... ]

> @@ -25,6 +35,105 @@ &xtal {
>  	clock-output-names =3D "xtal24m";
>  };
> =20
> +&gpio0_pins {
> +	bias-disable;
> +	input-enable;
> +};

[Severity: High]
Will these pin configuration overrides be silently ignored by the pinctrl
core during boot?

Since these pin definitions are not referenced by a pinctrl-0 property in
an active device node, and are not configured as pinctrl hogs in the provid=
er,
the intended hardware states for these pins will not be programmed.

[ ... ]

> diff --git a/arch/riscv/boot/dts/eswin/eic7700-pinctrl.dtsi b/arch/riscv/=
boot/dts/eswin/eic7700-pinctrl.dtsi
> new file mode 100644
> index 0000000000000..7293df146aa7b
> --- /dev/null
> +++ b/arch/riscv/boot/dts/eswin/eic7700-pinctrl.dtsi
> @@ -0,0 +1,888 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)

[ ... ]

> +		hdmi_pins: hdmi-pins {
> +			pins =3D "hdmi_scl", "hdmi_sda", "hdmi_cec";
> +			function =3D "hdmi";
> +		};
> +
> +		rgmii0_pins: rgmii0-pins {
> +			pins =3D "rgmii0_clk_125", "rgmii0_txen", "rgmii0_txclk", "rgmii0_txd=
0",
> +			       "rgmii0_txd1", "rgmii0_txd2", "rgmii0_txd3", "rgmii0_rxclk",
> +			       "rgmii0_rxdv", "rgmii0_rxd0", "rgmii0_rxd1", "rgmii0_rxd2",
> +			       "rgmii0_rxd3", "rgmii0_mdc", "rgmii0_mdio", "rgmii0_intb";
> +			function =3D "hdmi";
> +		};

[Severity: High]
Is the hdmi function correct for this network pin group?

It appears that rgmii0, rgmii1, and the i2s pin groups that follow all use
the hdmi function. This will prevent the pin controller from routing these
pins properly, likely leading to driver probe failures when peripherals
attempt to request them.

[ ... ]

> diff --git a/arch/riscv/boot/dts/eswin/eic7700.dtsi b/arch/riscv/boot/dts=
/eswin/eic7700.dtsi
> index a7ebb11159580..8798c50f7584d 100644
> --- a/arch/riscv/boot/dts/eswin/eic7700.dtsi
> +++ b/arch/riscv/boot/dts/eswin/eic7700.dtsi
> @@ -349,6 +349,11 @@ gpioD: gpio-port@3 {
>  			};
>  		};
> =20
> +		pinctrl: pinctrl@51600080 {
> +			compatible =3D "eswin,eic7700-pinctrl";
> +			reg =3D <0x0 0x51600080 0x0 0x1fff80>;
> +		};
> +

[Severity: High]
Should the existing gpio controller nodes (gpioA, gpioB, gpioC, and gpioD)
be updated with a gpio-ranges property mapping to this new pinctrl provider?

Without gpio-ranges, the GPIO subsystem cannot translate GPIO offsets into
pinctrl pins. The pinctrl core's .gpio_request_enable callback will not be
invoked when a software component requests a GPIO dynamically, preventing
the multiplexer from automatically switching the pin to GPIO mode.

>  		clk: clock-controller@51828000 {
>  			compatible =3D "eswin,eic7700-clock";

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615122016.1110=
206-1-pinkesh.vaghela@einfochips.com?part=3D3

