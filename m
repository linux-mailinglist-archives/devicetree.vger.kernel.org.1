Return-Path: <devicetree+bounces-10549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C294F7D1E3B
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 18:22:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E12F281CEE
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 16:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98F3AD505;
	Sat, 21 Oct 2023 16:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HZc0/7Li"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5357FA52
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 16:22:41 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA0FED7C
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 09:22:26 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2c504a5e1deso30029851fa.2
        for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 09:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697905345; x=1698510145; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bq4OEcwD40oryiY81T817LlNpOkk1oBYf6X08dXM5lM=;
        b=HZc0/7LiCDpQAz3/J1MM0KFQ7YwQAmYjW00L7nzTWJ3UgqmXmXS8qbmOD+Cie6Xq+5
         jLLdLgdntKRTKRFnN+qeYfYSUvSRyHOx9GptSJAf/UljTKJAMFGOosCosZ4XCbrAQcmA
         CiGvAGhWJqCIdrtl43pOCZyPyoQHwZTTlX5qBS2/nG3on5uOEnfvYnpe0z3XYfnmfRmk
         n09SD6aWmwvYy0wdItPnk5uyyIlnva+QCk1KtkfdPB3lyEHYdDWsfBOpQOP29WqZX+NE
         NMyUxmn4X1PpOyj68Uc7Nr5JhnB7GPygEldsRhYXAzTvOwn7q12Skr1POjgp79jBnMT4
         XrAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697905345; x=1698510145;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bq4OEcwD40oryiY81T817LlNpOkk1oBYf6X08dXM5lM=;
        b=GJKKSU9/teu3ANGWAQuwi9X4FtV/x0W2zCf+zu1VjspgHRm3XZ77JI/K04AeAEiunY
         w5IegTYmzAHH6X0UQ/cRaf3qRShw81OJCXNlWNZ4qwJ9K8P4AeKYIrG3bOzoDcl64MYs
         ey9vWyfHCq+W7ePI1EU+Rsne0Fmn4X8N767PbG+lbnHPv4yzhMi5tKP+g1OZsE2gYUKt
         3+4zJW6RoAIKIrL7vUyxfCCOmeAOMLluEhd7RhsiDtY9dBqV3yNlTM/osFzjCId2ZZr+
         QALzxUs11l4drSIOCMCRhXqzL5/0QCm7+VytuOr1BUQxm2HXmEd5eFRdGHxtBxshQzGp
         7wcA==
X-Gm-Message-State: AOJu0Yxo4ase3sAVCNpKSZdkNUh2Me751EtZhT0b72hcEomn4W6sl8jg
	Hmy2FhNhpEqgy9JWRDgpJWtt+w==
X-Google-Smtp-Source: AGHT+IE4SQlDKL3C8DoT4QQEe8B1Xg/q1a1xGIoy+N5YYsQVIl2h3Ew9Mq7OT46yW7hK/1Y9L5ZQrw==
X-Received: by 2002:a2e:a690:0:b0:2bf:f670:36dc with SMTP id q16-20020a2ea690000000b002bff67036dcmr2963289lje.49.1697905344949;
        Sat, 21 Oct 2023 09:22:24 -0700 (PDT)
Received: from [192.168.1.116] (abyl4.neoplus.adsl.tpnet.pl. [83.9.31.4])
        by smtp.gmail.com with ESMTPSA id j10-20020a2e3c0a000000b002b657f10b78sm867290lja.58.2023.10.21.09.22.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Oct 2023 09:22:24 -0700 (PDT)
Message-ID: <9a37d4a4-dcdf-4c39-8059-b640969f242a@linaro.org>
Date: Sat, 21 Oct 2023 18:22:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: qcm6490-fairphone-fp5: Add PM7325
 thermals
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, Luca Weiss <luca@z3ntu.xyz>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht
Cc: phone-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20231013-fp5-thermals-v1-0-f14df01922e6@fairphone.com>
 <20231013-fp5-thermals-v1-4-f14df01922e6@fairphone.com>
 <34da335e-cbcd-4dc2-8a86-f31369db1fcd@linaro.org>
 <4958673.31r3eYUQgx@z3ntu.xyz>
 <5ac0d16a-0303-46c7-a008-31280629cc11@linaro.org>
 <CWD8E95B0W8L.1UMMGJXJF47D@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CWD8E95B0W8L.1UMMGJXJF47D@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/20/23 13:31, Luca Weiss wrote:
