Return-Path: <devicetree+bounces-324666-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NE7cH19iUWqCDgMAu9opvQ
	(envelope-from <devicetree+bounces-324666-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:21:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA08673EC39
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:21:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CLbyAnjT;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324666-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324666-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DBBDD3009B37
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 21:18:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F68F3B19D2;
	Fri, 10 Jul 2026 21:18:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE9A38E8A3
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 21:18:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783718324; cv=none; b=eBe4zo2W0lau9z8AW8/QCCWPNHFZybkVyPEIVSCyKTZyQpj9/xsKm9iCAgbmrB/E65iiDSO5xYmbmfnMzhSDkwwLrWo1jyQP7YDhjMoNjF/LtW05TXks3t/+emi+p8edyyvDPxZrbVxuiHlm11L+G1iWjbVCEq6hmhjoGgfUQVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783718324; c=relaxed/simple;
	bh=eA3chI25c1R7+n7XsMJA/dsHhSiD0yqaX4fIXCS55Ys=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sgFCAclWlNnHIc9IXexKgPQgvTh48saiJ276yX4lE+1osGzbFxqnzI9wSpipkPg+YpxMit5Bt1Hqv02NRHkPWMzcrnhuc1KzWssGpIu8RlcFC7O3IilB24Fi8iMeBy4uz7ysTUQ3/fLNbgBzjhvo2SFCRBQvB1fT9IZiquwWDOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLbyAnjT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B24721F000E9;
	Fri, 10 Jul 2026 21:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718323;
	bh=jt+Fd9u0Tn4LsSFmXs3cDAG8+/bQsqEi3AqJQ8VflT4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CLbyAnjTjFbYGHVTLwSzmdhVKOHxNh/vkRQc1UEC9dAGBPZJRueFtXNSgbNEDCDLr
	 FyKCRGcodbbGymCdQ+Z3qHzW49WIUJ61oQztPf5AvLdhxvIUlykM9dBS0+x8VvBC8T
	 0XkzFrcoocEREEVSOZHTwGqcbCMkImhtf3dlcwurQbV3a+YOXbeF/yhlqVLORW4Bjk
	 MKPfM1QLPH/8e2URwf0ic1ZgD/pYgtmEde6LDAt9RtmZcBMhmjgWqqFQw0qptVCQjY
	 dPihQFAZYg1yncE3gIex5L0URyDm9cyebt1XpPAxlcoriK7pS9eMDAhyv2T6drgPFt
	 O3q5edR458IoQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 22/36] phy: rockchip: usbdp: Use guard functions for
 mutex
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-22-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-22-8b41a9a9bef0@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 21:18:42 +0000
Message-Id: <20260710211842.B24721F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-324666-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:linux-phy@lists.infradead.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,linaro.org,kernel.org,vger.kernel.org,gmail.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,collabora.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CA08673EC39

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] This problem wasn't introduced by this patch, but `rk_udphy_dp_phy=
_configure` accesses shared PHY state without holding `udphy->mutex`.
--

--- Patch [22]: [PATCH v12 22/36] phy: rockchip: usbdp: Use guard functions=
 for mutex ---
commit f4715c1e8ea1ff2794633378980dbaf55d276684
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Use guard functions for mutex

Convert the driver to use guard functions for mutex handling as
a small cleanup. There is a small functional change in the DP PHY
power up function, which no longer sleeps if the internal powerup
code returns an error.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 0399cbf96e195..8c165bcab7968 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c

[ ... ]

> @@ -1255,35 +1254,30 @@ static const struct phy_ops rk_udphy_dp_phy_ops =
=3D {
>  static int rk_udphy_usb3_phy_init(struct phy *phy)
>  {

[Severity: High]
This isn't a bug introduced by this patch, but rk_udphy_dp_phy_configure()
accesses shared PHY state without holding udphy->mutex.

Could this create a data race with Type-C orientation changes?

The function iterates over the udphy->dp_lane_sel array and writes to the
hardware PHY registers based on the mapped lanes:

    for (i =3D 0; i < udphy->lanes; i++) {
        lane =3D udphy->dp_lane_sel[i];
        switch (udphy->link_rate) {
        ...

Because phy_configure is called by the DRM bridge without udphy->mutex held,
and concurrent Type-C orientation switch events handled in
rk_udphy_orien_sw_set() hold udphy->mutex while modifying udphy->dp_lane_sel
and udphy->lane_mux_sel, they might run at the same time.

If a cable is flipped exactly during a display bring-up, could this cause a
torn read that applies settings to the same lane twice while omitting other=
s,
leaving the hardware incorrectly configured and DP alt mode output broken?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-rockchip-u=
sbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com?part=3D22

