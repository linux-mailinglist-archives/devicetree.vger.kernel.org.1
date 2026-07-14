Return-Path: <devicetree+bounces-326357-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VkvuE/1mVmqQ4wAAu9opvQ
	(envelope-from <devicetree+bounces-326357-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 18:42:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFA675705B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 18:42:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Jz+9Czek;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326357-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326357-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C917230151B8
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 16:42:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 730E64D8DB0;
	Tue, 14 Jul 2026 16:42:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66380445AE3;
	Tue, 14 Jul 2026 16:42:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784047329; cv=none; b=LuA4GEd0kZNgl+2jZcaXa1CRLyF8QkSkvVFaSKxjK2sgDJQXCk0rgUZkPzQEFBt01y87CyJAH8FNmH6pkDf2QOQIibaTACDyw2QPQwjAc0DM5kuc2EEsXwIpFpiaaHg4jj0EUm/QlYeiniHIC4rMMvL9MVneB+dkFzYzf9+nyCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784047329; c=relaxed/simple;
	bh=V8dKK8Kp4zYr4Pjk1yLu1gObmAWzhesd7BvCs8Y97r4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EdsZ0QwfOj3j/COpPKP4iVFUgDc/SGpojIaLOWV0ndFW3WkEY5vnwRVHa5mTu8mjdIMNt02M2SJgohbc/N63mRpNDT35D9eUYQlJ7ZVLUDSawmLSQKbKM9A5FZRNnx33GXb4pmZuQJBN/zoTb7J73AoyHsqrbIo9vGOKuFnxj4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jz+9Czek; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1ED61F000E9;
	Tue, 14 Jul 2026 16:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784047327;
	bh=k61jezHC3k/RbNT9F3tzR3+tjmPaHQC3k1irVJlQASY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Jz+9CzekUY1eftq3OxsUOGnOISpZqtktT0tAgq7mvu+rrHDWAkEdGbOVs0K8Gg3QC
	 b5aaXIH/ZMAaxTXSgPmRJqRvDW2TKxz1OXFgI66JwZPhI7E4nr+T0JEfJjGiT5P27W
	 nJImc7zIO3QScevDh3Bkkz17U2GppED6C15BmEe325W5AnfsRjWNhz8FlZoH8eFoH8
	 03LENgZV+8yKzGCIQtxrpu+0sH4uPslR8zAbEOOUAW1aDopUrBInyka1ERI8Z621Wk
	 Pi91ocPthGdpsrOaWaL12/IlkoTc6fJOtnfw8o0xojHG/3Jmuv8bCKbkudvZPuJf3U
	 DwGKZI6sr/25Q==
Date: Tue, 14 Jul 2026 22:12:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, neil.armstrong@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de, matthias.bgg@gmail.com,
	justin.yeh@mediatek.com, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v3 2/2] phy: mediatek: Add support for MT8196 MIPI DSI PHY
Message-ID: <alZm25Ro_WdKigPd@vaman>
References: <20260713103805.23030-1-angelogioacchino.delregno@collabora.com>
 <20260713103805.23030-3-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260713103805.23030-3-angelogioacchino.delregno@collabora.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:chunfeng.yun@mediatek.com,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:matthias.bgg@gmail.com,m:justin.yeh@mediatek.com,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326357-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[vkoul@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vkoul@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[mediatek.com,linaro.org,kernel.org,pengutronix.de,gmail.com,lists.infradead.org,vger.kernel.org,lists.freedesktop.org,collabora.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3FFA675705B

On 13-07-26, 12:38, AngeloGioacchino Del Regno wrote:
> Add support for the MIPI DSI PHY found in the MediaTek MT8196 SoC
> and its variants.
> This PHY has a different register layout and provides support for
> more hardware features compared to the previous generation.
> 
> This initial driver only adds support for basic functionality that
> is necessary to drive MIPI DSI displays as a D-PHY.
> 
> Feature additions like lane-swap, DPHY/CPHY switching, dual-port,
> and others, may be done in the future.

This seems to fail to build

https://patchwork.kernel.org/project/linux-phy/patch/20260713103805.23030-2-angelogioacchino.delregno@collabora.com/

-- 
~Vinod

