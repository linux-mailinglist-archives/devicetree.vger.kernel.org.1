Return-Path: <devicetree+bounces-323618-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W0M5Gk6CT2qaiQIAu9opvQ
	(envelope-from <devicetree+bounces-323618-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:13:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2DB73016E
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:13:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=PQgn+7X0;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323618-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323618-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D2D63113C08
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:46:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E74940B6E9;
	Thu,  9 Jul 2026 10:46:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C42B40D56E
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 10:46:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783593989; cv=none; b=rF45M+mHvZ9Bx5Z0rwZkv+seXREN27u/rtwJBr7+k04pAuG9ekhY7RRRKHiE1lgs0yR5iLwAnkj3W68s6454pP1DEoaxNTWCE0Kwk8AgyWPon1Dz3ZPo8SxcySR6KtIVsw3wmraeMzjHXZjbCqKxcilE13t2Peuwk1IDJ8rAabo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783593989; c=relaxed/simple;
	bh=8idKvVN+cfS9P+M8/Oo0SXlgO6nAa98PuAMKfFCHyUA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lx8apPRe7IDInBAYgGVzJuMZ/nFj9BtXC5Bh/JH28E4LM/S6p9PjQgL102uHtIhKfHQvwKMX1dNiWWnvfeGUiuMp+FdTxKAUu0h7SwVo6UN6zdGxxgcjB84wXAgQ0ZlJlZEUlfPfJ7bmVRS848tgr15BHnIXF4ITb3a2N4DRY+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=PQgn+7X0; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783593982;
	bh=8idKvVN+cfS9P+M8/Oo0SXlgO6nAa98PuAMKfFCHyUA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PQgn+7X0EvOfECkABffase/CdqsHlnTopkvVFROpUwXBoy8PxsCcvIzfjcCqF09y9
	 fwtaD3Aq9rwIpLJgtBEBTY9cKWbpowYrlnV2Y6LZEmf9QjUvf3pHe4qa0hhtE285tl
	 oDzoDIhvI//4YqO9C9Tfl2Gd73kCjqRHqiLeXKY5OD31nDoSoa5fK1XoWxIoViUcaG
	 MMW+dYJJ+K6JTKNooM6F/7/HeaLI/QhUbab20bJvxWNXY5Ak1zeSDrW2KI83Obvu/V
	 2+WcGPD6kLq1fl6qoa9uCF0T81LSumjl5Fvg0jGADu++Q/GCCRkNG1Jo18EiY8J0Fd
	 4C4wqyqWQUgCg==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F23B817E01AC;
	Thu, 09 Jul 2026 12:46:21 +0200 (CEST)
Message-ID: <28324cf7-0841-42f9-967a-f942ac537c44@collabora.com>
Date: Thu, 9 Jul 2026 12:46:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] arm64: dts: mediatek: mt8173: Add and use UART
 AP_DMA controller
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
References: <20260709090924.27056-1-angelogioacchino.delregno@collabora.com>
 <20260709090924.27056-3-angelogioacchino.delregno@collabora.com>
 <20260709091701.098811F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260709091701.098811F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323618-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D2DB73016E

On 7/9/26 11:17, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] The AP_DMA controller specifies `dma-requests = <8>` but only provides 6 `reg` and 6 `interrupts` entries, which causes the APDMA driver to fail during probe. Additionally, the patch omits DMA assignments for `uart0` despite the commit message claiming to configure all four UART controllers.

Will fix later while applying.

> --
> 
> --- Patch [2]: [PATCH v3 2/7] arm64: dts: mediatek: mt8173: Add and use UART AP_DMA controller ---
> commit ac8a25e005302375b885a8325819560714cb8e2c
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> arm64: dts: mediatek: mt8173: Add and use UART AP_DMA controller
> 
> This commit adds the UART AP_DMA controller to the mt8173 device tree.
> It also assigns DMA channels to the UART controllers to increase TX/RX
> efficiency.
> 
>>      In order to increase the efficiency of data TX/RX over the UART
>>      controllers, add the UART DMA controller and assign the right
>>      channels to each of the four UART controllers.
> 
> [Severity: High]
> The commit message mentions assigning channels to each of the four UART
> controllers, but only uart1, uart2, and uart3 are updated in the patch. Is
> uart0 intentionally missing?
> 
>> diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
>> --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
>> +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> [ ... ]
>> +		apdma: dma-controller@11000400 {
>> +			compatible = "mediatek,mt8173-uart-dma", "mediatek,mt6577-uart-dma";
>> +			reg = <0 0x11000400 0 0x80>, <0 0x11000480 0 0x80>,
>> +			      <0 0x11000500 0 0x80>, <0 0x11000580 0 0x80>,
>> +			      <0 0x11000600 0 0x80>, <0 0x11000680 0 0x80>;
>> +			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_LOW>,
>> +				     <GIC_SPI 98 IRQ_TYPE_LEVEL_LOW>,
>> +				     <GIC_SPI 99 IRQ_TYPE_LEVEL_LOW>,
>> +				     <GIC_SPI 100 IRQ_TYPE_LEVEL_LOW>,
>> +				     <GIC_SPI 101 IRQ_TYPE_LEVEL_LOW>,
>> +				     <GIC_SPI 102 IRQ_TYPE_LEVEL_LOW>;
>> +			clocks = <&pericfg CLK_PERI_AP_DMA>;
>> +			#dma-cells = <1>;
>> +			dma-requests = <8>;
> 
> [Severity: High]
> Does this dma-requests count of 8 match the provided reg and interrupts
> arrays?
> 
> The mtk-uart-apdma driver iterates dma-requests times during probe. With only
> 6 resources defined in the reg and interrupts arrays,
> devm_platform_ioremap_resource() will fail with -EINVAL when trying to map
> the missing resources. This will cause the probe to abort, unconditionally
> breaking DMA for all UARTs on this SoC.
> 
> Should dma-requests be 6 here since uart0 was omitted, or are there missing
> reg and interrupts entries that should be added?
> 

