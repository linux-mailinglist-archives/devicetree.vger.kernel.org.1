Return-Path: <devicetree+bounces-317613-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4E8NLs6VQ2racgoAu9opvQ
	(envelope-from <devicetree+bounces-317613-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:09:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC176E2A4A
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:09:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KjcoLVc0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317613-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317613-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2DEA93003EED
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEEF63EA962;
	Tue, 30 Jun 2026 10:07:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80BE6367B84;
	Tue, 30 Jun 2026 10:07:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782814033; cv=none; b=nFcIABSJU7ulDhgamZ5n1C3QZwcpArne4ADuUq1+41BlE0vXyO6jQw+aCTB/SRB01iKPbUpKByPIHZQZ9Sne/z9M6jFg5aQiyYQwUQnR+87gip1tpQbNZo5JzE+d7r+fgvKIs3uqv6tBELXGnA0g7hzt+j4ZJ4imZ4/uT/ED/9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782814033; c=relaxed/simple;
	bh=BHhI3Y8XvaAV4J6L9rKnV78gRvMl/2GmTKgcUWSQW6s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CTFsh3HmWWtoUe8lbV1VD102jBwmK8ZzNwbQLP6acYJJv5TlMucKZbtad4FI6Yx1IGLBRZTD7PSvFlyFRvIaykZGr7/RZj41puR/JJxNZsyqmtJEYwDh4gFxSTLhEMgrX+la1r/m/ruq8uD+d+8NleKXtefXlHzPokVxTUovsv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjcoLVc0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25E511F000E9;
	Tue, 30 Jun 2026 10:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782814032;
	bh=Yfxacg1GKpPRTZ6aMEUKrRO5YVFDCHekooAhy0R0MeE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KjcoLVc0pFyXhSm4cEHGmpI8LmmnMILAe1rDY4oMRajSuOSB3mudrzv/WZtrhpBfl
	 toKogiQ+7bmLp1jVs9KrlyXZsJodwUz4vxD3X+ZraGj5mQj1OtH1IOAR4hQT9KAPlC
	 YbTOdD7hQ2Lvm8PsiNibUgO34TuSWAyunz4O8onQNsJHyj677n2FKfISMgRXzHkicb
	 XQAJ/qLY/DdNzDdfiHYdnKaluAgp8LcVppwW996mLbszMiJZps8qFy1LKLNldhxQ7u
	 dwWirYD5aOLfr5KQvWdJB79d5Qjzc80bYS771NGvZbGH3XHixm0akCnPklx1RD78tk
	 UXP8p1XDzR6pg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 2/3] arm64: dts: freescale: Add support for Variscite
 VAR-SOM-MX8 QuadMax
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: imx@lists.linux.dev, Frank.Li@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <69727b6a39f9ebfc00d7896377a8b24191926bea.1782812572.git.stefano.r@variscite.com>
References: <cover.1782812572.git.stefano.r@variscite.com>
 <69727b6a39f9ebfc00d7896377a8b24191926bea.1782812572.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 10:07:11 +0000
Message-Id: <20260630100712.25E511F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-317613-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
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
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0EC176E2A4A

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Wi-Fi and Bluetooth on the SOM will fail to probe because their en=
able GPIOs are never toggled and the Wi-Fi MMC host lacks the `non-removabl=
e` property.
- [High] Incomplete PMIC cooling map omits high-power A72 cores.
- [Medium] Missing PHY interrupt configuration causes fallback to polling.
--

commit c50bb64cb8cb31c1a2367dc07bbf18802022b684
Author: Stefano Radaelli <stefano.r@variscite.com>
arm64: dts: freescale: Add support for Variscite VAR-SOM-MX8 QuadMax

This commit adds device tree support for the Variscite VAR-SOM-MX8 QuadMax
system on module. It enables basic on-module peripherals including memory,
ethernet, audio, and Wi-Fi/Bluetooth functionality.

Link: https://variscite.com/system-on-module-som/i-mx-8/i-mx-8-quadmax-quad=
plus/var-som-mx8/

