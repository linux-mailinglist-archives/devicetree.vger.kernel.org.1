Return-Path: <devicetree+bounces-325993-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +B5UGeDwVWoKwgAAu9opvQ
	(envelope-from <devicetree+bounces-325993-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 10:18:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BD91F7524C0
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 10:18:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=iMb1PBMM;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325993-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325993-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0994A30E9920
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:13:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 361AC3F6C4D;
	Tue, 14 Jul 2026 08:13:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C853F4822
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 08:13:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784016819; cv=none; b=ITZPrLDq1Pklxhl4v8fkKXOVWEmvZiEWWncVcjpcarWJ7Zos5kg/iEYE8+4kTJYAovkpt4elQIVXweCuExKlBbsTfliXqokMAadu+vTCEgFWS8OpFASvYipPyG6HBT0Jx7VkaC5OaKJjOurbCDCSvSXz9WVIRcsfIh+CLJb9o6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784016819; c=relaxed/simple;
	bh=j0SI4YRtONPH0K9xM6ukMCwDrLUf3U7zNF0KhtJk7As=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r3qXazkBOslKUQoXrpd5qqtY0kTwHzwMR/lrrZjbs+6RUUZ3WJ5M5BF1Gwgf9v58HgPkep8fI1IQoknbT+plMIs8doNpOw9pNNrJp94jJR/mPAJ8rAFo4amWsZNd+V7hTi5wXmqEzCAqzvpZKI8vm5vVdEnbCL9bEEG9LaKZRgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=iMb1PBMM; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784016816;
	bh=j0SI4YRtONPH0K9xM6ukMCwDrLUf3U7zNF0KhtJk7As=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iMb1PBMMF837bfEMQna4u7Y6ASqMFr/SL7NFmouS/Ju4iC4Nx6Tn2F//n26abYXzr
	 ja6EJ+WBTCZ4WYQ/GBv1aVDTkWcHTXnc3/h/PNqIJ03DJ62y5AAB1ldRnX4aqX/wkB
	 IHhWhaCnt1qW8Z3uI1nkQ9+pNTJDVRc1Q/7zjPvK/wp5hk5eszaElhPzROuxFJqNBE
	 WYoaMV5dxI4MW0x559Fs55UxDpHlsO8zAjJTCTW87ao+wWlb451YdV2fFUuBI3qV+G
	 8njOz4LJsil2xmzXip/pHie2UYb+FEKZXE6RNFmDIMJxX0HBo9JGrW1V9oFYoLPduj
	 zF3+yyiWfHbPA==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DE50B17E0851;
	Tue, 14 Jul 2026 10:13:35 +0200 (CEST)
Message-ID: <d6f220e2-2416-405c-b866-77179fcd0ad4@collabora.com>
Date: Tue, 14 Jul 2026 10:13:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/10] drm/mediatek: mtk_dsi: Enable PM Runtime on
 probe
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org,
 devicetree@vger.kernel.org
References: <20260713142746.40259-1-angelogioacchino.delregno@collabora.com>
 <20260713142746.40259-9-angelogioacchino.delregno@collabora.com>
 <20260713144303.D147C1F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260713144303.D147C1F000E9@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-325993-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:from_mime,collabora.com:mid,collabora.com:email,collabora.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BD91F7524C0

On 7/13/26 16:43, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [High] Enabling PM runtime leaves the DSI hardware permanently suspended, resulting in system crashes during unpowered MMIO register accesses.
> - [High] The IRQ handler accesses hardware registers without verifying the device's PM runtime state.
> --
> 
> --- Patch [8]: [PATCH v4 08/10] drm/mediatek: mtk_dsi: Enable PM Runtime on probe ---
> commit 7ce79b5636ac6fccf8b21d5b0f6a67f31c6b10eb
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> drm/mediatek: mtk_dsi: Enable PM Runtime on probe
> 
> This commit enables PM runtime at the end of mtk_dsi_probe() to allow the
> power domains for the DSI IP to be turned on and off when necessary. The
> commit message assumes mtk_ddp_comp_power_on() will resume the device.
> 
>> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
>> index 93bc507d77e20..1726f5a2683cf 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
>> @@ -1731,6 +1731,10 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		return dev_err_probe(&pdev->dev, ret, "Failed to request DSI irq\n");
>>   
>> +	ret = devm_pm_runtime_enable(dev);
>> +	if (ret)
>> +		return ret;
>> +
> 
> [Severity: High]
> The commit message states that mtk_ddp_comp_power_on() will resume the
> device. Is this assumption correct?
> 
> Looking at mtk_crtc_atomic_enable() in drivers/gpu/drm/mediatek/mtk_crtc.c,
> mtk_ddp_comp_power_on() is only called for the first component in the display
> pipeline (comp[0]), bypassing the DSI component entirely.
> 
> Furthermore, even if mtk_ddp_comp_power_on() iterated over all components, it
> executes after mtk_dsi_bridge_atomic_pre_enable(). The pre-enable hook calls
> mtk_dsi_poweron(), which directly accesses hardware registers:
> 
> drivers/gpu/drm/mediatek/mtk_dsi.c:mtk_dsi_poweron() {
> 	...
> 	mtk_dsi_enable(dsi);
> 
> 	/* Bypass shadow and force commit only if the register is present */
> 	if (data->reg_adv[DSI_SHADOW_DEBUG])
> 		writel(FORCE_COMMIT | BYPASS_SHADOW,
> 		       dsi->regs + data->reg_adv[DSI_SHADOW_DEBUG]);
> 	...
> }
> 
> Since the PM domain is still powered off at this point, will these direct
> MMIO accesses cause a bus hang or system crash?
> 

Before the mediatek-drm restructuring, the power domains and clocks will be always
on because the poweron op will be called at startup time.

After the restructuring, power is OFF when DSI unused, and ON when DSI used.

The power domains will therefore be ON when needed in both cases.

> [Severity: High]
> Now that the device supports PM runtime, can the IRQ handler run while the
> device is in the RPM_SUSPENDED state?
> 
> The interrupt is unconditionally enabled in mtk_dsi_bind() and remains
> enabled at the IRQ controller level even when the device is suspended. If a
> spurious or delayed interrupt fires, mtk_dsi_irq() directly reads the
> hardware register:
> 
> drivers/gpu/drm/mediatek/mtk_dsi.c:mtk_dsi_irq() {
> 	...
> 	status = readl(dsi->regs + dsi->driver_data->reg_main[DSI_INTSTA]) & flag;
> 	...
> }
> 
> Should the IRQ handler use pm_runtime_get_if_active() before accessing
> hardware registers to avoid touching unpowered hardware?
> 

It's guaranteed to be powered. Anyway, even if it is, that will read zero and
will not crash.

>>   	ret = mipi_dsi_host_register(&dsi->host);
>>   	if (ret < 0)
>>   		return dev_err_probe(dev, ret, "Failed to register DSI host\n");
> 


