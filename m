Return-Path: <devicetree+bounces-14503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B52817E52DC
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 10:50:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 45B11B20D55
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 09:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7537101F2;
	Wed,  8 Nov 2023 09:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="jnXPZrtj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F036138F
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 09:50:41 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98B4B1BB;
	Wed,  8 Nov 2023 01:50:40 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3EAF066074E8;
	Wed,  8 Nov 2023 09:50:38 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699437039;
	bh=hV5PrSazCSEWT+JbX/dnI2J9mY7nwlBwRZXNosSL/PI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jnXPZrtjdm9/qZM/zkaE9rJtTlc3TW3SfSBjmSi+zzFFX5RvffC5dGthWohyvCEpU
	 +1d9m+5996wfW4lLMsosUck3OvkW17BQy2vaXsnFQzxyJcQtvusf7Sz5qTHszsKRh8
	 CNE4c+iOzORsE7mWc0bxlAm2XtpzG4kyC/qhtKJkcnxpSr03Nczb+Lat9aPQOP5LkQ
	 h7F1EGofj5+YGyvlpXKrN0kg1jWRUs9+r7+2cIE1JuHUMGh7y17M2fhtIzZCeU91dU
	 PglUr5VmmU6Bwla1BO/lUgHufsej7creIN48uDNlM4uwUhooPIWqk5Ot94cHliiWM5
	 8FDQYyzMsFK4Q==
Message-ID: <5f3e6b13-6ab3-4952-89ec-e567c6a6526f@collabora.com>
Date: Wed, 8 Nov 2023 10:50:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] ASoC: mediatek: mt8188-mt6359: Limit RT5682s to
 only supports dual channels
Content-Language: en-US
To: =?UTF-8?B?VHJldm9yIFd1ICjlkLPmlofoia8p?= <Trevor.Wu@mediatek.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 =?UTF-8?B?QWxsZW4tS0ggQ2hlbmcgKOeoi+WGoOWLsik=?=
 <Allen-KH.Cheng@mediatek.com>,
 "zhourui@huaqin.corp-partner.google.com"
 <zhourui@huaqin.corp-partner.google.com>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "kuninori.morimoto.gx@renesas.com" <kuninori.morimoto.gx@renesas.com>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "perex@perex.cz" <perex@perex.cz>
Cc: "linux-mediatek@lists.infradead.org"
 <linux-mediatek@lists.infradead.org>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20231108012617.3973539-1-zhourui@huaqin.corp-partner.google.com>
 <20231108012617.3973539-4-zhourui@huaqin.corp-partner.google.com>
 <35837139c1aca2408f64b87c4eb13862e002c089.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <35837139c1aca2408f64b87c4eb13862e002c089.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 08/11/23 06:12, Trevor Wu (吳文良) ha scritto:
> On Wed, 2023-11-08 at 09:26 +0800, Rui Zhou wrote:
>>   Limit RT5682s to only support dual channels, not four channels.
> 
> Hi Rui,
> 
> The title is still confusing, maybe update the title based on Angelo's
> suggestion in v1[1]?
> In addition, please modify the commit description to mention support
> for stereo MAX98390 specifically for the mt8188-rt5682s board. Now, it
> reads like you are adding the dual RT5682s support.
> 
> [1]https://patchwork.kernel.org/comment/25584066/
> 

Actually, there's another alternative, if you like it more:

ASoC: mediatek: mt8188-mt6359: Limit mt8188_rt5682s from quad to dual amp

Cheers,
Angelo

> Thanks,
> Trevor
> 
>> Reviewed-by: AngeloGioacchino Del Regno <
>> angelogioacchino.delregno@collabora.com>
>> Signed-off-by: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
>> ---
>>   sound/soc/mediatek/mt8188/mt8188-mt6359.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/sound/soc/mediatek/mt8188/mt8188-mt6359.c
>> b/sound/soc/mediatek/mt8188/mt8188-mt6359.c
>> index e994faa3556b..917640939621 100644
>> --- a/sound/soc/mediatek/mt8188/mt8188-mt6359.c
>> +++ b/sound/soc/mediatek/mt8188/mt8188-mt6359.c
>> @@ -1549,7 +1549,7 @@ static struct mt8188_card_data
>> mt8188_nau8825_card = {
>>   
>>   static struct mt8188_card_data mt8188_rt5682s_card = {
>>   	.name = "mt8188_rt5682s",
>> -	.quirk = RT5682S_HS_PRESENT,
>> +	.quirk = RT5682S_HS_PRESENT | MAX98390_TWO_AMP,
>>   };
>>   
>>   static struct mt8188_card_data mt8188_es8326_card = {
>> -- 
>> 2.25.1
>>