> diff --git a/arch/arm64/boot/dts/freescale/imx8qm-var-som.dtsi b/arch/arm=
64/boot/dts/freescale/imx8qm-var-som.dtsi
> new file mode 100644
> index 0000000000000..2ffc32ddbf51e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8qm-var-som.dtsi
[ ... ]
> +	mdio {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		ethphy0: ethernet-phy@4 {
> +			compatible =3D "ethernet-phy-ieee802.3-c22";
> +			reg =3D <4>;
> +			reset-gpios =3D <&lsio_gpio2 28 GPIO_ACTIVE_LOW>;
> +			reset-assert-us =3D <10000>;
> +			reset-deassert-us =3D <20000>;
> +			vddio-supply =3D <&reg_phy_vddio>;
> +		};

[Severity: Medium]
In pinctrl_fec1 below, the pin IMX8QM_ESAI0_TX4_RX1_LSIO_GPIO2_IO30 is muxed
alongside the Ethernet reset pin, suggesting it is intended as the PHY
interrupt pin. However, this ethphy0 node does not declare an interrupts
property. Will the network stack fall back to polling the PHY over the MDIO
bus, wasting CPU cycles and increasing link-state detection latency?

> +	};
> +};
[ ... ]
> +/* Bluetooth */
> +&lpuart1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_lpuart1>;
> +	uart-has-rtscts;
> +	status =3D "okay";
> +};

[Severity: High]
The commit message states the SOM includes Bluetooth, but this lpuart1 node
lacks a bluetooth child node to power on the Bluetooth chip. Since the
required GPIOs are muxed in pinctrl_wifi below but never actively driven, w=
ill
the Bluetooth chip remain in reset and fail to probe?

[ ... ]
> +&thermal_zones {
> +	pmic-thermal {
> +		polling-delay-passive =3D <250>;
> +		polling-delay =3D <2000>;
> +		thermal-sensors =3D <&tsens IMX_SC_R_PMIC_0>;
> +		trips {
> +			pmic_alert0: trip0 {
> +				temperature =3D <110000>;
> +				hysteresis =3D <2000>;
> +				type =3D "passive";
> +			};
> +			pmic_crit0: trip1 {
> +				temperature =3D <125000>;
> +				hysteresis =3D <2000>;
> +				type =3D "critical";
> +			};
> +		};
> +		cooling-maps {
> +			map0 {
> +				trip =3D <&pmic_alert0>;
> +				cooling-device =3D <&A53_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						 <&A53_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						 <&A53_2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						 <&A53_3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +			};
> +		};
> +	};
> +};

[Severity: High]
The i.MX8QM processor has both A53 and A72 cores, but the cooling-device li=
st
only includes the four low-power Cortex-A53 cores. If a heavy workload on t=
he
high-power Cortex-A72 cores causes the PMIC to overheat, will the thermal
framework fail to throttle the A72 cores, risking hardware damage or sudden
thermal shutdowns?

[ ... ]
> +/* WIFI */
> +&usdhc3 {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> +	pinctrl-names =3D "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 =3D <&pinctrl_usdhc3>, <&pinctrl_wifi>;
> +	pinctrl-1 =3D <&pinctrl_usdhc3_100mhz>, <&pinctrl_wifi>;
> +	pinctrl-2 =3D <&pinctrl_usdhc3_200mhz>, <&pinctrl_wifi>;
> +	bus-width =3D <4>;
> +	status =3D "okay";

[Severity: High]
This usdhc3 node lacks the non-removable property and an mmc-pwrseq to togg=
le
the reset GPIO. Because the Wi-Fi chip is soldered and lacks a card-detect
pin, will the MMC subsystem treat it as a removable card, fail to detect it,
and not probe the interface?

> +
> +	brcmf: wifi@1 {
> +		compatible =3D "brcm,bcm4329-fmac";
> +		reg =3D <1>;
> +	};
> +};
[ ... ]
> +	pinctrl_fec1: fec1grp {
> +		fsl,pins =3D <
[ ... ]
> +			IMX8QM_ESAI0_TX2_RX3_LSIO_GPIO2_IO28			0x06000028
> +			IMX8QM_ESAI0_TX4_RX1_LSIO_GPIO2_IO30			0x06000048
> +		>;
> +	};
[ ... ]
> +	pinctrl_wifi: wifigrp {
> +		fsl,pins =3D <
> +			IMX8QM_SCU_GPIO0_07_SCU_DSC_RTC_CLOCK_OUTPUT_32K	0xc600004c
> +			IMX8QM_SCU_GPIO0_03_LSIO_GPIO0_IO31			0x06000021
> +			IMX8QM_SCU_GPIO0_02_LSIO_GPIO0_IO30			0x00000021
> +			IMX8QM_QSPI1A_DATA0_LSIO_GPIO4_IO26			0x00000021
> +		>;
> +	};
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1782812572.gi=
t.stefano.r@variscite.com?part=3D2

