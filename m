Return-Path: <devicetree+bounces-321614-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4MdCLSEzTGqahgEAu9opvQ
	(envelope-from <devicetree+bounces-321614-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 00:58:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3BC71631E
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 00:58:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Xc6p3p7F;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321614-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321614-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3590B301C117
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 22:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F3913D34AB;
	Mon,  6 Jul 2026 22:58:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F2D3D2FFC;
	Mon,  6 Jul 2026 22:58:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783378717; cv=none; b=Jov1m5mQyKz6d0AOovHjnLwf/UTdLT1Tn/LSU65ASieFoeQPRYrnfkVBnk2cQ1Gy0oGeqra4J4QrZ6h5W8Cys7ATjqvX9sEoMQmpfRCIOvPVK0aAFORfb8hV9CtGgTnBuuzNwqUbUcdou4xsgcgN0+ziewgHLsAY06aNvST7qAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783378717; c=relaxed/simple;
	bh=YQ8U9xvmniz5vi39E0l1c8YRPF3r9m//I9Tf+jPH43U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=f01wMAH0VkAyM5H1wCWFoIMpPw2LMax0nPnlj7u/ivB1tF6x+TbrTyrYHyRU+3suKhdUynNgtz4r0NWHe1yl6zmuXA+6A/TY8U/Ks+MGu1zeAW1BGmz9kw1jSdeIRiKLyGTovXoMenYlZWLTPcke06keBClWbIYqGXJFKTi4OEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xc6p3p7F; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2261D1F000E9;
	Mon,  6 Jul 2026 22:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783378716;
	bh=UohOdC3VB/uU6Ice+PZTZY1IottMYvMEedbYR6HBD80=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Xc6p3p7FfJ1MtRb9kY8cotEWvjjBiobz8qBDqrhXvun7PX/cSz19HZZAZAAVjzpm3
	 4C1kFIbO7C4yazpXw2N0So9ICkGwLD1BfGm/CsEmv8LIkv0szqQW25eaRchj8ELEF2
	 O2WV2LG7z+LPw3s3SkjGlHQyXrtCKdOIfPLWy5R1pFx5kAWlepbH3W9bIzRNse3kDQ
	 bsp1SaIL9LiUy0bUqSErPuY8gbaZTQbQGz7a4gxOToOYVoKvF/BH4+4kiZqgWKuhbZ
	 rTqdBVEpssavbBgs5iHtdnwsk5gmXIJLConAg0h4P2KxbVQZ//84uXJTCdKaa+qybc
	 lMZtZP7rcSFDw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: apple: t600x: Add PCIe pwren gpios
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yureka Lilian" <yureka@cyberchaos.dev>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260707-apple-pcie-pwren-v1-2-5a281b182fe2@cyberchaos.dev>
References: <20260707-apple-pcie-pwren-v1-0-5a281b182fe2@cyberchaos.dev>
 <20260707-apple-pcie-pwren-v1-2-5a281b182fe2@cyberchaos.dev>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 22:58:35 +0000
Message-Id: <20260706225836.2261D1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321614-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,cyberchaos.dev:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:yureka@cyberchaos.dev,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2B3BC71631E

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The device tree changes are non-functional because the Apple PCIe =
controller driver lacks the required `pci-pwrctrl` framework integration, l=
eaving the endpoints unpowered.
- [High] The fixed regulator nodes for the PCIe ports omit the `startup-del=
ay-us` property, which will cause a violation of the PCIe CEM specification=
 T_PVPERL timing constraint when enabled.
--

--- Patch [2]: [PATCH 2/2] arm64: dts: apple: t600x: Add PCIe pwren gpios -=
--
commit b2b3991e65bd2ca1aa384e079e00556daa346284
Author: Yureka Lilian <yureka@cyberchaos.dev>

arm64: dts: apple: t600x: Add PCIe pwren gpios
   =20
This commit adds fixed regulators to enable PCIe peripherals (WiFi, SD card
reader, and USB xHCI) on Apple M1 Pro/Max/Ultra SoCs. It sets these regulat=
ors
as the power-supply for the respective PCIe ports and adds the pciclass,0604
compatible string to allow the pci-pwrctrl-generic driver to bind.

> diff --git a/arch/arm64/boot/dts/apple/t600x-die0.dtsi b/arch/arm64/boot/=
dts/apple/t600x-die0.dtsi
> index f715b19efd167..53a633a3c6527 100644
> --- a/arch/arm64/boot/dts/apple/t600x-die0.dtsi
> +++ b/arch/arm64/boot/dts/apple/t600x-die0.dtsi
[ ... ]
> @@ -449,6 +449,7 @@ pcie0: pcie@590000000 {
>  		pinctrl-names =3D "default";
> =20
>  		port00: pci@0,0 {
> +			compatible =3D "pciclass,0604";

[Severity: High]
Will this generic power control driver actually be probed?

The pci-pwrctrl-generic driver requires the PCIe host controller to explici=
tly
call pci_pwrctrl_create_devices() to instantiate platform devices for these
child nodes.

Looking at drivers/pci/controller/pcie-apple.c, this API is never invoked. =
As
a result, the pci-pwrctrl device is never created, the power-supply propert=
ies
will be ignored, and the connected endpoints will remain unpowered.

>  			device_type =3D "pci";
>  			reg =3D <0x0 0x0 0x0 0x0 0x0>;
>  			reset-gpios =3D <&pinctrl_ap 4 GPIO_ACTIVE_LOW>;
> diff --git a/arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi b/arch/arm64/=
boot/dts/apple/t600x-j314-j316.dtsi
> index fee84f809a9cc..7954cbbe45140 100644
> --- a/arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi
> +++ b/arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi
[ ... ]
> @@ -55,6 +55,20 @@ led-0 {
>  			default-state =3D "keep";
>  		};
>  	};
> +
> +	vreg_pcie0_port0: regulator-pcie0-port0 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "pwren-pcie0-port0";
> +		gpio =3D <&smc_gpio 13 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};

[Severity: High]
Does this regulator need a startup-delay-us property to meet PCIe timing?

When the generic power control framework eventually manages this regulator
(either once the pci-pwrctrl driver is supported or via direct host control=
ler
control), it will enable it without implicit delays.=20

Without startup-delay-us =3D <100000>, regulator_enable() returns immediate=
ly.
The apple_pcie_setup_port() function then asserts PERST#, waits only 100us,
and deasserts PERST#.=20

Could this result in a T_PVPERL of ~100us instead of the spec-mandated 100m=
s,
causing the PCIe endpoints to fail initialization or act erratically? (This
also applies to the other fixed regulators introduced in this patch).

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707-apple-pcie=
-pwren-v1-0-5a281b182fe2@cyberchaos.dev?part=3D2

