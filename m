Return-Path: <devicetree+bounces-324071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wM/kBXr2T2q8rAIAu9opvQ
	(envelope-from <devicetree+bounces-324071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:28:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E145734F58
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:28:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mzsWUZK5;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324071-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324071-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 286AF3001844
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 19:28:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E39F39C636;
	Thu,  9 Jul 2026 19:28:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C6A4499A5
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 19:28:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783625332; cv=none; b=SomiIefRZnL4IyYelu3jKv5eqwyef5D6ZVmCMT/GMz+VgJN8/xljUoy+rNPwx2y86wdD7cunkMQBX2nYO4JttCzqULFyD2+4l1E2Sg9oYHuDAzzSFvOnjH8aImNEifS7PQFMALVw//ZPm+m850Q0I4RFerCy9sNU5AfTrfZYBF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783625332; c=relaxed/simple;
	bh=GYmexX5OwWxaLf8IrahwxF3a6UZR3Pl6sn0lLyY1vnU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=KeS6mRWyUo7QkwIUCCqbPOTE86LQC2XDwwzJxvbIOx6y10YB9qJQTrTj6MrtNvPLMC/NoAzNcWTykfkraqsonAa60AjMrI8ryC8h+gAle//Je6AYzz82rkvSDllh9TkVoKXbkYZ7b73qu7X9p0AnUPXcdE0ST4hIVtZzzjCoyJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzsWUZK5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 732D81F000E9;
	Thu,  9 Jul 2026 19:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783625330;
	bh=AyRm2Y+fsJPxLFyLWRneERsXWeNx9Utf9F280OE8EKo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mzsWUZK5AHpkw9nH+pj2z3G2KgUmTFCF6aD9gogTiaas3iIT9HFBnaYcQGhgpBZRa
	 6AcjHawPBaC++iK7+EWe5ThfFlsIwU0jjjmefwH/shLu4wy7lGDaTEejWR5w8UzxtZ
	 Dsx53gvfFeUE8HPU612eb7nVldjGk/MXghR38S+atubdJf4zoDPx0vzoAFpg311B0y
	 Hx8Ig0DcBr16Cl7akztMhT3JR2f1ZJdkU4y+Dp4QepWaSB6Hcn/hk4f8tjpP+xvP60
	 BfPLsLbs/8joQMTQJdeWweWutGw7+6NcnY7Y27EYsOFBXhW9HzExHS2J3yAKYjDk3q
	 uLzkLAmwu0iPw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 23/36] phy: rockchip: usbdp: Clear USB status on PHY
 exit
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-23-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-23-a149ac60f76c@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 19:28:49 +0000
Message-Id: <20260709192850.732D81F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324071-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:neil.armstrong@linaro.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,lists.infradead.org,linaro.org,kernel.org,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,collabora.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0E145734F58

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Clearing the `UDPHY_MODE_USB` flag from `udphy->status` on the ear=
ly exit path can leave the hardware powered on and leak clock references if=
 the overall PHY status drops to `UDPHY_MODE_NONE`.
--

--- Patch [23]: [PATCH v11 23/36] phy: rockchip: usbdp: Clear USB status on=
 PHY exit ---
commit 7906fa37f6a1255421fda4caa815efbe878ca40d
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Clear USB status on PHY exit

This commit ensures the USB status flag is cleared when the USB3 PHY is
exited while the system is in DP-only mode to handle unbound controllers.

Link: https://sashiko.dev/#/message/20260625-rockchip-usbdp-cleanup-v7-24-3=
8eb3cf654fd%40collabora.com

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1273,8 +1273,10 @@ static int rk_udphy_usb3_phy_exit(struct phy *phy)
>  	guard(mutex)(&udphy->mutex);
> =20
>  	/* DP only or high-speed */
> -	if (!(udphy->mode & UDPHY_MODE_USB) || udphy->hs)
> +	if (!(udphy->mode & UDPHY_MODE_USB) || udphy->hs) {
> +		udphy->status &=3D ~UDPHY_MODE_USB;
>  		return 0;
> +	}

[Severity: High]
Will this early return leak clock references if the overall PHY status drops
to 0 (UDPHY_MODE_NONE)?

If the USB3 PHY was previously initialized (enabling clocks via
rk_udphy_setup) and the mode switches to DP-only, udphy->status gets
cleared here.

Returning immediately skips rk_udphy_power_off() and its internal check
that calls rk_udphy_disable() when the status reaches 0.

Could this leave the hardware powered on and leak the clock references
obtained during initialization?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-rockchip-u=
sbdp-cleanup-v11-0-a149ac60f76c@collabora.com?part=3D23

