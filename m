Return-Path: <devicetree+bounces-326949-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4nx4JTd7V2opPAEAu9opvQ
	(envelope-from <devicetree+bounces-326949-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:21:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE30575E093
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:21:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=fATq8bCN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326949-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326949-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 227F13125581
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E464644CAF8;
	Wed, 15 Jul 2026 12:16:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC8845BD78
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:16:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784117786; cv=none; b=sb3WjDVW6yUE/oat4rah0kw/GKyKGIXJs/9D4PGzpE+Q5TD3G7ryoRZ183A6thvzy7tTUUKzN2NhaB0yk6Mq1GtrUnvqgl94xjpXzVlv8wQBKd72Xkv+agU0ot48n69ttjulfdn9lq7p4Q5ZQUyZqzBrcsyxeMD/b6iYATD9kZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784117786; c=relaxed/simple;
	bh=gbxZ9BU5fd7XTd7D6t33pASU9xRN7Sgv63vTgKZrKdc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eELbLkyyg3IpIlry3OFyckgC45JO5Z7JnpaV48lQZ8Tp4HhJfxV+OiggeXCKhYX9gTDryBaQEKkoDsiEwp0oyw3Sai6UbyyhVXLumVBcYaSV3FrRyMnm6//qWRKX5dZSWa5u3Qp+xE/iitjxrdsnYfk0lzOVCVBdF5LLbazewqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=fATq8bCN; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784117781;
	bh=gbxZ9BU5fd7XTd7D6t33pASU9xRN7Sgv63vTgKZrKdc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fATq8bCNmMpBVgRS0p9xgYYOQHGgE1vAtdHbK3OC7ylz47CY3XwNjLxdD8okmoeFR
	 iPzVtw7SL6yD9GUNXcl4GfPLuPIj2wmz6lRbQ6mxfZ/vuoBTlMx3KQcvwgebXs0JZU
	 C8Ymo0I1AymxlM44in3lGO1oehid8gt2cU6fUNfoR6t1DFdxpW/5/HtlKJRHHIrAdZ
	 HQPAsRnxzkuoRBL01fE5aB+1B7zzy42BVmlVFcotLSbTXdpCyM/sSgL/UuXewtx3YT
	 T8qrPfLvjtLdt4dPADa5T4yGDacnq2O8MS/phqJ+a3tgbmSFrajjaTxZEwufq9j+Kh
	 0Bkc1UJv8p3FA==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 520ED17E07AA;
	Wed, 15 Jul 2026 14:16:21 +0200 (CEST)
Message-ID: <455dcc9e-c606-464d-a234-4d9a43ab04f1@collabora.com>
Date: Wed, 15 Jul 2026 14:16:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 08/11] drm/mediatek: mtk_dsi: Add support for MT8196
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, conor+dt@kernel.org
References: <20260715114916.19690-1-angelogioacchino.delregno@collabora.com>
 <20260715114916.19690-9-angelogioacchino.delregno@collabora.com>
 <20260715120805.7C6F91F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260715120805.7C6F91F000E9@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326949-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,collabora.com:from_mime,collabora.com:mid,collabora.com:email,collabora.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE30575E093

