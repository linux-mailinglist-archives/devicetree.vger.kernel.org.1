Return-Path: <devicetree+bounces-70302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 544EC8D3114
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:24:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2A9C1F28AB2
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 08:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2266F16939F;
	Wed, 29 May 2024 08:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ORKOniri"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079A4169394
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 08:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716970786; cv=none; b=pHH0MolM4p9rCekj0nXEjoyZ9qkgXzyewIdXkZSjTSilwLm2ajKWYxZH8RQ/FdNWutPvV9nyOziHEL9jO0JYUDG37kE3ppYoW6Ni5wcN/f7+N1rkWKhDsBBbWC4ND+MZpIm5lz+D7GFAcRTnT2hZ1Pc3A4mhN5kSBF7+f2rK6k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716970786; c=relaxed/simple;
	bh=Ae90CS/pD9BkisUZjgTcWgpjDwmgKX7NJpeOtvmu0Cg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R3QmytwWaUfePFT4lnH6pCznBI2cCS1LcCz4mlwDAIlkAQHWOUlL6sKy8b8a0RUdRIwCfBFR/fTs7AdE1svJ8lwDn208hEArCCnf4AfIqZJaRknpbkEPXub+zoIzdJb5Xqrx0Wk2DiGYz/wj2j6PJ0Ic0FOzB2XX611CRXn6MF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ORKOniri; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-354de3c5d00so320990f8f.1
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 01:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716970782; x=1717575582; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fOE0A0l7NfKBSljfnqniwrdePepuGPXfC4qSeThvThQ=;
        b=ORKOniriRTgvLumwzUPoO36Jr1rJqkdRndtrWdXm1o5TBJNsUzt6+Cd8E0g05EzmLH
         dEwtdniCgDE4k0Fx3liyZXKqdZpZcGtDCb3hG1amgpMP+TzCOgQ8XuVsT+nUJbcy51nD
         W1x04Yx2NaZofPOERJnv3Jq+UVMgg07mpFmeluGkepf7BDzWPw7o/Zy+TG4Jw//7axjF
         /nxPUZ6oLjTodPReTR1JUCaiO05hxFvLptGu3AyeZgcfaaGJxU2vMOw7/SxUuPGYxM9D
         tMazW3WBe2AdkF12frt8dLi2m59j6dwjhlyjetkyUQIuibFZE+3hamLg8FyTpKH9edi8
         DEjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716970782; x=1717575582;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fOE0A0l7NfKBSljfnqniwrdePepuGPXfC4qSeThvThQ=;
        b=keMxCtTHvr2VmmIVbwD7Al9TNAdkN7NmlcQ8T6mfSMfa2Odsff5rDTiqQsXxH3R2tR
         dvSb5oaWl1Hl3tSjON0d/yhh9qO5oAHGhW3xdRgsn3PXGW4lG2zhIvuLHHtXTe9KI2a6
         Fr4MfMzxq0ILODym04w4m5eomKRFXZ3PQlc13p6D1T+ePYFdaDdyIDQpZ4vP1ailAxSn
         cGuzpFDcTUTeqv2unTFtXArL5GC7hvklAOKxXg41DE1ner1K9mJA1grlVXthrBLE2nLd
         ysGScxVRI7XjDrtdFo+kvkSTkJ8R0TxHfjXlacqonKxikfkJE6eFgOg0fjzP/QZ0QwMR
         KTSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUSDWY1O1hYN0vhSaS09muMYOrnjBQ0efr79g+7wONWjBFgKPeyFLrtBLgTABvPnKAdsknUPG+asuu/5DKhaBLZ5mxeQJvGetWaw==
X-Gm-Message-State: AOJu0YyMw//cSYG5Y4k2SKtymBJpGhQuRFzwooIux+HRroR4szsBbZQP
	MbpWolF0sbNU51hnccrYwX/Vh9wd2LLvkyqDBJVB1qoEYyQ62PF8OZ/CwzCTOcE=
X-Google-Smtp-Source: AGHT+IHpw1t1jfuB8Lm6EEhhiKMl5JYdCi2dxzOWePLyDrJX6Q08/jdxLnIq3dUJbEMEHNAi+oDsAQ==
X-Received: by 2002:adf:cb92:0:b0:34c:77bd:2508 with SMTP id ffacd0b85a97d-35c79d6fecbmr990696f8f.11.1716970782209;
        Wed, 29 May 2024 01:19:42 -0700 (PDT)
Received: from [10.1.5.19] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3557a08a8dfsm13980128f8f.30.2024.05.29.01.19.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 May 2024 01:19:41 -0700 (PDT)
Message-ID: <6d01d555-9af8-4ec8-8630-0d9a7b48f423@baylibre.com>
Date: Wed, 29 May 2024 10:19:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/6] ARM64: mt8195: Use thermal aggregation for big and
 little cpu
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, rafael@kernel.org,
 daniel.lezcano@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: rui.zhang@intel.com, lukasz.luba@arm.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240524143150.610949-1-abailon@baylibre.com>
 <20240524143150.610949-7-abailon@baylibre.com>
 <1b691b03-1d2c-48ee-9907-dc043ea1ed5d@linaro.org>
Content-Language: en-US
From: Alexandre Bailon <abailon@baylibre.com>
In-Reply-To: <1b691b03-1d2c-48ee-9907-dc043ea1ed5d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 5/27/24 08:56, Krzysztof Kozlowski wrote:
> On 24/05/2024 16:31, Alexandre Bailon wrote:
>> This uses the thermal aggregation for the mt8195 to get the maximal
>> temperature of big and little cpu clusters.
>>
>> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
>> ---
>>   arch/arm64/boot/dts/mediatek/mt8195.dtsi | 212 +++--------------------
>>   1 file changed, 27 insertions(+), 185 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
>> index 5d8b68f86ce4..8aa2bf142622 100644
>> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
>> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
>> @@ -3600,50 +3600,31 @@ dp_tx: dp-tx@1c600000 {
>>   	};
>>   
>>   	thermal_zones: thermal-zones {
>> -		cpu0-thermal {
>> +		cpu-little {
> 
> How is it related to the commit?
To aggregate all thermal sensors which are in same performance domain, 
we removes each individual nodes to create only two: cpu-little and cpu-big.
We need to remove the other nodes because their trips points and cooling 
devices would conflict with those we define for the multi sensor thermal 
zone.

Best Regards,
Alexandre
> 
> Does not look tested. You just introduced warnings.
> 
> Best regards,
> Krzysztof
> 

