Return-Path: <devicetree+bounces-326536-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jPAVDoeeVmrC/AAAu9opvQ
	(envelope-from <devicetree+bounces-326536-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:39:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBBF758C31
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:39:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=AsVQMpei;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326536-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326536-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B020430530CB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 20:39:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3514839CCEE;
	Tue, 14 Jul 2026 20:39:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A9D3C8717
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 20:39:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784061571; cv=none; b=Q0oS8HnsKxSnaxOZ/bsjVh7kYfiqF0L2ldEWk00EPkT3yOkJUZcoRsoNxNpPecBYRfuE/WmoG7S8VrV9epJW8DP3rPFTpqgj44GyjmBOSvhkmabLTs3QseXhybCGR6v3ITFqqPBVDeDh3HhwwTmT9CaxpQvLWSUetWKSiwSy34k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784061571; c=relaxed/simple;
	bh=CJq9th8fCOu7Xs8KDMR+eNqWqtgN+pr5jXFlYUeoOR0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BYUOSrTOzsZA8ZxBmNdXOnWLNrLu1M0/Qrf8AgBCtWzXWcunQJ4u6H9Bg/UQcM46+jH1DJqrhN12hauzXYPCF5BhreqzE9SCL6MZhbPckk+CE8J+Wm9wEy1yQR4noe1nt15eFNQsS4UfGmJwOrk2Vn3GSlkZJw4SanhNGlHOx4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsVQMpei; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DA671F00A3A;
	Tue, 14 Jul 2026 20:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784061569;
	bh=pCp0jhOxizLfOHyjrRbKssw2hFbEiYsRp70qyWKbs0o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AsVQMpeiUvM8Dlfkn9c25Wja7u4V6VBYE0xRDe+ZW9EkR5jjF7ijw6pEEhZ6ipW77
	 B0ev5agyODZdtzBGlpzJHzWPsfE1QYxlPyYmft1YFzPFNOeYMbRsrDp05J/B7uKCXs
	 kdPKFNNZJ7jyv2CyeuAV9RFfpnMe8fHB9GaalnEHwbMDQpxsUc+M+KU4MN3ZQIa9g3
	 MQMHmZN7mzu4W+/qkA0XvtpuHxea/+DmFz3pqmYFwOu8SZiuQEHGXBnvrVyxECUP8u
	 2qQxnkLapbi4HJ7apaJePmupgU73sZmemlctpNtOKkt0QQ7j1iT/u/1EB73x9C24IT
	 hRaG5fpUOIIfQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 34/35] phy: rockchip: usbdp: Re-init PHY on mux
 change
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-34-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-34-6cb3e769d4c5@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 20:39:28 +0000
Message-Id: <20260714203929.0DA671F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-326536-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,lists.infradead.org,kernel.org,linaro.org,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7CBBF758C31

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Forcing a PHY re-initialization during a dynamic mode switch perma=
nently disables the DP lanes and leaves stale lane routing, breaking the DP=
 link.
--

--- Patch [34]: [PATCH v13 34/35] phy: rockchip: usbdp: Re-init PHY on mux =
change ---
commit 81cf1b50e4dbd6c92b948c08ec8401f3568e9429
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Re-init PHY on mux change

Ensure that the right part of the PHY are powered up when the mode changes.
This ensures the PHY is re-initialized during cable orientation changes or
switching from DP-only into a mode with USB support.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index e597cdfe8d790..87d6df6821760 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1392,7 +1392,7 @@ static int rk_udphy_typec_mux_set(struct typec_mux_=
dev *mux,
> =20
>  	rk_udphy_set_typec_state(udphy, state->mode);
> =20
> -	return 0;
> +	return rk_udphy_update_power_state(udphy);

[Severity: High]
When a dynamic mode switch happens (such as connecting a USB 3 device to an
active Type-C DP dock), rk_udphy_update_power_state() will call
rk_udphy_init():

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_update_power_state() {
	...
	} else {
		/* Mode change =3D> re-init */
		ret =3D rk_udphy_init(udphy);
	...
}

rk_udphy_init() then explicitly clears CMN_DP_LANE_EN_ALL, physically disab=
ling
the DP lanes:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_init() {
	...
	regmap_update_bits(udphy->pma_regmap, CMN_LANE_MUX_AND_EN_OFFSET,
			   CMN_DP_LANE_MUX_ALL | CMN_DP_LANE_EN_ALL,
			   ...
			   FIELD_PREP(CMN_DP_LANE_EN_ALL, 0));
	...
}

Since rk_udphy_update_power_state() does not restore the lane configuration=
 and
the DRM driver does not call phy_power_on() again (it only retrains the link
via phy_configure()), does this permanently disable the DP lanes and break =
the
DP link during a mode switch?

>  }
> =20
>  static void rk_udphy_typec_mux_unregister(void *data)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-rockchip-u=
sbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com?part=3D34

