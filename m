Return-Path: <devicetree+bounces-326847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id L6lCB1VhV2oSKwEAu9opvQ
	(envelope-from <devicetree+bounces-326847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:30:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1DF75D036
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:30:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=njsWkz2u;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326847-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326847-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DB10F3023A48
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BB9B44163E;
	Wed, 15 Jul 2026 10:29:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87FF441636
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 10:29:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784111370; cv=none; b=uqIrkLqLTp2MAVWtoRdAb96p7oPfmgHsYaM+tQ/9mxZ7FeqBPwJZ70QO8zolt1JjHnWb061RTzvxmKDdVHjP8kMFWvn9BmQ0m/sg8She3Pq3d/ZFEcX04m2Y3JdviyASThg4Sa46gSfHW1FaPxc5QtgZTaeCM+vB+uAb2jqH2nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784111370; c=relaxed/simple;
	bh=AX9ADKwhGNIejnHdgFTOEpMoelGADDU7g5rb4mpm7eA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PF4aHPR/n8n0bcB/k3p12Cxx6Wni68K0JJOhadR4Hn3Lm5D5EdbPzNa9qQqzbETleujnCP0k6PJFxNponOpuAbQu7drDWo1xdocdydoY2DIhQeYNOImD+U4HZIr1lUAygjVeiXvPjS6j0CjK0Pe4Vfz5TbEKNl8NEXIcmZje73s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=njsWkz2u; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784111366;
	bh=AX9ADKwhGNIejnHdgFTOEpMoelGADDU7g5rb4mpm7eA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=njsWkz2uS1gOp/dA0tZU/1k3/3eRmfVMITIvSDTNlKwG/trgoT5scu1qflAw7kvoN
	 DLhKBrLL/DDASRzQQcujS8xAIdPe/bTOqe948ZK3a4b4ZIBfPdlPLobO0Y5Vv/YlG0
	 84T3f3W58yN5UM6e73a6TUSbBM4UsUa/OPa/ZDhCPpkz5oRU0RBO7n461JjULsYMQv
	 9Q5cKLkxShpIdZk2FpmZzLReCeKSbQRgdZnyUbIQYCCZJcuAwL75EDSRaTMF/SgT9E
	 H1xFER++rQ2Mpipx+zcwvxmwmBblBW2s2wAnnxaH9rGfpiVPQTkU/AjQ7QsEmMOfDq
	 0xKbLDIWL7Hbg==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B602A17E07AA;
	Wed, 15 Jul 2026 12:29:25 +0200 (CEST)
Message-ID: <e8d3efc2-bc93-438a-a45d-6ae0b303ad02@collabora.com>
Date: Wed, 15 Jul 2026 12:29:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 09/10] dt-bindings: display: mediatek: wdma: Add
 compatibles for more SoCs
To: Rob Herring <robh@kernel.org>, sashiko-reviews@lists.linux.dev,
 CK Hu <ck.hu@mediatek.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org
References: <20260713142746.40259-1-angelogioacchino.delregno@collabora.com>
 <20260713142746.40259-10-angelogioacchino.delregno@collabora.com>
 <20260713144221.2C4F91F00A3A@smtp.kernel.org>
 <20260714143433.GA1476641-robh@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260714143433.GA1476641-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326847-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:sashiko-reviews@lists.linux.dev,m:ck.hu@mediatek.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,collabora.com:from_mime,collabora.com:mid,collabora.com:email,collabora.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7A1DF75D036

On 7/14/26 16:34, Rob Herring wrote:
> On Mon, Jul 13, 2026 at 02:42:20PM +0000, sashiko-bot@kernel.org wrote:
>> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
>> - [Medium] The compatible string `mediatek,mt6893-disp-wdma` is incorrectly added to the standalone enum instead of the fallback items list.
>> --
>>
>> --- Patch [9]: [PATCH v4 09/10] dt-bindings: display: mediatek: wdma: Add compatibles for more SoCs ---
>> commit 8001f83833ae9c684be67bc719c7aaa056f90763
>> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>>
>> dt-bindings: display: mediatek: wdma: Add compatibles for more SoCs
>>
>> Multiple MediaTek SoCs have the Write DMA hardware in their Display
>> Controller. This commit adds the missing compatibles for Dimensity 1200
>> (MT6893) and for Kompanio 500/520/820/1200.
>>
>>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
>>> index 97d052b0fb614..c3ed867d058d9 100644
>>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
>>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
>>> @@ -22,11 +22,16 @@ properties:
>>>     compatible:
>>>       oneOf:
>>>         - enum:
>>> +          - mediatek,mt6893-disp-wdma
>>
>> [Severity: Medium]
>> Does this incorrectly place mediatek,mt6893-disp-wdma as a standalone
>> compatible string rather than in the items list requiring a fallback?
>>
>> If a device tree uses compatible = "mediatek,mt6893-disp-wdma" to satisfy
>> this schema, the DRM driver will not probe the device since it only matches
>> mediatek,mt8173-disp-wdma. If the developer instead provides the fallback
>> compatible = "mediatek,mt6893-disp-wdma", "mediatek,mt8173-disp-wdma" so the
>> driver can probe it, won't the device tree fail schema validation here?
> 
> Sashiko fails to look at patch 10. However, the commit message gives no
> clue whether mt6893 is or is not compatible with something else. If not
> compatible, explain why it isn't. What's different?
> 
Eh, MT6893 supports 64-bits image data destination address (has two registers,
lower 32 bits and upper 32 bits), while MT8173 and others supports 32-bits only.

Should I resend with an improved commit message, or would it be fine to change
that while applying?

Multiple MediaTek SoCs have the Write DMA hardware in their Display
Controller. This commit adds the missing compatibles for Dimensity 1200
(MT6893), supporting image destination address of up to 64 bits, and for
Kompanio 500/520/820/1200, fully compatible with MT8173, supporting only
32 bits.

Cheers,
Angelo

