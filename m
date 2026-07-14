Return-Path: <devicetree+bounces-326519-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /0fIK4CZVmqI+wAAu9opvQ
	(envelope-from <devicetree+bounces-326519-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:18:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E78E3758B03
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:18:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FsHyQ83t;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326519-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326519-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B85BD30297B6
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 20:18:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3429835957;
	Tue, 14 Jul 2026 20:18:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FC8427FB4;
	Tue, 14 Jul 2026 20:18:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784060286; cv=none; b=Lc+U7k/oVazAsstVgDbPAjO2hxyneJCsevWUIGRXC1H9tvqRQFkmJBZxWQGKMQe4hqOr9IRk8FJEsBtFsKnhEpPKO0ov3XMSTHxjLIsReEcd0FLXEZSJN+sUlEVQEBPOqgQSVVu2xI1WRK07lAmtOGzzqjao1GjL8V4ATi9lMXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784060286; c=relaxed/simple;
	bh=0Yec0Ygvc7RrSQSs0yq1KLABSJU6ZO3DVY4taxPIJUE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Wixb4hfuWNjXeDBmc4r9W5NavEQZs+4nSoU33m99Y7e413963I5SBUsd5BTd/l6fpLlAfJYg3wPJyVjCNUAB+Khkm/qm0W1mdpkasdSJLEBzkUsFSZWdcN6y0C09r3/fCXlkkuI+YgkPe70odRoi/YwZGtQ3hCHVMchpzoYNaS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsHyQ83t; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D8681F000E9;
	Tue, 14 Jul 2026 20:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784060284;
	bh=TEASTjAtNuGewKTXmMiS6bQDsA3WQY25wtFYplsOBH4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FsHyQ83tVtlHokx2Hgc0gcaUdgKds0qfkuKMuMkCh/tW3trIkmwPSLr9jRx512f1t
	 1vzcs7NdNMU3dS2VH6zOyUN/f82k/H2kBTxqivZLw4DKO6ojo0aBdpBecT49qiUbnU
	 bCrxXB6BJOHZYlycO/AS4rl8NiET6pxb4dRBdkeTUevf3NDlul4AEQRJB2kPfJ76gD
	 5a7DwakfjfSYHSsccXFE6728nqzSeOqUpwKaZmzZkrlpSTdoX9aFHVjX37K34csaQo
	 QleWfMHyCeM9swIaY0ef7UGQZaHvQ6V8GiPlKIh3vYsTaDgJF/mzUAC4NpYfCsAcuA
	 A2ug/q56n6vkQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: imx8qm-var-som: Add support for
 Variscite Symphony board
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: robh@kernel.org, Frank.Li@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev
In-Reply-To: <206397f61c47d3acc7b5a1dc4a12a33a049f1dce.1784059139.git.stefano.r@variscite.com>
References: <cover.1784059139.git.stefano.r@variscite.com>
 <206397f61c47d3acc7b5a1dc4a12a33a049f1dce.1784059139.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 20:18:04 +0000
Message-Id: <20260714201804.8D8681F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-326519-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:robh@kernel.org,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:email,variscite.com:url,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
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
X-Rspamd-Queue-Id: E78E3758B03

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [Medium] The capacitive touch panel node `ft5x06_ts` lacks a `reset-gpios=
` (or `wake-gpios`) property, stranding a configured pinctrl pad and potent=
ially causing probing failures.
- [Medium] The pinctrl for the USB VBUS regulator GPIO is incorrectly assig=
ned to the USB controller node instead of the regulator node.
- [Low] The PCIe node uses the deprecated `reset-gpio` property instead of =
`reset-gpios`.
- [Low] The LED node name `led-hearthbeat` contains a typo.
--

--- Patch [3]: [PATCH v2 3/3] arm64: dts: imx8qm-var-som: Add support for V=
ariscite Symphony board ---
commit f84a05986e6ac58f10d1a6e2091672e4f1bf919b
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: imx8qm-var-som: Add support for Variscite Symphony board

This commit adds device tree support for the Variscite Symphony carrier boa=
rd
with the VAR-SOM-MX8 QuadMax system on module. It configures interfaces
including SD card, USB, Ethernet, I2C, SPI, RTC, TPM, CAN, and PCIe.

Link: https://variscite.com/carrier-boards/symphony-board/

> diff --git a/arch/arm64/boot/dts/freescale/imx8qm-var-som-symphony.dts b/=
arch/arm64/boot/dts/freescale/imx8qm-var-som-symphony.dts
> new file mode 100644
> index 0000000000000..bf66786378301
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8qm-var-som-symphony.dts
[ ... ]
> +	gpio-leds {
> +		compatible =3D "gpio-leds";
> +
> +		led-hearthbeat {

[Severity: Low]
This isn't a bug, but there is a typo in the node name (hearthbeat instead
of heartbeat).

> +			function =3D LED_FUNCTION_STATUS;
> +			color =3D <LED_COLOR_ID_GREEN>;
> +			gpios =3D <&pca9534 0 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "heartbeat";
> +		};
> +	};
[ ... ]
> +	/* Capacitive touch */
> +	ft5x06_ts: touchscreen@38 {
> +		compatible =3D "edt,edt-ft5406";
> +		pinctrl-names =3D "default";
> +		reg =3D <0x38>;
> +		pinctrl-0 =3D <&pinctrl_captouch>;
> +		interrupt-parent =3D <&lsio_gpio0>;
> +		interrupts =3D <19 IRQ_TYPE_LEVEL_LOW>;
> +		touchscreen-size-x =3D <800>;
> +		touchscreen-size-y =3D <480>;
> +		touchscreen-inverted-x;
> +		touchscreen-inverted-y;
> +		wakeup-source;
> +	};

[Severity: Medium]
Is this touchscreen node missing a reset-gpios property?

The pinctrl_captouch group configures LSIO_GPIO0_IO16 for the touch
controller, but it is not assigned to reset-gpios here.=20

Will the edt-ft5406 driver be able to toggle the reset line without it, or
could this lead to initialization failures?

[ ... ]
> +&pciea{
> +	phys =3D <&hsio_phy 0 PHY_TYPE_PCIE 0>;
> +	phy-names =3D "pcie-phy";
> +	reset-gpio =3D <&pca6408 1 GPIO_ACTIVE_LOW>;

[Severity: Low]
Should this use reset-gpios instead of the deprecated reset-gpio property?

> +	status =3D "okay";
> +};
[ ... ]
> +&usbotg1 {
> +	dr_mode =3D "host";
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_usbotg1>;
> +	vbus-supply =3D <&reg_usb_otg1_vbus>;
> +	srp-disable;
> +	hnp-disable;
> +	adp-disable;
> +	disable-over-current;
> +	status =3D "okay";
> +};

[Severity: Medium]
Is pinctrl_usbotg1 assigned to the wrong node?

The reg_usb_otg1_vbus regulator uses the GPIO to provide power, but the
pinctrl to configure the pad is placed here on the usbotg1 controller.

Could this cause the GPIO pad to be incorrectly muxed when the fixed
regulator framework tries to enable power before the USB driver probes?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1784059139.gi=
t.stefano.r@variscite.com?part=3D3

