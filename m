Return-Path: <devicetree+bounces-326498-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fYAlKm2WVmqo+QAAu9opvQ
	(envelope-from <devicetree+bounces-326498-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:05:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F13C7589A3
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:05:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eEwdYbad;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326498-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326498-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A1C7C306A63B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 20:03:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51AAF41D656;
	Tue, 14 Jul 2026 20:03:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E1C41D62B
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 20:03:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784059404; cv=none; b=FEM5f5BSXRV9LXBOQf5AmFF9mB/STdoNwAGV+DUeLB4Nvzfc6U26zn4c564EJveBi2CwTDjRr2t6z6ArPgwF2AXANpKWZ6UOgh5azYTNNPVmQtNSRF8EgzpilP+V9jJmI4GicAIguWWA9BwwZ+1N6ThPoGILRfv2dy63/OTBatg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784059404; c=relaxed/simple;
	bh=P14ODxjxeEtHBxWO2K/T5Qc83nZZzBSCJT/AJEo9Bxc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Li6FF62ngeCcLlHPrw3Odnp1Qml1PhUkICmuWpTBJ3cRylZcTTzUuVlZZJYyVSlT0zQEWhVmVbfYlYKaB2AZ9gpDlX2YVWpBVwjU/RVmamPPseZ1L3o3euMEt/+B2r495igElUfYwJsRbVai6b1O1YSURZCoOvmDM84T6I3oLJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEwdYbad; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED21D1F000E9;
	Tue, 14 Jul 2026 20:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784059397;
	bh=HuvzlSxNN3sM9BWKm26GO4ZRA8MNhWUBq1UfGR4Rggo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eEwdYbadBTmQoFSSJzCThTTv8ZC7DgzWsVDe/wE13qWIYJCubVkQXHbxAwQXgs72g
	 aZwF8PGTmpmvQbRqQ1uHmH1gHA/Hcy89TTY4VfoFknjiPuR8LatVwRyRxpAg+sXuSX
	 /fQhYX1eZ0VnWehC6oTQi0nR+QS7h8v7AwMszFq7h5ZDMdVsd0P67diiXCWRmwETqi
	 guDSp3X1Nhlg3+UTWwkZf56gnK0igSun9raWwpVVYfCT4LusIxn2nPzehQWcwSu115
	 V6aaY1x4FjzBHb3qjOeU/pWYnVSpYY02IDV5rXrW3mO/yMg1FbXiQ+BU0PRQMpvosP
	 FyUVGUR2S4+qg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 20/35] phy: rockchip: usbdp: Factor out lane_mux_sel
 setup
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-20-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-20-6cb3e769d4c5@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 20:03:16 +0000
Message-Id: <20260714200316.ED21D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326498-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:olteanv@gmail.com,m:robh@kernel.org,m:linux-phy@lists.infradead.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,linaro.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0F13C7589A3

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Unclocked MMIO access in DP PHY power path causes synchronous exte=
rnal abort (system hang).
--

--- Patch [20]: [PATCH v13 20/35] phy: rockchip: usbdp: Factor out lane_mux=
_sel setup ---
commit 47e65509a216979a5784ba5eae3623e6393b5bcb
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Factor out lane_mux_sel setup

Avoid describing the usb and dp lane mux setup logic twice by introducing
a helper function to reduce code duplication.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 4b454798c4ed4..4e54020d17551 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -582,6 +582,42 @@ static void rk_udphy_mode_set(struct rk_udphy *udphy=
, u8 mode)
>  	udphy->mode =3D mode;
>  }
> =20
> +static void rk_udphy_set_typec_state(struct rk_udphy *udphy, unsigned lo=
ng state)
> +{
> +	u8 mode;

[ ... ]

While reviewing this patch, I noticed a pre-existing issue in the same file:

>  static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
>  {
>  	int ret;
> =20
>  	if (!(udphy->mode & mode)) {
>  		dev_info(udphy->dev, "mode 0x%02x is not support\n", mode);
>  		return 0;
>  	}

[Severity: High]
This is a pre-existing issue, but returning 0 here instead of an error code
can lead to unclocked mmio accesses later on.

If the display stack calls phy_power_on() for the dp phy while the type-c
port is disconnected or in a usb-only mode, rk_udphy_power_on() returns 0.

This false success propagates to rk_udphy_dp_phy_power_on():

rk_udphy_dp_phy_power_on() {
    ...
    ret =3D rk_udphy_power_on(udphy, UDPHY_MODE_DP);
    if (ret)
        goto unlock;

    rk_udphy_dp_lane_enable(udphy, udphy->dp_lanes);
    ...
}

Because ret is 0, does this code then call rk_udphy_dp_lane_enable() without
the clocks being enabled? Accessing unclocked device registers on arm
platforms can cause a fatal bus hang.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-rockchip-u=
sbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com?part=3D20

