Return-Path: <devicetree+bounces-319943-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QhogNIh5R2qXYwAAu9opvQ
	(envelope-from <devicetree+bounces-319943-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:57:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFB87005A0
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:57:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dgC+I+Y+;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319943-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319943-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E2327300E29B
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 08:57:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 935053812F0;
	Fri,  3 Jul 2026 08:57:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E293161A4;
	Fri,  3 Jul 2026 08:57:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783069060; cv=none; b=BV0Tz0Cn0qykBCZLNC6MSWTKiIiuhHzmVkhu0g3xb33LqD/letZudMS4nhyUwEkkiVueaz8jnSSyrv3D/GKTqbl8kNyZnWg6UwsRA0uX6xTJ/GFzosn5sAH52Atf9gjIzp9tOkzKS7G6BA7wfI6dNxtuTzBCnjeRDJR1QoXkH6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783069060; c=relaxed/simple;
	bh=pZjkRCGEaajh4lQrzpJXs6IdKAm96BvD7MR6wUQNiUY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=h9MvC8nk2qgIOD55i4D6f0uHlXWLCLC0IKGGfjcQZqv+OE/6T1nntXAIfTP3UvAWy2QNdjFDpDxgxaxbykKWsZARpfWZZ8W95VmyxutpgJ44BYe/1/697/98mx7mVa/Dd2w48yekXzYD6EQfuLkGVvW64XEX8E+TYQ/dI5lRKfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgC+I+Y+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFE0D1F000E9;
	Fri,  3 Jul 2026 08:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783069059;
	bh=GXgO3ttgqsHqobgGSFrH9vpUM6rrgoaRkuULRWNhw7U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dgC+I+Y+1toYiPVRSI0tqUm2VbrNTinwX1O8eVnFKtYCQ5cAGBDJO0pN5FDCSpiVQ
	 f4QNFyi67XQsPvc+cpc8aM65Z+GhuWUio9xHgo0JhX5MuoVgMtMWRBcT6gmm85H2a0
	 ZZir3HDTw+ejRblwRJ8gsVz4WF6I3k42pxJox8F2kWeo8nNbCM3nRpcD0MdSJPIX7p
	 paO26QrSYSZwOJYq/MJ9MTzQhFlsvTzWFMNsDuHV0HRAdQGw0OKax7V5mC6yR7Lvqt
	 r3N9+BvaNIfuf2WIlG2YJS8hodRxpxVzyGr2lpYOmixHUT6Xii0MYIE4gUrkqqChP9
	 OboubpH2/WQtQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 07/15] arm64: dts: freescale: imx8mn-var-som: Rework
 WiFi/BT and add legacy dts
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: Frank.Li@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <541308c48bdc3b6860ce25027ed1a01e38aa2971.1783067947.git.stefano.r@variscite.com>
References: <cover.1783067947.git.stefano.r@variscite.com>
 <541308c48bdc3b6860ce25027ed1a01e38aa2971.1783067947.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 08:57:38 +0000
Message-Id: <20260703085738.BFE0D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319943-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,variscite.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6EFB87005A0

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] The removal of the Broadcom WiFi node from `imx8mn-var-som.dtsi` s=
ilently breaks WiFi support on the downstream imx8mn-rve-gateway board.
- [Medium] Incomplete reversion of IW61x pinmux changes in the legacy devic=
e tree.
- [Low] Unnecessary `#address-cells` and `#size-cells` properties are left =
in `usdhc1`, which will trigger dtc warnings for boards without a WiFi chil=
d node.
--

commit 5a726be8cbb43e633eba48d88581647aae4f82ba
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: freescale: imx8mn-var-som: Rework WiFi/BT and add legacy dts

The VAR-SOM-MX8MN currently integrates the NXP IW61x wireless module,
providing WiFi over SDIO and Bluetooth over UART.

Move the wireless module configuration out of the base
imx8mn-var-som.dtsi and provide dedicated variant includes.

> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony-legacy=
.dts b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony-legacy.dts
> new file mode 100644
> index 0000000000000..5998ebcef4740
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony-legacy.dts
> @@ -0,0 +1,19 @@
[ ... ]
> +&bluetooth_iw61x {
> +	status =3D "disabled";
> +};
> +
> +&iw61x_pwrseq {
> +	status =3D "disabled";
> +};
> +
> +&usdhc1 {
> +	/delete-property/ mmc-pwrseq;
> +};

[Severity: Medium]
Does this leave unintended pin configurations active for the legacy board?

Since this file includes imx8mn-var-som-symphony.dts, it inherits the
pinctrl properties from imx8mn-var-som-wifi-bt-iw61x.dtsi:

&usdhc1 {
	pinctrl-0 =3D <&pinctrl_usdhc1>, <&pinctrl_wifi>;
	pinctrl-1 =3D <&pinctrl_usdhc1_100mhz>, <&pinctrl_wifi>;
	pinctrl-2 =3D <&pinctrl_usdhc1_200mhz>, <&pinctrl_wifi>;
};

Should this legacy file also override the pinctrl properties to remove
<&pinctrl_wifi> and <&pinctrl_bt> from usdhc1 and uart2 to prevent
hardware conflicts on GPIO2_IO6, GPIO2_IO10, and GPIO2_IO20?

> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi b/arch/arm=
64/boot/dts/freescale/imx8mn-var-som.dtsi
> index ac22dd3e65421..ff5f658b33ded 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
> @@ -371,7 +371,6 @@ &usbotg1 {
>  	status =3D "okay";
>  };
> =20
> -/* WIFI */
>  &usdhc1 {
>  	#address-cells =3D <1>;
>  	#size-cells =3D <0>;

[Severity: Low]
Will leaving these properties here trigger avoid_unnecessary_addr_size dtc
warnings for boards without a WiFi child node?

Since the wifi@1 child node is removed below, usdhc1 no longer has any child
nodes for boards using the new IW61x module.

> @@ -383,11 +382,6 @@ &usdhc1 {
>  	non-removable;
>  	keep-power-in-suspend;
>  	status =3D "okay";
> -
> -	brcmf: wifi@1 {
> -		reg =3D <1>;
> -		compatible =3D "brcm,bcm4329-fmac";
> -	};
>  };

[Severity: High]
Does removing the Broadcom WiFi node from the shared SOM dtsi silently break
WiFi support on downstream carrier boards?

Looking at arch/arm64/boot/dts/freescale/imx8mn-rve-gateway.dts, it includes
imx8mn-var-som.dtsi but was not updated to include a Wi-Fi variant include.=
=20
Will the brcmfmac driver fail to bind to the device tree node for the gatew=
ay
board, breaking DT-dependent configurations?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783067947.gi=
t.stefano.r@variscite.com?part=3D7

