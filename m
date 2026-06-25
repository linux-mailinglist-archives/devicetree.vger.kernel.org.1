Return-Path: <devicetree+bounces-315825-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bCJzF19uPWph3AgAu9opvQ
	(envelope-from <devicetree+bounces-315825-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 20:07:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE876C8193
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 20:07:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aAzpD8wQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315825-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315825-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52CB63003EE7
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 18:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C57AC2F8E94;
	Thu, 25 Jun 2026 18:06:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FEE1302140
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 18:06:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782410785; cv=none; b=BmYrd2/SEsycAArj9YX9PHRUfvZap9LLZbrcEBqXYyWN5JCl/VOg2WiGko2+li+uF5EFqdOgi99QS7bn7m2isXCgZSL5H/cyr6/HM/XgXVlSfaxr+H6q4E5s5EG+OP6135AS7+fWFx53Ra9zqVzhi6cfeBt+zfCv2mwEydAbleo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782410785; c=relaxed/simple;
	bh=U4rVZTTHXHhLuWpFQ1PvvkF7T1VoDW/NffOWof0JQWI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=n/q7+oaRhFLYiHppYhoVCm/HgV6fRBHdjBdbehzDlWNjLxizyBJJ7Z6IgrGRzE3sLNvKp1tUfiQ5MqCtwZstHMnSwgmwJzGXRld773aCb73F7O9Cz4yyLqaezuYQBz7YGPUknviM+Jfe/cLK4QVSbK8I3uACAWjotj8VdCrDB9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAzpD8wQ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE99A1F000E9;
	Thu, 25 Jun 2026 18:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782410784;
	bh=Ao9cljNSd00ekFJvGVEdx7ZMSGm1CX5e1rvGntzHD80=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aAzpD8wQgM0OzsA7CQI4tuAYWyM+n4sx3PNLZtRBH+/Ul3Do/yKS8Nqq4oDiUXOaG
	 s12/JMmCYefCDESAg2fDWFZyJAzvXaA0uOBqombvHj3tBm/xnuabphe2ydUYZ4b2s4
	 hDX9o2Omgq5JfdsHQd/mu535dffzVtnFNsN774h7cd+FXfQVQvhZ2skFXWzRH46tom
	 KmWOItrJgpwliobobxxzK6NS5QXd0d7r/3O3zRNpyDiFRIpbZFGDwzpeiTTtK+fWbF
	 dzNRT8ic5dLB4evmIckh0Ff+YJzEhxQI20+cp5MUYy3KT19ou/O0Ui71K3u2u7ZO7f
	 08LJok6UxzIRw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 03/27] phy: rockchip: usbdp: Do not lose USB3 PHY
 status
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260625-rockchip-usbdp-cleanup-v7-3-38eb3cf654fd@collabora.com>
References: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
 <20260625-rockchip-usbdp-cleanup-v7-3-38eb3cf654fd@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 18:06:23 +0000
Message-Id: <20260625180623.AE99A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315825-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:olteanv@gmail.com,m:robh@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,lists.infradead.org,vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,collabora.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7CE876C8193

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Preserving the PHY status across mode changes exposes a permanen=
t power leak if the USB driver exits while a 4-lane DisplayPort is active.
--

commit eb97195758d636e8b97b5ffd69c0022de4826241
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Do not lose USB3 PHY status

By default DWC3 requests the USB3 PHY once and keeps it enabled. When
DisplayPort is being requested later on, a mode change is needed which
re-initializes the PHY. This patch removes the clearing of the status varia=
ble
during re-initialization to ensure USB3 tracking information isn't lost.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index a5ffdf7a6e76b..12dfdd470a782 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1008,7 +1008,6 @@ static int rk_udphy_power_on(struct rk_udphy *udphy=
, u8 mode)
>  			rk_udphy_u3_port_disable(udphy, false);
>  		udphy->mode_change =3D false;
>  	} else if (udphy->mode_change) {
> -		udphy->status =3D UDPHY_MODE_NONE;

[Severity: Medium]
Does this change introduce a potential power and clock leak when the USB
driver unbinds or suspends?

By preserving the UDPHY_MODE_USB bit in udphy->status across mode changes,
the status bit remains active while udphy->mode might be set to DP-only
(for example, when a 4-lane DisplayPort adapter is connected).

If rk_udphy_usb3_phy_exit() is called while the mode is DP-only, the early
mode check will trigger because udphy->mode lacks UDPHY_MODE_USB.
This causes an early return, skipping the call to rk_udphy_power_off()
and leaving the UDPHY_MODE_USB bit stranded in udphy->status.

Later, when DisplayPort is powered off and rk_udphy_power_off() clears the
UDPHY_MODE_DP bit, the status will drop to UDPHY_MODE_USB instead of
UDPHY_MODE_NONE. Could this bypass the final rk_udphy_disable() call,
leaving the PHY powered on and leaking the clock references indefinitely?

>  		if (udphy->mode =3D=3D UDPHY_MODE_DP)
>  			rk_udphy_u3_port_disable(udphy, true);
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625-rockchip-u=
sbdp-cleanup-v7-0-38eb3cf654fd@collabora.com?part=3D3

