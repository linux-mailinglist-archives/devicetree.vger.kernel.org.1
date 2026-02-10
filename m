Return-Path: <devicetree+bounces-264442-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FMHJIhAi2mfRwAAu9opvQ
	(envelope-from <devicetree+bounces-264442-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:28:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E52F411BE4A
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:28:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9EB05300D467
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:28:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE4B036A038;
	Tue, 10 Feb 2026 14:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="n6QsXv0H"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E7D2EC57C;
	Tue, 10 Feb 2026 14:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770733701; cv=none; b=HxocA8nv8HMaHtytQmBu36U83ioFE6Kbx4cZ/Q/+umLuyNWdLPX/617qFe6VjoMJ7ayx3u5mXpUXokreuqByF+0PenvVujgTDqykheuOrtTJ8xglsRl8+4CEvX0fei3t9BMMmQj61vqyjDf2ZvZVyxx87LIhDgE1Lwe1u12m1cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770733701; c=relaxed/simple;
	bh=muVQ1zQzdc9CjW+SMGZIOKie1oQVfcVMN3gvbBxDNQw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nbl34xnz0ecUgaTjCjl3NvDRlEuiSSr/DHc1csS5X7zppdQVnRS8K6j6UEQwB3sdlV5tTje9hIZy9gyw9SvCmDzJ7Tfl6csIzgLI1L5mK/SxCm43W95b+X+1V/RFV3FnznD3gMqGhdKb/3QjG1ywnIHq/2p7oKl4haY5iQFPEtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=n6QsXv0H; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1770733698;
	bh=muVQ1zQzdc9CjW+SMGZIOKie1oQVfcVMN3gvbBxDNQw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=n6QsXv0HmwEC4rsdnP2MtqVr7K2V/6R9qghoJSN7lLgDKzayX8QLq7Z3JT7nF2b11
	 f2goSCY2LqBw56NAm/s7IDxxyiAL74ofPiLNc56kPLdOXYIrEstWGiTlmHD4QuSI9Y
	 q4ruM/bLlfad2Oq1DPAzvWtDSrVWgRt4Uw17mlDQW9GUIUGgw++IO8KB4vheHBEsIk
	 iyHxWEuVbE7mU9q+xwO258CHdCPasCNjmHKZotgf0LC8P3RKGpVQpjEvybX/hDkxYS
	 2KAhXNLy9yjE1oRVvxgeghNTrq9YjsqBhOYJNDIdJtV0S03hT+PXjpOPqeHIEdZByC
	 PfVZ0TBb919dg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E580C17E12A9;
	Tue, 10 Feb 2026 15:28:17 +0100 (CET)
Message-ID: <0ccca45c-34af-4d38-ad0f-6cd080f2882d@collabora.com>
Date: Tue, 10 Feb 2026 15:28:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] dt-bindings: arm: mediatek: audsys: Support
 mt8192-audsys variant
To: Rob Herring <robh@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, tudor.ambarus@linaro.org,
 pratyush@kernel.org, mwalle@kernel.org, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, lgirdwood@gmail.com, broonie@kernel.org,
 matthias.bgg@gmail.com, julien.massot@collabora.com,
 eugen.hristev@linaro.org, jiaxin.yu@mediatek.com, shane.chien@mediatek.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-sound@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 kernel@collabora.com
References: <20260115125624.73598-1-angelogioacchino.delregno@collabora.com>
 <20260115125624.73598-4-angelogioacchino.delregno@collabora.com>
 <CAL_JsqL=zAqyVDAP_B1VW1FWKoS9OEdTNZiZabSNxDscBryYgw@mail.gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <CAL_JsqL=zAqyVDAP_B1VW1FWKoS9OEdTNZiZabSNxDscBryYgw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264442-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,bootlin.com,nod.at,ti.com,gmail.com,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,collabora.com:dkim,collabora.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E52F411BE4A
X-Rspamd-Action: no action

Il 10/02/26 14:41, Rob Herring ha scritto:
> On Thu, Jan 15, 2026 at 6:56 AM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
>>
>> Add support for the mediatek,mt8192-audsys compatible, which uses
>> a different audio controller (mt8192-afe-pcm) compared to mt8183
>> and mt2701.
>>
>> This resolves a dtbs_check warning on all MT8192 devicetrees.
>>
>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>> ---
>>   .../arm/mediatek/mediatek,audsys.yaml         | 46 +++++++++++++------
>>   1 file changed, 33 insertions(+), 13 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml
>> index f3a761cbd0fd..09a6c16e7e82 100644
>> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml
>> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml
>> @@ -48,19 +48,39 @@ required:
>>     - compatible
>>     - '#clock-cells'
>>
>> -if:
>> -  properties:
>> -    compatible:
>> -      contains:
>> -        const: mediatek,mt8183-audiosys
>> -then:
>> -  properties:
>> -    audio-controller:
>> -      $ref: /schemas/sound/mediatek,mt8183-audio.yaml#
>> -else:
>> -  properties:
>> -    audio-controller:
>> -      $ref: /schemas/sound/mediatek,mt2701-audio.yaml#
>> +allOf:
>> + - if:
> 
> Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml:52:2:
> [warning] wrong indentation: expected 2 but found 1 (indentation)
> 
> 
>> +     properties:
>> +       compatible:
>> +         contains:
>> +           enum:
>> +             - mediatek,mt2701-audsys
>> +             - mediatek,mt7622-audsys
>> +   then:
>> +     properties:
>> +       audio-controller:
>> +         $ref: /schemas/sound/mediatek,mt2701-audio.yaml#
>> +
>> + - if:
>> +     properties:
>> +       compatible:
>> +         contains:
>> +           const: mediatek,mt8183-audiosys
>> +   then:
>> +     properties:
>> +       audio-controller:
>> +         $ref: /schemas/sound/mediatek,mt8183-audio.yaml#
>> +
>> + - if:
>> +     properties:
>> +       compatible:
>> +         contains:
>> +           const: mediatek,mt8192-audsys
>> +   then:
>> +     properties:
>> +       audio-controller:
>> +         $ref: /schemas/sound/mt8192-afe-pcm.yaml#
>> +
>>
> 
> Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml:84:1:
> [warning] too many blank lines (2 > 1) (empty-lines)
> 
> Please fix as these are warnings in linux-next now.
> 

Ack. Sorry for the mistakes. Not sure how this happened.

Let me see when I can get some minutes to get this addressed.

Cheers,
Angelo

> 
>>   additionalProperties: false
>>
>> --
>> 2.52.0
>>