> On Wed Oct 18, 2023 at 10:28 PM CEST, Konrad Dybcio wrote:
>>
>>
>> On 10/14/23 19:52, Luca Weiss wrote:
>>> On Samstag, 14. Oktober 2023 01:13:29 CEST Konrad Dybcio wrote:
>>>> On 13.10.2023 10:09, Luca Weiss wrote:
>>>>> Configure the thermals for the QUIET_THERM, CAM_FLASH_THERM, MSM_THERM
>>>>> and RFC_CAM_THERM thermistors connected to PM7325.
>>>>>
>>>>> With this PMIC the software communication to the ADC is going through
>>>>> PMK7325 (= PMK8350).
>>>>>
>>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>>> ---
>>>>>
>>>>>    arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 117
>>>>>    +++++++++++++++++++++ 1 file changed, 117 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>>>> b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts index
>>>>> 2c01f799a6b2..d0b1e4e507ff 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>>>> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>>>> @@ -9,6 +9,7 @@
>>>>>
>>>>>    #define PM7250B_SID 8
>>>>>    #define PM7250B_SID1 9
>>>>>
>>>>> +#include <dt-bindings/iio/qcom,spmi-adc7-pm7325.h>
>>>>>
>>>>>    #include <dt-bindings/iio/qcom,spmi-adc7-pmk8350.h>
>>>>>    #include <dt-bindings/leds/common.h>
>>>>>    #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>>>>>
>>>>> @@ -137,6 +138,20 @@ afvdd_2p8: regulator-afvdd-2p8 {
>>>>>
>>>>>    	};
>>>>>    	
>>>>>    	thermal-zones {
>>>>>
>>>>> +		camera-thermal {
>>>>> +			polling-delay-passive = <0>;
>>>>> +			polling-delay = <0>;
>>>>> +			thermal-sensors = <&pmk8350_adc_tm 2>;
>>>>> +
>>>>> +			trips {
>>>>> +				active-config0 {
>>>>> +					temperature = <125000>;
>>>>
>>>> are
>>>>
>>>>> +		rear-cam-thermal {
>>>>>
>>>>> +					temperature = <125000>;
>>>>
>>>> you
>>>>
>>>>> +		sdm-skin-thermal {
>>>>>
>>>>> +					temperature = <125000>;
>>>>
>>>> sure
>>>>
>>>> about these temps?
>>>
>>> (email from my other address, quicker right now)
>>>
>>> Well yes and no.
>>>
>>> Yes as in those are the temps specified in downstream dtb.
>>> No as in I'm 99% sure there's user space with definitely lower threshold that
>>> actually does something in response to the temps.
>>>
>>> I didn't look too much into this but does the kernel even do something when it
>>> hits one of these trip points? I assume when there's a cooling device thing
>>> specified then it can actually tell the driver to do something, but without
>>> (and most drivers don't support this?) I'm assuming the kernel can't do much
>>> anyways?
>>>
>>> So e.g. when the temperature for the flash led is reached I'm assuming
>>> downstream (+Android) either dims the led or turns it off? But I'd have to dig
>>> quite a bit into the thermal setup there to check what it's really doing.
>> I think reaching "critical" shuts down the platform, unless something
>> registering the thermal zone explicitly overrides the behavior.
> 
> Should probably be easy to test, especially the camera flash thermal
> zone heats up *very* quickly when the flash is on, so should be trivial
> to set the trip point down from 125degC to e.g. 45degC and see what
> happens.
> 
> So I did this and... nothing happened.
> I watched /sys/class/thermal/thermal_zone34/temp climb above 45degC and
> nothing happened.
> 
> I guess trip type being "passive" and no cooling-device makes it not do
> anything.
> 
>    ==> /sys/class/thermal/thermal_zone34/trip_point_0_hyst <==
>    1000
>    ==> /sys/class/thermal/thermal_zone34/trip_point_0_temp <==
>    45000
>    ==> /sys/class/thermal/thermal_zone34/trip_point_0_type <==
>    passive
> 
>  From Documentation/devicetree/bindings/thermal/thermal-zones.yaml:
> 
>    - active   # enable active cooling e.g. fans
>    - passive  # enable passive cooling e.g. throttling cpu
>    - hot      # send notification to driver
>    - critical # send notification to driver, trigger shutdown
> 
> So unless we want to just shut down the system (with "critical"), I
> don't think thermal can't really do anything else right now, since e.g.
> leds-qcom-flash.c driver doesn't have any cooling support to lower the
> brightness or turn off the LED.
> 
> So.. in essence not much we can do right now.
Yeah.. crashing the phone because the LED is too hot is sorta
suboptimal! Though I mainly had the skin temp in mind..

> 
> But seems we also cannot remove this (kinda useless) trip since we need
> at least one trip point in the dts if I read the bindings yaml
> correctly.
Right

> 
>>
>>>
>>> But for now I think it's okay to put this current thermal config into dts and
>>> we'll improve it later when 1. I understand more and 2. maybe some useful
>>> drivers support the cooling bits?
>> Yeah it's better than nothing, but ultimately we should probably move
>> the values that userspace daemon operates on here in the dt..
> 
> For sure.. I spent a bit of time looking into the proprietary Qualcomm
> thermal-daemon sources but didn't really see much interesting things
> there for this platform, maybe some of this thermal handling is
> somewhere else - or half of these thermal zones aren't even used with
> Android.
> 
> So.. good to get the current patch upstream or not? :)
Yep, just having the ability to read out thing is always good ;)

Konrad

