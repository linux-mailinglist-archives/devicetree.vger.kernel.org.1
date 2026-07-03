Return-Path: <devicetree+bounces-320392-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id peiTNJtKSGp8ogAAu9opvQ
	(envelope-from <devicetree+bounces-320392-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 01:49:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB54706289
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 01:49:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ahnGbnQi;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320392-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320392-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DA43930247F3
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 23:49:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E2133090D7;
	Fri,  3 Jul 2026 23:49:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52199313E24
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 23:49:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783122585; cv=none; b=GoZM5ky8yYnHbN40niNJp8EbuGtFdAuSql4p6Ok3fIBtgvSHx83l3Rxye//cnVUYqYg3YDswAh8TND3deDbvpbxwTXyv8qz8SxksE5+oL2nqVc24ZCytJrSGFRZVAcpCv8xxGxAiybIOHjv38THi5nH2CSyoHHksUnLD+bd7Sn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783122585; c=relaxed/simple;
	bh=C603AokNqB7ed/6FkL9oSaakLVFSA5waCRoM1ace6Xo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DHZWnmBCMsZdL6cCcE3S45aYGM5IPce5etRy8PjuUkt5V5SzqeNuE3qqmSyHY/YF/6n25Yokjln1HwKv0Y9pQjqmeqx75B2N9Xz929JgbCw+rwpvjAh5A78sMf7pwQeAqonWe5s1wY4Na/+W9DaoFRetV8rFePJsa4twHnkRD1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahnGbnQi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96D701F000E9;
	Fri,  3 Jul 2026 23:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783122584;
	bh=/x3PSLlONBl/BZ7lR2rqsLDqhhtW/0J64dFPP+tzcPc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ahnGbnQixx0Eck3NjfsJPbWf10bFXFGR2xaFJ2dtVv3qvIFhdaaipMaH8UQ00ViMB
	 ljfcCzUYBNX2k3f8u9Jbj+63oCqA45Aj/XxUxLmoPHi0GYv/fANvQVbY7X5c9MgbjG
	 9m67RY7Bkt11oho79SbHMDPb4yWN+gKCtLl37i7MuM88LvgB1S//WdIs1IYZAyJPVf
	 VnqFgDcPT6ex5YCOgBLT3MmcHST/XsNqt4Du04J0sMEZnNnRHJWiqCNR0rqsSDWWVi
	 O5Ev+isXUa7H5Jb1/A2LaGhwVFleZx0FqtccIrE8vSeI9eB1uOlJgfCSsmJAe8Wdv/
	 tYL2+4DlYmP8A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 23/36] phy: rockchip: usbdp: Clear USB status on PHY
 exit
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260703-rockchip-usbdp-cleanup-v10-23-a392711ca8a9@collabora.com>
References: <20260703-rockchip-usbdp-cleanup-v10-0-a392711ca8a9@collabora.com>
 <20260703-rockchip-usbdp-cleanup-v10-23-a392711ca8a9@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 23:49:43 +0000
Message-Id: <20260703234943.96D701F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-320392-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:robh@kernel.org,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:olteanv@gmail.com,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,linaro.org,lists.infradead.org,gmail.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2AB54706289

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Clearing `udphy->status` directly without checking if the PHY hard=
ware should be disabled causes an unbounded clock reference count leak.
--

commit e836c3d9b92996113cb8593f93bf48152ed5de6c
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Clear USB status on PHY exit

This commit ensures the USB status flag is cleared when the USB3 PHY is
exited while the system is in DP-only mode. This happens if the USB3
controller device is unbound while a DP-only adapter is plugged in.

Closes: https://sashiko.dev/#/message/20260625-rockchip-usbdp-cleanup-v7-24=
-38eb3cf654fd%40collabora.com

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
> =20
>  	rk_udphy_power_off(udphy, UDPHY_MODE_USB);

[Severity: High]
Does clearing udphy->status without actually disabling the hardware cause an
unbounded clock reference count leak?

When the system switches to DP-only mode, udphy->mode loses the
UDPHY_MODE_USB bit. If the USB controller is then unbound, we hit this path
and clear UDPHY_MODE_USB from udphy->status, but return early. The hardware
clocks remain enabled since we bypass the hardware disable call.

If the system then switches back to USB mode, rk_udphy_usb3_phy_init() will
see udphy->status as UDPHY_MODE_NONE and call rk_udphy_setup(). This calls
clk_bulk_prepare_enable() again, incrementing the clock refcount indefinite=
ly
on every cycle.

I see this issue is addressed later in the series by commit
e0219fd5f4d784e78ff969af266e10196367be69 ("phy: rockchip: usbdp: Simplify
power state handling"), but doesn't this patch introduce a regression here
that breaks bisectability?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-rockchip-u=
sbdp-cleanup-v10-0-a392711ca8a9@collabora.com?part=3D23

