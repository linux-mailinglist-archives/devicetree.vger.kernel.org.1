Return-Path: <devicetree+bounces-324673-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vdUdB0FlUWq4DwMAu9opvQ
	(envelope-from <devicetree+bounces-324673-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:33:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CFF73EFAB
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:33:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EzBKBIXu;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324673-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324673-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B7FAF30D26D2
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 21:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D70353E6DD2;
	Fri, 10 Jul 2026 21:26:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B6F3E6DC8
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 21:26:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783718811; cv=none; b=MgMhn7YDHF9AdvbgCRL+l9z53O0tZyO8dZZi1jRILvLzoH4H2C/pWaa6QW6uDKXP5s7+QoC7i7/JNtCs4zDnnWkkwrsjMhIwyomk8voHpNLUE6XAvWn7BTnh4o4wp5XPAmudZU8+/kXM+/XYGhhUkcGpuND/Fgv8w0ApL6TBhls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783718811; c=relaxed/simple;
	bh=VZY8MEvpnh9cef32/ygscRPP4LZjBD2QrHixKMPTwBc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tQYOMz9Zo77Tl+xjNIVoi7b7hxzxUvOeuo0649zyTk6TKzgilUuPeoGFbG/8NOVnMQpVBqhNGsMMHfdQu12/TckZnfkbLW481g8eMA9g5s4ZvJ4ueOXe5hZdZDDn4AqKSC+YIZsyq9py2cX3casl2moBBe7exe18S8LyZjpv9nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzBKBIXu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B5551F00AC4;
	Fri, 10 Jul 2026 21:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718810;
	bh=6oLEyjfwgbQLo6NvgxheLP+S+a9hPy/oYsQK0oXEbwk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EzBKBIXurklswjsW01rcCNala6/G/VrPh2Bhf9FrF9cy9CwZRXFKfAbEHyBrXLXSE
	 ycpfV6wrFW65JjJFwBX3VNMFS3IbsavjFrcu/YPqTsTkxoxPJeSr56YFZ3CJ7TfSxd
	 ioy4QZf5HfppebkhJGNWdJkTJj9stcdaK2qsom62jVtWJodq14ezbEIr4j1g802SSn
	 2/bo5BZ3096xNQXl1TKtY9Y7smiSRWAFBPh45fA4XNuiardSx8LcPwOtHQ44YQWR3W
	 E4487kJAj6TsIHDOG6t28czmud4cvgc6vOaLxYdipVG0/XQCN+12F3FC801yu4ChLy
	 P2Ia9kPVf5QDg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 31/36] phy: rockchip: usbdp: Add phy reset
 notification support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-31-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-31-8b41a9a9bef0@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 21:26:49 +0000
Message-Id: <20260710212649.7B5551F00AC4@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324673-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:neil.armstrong@linaro.org,m:conor+dt@kernel.org,m:linux-phy@lists.infradead.org,m:vkoul@kernel.org,m:olteanv@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,lists.infradead.org,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,collabora.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A8CFF73EFAB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Shared `phy_reset_count` across multiple USB3 ports in DWC3 notifi=
er causes stuck `PHYSOFTRST` and unbalanced PM runtime refcounts.
--

--- Patch [31]: [PATCH v12 31/36] phy: rockchip: usbdp: Add phy reset notif=
ication support ---
commit a652d5b92503989cfd858925aecf81d1ed290bb7
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Add phy reset notification support
   =20
This commit adds support for reset notifications to gracefully handle
the PHY being disabled. It is intended to prevent corrupting the
controller's internal state and resolve "cmn ana lcpll lock timeout"
errors after device replugs.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index af915cc377275..0333e846ce343 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1005,24 +1005,39 @@ static int rk_udphy_power_on(struct rk_udphy *udp=
hy, u8 mode)
>  	}
> =20
>  	if (udphy->status =3D=3D UDPHY_MODE_NONE) {
> +		phy_notify_reset(udphy->phy_u3, PHY_NOTIFY_PRE_RESET);
> +

[Severity: High]
Can this cause a port to become permanently stuck in reset due to how the
DWC3 core tracks reset notifications?

Looking at the DWC3 notifier callback in dwc3_usb3_phy_notify(), it uses a
single controller-wide atomic counter (phy_reset_count) rather than tracking
the state on a per-port basis:

drivers/usb/dwc3/core.c:dwc3_usb3_phy_notify() {
    ...
    atomic_inc(&dwc->phy_reset_count);
    ...
}

If this PHY notification is triggered concurrently across multiple USB3 por=
ts,
could the shared counter lead to unbalanced state? For example, if Port 0
executes PHY_NOTIFY_PRE_RESET while the controller is suspended
(pm_runtime_get_if_active <=3D 0), it skips the sequence and does not incre=
ment
the counter.

If the controller then wakes up and Port 1 concurrently executes
PHY_NOTIFY_PRE_RESET, it increments the shared counter to 1 and asserts
Port 1's reset.

When Port 0 later finishes its PHY setup and executes PHY_NOTIFY_POST_RESET,
it sees the shared counter is 1. Does it incorrectly process the post-reset,
decrementing the counter to 0 and dropping a PM refcount?

If so, when Port 1 finally executes PHY_NOTIFY_POST_RESET, it would see the
shared counter is 0 and abort early, potentially leaving Port 1 permanently
stuck with PHYSOFTRST asserted and unbalanced PM runtime refcounts.

Does the state need to be tracked on a per-port basis in the DWC3 core befo=
re
enabling these notifications for multi-port controllers?

> +		rk_udphy_u3_port_disable(udphy, true);
> +		udelay(10);
> +
>  		ret =3D rk_udphy_setup(udphy);
> -		if (ret)
> +		if (ret) {
> +			phy_notify_reset(udphy->phy_u3, PHY_NOTIFY_POST_RESET);
>  			return ret;
> +		}
> =20
>  		if (!udphy->hs && udphy->mode & UDPHY_MODE_USB)
>  			rk_udphy_u3_port_disable(udphy, false);
>  		udphy->phy_needs_reinit =3D false;
> +
> +		phy_notify_reset(udphy->phy_u3, PHY_NOTIFY_POST_RESET);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-rockchip-u=
sbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com?part=3D31

