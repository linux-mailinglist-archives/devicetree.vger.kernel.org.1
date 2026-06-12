Return-Path: <devicetree+bounces-311090-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wwMrKEU6LGoXOAQAu9opvQ
	(envelope-from <devicetree+bounces-311090-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:56:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E24467B1FB
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:56:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YP9rpwZq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311090-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-311090-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 493A7302B045
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89393404BE4;
	Fri, 12 Jun 2026 16:52:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7386C403EA2
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 16:52:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781283176; cv=none; b=TuH8Fe6HC2Q1YvWB7g2/W6lAAeBlvpf3cktLxIyfwGUl70vil+CII6Xs6xg3vMcPtuP+RfzZIlR7mqBVvQRxzLGlOrWcXWqJyE8aJ0lG4CEdPdBiRucTnCF4+g0tFGVaIh/gjE8FWttLADR/W4P4/sZJZEBQzZFUCMHhUi7BKxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781283176; c=relaxed/simple;
	bh=7M0rf/LnCbO8Dbr+xwqdGGb8HLBIj8L6KqGDkP00lxE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=c2A2AdupYRGiDdz4i8ZT0FyvbihJIG1H4ws4NaAovR6LuCDbBZozqA+dKdYaYuNyUIUmXxNRLN69YZDdXOl4vJ0gbDAKKWunTqTdCRZC2s8VJwpNmsG6egUsSoCpjWUA62zQiYxUjuHRhIdv94ikL5uQYMFxqwJrmUPTsbbDqJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YP9rpwZq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06FA81F000E9;
	Fri, 12 Jun 2026 16:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781283175;
	bh=jd92iNnUzcnULIje9ZonErVKpniIoalENDOzdG7ggXc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YP9rpwZq0PVBmGvP+J38Y5D/7juD9n4CoFfK4rnzIxIox5OV4NgUVktptNl/iSiX2
	 jY90aWAJZ9k0xFwRvMqma3cUmJ5Kuk0rNagwJ1eEB/8GRH1DnknOWVVUzxfwhmyoN5
	 vGDjRM+hFBZsapg8Jwh5XU+ynVyGdM/a4xWavMj6qZ4RCXf4S6O7nEwfyYIGAcvd2s
	 e++AbHVoWuParohEoQ96HgIxqxDl5Tq3QrThXI+ujDr9xbXlb2NOtIUaFqjLI8wqT4
	 eSrf7e0dDTZKqQQLBCcMWUy22aJUw0ig0X0TZbQzA+X6QWAoUuFKXNV0PdzIFLLrJN
	 KKec/LrR8/s0g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC reset polarity on
 PP-1516
Reply-To: sashiko-reviews@lists.linux.dev
To: "Quentin Schulz" <foss+kernel@0leil.net>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260612-pp1516-emmc-polarity-v1-1-4816c1c909f7@cherry.de>
References: <20260612-pp1516-emmc-polarity-v1-1-4816c1c909f7@cherry.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 16:52:54 +0000
Message-Id: <20260612165255.06FA81F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311090-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:foss+kernel@0leil.net,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:foss@0leil.net,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,kernel,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto,cherry.de:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8E24467B1FB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Incomplete fix: identical incorrect eMMC reset polarity (GPIO_ACTI=
VE_HIGH) remains in multiple PX30 boards.
--

commit 764233a2abb692d41607851c93d3fed45fcab940
Author: Quentin Schulz <quentin.schulz@cherry.de>

arm64: dts: rockchip: fix eMMC reset polarity on PP-1516

This commit fixes the eMMC reset polarity for the px30-pp1516 board by
changing it to GPIO_ACTIVE_LOW to comply with the Jedec 5.1 specification.
The previous GPIO_ACTIVE_HIGH polarity caused eMMC devices with specific
RST_n_FUNCTION bitfield settings to be held in reset forever.

> diff --git a/arch/arm64/boot/dts/rockchip/px30-pp1516.dtsi b/arch/arm64/b=
oot/dts/rockchip/px30-pp1516.dtsi
> index 192791993f059..02200de695d31 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-pp1516.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30-pp1516.dtsi
> @@ -33,7 +33,7 @@ emmc_pwrseq: emmc-pwrseq {
>  		compatible =3D "mmc-pwrseq-emmc";
>  		pinctrl-0 =3D <&emmc_reset>;
>  		pinctrl-names =3D "default";
> -		reset-gpios =3D <&gpio1 RK_PB3 GPIO_ACTIVE_HIGH>;
> +		reset-gpios =3D <&gpio1 RK_PB3 GPIO_ACTIVE_LOW>;

[Severity: High]
This isn't a bug introduced by this patch, but does this same fix need to be
applied to other PX30 boards?

Looking at the tree, several other PX30 device trees still use the exact sa=
me
incorrect GPIO_ACTIVE_HIGH configuration for their emmc_pwrseq nodes:

arch/arm64/boot/dts/rockchip/px30-cobra.dtsi
arch/arm64/boot/dts/rockchip/px30-evb.dts
arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi

Will these boards also fail to boot if used with eMMC devices where the
RST_n_FUNCTION[162] bitfield is set to 0x1, or do they guarantee different
hardware behavior?

>  	};
> =20
>  	gpio-leds {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-pp1516-emm=
c-polarity-v1-1-4816c1c909f7@cherry.de?part=3D1

