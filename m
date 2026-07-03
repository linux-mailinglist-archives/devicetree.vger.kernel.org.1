Return-Path: <devicetree+bounces-319939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OVH/Ful7R2rFZAAAu9opvQ
	(envelope-from <devicetree+bounces-319939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:07:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C244D700730
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:07:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="T5/OkcBh";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319939-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319939-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CDBEC302DA14
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 08:54:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3EB737FF5B;
	Fri,  3 Jul 2026 08:54:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF434374197;
	Fri,  3 Jul 2026 08:54:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783068896; cv=none; b=CbB/p+/+Q3aIPG+jIdGU/jcJvGhIO2u5DdK+Ner9dEggonnT02KlM62Cq/KdzHVZxMGksYcieocOHmWXwUIko0nVUr66rQChLdtkJ6anlt7T5n0tVMe5zVp6yM5zBV9nRxPbx3u9X7RzMAdCWQCqeSJrbkIuYu3DZQNtQdetGME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783068896; c=relaxed/simple;
	bh=C36EPu5rCol49T5JLzGXrNw7f+01jLKDrDGptm5/bHY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SoIor0m6WbxWcHbAZ4S1MvWryAG3DmzAjlZle7OW5DnbVeEs52qAOLOL5nVcId9bflyfOfvtpKcXcL0ZlbAiILIdFkCbAnNt0vQzpgogTRLp9ee+rAG7i7kSL+U5Wb6VIMkcgCXCZmo2p1EsDx/8I56lUT2s/OHKiUD6Nk5U4iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5/OkcBh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 533071F000E9;
	Fri,  3 Jul 2026 08:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783068889;
	bh=Fiev911C411quc5m+ft3Tzixg47hOm8rSJ1E5OZBY7o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=T5/OkcBhMLYPXfuaGjMeXhRUTYj5TZUf2H3SrhOcsFu8ZEYwOTnfBU6GOl69T4xcn
	 Ap9cEbOcedsnlitYuyoMhZ4RzqF+1Na3d5f0iw6yo+P8RpjPVmAjld3KHkAGZvufTf
	 hSS2GYhYzlgWVFK5bOkoziEuWzHXhJm+PvAmEkrJnxnN7SrBrCeFABrmRgZUoO8ukG
	 dvPvk3co5GtStVLenG8KWmZBRHkes6RfrbcpD1hqUJ7Wo94GZNLAXdvvwTQDBSFgxh
	 1G6G+8mj27puZGwJeQ0gvhZynETmrbbrKgrxy7yynCb7gqkXAWb+pTKgidPE4BL5c1
	 PomtF9f1y/EjQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 02/15] arm64: dts: freescale: imx8mn-var-som: move SD
 card support to Symphony
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org
In-Reply-To: <87e54dbf65c27944b015335ac699fce7f45369f4.1783067947.git.stefano.r@variscite.com>
References: <cover.1783067947.git.stefano.r@variscite.com>
 <87e54dbf65c27944b015335ac699fce7f45369f4.1783067947.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 08:54:48 +0000
Message-Id: <20260703085449.533071F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-319939-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,variscite.com:email,vger.kernel.org:from_smtp];
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
X-Rspamd-Queue-Id: C244D700730

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Moving the `&usdhc2` base configuration out of `imx8mn-var-som.dts=
i` completely disables SD card support on the `imx8mn-rve-gateway.dts` carr=
ier board.
- [Medium] The patch silently introduces a functional change to the regulat=
or power sequencing by adding `off-on-delay-us =3D <20000>;` to the SD card=
 VMMC regulator.
--

commit 2f4cda5f00417bf4a0771aca7e26c1a6e92521a3
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: freescale: imx8mn-var-som: move SD card support to Symphony

The commit moves the USDHC2 node and pinctrl configuration from the SOM dev=
ice
tree to the Symphony carrier board device tree. It intends to keep the SOM =
dtsi
limited only to hardware present on the module itself.

> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts b/=
arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
> index b07e71d3adeee..7308613a48b2b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
> @@ -28,6 +28,7 @@ reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
>  		regulator-max-microvolt =3D <3300000>;
>  		gpio =3D <&gpio4 22 GPIO_ACTIVE_HIGH>;
>  		enable-active-high;
> +		off-on-delay-us =3D <20000>;
>  	};

[Severity: Medium]
Is it intentional to add off-on-delay-us here without mentioning it in the
commit message? This introduces a functional change to the regulator power
sequencing that seems unrelated to simply moving the nodes between files.

[ ... ]

> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi b/arch/arm=
64/boot/dts/freescale/imx8mn-var-som.dtsi
> index 32f101ef28500..e1d2e2a72e1f5 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
> @@ -295,20 +295,6 @@ brcmf: wifi@1 {
>  	};
>  };
> =20
> -/* SD */
> -&usdhc2 {
> -	assigned-clocks =3D <&clk IMX8MN_CLK_USDHC2>;
> -	assigned-clock-rates =3D <200000000>;
> -	pinctrl-names =3D "default", "state_100mhz", "state_200mhz";
> -	pinctrl-0 =3D <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> -	pinctrl-1 =3D <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> -	pinctrl-2 =3D <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> -	cd-gpios =3D <&gpio1 10 GPIO_ACTIVE_LOW>;
> -	bus-width =3D <4>;
> -	vmmc-supply =3D <&reg_usdhc2_vmmc>;
> -	status =3D "okay";
> -};
> -

[Severity: High]
Does moving this base configuration out of the SOM dtsi break SD card suppo=
rt
on other carrier boards like the RVE gateway?

The imx8mn-rve-gateway.dts relies on the SOM dtsi setting status =3D "okay"=
 and
configuring base hardware requirements for &usdhc2. Because the SoC devicet=
ree
imx8mn.dtsi sets status =3D "disabled" for usdhc2 by default, moving this
enabling and setup exclusively to the Symphony board leaves the RVE gateway
with a disabled SD card interface lacking clock assignments and pinmux
configurations.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783067947.gi=
t.stefano.r@variscite.com?part=3D2

