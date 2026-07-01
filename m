Return-Path: <devicetree+bounces-318708-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CELCAeonRWrG7woAu9opvQ
	(envelope-from <devicetree+bounces-318708-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:44:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 683D26EEE8B
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:44:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XVDjVM2W;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318708-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318708-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB2C03046FD4
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 14:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77C0D349CFA;
	Wed,  1 Jul 2026 14:34:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCDF349CD2
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 14:34:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782916467; cv=none; b=k483Rbcc41T1C4QzB0whUIivvGaHN0s3DHtgVCLsfITXLjrPbhycuUCJ/HNn4YExElSVqkiKT21zEFG6S0NjGlfG3YHJsny3lW6lRqXMI8w4f+y4KalfjX0ps9Rl+v7MDAGred+WFm47OcVSWdgQh21TVk0ZY3E50EDXZrYTqcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782916467; c=relaxed/simple;
	bh=rU7AxkopJJIzxZFPA4XMAO205pRBP6wKHWPrqtVv5yE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LfAbNO9h/5EMZt+AaDkj6X1NKFnlPssHSPI68VyZgYGHoC4mP+eYSayU6DQC8c/YcxHtXuMBcZe9hglltMiw9/dCdp6jDpQcuQ9JBAGhUXicjtyhCS6uqgr3pbAf/YijdzvTu7DFJW1SCRAdc9FyAgzTg07JpbIAcFNjzZPpREA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVDjVM2W; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97F101F000E9;
	Wed,  1 Jul 2026 14:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782916466;
	bh=m8Ep+WztZKrXzs6aDdcLp08aRmZN/JP7RHztmzoUg70=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XVDjVM2W+LtBln79oqh1lxaXq75t1lo3qu/Glu5hGIdHX9CkKIvyyG9ke07HqTAC+
	 s04MIqelE/9OSSasprfamkN3ApTEz9tg9m0aDueZDenypb1zItWSSmOyxgQhx3yIop
	 Ly4yYdvynGEpfSJYsiE2lT589Pk53VHgMfLD9vbh/euFmlNqs5kBNR564hRI83TKLd
	 LyV7gs5p9Wucvp+T8EMeD91hnQJ5jb4YCYTr2JymZlizpne7FB1Q/thoMAk9Q/fQRo
	 5/EW7+LrMs+uHJ23Rom4dnPxT3dW8mlxfS6jiKTmWj8IrRZEWUnEPwhdGhYcqKV8X0
	 f3ezpyZ/RdjCQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 net-next 2/2] arm64: dts: ti: Add PLL1 refclk to
 J784S4 SoC SERDES node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gokul Praveen" <g-praveen@ti.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260701142457.81874-3-g-praveen@ti.com>
References: <20260701142457.81874-1-g-praveen@ti.com>
 <20260701142457.81874-3-g-praveen@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 14:34:24 +0000
Message-Id: <20260701143425.97F101F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318708-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:g-praveen@ti.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,linaro.org,lists.infradead.org,gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ti.com:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 683D26EEE8B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The Cadence Torrent PHY multilink configuration will fail on other=
 K3 platforms (e.g., J721S2) due to a missing pll1_refclk property in ident=
ical serdes nodes.
--

commit cad292e544578dc0fc4b900abd68b229a97dc116
Author: Gokul Praveen <g-praveen@ti.com>

arm64: dts: ti: Add PLL1 refclk to J784S4 SoC SERDES node

This commit adds the PLL1 reference clock to the clocks and clock-names
parameters of the SERDES nodes for the J784S4 and J742S2 SoCs. This resolves
an issue where serdes multilink configurations fail without PLL1.

> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi b/a=
rch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> index c2636e624f18b..e5224bd7f5383 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> @@ -1149,8 +1149,9 @@ serdes0: serdes@5060000 {
>  			resets =3D <&serdes_wiz0 0>;
>  			reset-names =3D "torrent_reset";
>  			clocks =3D <&serdes_wiz0 TI_WIZ_PLL0_REFCLK>,
> +				 <&serdes_wiz0 TI_WIZ_PLL1_REFCLK>,
>  				 <&serdes_wiz0 TI_WIZ_PHY_EN_REFCLK>;
> -			clock-names =3D "refclk", "phy_en_refclk";
> +			clock-names =3D "refclk",	"pll1_refclk", "phy_en_refclk";

[Severity: High]
This isn't a bug introduced by this patch, but does the same multilink
configuration failure occur on other K3 platforms like J721S2?

Looking at serdes0 in arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi, it lacks
the pll1_refclk property in the clocks array:

    clocks =3D <&serdes_wiz0 TI_WIZ_PLL0_REFCLK>,
             <&serdes_wiz0 TI_WIZ_PHY_EN_REFCLK>;
    clock-names =3D "refclk", "phy_en_refclk";

When a multilink configuration is requested on these platforms (e.g., PCIe =
on
lane 0 and SGMII on lane 1), will the phy-cadence-torrent driver fail to
enable the PLL1 reference clock?

Could this cause essential peripheral initialization to fail when the
PHY is unable to lock PLL1?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701142457.8187=
4-1-g-praveen@ti.com?part=3D2

