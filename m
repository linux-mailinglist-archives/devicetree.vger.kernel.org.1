Return-Path: <devicetree+bounces-312066-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wvolOmcjMGrnOgUAu9opvQ
	(envelope-from <devicetree+bounces-312066-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:08:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EAC6881EC
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:08:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b=H2pYc5H4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312066-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312066-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=rock-chips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BECC33084322
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 16:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 704B640759D;
	Mon, 15 Jun 2026 16:04:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973189.qiye.163.com (mail-m1973189.qiye.163.com [220.197.31.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467F5407CCB
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 16:04:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781539480; cv=none; b=OxXcPB7H41iRnehIdXVNDXb/+kP1kcxTfHeIq4VZG8p0H6ZrlCyx2eSfM1sSKcrBA9IREgqLVCaZ27NrTE17iMhSy32I8TX/B+09yQp+u51/5rcj0ReekTiw18s/pQcn3KpfhklAgt9v3e6FS6IQ3KbiY+tvvGf9X/yTePNPNOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781539480; c=relaxed/simple;
	bh=xCMEoerQr6qOpSceVTrX07b3WN8wSqvO5OwJkSDd64Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LJaV56PIgbigO/w5HR7MEh5V6XJYSFz6ZsVRTzisc7xkNUDuSH4tJ8oI6UfyqwywNIzFEbGiLTmCVvzpR/6cDv9fONnR+IF3hIx9oDAFJbloOxU8uU1Ibcy2/66DkhJGZwE43m8yBe25Jee31x8ls7Wnr6gLxAGMKX1tZriyaNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=H2pYc5H4; arc=none smtp.client-ip=220.197.31.89
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 427046fb6;
	Mon, 15 Jun 2026 20:34:58 +0800 (GMT+08:00)
Message-ID: <8da02c6f-030d-4033-935b-a44c777a14d2@rock-chips.com>
Date: Mon, 15 Jun 2026 20:34:58 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/4] Add eDP lane mapping support
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, nicolas.frattaroli@collabora.com,
 cristian.ciocaltea@collabora.com, sebastian.reichel@collabora.com,
 dmitry.baryshkov@oss.qualcomm.com, luca.ceresoli@bootlin.com,
 dianders@chromium.org, m.szyprowski@samsung.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260604085220.2862986-1-damon.ding@rock-chips.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20260604085220.2862986-1-damon.ding@rock-chips.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9ecb4725bc03a8kunmad12dd9f4325
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZShkaVhkYTxoaGEsYQhpIGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=H2pYc5H4U519kPcqsLXiGZSqfal7roIZHKjog0oUnFm77yfp9eZTtdfOGTPLM5/Lcsv+XL4jWuNSRzLTovnS6ukbqMHh0l4IBojJTjDT+R0HGDUMdDikxtVT4j36p8sRGDPrJFuqrwx4ZAj5tX2uj6ZkKN0BqpTpcTwOo+O86QA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=qY5kOzqcJfORXQNkdCMcMwTxAyKHZxf9POk2wrTq/zs=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312066-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:nicolas.frattaroli@collabora.com,m:cristian.ciocaltea@collabora.com,m:sebastian.reichel@collabora.com,m:dmitry.baryshkov@oss.qualcomm.com,m:luca.ceresoli@bootlin.com,m:dianders@chromium.org,m:m.szyprowski@samsung.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,rock-chips.com:dkim,rock-chips.com:mid,rock-chips.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 89EAC6881EC

Hi all,

Gentle ping on this patch series.

Best regards,
Damon

On 6/4/2026 4:52 PM, Damon Ding wrote:
> This series adds configurable eDP physical lane mapping support via
> device tree data-lanes property.
> 
> Lane mapping is mainly used for below scenarios:
> 1. Correct PCB lane swap and differential line routing crossover
>     without hardware changes;
> 2. Adapt mismatched lane pin definitions between SoC and eDP panel;
> 3. Support multiple panel hardware variants on the same board
>     by configuring data-lanes in device tree only.
> 
> The series includes driver implementation and device tree binding
> updates to support custom lane mapping configuration from endpoint
> node, and keeps default linear lane order if no configuration is given.
> 
> Patch 1: Add endpoint data-lanes property to analogix-dp binding
> Patch 2: Add DRM DP helper API to validate DP lane counts
> Patch 3: Add validation for samsung,lane-count property as preparation
> Patch 4: Implement lane mapping in analogix_dp driver
> 
> Damon Ding (4):
>    dt-bindings: display: bridge: analogix-dp: Add data-lanes support for
>      endpoint
>    drm/dp: Add helper to validate DP lane counts
>    drm/bridge: analogix_dp: Add validation for samsung,lane-count
>      property
>    drm/bridge: analogix_dp: Add support for optional data-lanes mapping
> 
>   .../bindings/display/bridge/analogix,dp.yaml  | 19 ++++--
>   .../rockchip/rockchip,analogix-dp.yaml        |  1 +
>   .../drm/bridge/analogix/analogix_dp_core.c    | 64 ++++++++++++++++++-
>   .../drm/bridge/analogix/analogix_dp_core.h    |  4 +-
>   .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 15 ++---
>   .../gpu/drm/bridge/analogix/analogix_dp_reg.h |  4 ++
>   include/drm/display/drm_dp_helper.h           |  6 ++
>   7 files changed, 97 insertions(+), 16 deletions(-)
> 
> ---
> 
> Changes in v2:
> - Add lane mapping application scenarios in commit message.
> - Remove redundant deprecated property 'data-lanes' for eDP node.
> - Update port@1 $ref to /schemas/graph.yaml#/$defs/port-base.
> 
> Changes in v3:
> - Squash [PATCH v2 2/3] into [PATCH v2 1/3].
> - Add unevaluatedProperties: false to both the port@1 and endpoint
>    nodes.
> 
> Changes in v4:
> - Add validation for samsung,lane-count property as preparation.
> 
> Changes in v5:
> - Add DRM DP helper API to validate DP lane counts.
> - Apply DRM DP helper API to check the validity of samsung,lane-count
>    property.
> - Add Acked-by and Reviewed-by tags.
> 


