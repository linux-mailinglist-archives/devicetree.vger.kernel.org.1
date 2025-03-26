Return-Path: <devicetree+bounces-161016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F9FA71D37
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 18:36:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F38D189D27F
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 17:35:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C1F123C8BD;
	Wed, 26 Mar 2025 17:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c4lE9c0M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D9823C8BB
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743010477; cv=none; b=R9KOE8I7JW1/0CzVkES/MLQe1LPGPx2okAHvv1bELnCaz1eqPcE5yl56vrb7i7qp1TTGrrObPQ58pILsJUDh7mDnybULSaxsdUguuCdPuRS3+sQz5uT6/CH8tA2l6e2zyQMmoJz27tbjYXbpQqi6m7/AWDdO0GUz9seiZ16v704=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743010477; c=relaxed/simple;
	bh=d++5ONVx7RwzpcgypUj2vz9ayuiQlVvW2lqp2ocsLHU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Uiglw6W4ghoqFiCGaQprFKE07tHg3yQcORlnwLFAdmX2YTFKH7zPPy++lTIStqTIE0861wgzWKeVgqw5DOmBIXL4O5IF8SjXJ9ZJnY1feQKakoE457iNlxNl1a1jqOuTb8RJajHennF+jNB5j66+UhI1jQil/Rht2pTJZl929eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c4lE9c0M; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3914aba1ce4so18149f8f.2
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 10:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743010474; x=1743615274; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3Kc6grXY/4NDWrY/FzCdkN9sWHiujZMChJehHgKAOrQ=;
        b=c4lE9c0Mt3a3gcHkH3tVzLRVjs9fn0p2xY1AnsGok3tUjoc3G0cTFwE0IajcU30ceA
         BYUUkSeGdNEjA5gF91mxtU6j8a1z69pnMpTRsIgkqv2QcbH9WmjxeA5R+8He6BdPmC6p
         ohFQuI3jWljWYS1msYddrkvtrloLoBO+9C17c14N6zXz4rtx+QI2BAgJRiTpl7dcFpny
         BDitLP9Q2vFli6QynQlcNaGGPhw9sEed7yQCLViiKpi1ZY+/HS6iYj7M8Yfv2C3LIesH
         ZOBo/vYqWRJYFK5xGz8Pj1w6Hh8mwi08tuMsZQdDw7ACq7ViGUgEV1Mdt+GFXimxWNYp
         RMZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743010474; x=1743615274;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Kc6grXY/4NDWrY/FzCdkN9sWHiujZMChJehHgKAOrQ=;
        b=lsCF29WfZbKrTUf+6sh6rKwbKXwfK9jXtbZC7/VtzQF83OWrD0AnQIhcdO7wNjC6If
         iwuwLEae8oU8+0v5p9rqNgKr0OtquLb0FE82ot6IxR2LYopOw6HETnGMUxDCKE/CUAoU
         TO4gysmtoCHGGs/jHQX1+VNKsYlwNfy8K3oNaI1S3JMPXgDjbNVPtupkxgwV0+9VdYQl
         2T2TZRrmpCD2K/fvYEfqYnOJiz8cXx5+4x5dP0jTvb/50AfAJGK/7+65Lbbu7JDySftb
         BHkOj1EfLM3iNhyOpkRnFM+VL25X7Xf4K29zLogpya1enqndJnTerBQNXp7N09jFDrUs
         9lBg==
X-Forwarded-Encrypted: i=1; AJvYcCXhfVOxLrFPKtCRlOlto6fPEBV2jqc7do6BM6V1o1bgV9uqg0mIZ2WljAts5GgiLuslsr9Y1+NsOQvK@vger.kernel.org
X-Gm-Message-State: AOJu0YxWyUQbbY7J+aFYXpEnlPbzcxsjaZHwSvpp2AL/jvI2WtRURwCb
	lkbWirVBWNV2ykH8LY/rHNZrGhgoDT0J4IksmQQDyFMeajOgncfEUBU47yKnPgI=
