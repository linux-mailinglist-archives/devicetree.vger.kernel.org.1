Return-Path: <devicetree+bounces-324065-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hkn9GEv1T2qBrAIAu9opvQ
	(envelope-from <devicetree+bounces-324065-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:23:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B83A9734EB5
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:23:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=H2kw4e13;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324065-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324065-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 95473301A154
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 19:23:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EA0533ADB9;
	Thu,  9 Jul 2026 19:23:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DAF329BDB5
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 19:23:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783625016; cv=none; b=Iexv9YoU9+HyWJxuRCbuKHtURXDgjB1kKnXRNkeehjVyvIySPU2uW1AF/TTLS5hsaiKR7zw+U40fEzH/g07nXdEcoPxqQE0A9wtcatAEPyyd9uSTOtu0qiLB6nv6xD8wOxSoiBE4FsEp14880LdU1KGn3pzWuHG39v2triy+1Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783625016; c=relaxed/simple;
	bh=ILEvhRVemoJeKbnZIle7Hboif1/aXhFmS2Ta5NcNatY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oIQyqh4oWLPGV2KV58a2leje1Y4dm9iko8OTdfd6AWkOHSYCH9c6/aAba3wOo0SY2OmpUDRvuJCxZoN7Aq6fTleWLXlRg5FP+4elp7clpG4QzZ2c4J4JCvsfwV0wBYNo6tYEImPI4YdCpSAJCXyEgTABRws8/z9H0cEJOIlxNV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2kw4e13; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D07301F000E9;
	Thu,  9 Jul 2026 19:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783625015;
	bh=ORQM2+ASiYeX/Rfjm2A9eeKNU3LG8Q6cdF2YpPHQtp8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=H2kw4e130BSP2mz0038CobXqYFHqdALVDJdHJpyycWOqNxYmCAtRgAhHXnH5KHS+n
	 NZhwYDd8cbGYtSH1TozfZxvMs0ku5DXR5AiMW87rxIB6rGtvI7EWy+YAoy/ZDsoKQR
	 tUnlYATib8Q/8YUMVNdaJOandQ6JZ8pncyzSutKJGbumasgVmnIZa1mminxtIB9VhY
	 wKXQBv/2n3Z0IyKMFOo6QDUxcqGduz5JkO4cJTAFcVWcMoPSMyCToVQHvN0bzAO90L
	 xjPdct2PK5P7ncWWZsgqoxwT6/ZcKqBKB+mSyPQoIC0jO5TFfOrhUE47gdJyz8M6bD
	 Bo6jehlQdbxRw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 17/36] phy: rockchip: usbdp: Drop DP HPD handling
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-17-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-17-a149ac60f76c@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 19:23:34 +0000
Message-Id: <20260709192334.D07301F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-324065-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:conor+dt@kernel.org,m:linux-phy@lists.infradead.org,m:olteanv@gmail.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,gmail.com,linaro.org,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,collabora.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B83A9734EB5

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The typec_mux_set callback explicitly ignores base Type-C states (=
TYPEC_STATE_SAFE and TYPEC_STATE_USB), preventing the PHY from reverting to=
 standard USB mode when exiting DP AltMode.
--

--- Patch [17]: [PATCH v11 17/36] phy: rockchip: usbdp: Drop DP HPD handlin=
g ---
commit 4dd3353e7fa8e127b70281da8c2e85645bfbef65
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Drop DP HPD handling

This commit removes the HPD (Hot Plug Detect) handling logic from the
USBDP PHY driver, delegating it to the displayport controller. It also
simplifies the typec_mux_set callback by dropping AltMode specific event
handling and adding an early return for non-DP events.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 8ac6a83b0b2a9..24108816e3b95 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c

[ ... ]

> @@ -1309,6 +1267,14 @@ static int rk_udphy_typec_mux_set(struct typec_mux=
_dev *mux,
>  	struct rk_udphy *udphy =3D typec_mux_get_drvdata(mux);
>  	u8 mode;
> =20
> +	/*
> +	 * Ignore mux events not involving DP AltMode, because
> +	 * the mode field is being reused, e.g. state->mode =3D=3D 4
> +	 * could be either TYPEC_MODE_USB4 or TYPEC_DP_STATE_C.
> +	 */
> +	if (!state->alt || state->alt->svid !=3D USB_TYPEC_DP_SID)
> +		return 0;

[Severity: High]
This isn't a bug introduced by this patch, but does this early return
prevent the PHY from reverting to standard USB mode when exiting DP AltMode?

When a user dynamically disables DP AltMode or the DP sink disconnects,
the Type-C core invokes typec_mux_set with state->mode =3D TYPEC_STATE_SAFE
and state->alt =3D NULL.

If this returns 0 immediately because state->alt is NULL, udphy->mode
remains stuck at UDPHY_MODE_DP. Later, rk_udphy_usb3_phy_init() will see
that the USB mode is not set (!(udphy->mode & UDPHY_MODE_USB)) and
will actively disable the USB3 port.

Should this condition be adjusted to only filter modal states, perhaps by
checking if state->mode >=3D TYPEC_STATE_MODAL before filtering based on
the AltMode SVID?

> +
>  	mutex_lock(&udphy->mutex);

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-rockchip-u=
sbdp-cleanup-v11-0-a149ac60f76c@collabora.com?part=3D17

