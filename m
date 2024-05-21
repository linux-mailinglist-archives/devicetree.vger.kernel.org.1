Return-Path: <devicetree+bounces-68187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1A28CB2E7
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 19:28:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 926921F22163
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 17:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDE941482ED;
	Tue, 21 May 2024 17:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PdH92bx3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524C417758
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 17:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716312506; cv=none; b=LFYW1Iw0wYrW+jxLNTJk8YT1zriRixb7P/y9QPZoJG/7PEZyAmP9ilW5gH7Ti1lUqZWSHRwX9NNt8Fj+Mpred0K+2BLN+z/P0X/G9oGTqWngRZLGPRVx/o39ynKRttgLvlgdR5ogc2gyqpzIfXpbTTpflpuTQ4Yab0qOtQKEet0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716312506; c=relaxed/simple;
	bh=iewX2nOR0j73EGPiG6myHQ0bEelcXu2qU5TdFDSGJLk=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Hbpy2MsxFlATJgsvNRb9jv3CYtU8hOnC1JJqo1ECeHITO8p9NkVQF2iUAPGpejiENtlsY+tTTDiAaKAYtDg5uzYffFZ6DLS1ISmS5S2ELByi1lgF8m36zQvVwhBpE2aO7z9MK9VBQ+FleSYxgKKzzp8oyAkEJ1cEYOr7mRh2zPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PdH92bx3; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-41f9ce16ed8so46720025e9.0
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 10:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716312501; x=1716917301; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fTdkV/Nb+lhqigMM3Hf6hdTSrxsoAm88nN+jAsX27lc=;
        b=PdH92bx39ZNiOgZdWVS6ROarFUwc+2sE05keBxSkJqidpZH99gyzqQtHxxaZvRCJP8
         whugxH6BZRyhwu828X+8aTrzAd9wpJgjj+YQbW3l+ftXDseQTWDLaF2icplcLuITaw0W
         eW1xKlhvIi86Qrf+pzS98onZpufnYwPcesnmUtQfcuGPyGOnUtW0gyABtKmh1Xzs0lwq
         q0egQTDS2VXRrnTXigcTuLoVPTkn2TunHQbEFf2SHVuFp3JynaDsbioQxj1fy5BU0k7V
         qG73fdiO1pie5MEg4n/uvix5g61RO29y+cB42w2OEDUx6BSUnwgI16ckP73IcZRw/OVA
         xHdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716312501; x=1716917301;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fTdkV/Nb+lhqigMM3Hf6hdTSrxsoAm88nN+jAsX27lc=;
        b=PY/R1U6gCEErxBDG4WG3jDFUhoJkwUnVIorny4zJubTV0xh+PfhKZJYrna/S9mTrwo
         k0QsfVGJKYUw0GS/nXMKnkALJl7b2YXLdnAytA65CRjQIzklIDBV83oTGoUOVC3E4p3O
         wx4ti/Hv0EIz5WZLhxhjMLi1od4DxiQ8k89L3rzNryaFi6ubl5g5pBZ7punw6VlA8eSS
         SZWXJWuMa2c3rHAIkzro4URh1aioAOX1CR9MKEoZ9lXjpiiuGtk+wsRudnu79QhAHa68
         NTusGn0os+j2jG2xx69ibiP1DVW5YXEvLQL+CGr+o4N3gvT9FWEBS+EF2jdFpiuQZh+D
         +u7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXIozoWiSrhkYta/qrbEiv1nj2InIqaVLAoOOq7hNRRqxVD4zJ0SiQNmUiGoetIARpIgeaXlTyRgo+6AXQn3YIw3nCHBL6v+PMjTQ==
X-Gm-Message-State: AOJu0YyI4m2Yui/+oRAjFpPWM4qrV0eDtB9HPVxghQAjQm4EvTCODcRT
	o6Y75Ne1pER9RPlyuGI9Jjj/KTjw33p29zwoOBDWRrFaFxcXC7K+H/tqFxVzYG0=
X-Google-Smtp-Source: AGHT+IHa7aTOJ9Va0C6tSG204l9GGSDSFJtv1uIZZDq4KISzOIFIvNkmp3rnYOhlulggFsF4yMFpEA==
X-Received: by 2002:a05:600c:4f93:b0:41e:a90d:1216 with SMTP id 5b1f17b1804b1-41fea9324e4mr286919575e9.3.1716312501561;
        Tue, 21 May 2024 10:28:21 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fe36f373fsm449115495e9.20.2024.05.21.10.28.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 May 2024 10:28:21 -0700 (PDT)
Message-ID: <5b77621c-7a82-4b9f-add7-70bb9bf9de44@baylibre.com>
Date: Tue, 21 May 2024 19:28:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: mediatek: mt8365: use a specific SCPSYS
 compatible
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 MandyJH Liu <mandyjh.liu@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20240518211159.142920-1-krzysztof.kozlowski@linaro.org>
 <20240518211159.142920-2-krzysztof.kozlowski@linaro.org>
 <f42ef151-6eee-418f-91e1-5ac08d161119@collabora.com>
 <2cc638ca-0add-4c8c-b844-606e22dbd253@linaro.org>
 <cf8c87fe-7a4f-423f-9c97-3759eeee4894@collabora.com>
 <51a47736-ffe8-49e2-b798-d409ca587501@baylibre.com>
 <75b78eaf-9b13-477c-bf02-4e9837a25dd4@linaro.org>
 <edc43094-19a7-4e62-8fba-ac2b22f66239@baylibre.com>
 <83bd6797-2214-4962-84a0-fadcfd130717@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <83bd6797-2214-4962-84a0-fadcfd130717@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 21/05/2024 16:13, AngeloGioacchino Del Regno wrote:
