Return-Path: <devicetree+bounces-299273-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAN9JvznCmoE9QQAu9opvQ
	(envelope-from <devicetree+bounces-299273-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 12:20:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A268656A91C
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 12:20:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B87503010DDA
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 10:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BE9531E837;
	Mon, 18 May 2026 10:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHxGxDFj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1909E21D3F5
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 10:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779099087; cv=none; b=Smn1c5t/HWQiBv6jwEW0AsHro0QcX2lWSF45h1MvQpdbowUpGVfFrrbuaF3SNXOY0KXFXsM3/Kb25YSRkRgAM/UoG4vG1JZMqeApdlr6iR5hhLXt56al6Hc/ZiXohjSL3nke1e7hmMJ7q3NAG+wXze77way7jJ/v/dwqZclLoII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779099087; c=relaxed/simple;
	bh=wXp/pi0UemY6FL7MEwawj4eAwtF0F7HfcbCne0WxMBE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cESVJDhLIa3K13xlv7dE+HV3Jd5twIEGR5Jsmp5IDRhY/zemyk0TRHN5HWRqx1pE1xVq3KgWBCxurENXIsrM+/2LGl6PWi6RhwpPelIDniPwsZ3AoLxyWjp752P/KIl53Vb9mhldwJOQdGDgYZa2NEiRpmBul19SahgnIP1UvPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHxGxDFj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAEFDC2BCB7;
	Mon, 18 May 2026 10:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779099087;
	bh=wXp/pi0UemY6FL7MEwawj4eAwtF0F7HfcbCne0WxMBE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=bHxGxDFjsgC+fextruUVxsXTIj18IJ1WTB2lMNI4inURTDb/Gt4ouVflC12L0zF3n
	 /5YnK+bF2k/NyZR0wFNL2R6xb3Hh8HQkis08hyLl1H6uDotEorWuoEt+R0YDsdFdaY
	 E9runUn/NXnmFtiGVUjyd3d2G12tbcUKGGaM/gIurRjXvhkXRs9NWv9q2PYCmuWEja
	 987DgKwkKUkk6RQbzwc/i4sjJxNM0MIic+NQXT8lkTwgkYyLfy2fZcgHUAjm43vR/N
	 DLXo0DZT5m+Pz7vxSaxa95jR7HWBvS4iEGJJOAo6IbY4Ag9yim4GhBxXuHor4/JZpN
	 aKX59dSbNPUnA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Fix clocks for HSPHYs
Reply-To: sashiko-reviews@lists.linux.dev
To: "Konrad Dybcio" <konradybcio@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260518-topic-hamoa_hsphy_clk-v1-1-d85203756505@oss.qualcomm.com>
References: <20260518-topic-hamoa_hsphy_clk-v1-1-d85203756505@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 10:11:26 +0000
Message-Id: <20260518101126.CAEFDC2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: A268656A91C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299273-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fde000:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The patch assigns the `TCSR_USB2_2_CLKREF_EN` clock to `usb_1_ss=
2_hsphy` (the tertiary controller's PHY). However, `usb_2_hsphy` (a separat=
e PHY at 0x088e0000) is already assigned this exact same clock reference. T=
his creates a hardware description conflict where two distinct PHYs share a=
 single toggle, contradicting the commit message's claim that the tertiary =
PHY has its "own toggle".
--

commit 91799d7f574ab3aadbfd7f8695e82875347063f5
Author: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

arm64: dts: qcom: hamoa: Fix clocks for HSPHYs

This commit updates the clock references for the primary and tertiary HSPHYs
on hamoa. The primary PHY is wired directly to the XO clock, and the
tertiary PHY is updated to use TCSR_USB2_2_CLKREF_EN.

> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qc=
om/hamoa.dtsi
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
[ ... ]
> @@ -3010,7 +3010,7 @@ usb_1_ss2_hsphy: phy@fde000 {
>  			reg =3D <0 0x00fde000 0 0x154>;
>  			#phy-cells =3D <0>;
> =20
> -			clocks =3D <&tcsr TCSR_USB2_1_CLKREF_EN>;
> +			clocks =3D <&tcsr TCSR_USB2_2_CLKREF_EN>;

The commit message notes the tertiary PHY has its "own toggle", but does
assigning TCSR_USB2_2_CLKREF_EN here result in two PHYs sharing a toggle?

It appears that usb_2_hsphy (located at 0x088e0000) is already assigned this
exact same clock reference. If both usb_1_ss2_hsphy and usb_2_hsphy share
TCSR_USB2_2_CLKREF_EN in the device tree, does usb_2_hsphy also need its
clock assignment updated to correctly model the hardware?

>  			clock-names =3D "ref";
> =20
>  			resets =3D <&gcc GCC_QUSB2PHY_TERT_BCR>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518-topic-hamo=
a_hsphy_clk-v1-1-d85203756505@oss.qualcomm.com?part=3D1

