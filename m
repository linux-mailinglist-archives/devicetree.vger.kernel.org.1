Return-Path: <devicetree+bounces-326537-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 44ZvOTqfVmry/AAAu9opvQ
	(envelope-from <devicetree+bounces-326537-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:42:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB01758C79
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:42:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VsNQIeW9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326537-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326537-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 96FE5300FE42
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 20:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53AE142BC2F;
	Tue, 14 Jul 2026 20:42:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D84342BC29
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 20:42:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784061740; cv=none; b=byASdEOGiGjJ5Wm74FlNoZJNGnCCetHmMSgF0VKPtOgpfzBuoaZxmlqhN2Umpy6naiQq96lYTOgkIDXLSa0ByRi87hmzp6On0WDtvlgewF8jHtgQBXEtcDE8yEiVbl/HPvBSAcq/kJ7ii65EOVh03co/vcgYJojAT0vAIeansRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784061740; c=relaxed/simple;
	bh=fRzfpnejs3Cg40wARhIZvGtfkbSMGM8ZlUKl+RdTvfo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=O6uVhews+Z2bWFieujHD5K9k6E44cBHxAKC2EmJW6GjYXuYOMWEPwTXEyFwoZTuiCi8/uAynOFCFNtVUkknQaZ5sD0tOpFlDDrWqK+q01Pf0iVquzIkwY/noz+uQkQl0y7mpB7vmOoVgb0Of3n7KrGphLqRQfLRFnlnKiJMCOyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsNQIeW9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 717BA1F000E9;
	Tue, 14 Jul 2026 20:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784061738;
	bh=pCXb3BFN2d8LrQ9qH6L7KpuL+SH3Am5BaEWEloNWpG8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VsNQIeW9naVbPPFCGg0hilecuFcWGc+g4QvfYzsVs1MNsWkGj3OJe/YhSER9HL5fO
	 8oHylymbtoH1MbdThQ7Ozlmmr0sUTGnhC9JACjd5oeaqYRNYikaUp9XW9zsgYSzrHR
	 H+ilWj1KWX7mn0hmccYJ7nYjeau/aGIE3zhLzc6P9LpDYTpCgaSw8sjD5eREESOrOZ
	 XCwHb0CPGTpSBM/tBoZW6RP6Q7NUpJl32DTFrBAJ9P38WTatxJ9DOvXScVsqS0zoFc
	 RyWUM4XGOnmcd1JPBv8mqsIlreAUD7V+9hOt0teB/2/yoDmmEJc90khXu9ykO11CTg
	 d5RiicDU3bo8Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/6] ARM: dts: rockchip: Add support for RV1106 and
 RV1103
Reply-To: sashiko-reviews@lists.linux.dev
To: "Simon Glass" <sjg@chromium.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714193656.2196447-5-sjg@chromium.org>
References: <20260714193656.2196447-1-sjg@chromium.org>
 <20260714193656.2196447-5-sjg@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 20:42:17 +0000
Message-Id: <20260714204218.717BA1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326537-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sjg@chromium.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,chromium.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DDB01758C79

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The DT defines distributed IOC blocks for each GPIO bank via `rock=
chip,grf` properties, which violates the upstream dt-binding schema and cau=
ses register corruption due to driver mismatch.
- [Medium] The device tree relies on the 'rockchip,rv1106-pinctrl' compatib=
le string, which is entirely unsupported by the upstream pinctrl-rockchip d=
river and violates the dt-binding schema.
--

--- Patch [4]: [PATCH v2 4/6] ARM: dts: rockchip: Add support for RV1106 an=
d RV1103 ---
commit e0d1bbbfe5826e8f7c17c9a0008a5c218538f589
Author: Simon Glass <sjg@chromium.org>

ARM: dts: rockchip: Add support for RV1106 and RV1103

Add the devicetree files for the Rockchip RV1106 and its RV1103 package
variant. The pinctrl data comes from the vendor kernel in the Luckfox Pico
SDK.

Link: https://github.com/LuckfoxTECH/luckfox-pico

> diff --git a/arch/arm/boot/dts/rockchip/rv1106.dtsi b/arch/arm/boot/dts/r=
ockchip/rv1106.dtsi
> new file mode 100644
> index 0000000000000..7b2e6142a103f
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip/rv1106.dtsi
> @@ -0,0 +1,321 @@
[ ... ]
> +	pinctrl: pinctrl {
> +		compatible =3D "rockchip,rv1106-pinctrl";

[Severity: Medium]
Does this compatible string have accompanying dt-binding schema and driver
support? The 'rockchip,rv1106-pinctrl' string appears to be missing from the
upstream device tree schema and pinctrl driver, which could cause dtbs_check
validation failures and prevent the driver from probing.

> +		rockchip,grf =3D <&gpio1_ioc>;
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		ranges;
> +
> +		gpio0: gpio@ff380000 {
> +			compatible =3D "rockchip,gpio-bank";
> +			reg =3D <0xff380000 0x100>;
> +			interrupts =3D <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&cru PCLK_PMU_GPIO0>, <&cru DBCLK_PMU_GPIO0>;
> +			gpio-controller;
> +			#gpio-cells =3D <2>;
> +			gpio-ranges =3D <&pinctrl 0 0 32>;
> +			interrupt-controller;
> +			#interrupt-cells =3D <2>;
> +			rockchip,grf =3D <&gpio0_ioc>;

[Severity: High]
Will the upstream pinctrl-rockchip driver parse these bank-specific syscons
properly? The upstream driver typically only parses the parent pinctrl node=
's
rockchip,grf property.

Could this cause register corruption when configuring pins? Since the parent
pinctrl node points to gpio1_ioc, the driver might use gpio1_ioc for all
banks. This would silently overwrite gpio1_ioc registers when attempting to
configure pins for other banks like gpio0 or gpio2.

Also, does adding the rockchip,grf property to the gpio-bank child nodes
violate the rockchip,gpio-bank.yaml schema which forbids additional
properties?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714193656.2196=
447-1-sjg@chromium.org?part=3D4