> Il 21/05/24 15:26, Alexandre Mergnat ha scritto:
>>
>>
>> On 21/05/2024 10:22, Krzysztof Kozlowski wrote:
>>> On 20/05/2024 17:23, Alexandre Mergnat wrote:
>>>> Hello Krzysztof,
>>>>
>>>> On 20/05/2024 12:12, AngeloGioacchino Del Regno wrote:
>>>>> Il 20/05/24 12:03, Krzysztof Kozlowski ha scritto:
>>>>>> On 20/05/2024 11:55, AngeloGioacchino Del Regno wrote:
>>>>>>> Il 18/05/24 23:11, Krzysztof Kozlowski ha scritto:
>>>>>>>> SoCs should use dedicated compatibles for each of their syscon nodes to
>>>>>>>> precisely describe the block.  Using an incorrect compatible does not
>>>>>>>> allow to properly match/validate children of the syscon device.  Replace
>>>>>>>> SYSCFG compatible, which does not have children, with a new dedicated
>>>>>>>> one for SCPSYS block.
>>>>>>>>
>>>>>>>> Signed-off-by: Krzysztof Kozlowski<krzysztof.kozlowski@linaro.org>
>>>>>>> Technically, that's not a SCPSYS block, but called SYSCFG in MT8365, but the
>>>>>>> meaning and the functioning is the same, so it's fine for me.
>>>>>> So there are two syscfg blocks? With exactly the same set of registers
>>>>>> or different?
>>>>>>
>>>>> I'm not sure about that, I don't have the MT8365 datasheet...
>>>>>
>>>>> Adding Alexandre to the loop - I think he can clarify as he should have the
>>>>> required documentation.
>>>> Unfortunately, The SCPSYS (@10006000) isn't documented, but according to the functionnal
>>>> specification, it seems to have only one block.
>>>>
>>>> I don't have the history why SYSCFG instead of SCPSYS.
>>>>
>>>> I've tested your serie and have a regression at the kernel boot time:
>>>> [    7.738117] mtk-power-controller 10006000.syscon:power-controller: Failed to create device link
>>>> (0x180) with 14000000.syscon
>>>>
>>>> It's related to your patch 3/4.
>>> I don't see how this could be related. The error is mentioning entirely
>>> different node - mmsys. No driver binds to 10006000.syscon, except the
>>> MFD syscon of course, so my change should have zero effect on drivers.
>>>
>>> The mtk-pm-domains (so child of patch affected in 3/4) only takes regmap
>>> from the parent, so the cells again are not related.
>>>
>>> Just to be sure: you are testing mainline or next, without any other
>>> patches on top except mine?
>>
>> I've tested on next
>>
>> * a018995ac19c (HEAD -> temp, me/temp) arm64: dts: mediatek: mt8173-elm: correct PMIC's syscon reg 
>> entry
>> * 0f118436c61c arm64: dts: mediatek: mt8365: drop incorrect power-domain-cells
>> * d40e424fe6dc arm64: dts: mediatek: mt8365: use a specific SCPSYS compatible
>> * d7caa08a4a9b dt-bindings: mfd: mediatek,mt8195-scpsys: add mediatek,mt8365-scpsys
>> * 82d92a9a1b9e (tag: next-20240515, linux-next/master) Add linux-next specific files for 20240515
>> *   77ba09d6e7cb Merge branch 'next' of git://git.kernel.org/pub/scm/linux/kernel/git/lenb/linux.git
>> |\
>> | * dedcf3a8e704 tools/power turbostat: version 2024.05.10
>> | * baac2f4c7f3b tools/power turbostat: Ignore pkg_cstate_limit when it is not available
>> | * a0525800e2dc tools/power turbostat: Fix order of strings in pkg_cstate_limit_strings
>> | * ffc2e3d90e6f tools/power turbostat: Read Package-cstates via perf
>>
>>
>> I did the test with and without "0f118436c61c arm64: dts: mediatek: mt8365: drop incorrect 
>> power-domain-cells"
>>
>> Without this specific patch, no regression.
>>
>>
> 
> Honestly, that makes very little sense to me - that property is useless and it's
> like it's never been there... at least, no MTK driver is parsing that and there's
> definitely no power domain in the top node (a child does, but not the parent).
> 
> Is this a flaky result? Did you actually try to reboot multiple times to check if
> the platform is *really broken* after that commit?
> 
> Sorry, it's not mistrust or anything, but I've been in this situation multiple
> times in the past, usually always on linux-next (because it's constantly broken :P)

MMMmm you're right, I can't reproduce this time...
Sorry for the noise.

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
Tested-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre

