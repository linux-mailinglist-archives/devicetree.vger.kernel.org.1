Return-Path: <devicetree+bounces-108926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C1F9944FE
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 12:02:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8A4872859A7
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C9AA18C931;
	Tue,  8 Oct 2024 10:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="qWRxUFS4"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0BB18BC03
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 10:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728381772; cv=none; b=jrXItiF0Yt9jmbccJH6Q3EtNb00LFVZndxBjMS6WBzJcmVsGBRmhuuGgAf4OQPvre5hpJok4MHStWUnTuqjJTM/Zf6vvBdsK7UrItjr3E873EILbGxFe5zyjlHFxVDheqNneaQRL0rXgPeyhO88hhl6DJuvDbevSqrQ7al+A2xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728381772; c=relaxed/simple;
	bh=mFzh90SvcG8Ef2Scd/kQ8LXuzUilRDcyltT4lCKZCe4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Mgvjh4PBBTfhk8CKXhFjkj51JEQxnmTX27MrTUcnnx0jMT7AfbH/glsRdZ9/rTO/PUBG5jtqnr5mFLiW11WmyMFpPNbRkhwBpr8fd5P76scf3Dr8MxSTIvhGLMuPsrrt0SXHe/ix3qEHP+RNSZdFKbHQulTT9fgrlx6m6OOf7Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=qWRxUFS4; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1728381768;
	bh=mFzh90SvcG8Ef2Scd/kQ8LXuzUilRDcyltT4lCKZCe4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qWRxUFS4rlIdDKCarS6kBJSS8FHFkXeHw65towKaXVvCyLI9068O0sLjoxvH7thaw
	 AwXUFBWLV/v1A3h3yFgbJJrqc3Q+r1/kYwy1ZCF47Mk3KGtzFfCk7LOC1GaDmfJvT2
	 228rk8da0lCunBj/E/PsG4xZafcHCHZZl/DMh5p/DIwBs62SUNIKXEsQYV41LbEZvU
	 ji3ffcxblZ72F9+Nwda4om0APxf62j67GA9ZDkbN7UM5IQ3KawIAZn8hm1Sa7UMsVi
	 mjj1vvBTfHLMWHvw9NgJwwWq1veUxsy5eUYNF5hiF2XT2gzl6A5pOXRxefm69SakwL
	 fV06P+lhC15kw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E78F517E11FA;
	Tue,  8 Oct 2024 12:02:47 +0200 (CEST)
Message-ID: <c23b195b-6dc5-4087-bc7b-1d3f9cbdb700@collabora.com>
Date: Tue, 8 Oct 2024 12:02:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ARM: dts: mediatek: mt7623: fix efuse fallback
 compatible
To: Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20240617094634.23173-1-zajec5@gmail.com>
 <20240617094634.23173-2-zajec5@gmail.com>
 <d9565233-090b-4931-9e9f-89725db605e3@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <d9565233-090b-4931-9e9f-89725db605e3@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 07/10/24 16:06, Matthias Brugger ha scritto:
> 
> 
> On 17/06/2024 11:46, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> Fix following validation error:
>> arch/arm/boot/dts/mediatek/mt7623a-rfb-emmc.dtb: efuse@10206000: compatible: 
>> 'oneOf' conditional failed, one must be fixed:
>>          ['mediatek,mt7623-efuse', 'mediatek,mt8173-efuse'] is too long
>>          'mediatek,mt8173-efuse' was expected
>>          'mediatek,efuse' was expected
>>          from schema $id: http://devicetree.org/schemas/nvmem/mediatek,efuse.yaml#
>> arch/arm/boot/dts/mediatek/mt7623a-rfb-emmc.dtb: efuse@10206000: Unevaluated 
>> properties are not allowed ('compatible' was unexpected)
>>          from schema $id: http://devicetree.org/schemas/nvmem/mediatek,efuse.yaml#
>>
>> Fixes: 43c7a91b4b3a ("arm: dts: mt7623: add efuse nodes to the mt7623.dtsi file")
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
>>   arch/arm/boot/dts/mediatek/mt7623.dtsi | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/boot/dts/mediatek/mt7623.dtsi 
>> b/arch/arm/boot/dts/mediatek/mt7623.dtsi
>> index 9c5a52ce9351..748f9b366897 100644
>> --- a/arch/arm/boot/dts/mediatek/mt7623.dtsi
>> +++ b/arch/arm/boot/dts/mediatek/mt7623.dtsi
>> @@ -328,7 +328,7 @@ sysirq: interrupt-controller@10200100 {
>>       efuse: efuse@10206000 {
>>           compatible = "mediatek,mt7623-efuse",
>> -                 "mediatek,mt8173-efuse";
>> +                 "mediatek,efuse";
> 
> Angelo stated that we should move away from generic fallbacks.

That's right.

> Although the binding 
> states explicitly to use "mediatek,efuse" and deprecates the standalone 
> "mediate,mt8173-efuse", which could the default fallback. Angelo, what do you 
> think, take it or re-doing the binding first?
> 

No, this is an old SoC, and we want the DTs to be backward compatible as they
should.

Deprecating the generic "mediatek,efuse" fallback is something that we must
enforce only on new SoCs (so, new compatible strings), not on older ones.

So, my call is to take it.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Cheers!
Angelo

> Regards,
> Matthias
> 
>>           reg = <0 0x10206000 0 0x1000>;
>>           #address-cells = <1>;
>>           #size-cells = <1>;