On 7/15/26 14:08, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [High] Dimensional mismatch in QoS Anti-Latency FIFO threshold calculations results in grossly inflated thresholds.
> - [Medium] Unconditional mask of `DSI_VDE` can silently corrupt the `DSI_START` register on generic SoCs.
> --
> 
> --- Patch [8]: [PATCH v5 08/11] drm/mediatek: mtk_dsi: Add support for MT8196 ---
> commit 1786ad54a3e9896a0d86f110a26f6c5cb91b0619
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> drm/mediatek: mtk_dsi: Add support for MT8196
> 
> Add support for the new DSI IP found in the Kompanio Ultra MT8196 SoC.
> It requires initialization of QoS parameters and can use a DSI SRAM
> reserved buffer.
> 
>> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
>> index 3f58683be70fa..4d8a02cbee385 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> 
> [ ... ]
> 
>> @@ -776,6 +873,102 @@ static int mtk_dsi_set_dsc_params(struct mtk_dsi *dsi)
> 
> [ ... ]
> 
>> +	/* Read as: [Data rate (MHz)] * [Number of DSI lanes] / [8 buffer blocks] */
>> +	tmp = (u64)dsi->data_rate * dsi->lanes;
>> +	data_rate_per_buf = div_u64(tmp, 8 * buffer_unit * HZ_PER_MHZ);
>> +
>> +	/*
>> +	 * Anti-latency buffer output threshold for absolute timer mode: this
>> +	 * parameter controls the maximum amount of output data that the FIFO
>> +	 * can hold before running out of buffer space.
>> +	 *
>> +	 * The data will therefore be sent either when the DSI IP0s internal
>> +	 * vblank vs bus QoS timer expires or when it reaches the amount of
>> +	 * buffers set in BUF_OUT_VALID_THRESHOLD (regardless of QoS) to avoid
>> +	 * partially, or entirely, losing frame(s).
>> +	 */
>> +	out_valid_thresh = MTK_DSI_DEFAULT_QOS_VALID_FIFO_US * data_rate_per_buf;
>> +	out_valid_thresh = min(out_valid_thresh, MTK_DSI_MAX_FIFO_BYTES - 1);
> 
> [Severity: High]
> Does this mix dimensional units? out_valid_thresh is calculated using
> data_rate_per_buf (which appears to be in blocks), but it is capped
> against MTK_DSI_MAX_FIFO_BYTES, which is in bytes. Will this prevent the cap
> from functioning correctly?
> 

No that's good.

>> +	mtk_dsi_mask(dsi, reg_qos[DSI_QOS_BUF_CON1], BUF_OUT_VALID_THRESH, out_valid_thresh);
>> +
>> +	/* Enable ULTRA signal trigger between SOF and VACT */
>> +	mtk_dsi_mask(dsi, data->reg_adv[DSI_VDE], VDE_BLOCK_ULTRA, 0);
> 
> [Severity: Medium]
> If a future patch enables HW buffers for an older SoC (as the commit message
> suggests is possible) but doesn't define DSI_VDE in reg_adv, will
> reg_adv[DSI_VDE] evaluate to 0?
> 

If horses start flying, would them crash into airplanes?

Sorry, I had to make fun of this reply :-P

> If so, this offset might map to DSI_START in the main register space. Could
> this silently clear BIT(29) of the DSI_START register? Would it be safer
> to check if DSI_VDE is defined before applying this mask?
> 

Too much defensive coding, no, this stays like I wrote.

>> +
>> +	/* Calculate fill rate with line counter mode for DSI Video Mode */
>> +	if (dsi->format == MIPI_DSI_FMT_RGB565)
>> +		dsi_buf_bpp = 2;
>> +	else
>> +		dsi_buf_bpp = 3;
>> +
>> +	pclk_mhz = dsi->vm.pixelclock / HZ_PER_MHZ;
>> +	fill_rate = div_u64((u64)pclk_mhz * data->pixels_per_iter * dsi_buf_bpp,
>> +			    buffer_unit);
>> +
>> +	/* Calculate QoS Anti-Latency parameters */
>> +	sodi_hi = MTK_DSI_MAX_FIFO_BYTES * num_hw_buffers;
>> +	sodi_hi -= (fill_rate - data_rate_per_buf) * 12 / 10;
> 
> [Severity: High]
> Is it possible we are also mixing bytes and blocks here? MTK_DSI_MAX_FIFO_BYTES
> is used without dividing by buffer_unit, which could result in a threshold
> of 1554 blocks instead of 1554 bytes.
> 
> Could this grossly inflated threshold prevent the hardware from asserting
> the anti-latency trigger and cause FIFO over/underflows?

Nah that's programmed to the SODI_HI and it's the expected calculation. It's good.



