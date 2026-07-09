Return-Path: <devicetree+bounces-324070-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WcR0Ian2T2rKrAIAu9opvQ
	(envelope-from <devicetree+bounces-324070-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:29:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE058734F91
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:29:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IY1DlZre;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324070-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324070-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 546E0303FDDA
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 19:28:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F14C23358C6;
	Thu,  9 Jul 2026 19:28:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B9E2D3A60
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 19:28:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783625290; cv=none; b=XEdAkNVmq+1dKDBVoBSGmYOnm9FwuyCO6wlhc84HgCn5Sx6GAhWVcOuyP1uPMpjkAxsxP05ZQ4kN278wHCt60SGPxgSwk5Jgu1FphWf4YVaGLYT4fvBp/CYu5/WVkHeA1jc9Ck5WskIWnDDuyMM1fSJcYW8gDX3Hv6A6S2P0srk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783625290; c=relaxed/simple;
	bh=2vAGiOM67cT3b8FMDbQLmzv37tb4/8ET+Lh3+KQrEps=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OTGVwjbfZOy84wDnqQe19ZUNjSbjLi3oJWi6AxuWGrCMCmfHMK6oFVdcDdAolSNYmJe26ZgpUlpIYOt8C3T3YpV7qVDyF1dUV1BVvTitG2l2MiCFEfI+nPymg8VOtZJ733iZMKMiRfQ32H98QRZDthedwDpdLSCeUBqKjjCHr5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IY1DlZre; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 695451F000E9;
	Thu,  9 Jul 2026 19:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783625289;
	bh=eaP32CK9fnRz3e8cIkX6XK1tIuAHPip78tNRma2KLoU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IY1DlZrer+jRwx/b4fu6TFRtQeXOEnPPF29Ri3uk2HRsXLSSqjVYgd7g82ny8WWmL
	 lU1Jko9bTstR73mjcyrhuaofbFYQNNU6Hf4LpwAaIKOVzcUnPR8ewtVUK56dTkcp/F
	 ALNPAjUcnz5D8mVm3y2Y8+ty00F/UYT1bUTj6YDnMHmfwoupcKDFpO0kMiYvdlOB7y
	 UzpH2siq/rkDMOMPG5/xoiFjUvOKgcJS+icT29HK0DS8f1qmdFeQJu4Q10jios5h3H
	 bCSktWYYac1yKTNR2fKhdQXfW7AhMOKJ0Z+gAlMBArKgkRZTN6R1TSIuFDNZ1HU8f5
	 klGktllgQV90g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 26/36] phy: rockchip: usbdp: Avoid xHCI SErrors
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-26-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-26-a149ac60f76c@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 19:28:09 +0000
Message-Id: <20260709192809.695451F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324070-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:olteanv@gmail.com,m:neil.armstrong@linaro.org,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,vger.kernel.org,kernel.org,lists.infradead.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,collabora.com:email,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE058734F91

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The USB3 port is unconditionally disabled before PHY re-initializa=
tion to avoid xHCI SErrors, but it is never re-enabled afterwards, permanen=
tly breaking USB3 functionality.
--

--- Patch [26]: [PATCH v11 26/36] phy: rockchip: usbdp: Avoid xHCI SErrors =
---
commit 1f5e9aad179e51fb32f2117a4d8ff35248e145cc
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Avoid xHCI SErrors

The USBDP PHY provides the PIPE clock to the USB3 controller, which means
the PHY must be fully running when anything tries to access the xHCI
registers. This patch avoids SErrors during re-initialization by disabling
the USB3 port beforehand, forcing the clock source to a safe fallback.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index edee27933d890..9e77513643a33 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1000,8 +1000,8 @@ static int rk_udphy_power_on(struct rk_udphy *udphy=
, u8 mode)
>  			rk_udphy_u3_port_disable(udphy, false);
>  		udphy->phy_needs_reinit =3D false;
>  	} else if (udphy->phy_needs_reinit) {
> -		if (udphy->mode =3D=3D UDPHY_MODE_DP)
> -			rk_udphy_u3_port_disable(udphy, true);
> +		rk_udphy_u3_port_disable(udphy, true);
> +		udelay(10);
> =20
>  		ret =3D rk_udphy_init(udphy);
>  		if (ret)

[Severity: High]
Does this code permanently break the USB3 functionality?=20

We now unconditionally disable the USB3 port here before re-initializing the
PHY, but it appears there is no corresponding call to=20
rk_udphy_u3_port_disable(udphy, false) to re-enable it after rk_udphy_init()
completes.

Will this leave the DWC3 controller stuck on the UTMI fallback clock with
phystatus forced to 0, making the interface unusable after a mode switch?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-rockchip-u=
sbdp-cleanup-v11-0-a149ac60f76c@collabora.com?part=3D26