X-Gm-Gg: ASbGnctDFBELDGrnH5c/1sggTJInRxdMiGl8JChiwxNfwmGFohMXiQP+51YTbwK9dOg
	kLQHzVxbL87tjcGZlz2TLHgsv9/+iZqsTPolv6IktCGxV/rGRp/3BQeNqt4M50S3oqv3/kL9Dkw
	WLvCYVz3CWQ93p6YlwUKbDBqbKVdT4EBXskquN2hNIw+CeKHy05X39AUspL8dE4wMSVScJ4Rjjt
	dg1+7dBB+NKTIKAu3CXZh79Z/80vlQUSm29XCTV1kMKsRxqE/1/iZR1mTlO0MElS9ZjCeEZOp/s
	77SIIAqesWGj5QEKGSggf7yccmRGIB3LW6ZXxEHiK5m0CCjH6cuEQP3Yq1ZdVYre0NDYATFP7WN
	mwc+IK0s8vomCGbW6kDhH
X-Google-Smtp-Source: AGHT+IHdeS6vxWy8prYQAed7HAJqShZ+3HTkJj1XN9SebgqM93xuW3ecPahTEyTYzdf0ChCT/E3JCQ==
X-Received: by 2002:a05:6000:1a8a:b0:39a:ca05:54a9 with SMTP id ffacd0b85a97d-39ad1749384mr310868f8f.29.1743010473893;
        Wed, 26 Mar 2025 10:34:33 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d82f7c3d9sm9152365e9.36.2025.03.26.10.34.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Mar 2025 10:34:33 -0700 (PDT)
Message-ID: <afae182f-b264-4b57-acd7-2c2cf090e1ad@linaro.org>
Date: Wed, 26 Mar 2025 17:34:32 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: dt-bindings: Add OmniVision OV02C10
To: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org,
 hdegoede@redhat.com, mchehab@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sakari.ailus@linux.intel.com, hverkuil@xs4all.nl
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, bod@kernel.org
References: <20250324171508.GA668235-robh@kernel.org>
 <20250326150114.71401-1-bryan.odonoghue@linaro.org>
 <W8_0Ch2J0PWJ5pKHojZjFbM8huvxWlaWajtl_uhQF3UszGH_O8WTRZdQxh_eHs2JzLOx7CCxx01UZDHPQqAyCA==@protonmail.internalid>
 <1dd46a9e-e97d-415a-9e33-67ee234c4bac@kernel.org>
 <0de575dc-5afb-40fb-be30-99906d0e493b@linaro.org>
 <c1959f95-9ee1-4597-b6ec-fbedc8a872db@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <c1959f95-9ee1-4597-b6ec-fbedc8a872db@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/03/2025 17:19, Krzysztof Kozlowski wrote:
> On 26/03/2025 18:09, Bryan O'Donoghue wrote:
>> On 26/03/2025 15:40, Krzysztof Kozlowski wrote:
>>> On 26/03/2025 16:01, Bryan O'Donoghue wrote:
>>>> Add bindings for OVO2C10 a two megapixel 1080p RGB sensor.
>>>>
>>> You already sent this and got some review. What's more, it's exactly the
>>> same as OV02E10, so just put it to that file.
>>>
>>> Best regards,
>>> Krzysztof
>>
>> They aren't exactly the same.
>>
>> The i2c address of the sensors is different 0x10 for one and 0x36 the other.
>>
>> Also different data-rates for each chip.
> 
> 
> I meant bindings are exactly the same, unless I missed something.
> Devices are similar enough as well.
> 
>> Seems simpler to me to have two separate files ?
> 
> Not really, more files to maintain, more trivialities to fix if we
> decide to change something in all bindings (e.g. style).
> 
> Best regards,
> Krzysztof

Hmm, so we have two in-flight series and one yaml file.

OK, I'll drop this patch and add ov02c10 to the ov02e10 yaml as you suggest.

So long as the yaml file goes in first, the order of application of the 
ov02c10/ov02e10 drivers won't matter and can be fixed with a cherry-pick.

---
bod

