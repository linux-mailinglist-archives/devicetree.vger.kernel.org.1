Return-Path: <devicetree+bounces-313894-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0JAXMMlkNWoavAYAu9opvQ
	(envelope-from <devicetree+bounces-313894-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:48:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 539356A6D32
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:48:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SNk9s79j;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313894-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-313894-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C8D6C300233E
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 15:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14D163B52E9;
	Fri, 19 Jun 2026 15:48:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0334039281D
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 15:48:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781884102; cv=none; b=oECfWpd0mrA7BQ+DYx+UOSf/+Vt2PPH6XS4wmcOdn8VkCfz7PCSyXW0E3DNQmfCfS1hOC/UGL0+Q4wjgxixIdYXyfNt2PXeqN6EAdGBcMkiZM/Y7c/3gmZ/aCoXIwv8bgTDABTUqzWp4RITck7nwYyuGtlFxHU2dHv1zylIIn9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781884102; c=relaxed/simple;
	bh=J2YOYaQfoOwiAFdc8BDJd0E45BSm6nPPau9N9UMWqhQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pSPt7ds6UzD1Qh/KhG4PsbhFkTPUnoJaxC7Qjrj5SHzCd8a1BK/V/sYu15U5vczANkCwD3Jax91KDxSRUGe96jUnAQTU/w9bMLKqD5LySVX21/gf2exr/+Agt8sy/PjiV7rHkZnIsxacOZw3Udq/PqlAl5QHUBtOCo/w9tg8INs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNk9s79j; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 516721F000E9;
	Fri, 19 Jun 2026 15:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781884100;
	bh=f04Pja++ZsjBRc7Zo73U54TtGChTprb8MYuL8CIOIkc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SNk9s79jZHYuab0498HgvQ2oqragvve7iHasVH2JeW6QmIkfkS7aX4TAAb8lAOS2F
	 NvlMdGmXnjv0EL2MenXuLRk8uC/1OCTSOQL9WR+wcDz/ro60RpHnTFAPeWL2ktLfti
	 Ds3bZY7zPSEWe/0o1zxnWVVgSocwxEo5nJ9Ghi3QrY8Pc7idlGzhJhfktnwTEH8vJX
	 n/SxmMXUE8BatD2hVZPthX/2Z3I1MO3vyYEpP8XQ2asqU9vHhvIXa0woMLEDpdXAHd
	 TEPEVYbRjFtOQNKqLGYo1nLY8fbOz/BWg17z2ZZZaKFqXBhEBgR1wk+PPnocHqy1sF
	 KP4vvFUrqkuBg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 11/23] phy: rockchip: usbdp: Support single-lane DP
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260619-rockchip-usbdp-cleanup-v6-11-3bb1f54b3f35@collabora.com>
References: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
 <20260619-rockchip-usbdp-cleanup-v6-11-3bb1f54b3f35@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 15:48:19 +0000
Message-Id: <20260619154820.516721F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313894-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,vger.kernel.org,linaro.org,gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 539356A6D32

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The devicetree bindings schema for 'rockchip,dp-lane-mux' was not u=
pdated to allow single-item arrays, which will cause dtbs_check validation =
errors when using the newly added single-lane DP feature.
--

commit 1f02bccf35aefcbe053f784a52330f63bbd49988
Author: Zhang Yubing <yubing.zhang@rock-chips.com>

phy: rockchip: usbdp: Support single-lane DP

This commit implements support for using a single DisplayPort lane in the
Rockchip USB/DP PHY driver. It updates the lane configuration and devicetree
parsing logic to handle single-lane setups.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 2ff05ef6eeacd..a87cb5c0596e7 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
[ ... ]
> @@ -897,7 +884,7 @@ static int rk_udphy_parse_lane_mux_data(struct rk_udp=
hy *udphy)
>  		return 0;
>  	}
> =20
> -	if (num_lanes !=3D 2 && num_lanes !=3D 4)
> +	if (num_lanes !=3D 1 && num_lanes !=3D 2 && num_lanes !=3D 4)
>  		return dev_err_probe(udphy->dev, -EINVAL,
>  				     "invalid number of lane mux\n");

[Severity: Low]
Does this change also require an update to the devicetree bindings schema?

It looks like Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
still restricts rockchip,dp-lane-mux to a minimum of 2 items:

  rockchip,dp-lane-mux:
    $ref: /schemas/types.yaml#/definitions/uint32-array
    minItems: 2
    maxItems: 4

Could this cause dtbs_check validation errors when valid device trees start
using the new 1-lane configuration?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260619-rockchip-u=
sbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com?part=3D11

