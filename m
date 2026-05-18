Return-Path: <devicetree+bounces-299588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHeAKcpYC2oCGAUAu9opvQ
	(envelope-from <devicetree+bounces-299588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 20:22:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 029255722B6
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 20:22:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A6A132FF855
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 18:08:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF1B338B12A;
	Mon, 18 May 2026 18:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/20/c+8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C04B38AC9A
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 18:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779127702; cv=none; b=ecHSLr1ITgeMEy+uYcrr21bstMI8Rwn7rFUF3tHs5P15pvXRiTfMuw9mb+Pt3OsCm+1ihlKmDe30zWs5v5dictPODqZ1d1kWy3Co6gFlX0r89Zdyvu4PHLHnsPnSdFoff+dpWIBnZihU09MFjHHaS83lmnKoOBNlwOPNgcKJ+wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779127702; c=relaxed/simple;
	bh=r6dhSLixRiH8d6aSORfSpbFK0GajlV+f6tJSnYYpVwI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aRt6MUwmn/AEglgxan5qW7pNX/TK6HNXEB02HeeMpptk6iXJWZSF1Z03VZwq6aScRYuXuI2i0/Y3vBtQXBPm1AkjQJ5ZZ9o6xrsywReeKL39TdlqGSANaRASlluyH88Dss2BituZFZK4lypxnf7/Jf4XMVDt+M75+qODgaSUGLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/20/c+8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B5F4C2BCC6;
	Mon, 18 May 2026 18:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779127702;
	bh=r6dhSLixRiH8d6aSORfSpbFK0GajlV+f6tJSnYYpVwI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=B/20/c+8iMhybGK5TURKlbs/dTsAc3ISJL6J0Hk44VgHWTuOV8msjShU1DztfOaQG
	 IWoYfZyvQKOXNkFwkplS27J0aP99AjW0uQrN3iK9hlMQcBs8SOr63csZyJmFg6pB9f
	 ApgyfXWZt+K78dADcTF8PYa75ZJbJ+e8VaNYxnGkOxxDrvm13bnfk06fCRHs/JYEx4
	 xVMeATX2XEDMSE5WowH86xRbn4Hd7sMpBElVvqvGR/3NqgKRa7akx5M18xCZXwYAVc
	 c0hUPrGZl+9jjzHYEyxHmOMn0yDn/7OJ3APybGiTXtTB0MqVszJqmMhcP9tPMZuxvl
	 3l7bAtEvm7AlA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: Add Vicharak Axon Mini
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ajit Singh" <blfizzyy@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260518173039.20592-4-blfizzyy@gmail.com>
References: <20260518173039.20592-4-blfizzyy@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 18:08:21 +0000
Message-Id: <20260518180822.1B5F4C2BCC6@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299588-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 029255722B6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The PCIe endpoints lack their power supply definitions (`vddpe-3=
v3-supply`), relying instead on `regulator-always-on`.
- [Medium] The USB 2.0 host controller lacks its VBUS power supply definiti=
on (`vbus-supply`), relying instead on `regulator-always-on`.
--

commit 9bf522377749eb6ea3477116679a7d9817103a9f
Author: Ajit Singh <blfizzyy@gmail.com>

arm64: dts: qcom: Add Vicharak Axon Mini

Add DTS for the Vicharak Axon Mini board based on the Qualcomm QCS6490 SoC.
This adds debug UART, eMMC, UFS, SDIO WLAN, USB 2.0 host, PCIe support along
with regulators.

> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-vicharak-axon-mini.dts b/ar=
ch/arm64/boot/dts/qcom/qcs6490-vicharak-axon-mini.dts
> new file mode 100644
> index 0000000000000..e9d54804ade1d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-vicharak-axon-mini.dts

[ ... ]

> +	vcc_5v0_usb2_0: regulator-vcc-5v0-usb2-0 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vcc_5v0_usb2_0";
> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +
> +		vin-supply =3D <&vcc_5v0>;
> +
> +		gpio =3D <&tlmm 117 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 =3D <&vcc5v0_usb2_0_en>;
> +		pinctrl-names =3D "default";
> +
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	vcc_pcie1_3v3: regulator-vcc-pcie1-3v3 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vcc_pcie1_3v3";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +
> +		vin-supply =3D <&vcc_5v0>;
> +
> +		gpio =3D <&tlmm 115 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 =3D <&vcc_pcie1_3v3_en>;
> +		pinctrl-names =3D "default";
> +
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	vcc_pcie0_dsi_3v3: regulator-vcc-pcie0-dsi-3v3 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vcc_pcie0_dsi_3v3";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +
> +		vin-supply =3D <&vcc_5v0>;
> +
> +		gpio =3D <&tlmm 114 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 =3D <&vcc_pcie0_dsi_3v3_en>;
> +		pinctrl-names =3D "default";
> +
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};

[ ... ]

> +&pcie0 {
> +	perst-gpios =3D <&tlmm 87 GPIO_ACTIVE_LOW>;
> +	wake-gpios =3D <&tlmm 89 GPIO_ACTIVE_HIGH>;
> +
> +	pinctrl-0 =3D <&pcie0_clkreq_n>, <&pcie0_reset_n>, <&pcie0_wake_n>;
> +	pinctrl-names =3D "default";
> +
> +	status =3D "okay";
> +};

Can the &pcie0 node properly power-manage its endpoint without a
vddpe-3v3-supply property?

The device tree defines vcc_pcie0_dsi_3v3 with regulator-always-on and does=
n't
link it here. This breaks proper PCIe power management, as the driver cannot
turn power off during suspend or reset sequences.

[ ... ]

> +&pcie1 {
> +	perst-gpios =3D <&tlmm 2 GPIO_ACTIVE_LOW>;
> +	wake-gpios =3D <&tlmm 3 GPIO_ACTIVE_HIGH>;
> +
> +	pinctrl-0 =3D <&pcie1_reset_n>, <&pcie1_wake_n>, <&pcie1_clkreq_n>;
> +	pinctrl-names =3D "default";
> +
> +	status =3D "okay";
> +};

Similarly here, should vcc_pcie1_3v3 be referenced as vddpe-3v3-supply for
the &pcie1 node instead of relying on regulator-always-on?

[ ... ]

> +&usb_2 {
> +	dr_mode =3D "host";
> +
> +	status =3D "okay";
> +};

Does the USB 2.0 host controller need a vbus-supply reference here?

The device tree defines vcc_5v0_usb2_0 as a 5V regulator but relies on
regulator-always-on instead of referencing it as vbus-supply (typically
via a usb-a-connector child node). Without this linkage, the USB driver
cannot control VBUS power when the port is inactive or suspended.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518110435.1626=
2-1-blfizzyy@gmail.com?part=3D3

