Return-Path: <devicetree+bounces-320399-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Pmq6NLVMSGrEogAAu9opvQ
	(envelope-from <devicetree+bounces-320399-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 01:58:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC907062ED
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 01:58:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=R6h7IJwX;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320399-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-320399-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EDD56300FC8D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 23:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1612C3314C4;
	Fri,  3 Jul 2026 23:58:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8B22EEE97
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 23:58:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783123121; cv=none; b=jz53LRRwb1ZtvADRg0/mMsf5jDcwY3uYazSAQiTdLcuulC5/M7NrswbqpdcPxgT67L9NCoe3Aa5TOw5Z2Zt7iuEGtbJ7kyOzE9plbR59c62SHWuvwv7vdOdeHxlkLMYStcxYnWpmg5rexUaejjfbVh3RhbGoRAd7uFtdyMEjw44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783123121; c=relaxed/simple;
	bh=ZwkT63XaU1OapOIFMH7keUsb3qRdNriv51SLQV8iz1w=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Wdy/Q2iti1aAabMV+XF6WFnQVJuKxvhHSCdjULlSfbZi+WSPCCsn5+9g/VVqZSVsHjBGNuJVZNuyclPhFh9xsb3D1GGJBPQBpLBTU4i75HGYPqYj3DzfCSOO8W3rIaRLotJMTjINjB9Sk/UnpTadx0+tzhCxjjCheLa6+IRo7sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6h7IJwX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF30B1F000E9;
	Fri,  3 Jul 2026 23:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783123119;
	bh=mj8IHoa8G5A+dFcs3Q1Lz+9JAmCeDfdLd+QU4fe96DY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=R6h7IJwXgepfEYjHB62agjDJ3FnGEmTnUENtCveCpQSzIk3Yuz0WmHG5zGGsL3NLP
	 63YEo3uPLLs1Ca5iSXifEkZPwC908Pf6m1nJZhGotal3Etnz/l4GIwv85sA9e+j0sF
	 XU1JdpQgyLEUlqeai3vfyxOwJOSQ5yOWWFacou+TtTUtKGola69gu+/4jRB6Osp4wn
	 vVem8pmgQ0wmZ7WTvv+6PQ+ztiKB2tc1De9qUA45oIn0v8SwLXoS99ac3PCQ29vpQ8
	 BOvXY2Sbrn3xKGMRrQYSxOMarW2yhQE810AHn5j3wQyjA3RDXxnNSZkKfxTtUSIH6F
	 dJL1XMU2aproA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 34/36] phy: rockchip: usbdp: Simplify power state
 handling
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260703-rockchip-usbdp-cleanup-v10-34-a392711ca8a9@collabora.com>
References: <20260703-rockchip-usbdp-cleanup-v10-0-a392711ca8a9@collabora.com>
 <20260703-rockchip-usbdp-cleanup-v10-34-a392711ca8a9@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 23:58:38 +0000
Message-Id: <20260703235838.EF30B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320399-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:olteanv@gmail.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,collabora.com:email,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCC907062ED

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing USB3 port disable in high-speed mode causes DWC3 SErrors o=
n probe.
--

commit e0219fd5f4d784e78ff969af266e10196367be69
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Simplify power state handling

This commit simplifies power state handling by introducing a sw_mode field =
in
addition to the hw_mode field. This allows the PHY to track hardware-suppor=
ted
modes, software-requested modes, and the actual hardware status.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index e2cd72643a7d7..ca9418fab8f3a 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c

[ ... ]

> @@ -1288,16 +1311,22 @@ static const struct phy_ops rk_udphy_dp_phy_ops =
=3D {
>  static int rk_udphy_usb3_phy_init(struct phy *phy)
>  {
>  	struct rk_udphy *udphy =3D phy_get_drvdata(phy);
> +	int ret;
> =20
>  	guard(mutex)(&udphy->mutex);
> =20
> -	/* DP only or high-speed, disable U3 port */
> -	if (!(udphy->hw_mode & UDPHY_MODE_USB) || udphy->hs) {
> -		rk_udphy_u3_port_disable(udphy, true);
> +	if (udphy->hs)
>  		return 0;

[Severity: High]
Does returning early here without disabling the U3 port cause DWC3 SErrors
during probe in high-speed mode?

Previously, this path explicitly called rk_udphy_u3_port_disable(udphy, tru=
e)
before returning. By returning early now, we completely bypass
rk_udphy_update_power_state(), which leaves the U3 port enabled. When the
DWC3 controller is probed, this can leave it clocked by the unpowered PHY
instead of the safe UTMI fallback clock, resulting in an SError.

> -	}
> =20
> -	return rk_udphy_power_on(udphy, UDPHY_MODE_USB);
> +	udphy->sw_mode |=3D UDPHY_MODE_USB;
> +
> +	ret =3D rk_udphy_update_power_state(udphy);

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-rockchip-u=
sbdp-cleanup-v10-0-a392711ca8a9@collabora.com?part=3D34

