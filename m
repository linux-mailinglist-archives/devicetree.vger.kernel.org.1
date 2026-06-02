Return-Path: <devicetree+bounces-305822-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3k4GB3U5H2qpiwAAu9opvQ
	(envelope-from <devicetree+bounces-305822-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 22:13:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AF4631AD3
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 22:13:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=vcSsT6g8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305822-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305822-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A7B8300951B
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 20:06:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3244E2741A0;
	Tue,  2 Jun 2026 20:06:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA54E2F12DA;
	Tue,  2 Jun 2026 20:06:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780430792; cv=none; b=s3gMRRrmzpKQh/Xm2VS+/jF914ilPUgF45h9JfGk+taBeySP4cVuiaoi4COYZFN1taojElMPbisbxhD9aVTmYXcGMKJnf94a5YXiYNGZb6ETlKcyYC80VDW2XxiReslk1kpym8QyeJFqf1kriAWu7WbYO6sOO3UfZlrTwelAWQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780430792; c=relaxed/simple;
	bh=Jq+Rh5AzQtmnHI/dmMt68k9m9uly8jea4Z9HuVwtKyc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=g6OoE+0mDVrxWPCXpF0BXNAjXN5F0bM+3RJJvZMPWy/AvBAGj9DAQOc3e+xfW++v/fw2JH5v0O7MjeL+Sank+qZGJLBFE/WExWDh4Yk9wZjHxuyM4mLoDdXF857vWP1esoVjyTQfB3XLSvUGHxlqsQ7EM4fnCXiGCLELiTz2Z/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=vcSsT6g8; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=QfQEDsKS6dbk9DnS1YH4HjGcuydsJ8S8waoFaz8Seoo=; b=vcSsT6g8OzYRFLBCXEJEhR7foL
	1i7AkqP37LfhlTv9QJjNw10ZkLxx9AEzzVCWAjjJSo4fC5dmoLprmzkiZfxRBu1raXdx/oNZRWMYn
	vboPVBmIBMBxVSSNKjE/swxIOubGSQNQ3lvXIGiOHbDeMNP+MMm1cTso/FWsAv1x3974hP8mvaioX
	G0Z4guQYEJmBwM2vRtOQVYJBm3ENlkWwEiILmauiAs/phEFE5CDva7dHStToK2azk5QAcHuqX8hVe
	VAzQH0CB/TEOehrOeFt8YEaXzBn3D552j9tzkKFzfAGwBf2mUMew2aQhxN0tFsyswCeJV+MzKuTEH
	BBxFXN1w==;
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	nicolas.frattaroli@collabora.com,
	cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com,
	dmitry.baryshkov@oss.qualcomm.com,
	luca.ceresoli@bootlin.com,
	dianders@chromium.org,
	m.szyprowski@samsung.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v10 00/11] Add eDP support for RK3576
Date: Tue,  2 Jun 2026 22:05:40 +0200
Message-ID: <178043072949.664369.15843941283523280742.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601065100.1103873-1-damon.ding@rock-chips.com>
References: <20260601065100.1103873-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:hjc@rock-chips.com,m:andy.yan@rock-chips.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:damon.ding@rock-chips.com,m:heiko@sntech.de,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:nicolas.frattaroli@collabora.com,m:cristian.ciocaltea@collabora.com,m:sebastian.reichel@collabora.com,m:dmitry.baryshkov@oss.qualcomm.com,m:luca.ceresoli@bootlin.com,m:dianders@chromium.org,m:m.szyprowski@samsung.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[rock-chips.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[30];
	TAGGED_FROM(0.00)[bounces-305822-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[sntech.de,ideasonboard.com,kwiboo.se,gmail.com,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 60AF4631AD3


On Mon, 01 Jun 2026 14:50:49 +0800, Damon Ding wrote:
> Patch 1-5 are to add missing clock "hclk" for RK3588 eDP nodes.
> Patch 6 is to use automatic cleanup to fix OF node reference leak
>         reported by Sashiko.
> Patch 7-8 are to add the RK3576 eDP node.
> Patch 9-11 are to support the RK3576 Analogix DP controller.
> 
> Damon Ding (11):
>   dt-bindings: display: rockchip: analogix-dp: Fix hclk as third clock
>     for RK3588
>   dt-bindings: display: rockchip: analogix-dp: Add per-clock
>     descriptions
>   arm64: dts: rockchip: Add missing hclk for RK3588 eDP0
>   arm64: dts: rockchip: Add missing hclk for RK3588 eDP1
>   drm/rockchip: analogix_dp: Enable hclk for RK3588
>   drm/rockchip: analogix_dp: Fix OF node reference leak via auto cleanup
>   dt-bindings: display: rockchip: analogix-dp: Add support for RK3576
>   arm64: dts: rockchip: Add eDP node for RK3576
>   drm/bridge: analogix_dp: Rename and simplify is_rockchip()
>   drm/bridge: analogix_dp: Add support for RK3576
>   drm/rockchip: analogix_dp: Add support for RK3576
> 
> [...]

Applied, thanks!

[01/11] dt-bindings: display: rockchip: analogix-dp: Fix hclk as third clock for RK3588
        commit: 826ab13cf73e7bd5b268085c9594850f6a7fc7fd
[02/11] dt-bindings: display: rockchip: analogix-dp: Add per-clock descriptions
        commit: 38f41d4e704c2a9bfc025bb17594d53be010a629
[05/11] drm/rockchip: analogix_dp: Enable hclk for RK3588
        commit: 104f20616d72825fdcf56cfdc5f89f4e96fd8dbe
[06/11] drm/rockchip: analogix_dp: Fix OF node reference leak via auto cleanup
        commit: 87e060521371257ddbb77964b66e60d80afcc7b2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

