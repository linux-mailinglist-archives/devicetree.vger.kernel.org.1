Return-Path: <devicetree+bounces-31126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8647F82A0EB
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 20:17:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FA8F285C18
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 19:17:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D34F24E1CC;
	Wed, 10 Jan 2024 19:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wadM01b8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53E54E1C0
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 19:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2cd61dd39d9so31072121fa.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 11:17:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704914221; x=1705519021; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oH8dVFR7fs+Y3NekJ157RJ+BhC7asfmcFl5TuYO3WQY=;
        b=wadM01b8VWH3Lqyl1M1BHRofLLQiTpjUclDg7QWXnu/6iNL3t0R1hgSZLdQ/2YNn8G
         C1DbJot8m9o30wjpAuZ+GOflvLSOBmdUhdUcWtWmVzL+xUiBXr9nRGKU9TfGMWco8c33
         JF+y55lWeCXPdmUEFFosepNze6BqNjQV1zbqJ/w/2i+sWCqIDV00wBHV7sB/lRs6YVWY
         sO+gkzzTLnnluvgwYcbIV36hUh/XLMeH/HkMEh/g6YcYyDIkW+ezQZtHdJAL9li7O7/H
         K2xAQbi4cnSjcjn+k7Jw+dgf2KlAG/wj0gTTUruuTtIRiOEJCL7CWaPHqs1c16jPdQ/2
         slBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704914221; x=1705519021;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oH8dVFR7fs+Y3NekJ157RJ+BhC7asfmcFl5TuYO3WQY=;
        b=vWlJtM9hf1eIQuo2QN0WTy1fjGSmURuQmt3aNMIWQT1O3gm82q7jQXxqoMlZEjjhxb
         l0UHsSzXpvi8NIeOiphCkquD6UzzRh3vFEZrYdGzRwavw/t26CndXxQokVGfaXye28Sm
         2aR5T4SlZUucs7soB1A+jNXZep9/IRm4dx9cslJgikk4QRuFB+NTNwxalvQlgVnrE7T5
         qV5t5AiZUVNZCLbZHCQ5SwyWdi7yGF2y3/xPye2FZG76pDfS/gi2q4dNW4uD/rsgHESz
         eoik+fTsZiI5zitDFKAnh6u/l7eKn49qMq/G8dummFSEIG6fqBdc7NmDz82M3WHIfCkp
         3Dpw==
X-Gm-Message-State: AOJu0YwUC9nsMbhFI/OlzkhC++U2g0kgCda3+gxkdz81O0DqgktI3Nhe
	fN444Gm0T7B7geZBIKk6nM4dVmiSKT0h8g==
X-Google-Smtp-Source: AGHT+IFFBT8XkvajyT0awBKJeARmpHCr/CTOjV/dxIffA/sp5Uzs5cHt/T6dvuRHcN3AUUgNy6eFqA==
X-Received: by 2002:a2e:9890:0:b0:2cd:4b4a:5c23 with SMTP id b16-20020a2e9890000000b002cd4b4a5c23mr21500ljj.69.1704914220918;
        Wed, 10 Jan 2024 11:17:00 -0800 (PST)
Received: from [172.30.205.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id t21-20020a2e9555000000b002ccc6f06e2dsm844470ljh.128.2024.01.10.11.16.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jan 2024 11:17:00 -0800 (PST)
Message-ID: <f78ce9e6-0a25-4e08-b972-db055b7afd71@linaro.org>
Date: Wed, 10 Jan 2024 20:16:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm7225-fairphone-fp4: Add PM6150L
 thermals
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
References: <20240105-fp4-thermals-v1-0-f95875a536b7@fairphone.com>
 <20240105-fp4-thermals-v1-2-f95875a536b7@fairphone.com>
 <18dc5f88-6590-4e2d-948f-fd77f4713f8b@linaro.org>
 <CYA4ZGOQOJXY.2RO98RBCDKK5J@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CYA4ZGOQOJXY.2RO98RBCDKK5J@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/9/24 12:24, Luca Weiss wrote:
> On Tue Jan 9, 2024 at 11:09 AM CET, Konrad Dybcio wrote:
>>
>>
>> On 1/5/24 15:54, Luca Weiss wrote:
>>> Configure the thermals for the PA_THERM1, MSM_THERM, PA_THERM0,
>>> RFC_CAM_THERM, CAM_FLASH_THERM and QUIET_THERM thermistors connected to
>>> PM6150L.
>>>
>>> Due to hardware constraints we can only register 4 zones with
>>> pm6150l_adc_tm, the other 2 we can register via generic-adc-thermal.
>>
>> Ugh.. so the ADC can support more inputs than the ADC_TM that was
>> designed to ship alongside it can?
>>
>> And that's why the "generic-adc-thermal"-provided zones need to
>> be polled?
> 
> This part of the code from qcom-spmi-adc-tm5.c was trigerring if I
> define more than 4 channels, and looking at downstream I can also see
> that only 4 zones are registered properly with adc_tm, the rest is
> registered with "qcom,adc-tm5-iio" which skips from what I could tell
> basically all the HW bits and only registering the thermal zone.
> 
> 
> 	ret = adc_tm5_read(chip, ADC_TM5_NUM_BTM,
> 			   &channels_available, sizeof(channels_available));
> 	if (ret) {
> 		dev_err(chip->dev, "read failed for BTM channels\n");
> 		return ret;
> 	}
> 
> 	for (i = 0; i < chip->nchannels; i++) {
> 		if (chip->channels[i].channel >= channels_available) {
> 			dev_err(chip->dev, "Invalid channel %d\n", chip->channels[i].channel);
> 			return -EINVAL;
> 		}
> 	}
> 
> 
>>
>>>
>>> The trip points can really only be considered as placeholders, more
>>> configuration with cooling etc. can be added later.
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>> [...]
>>
>> I've read the sentence above, but..
>>> +		sdm-skin-thermal {
>>> +			polling-delay-passive = <1000>;
>>> +			polling-delay = <5000>;
>>> +			thermal-sensors = <&msm_therm_sensor>;
>>> +
>>> +			trips {
>>> +				active-config0 {
>>> +					temperature = <125000>;
>>> +					hysteresis = <1000>;
>>> +					type = "passive";
>>
>> I don't fancy burnt fingers for dinner!
> 
> With passive trip point it wouldn't even do anything now, but at what
> temp do you think it should do what? I'd definitely need more time to
> understand more of how the thermal setup works in downstream Android,
> and then replicate a sane configuration for mainline with proper
> temperatures, cooling, etc.
If "skin therm" means "the temperature of some part of the phone's
body that can be felt with a human hand", then definitely some
throttling should happen at 40ish with heavy throttling at 50
and crit at 55 or so..

We should probably make this a broader topic and keep a single
policy for all supported phones.

+ CC AGdR, may be interested in where this leads

Konrad

