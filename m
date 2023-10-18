Return-Path: <devicetree+bounces-9808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFD97CE8D1
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 22:28:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B7F35B20EE6
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:28:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 733843DFF1;
	Wed, 18 Oct 2023 20:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mkWYfqQq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E563DFF0
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 20:28:26 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08D9AD68
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 13:28:17 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-507be298d2aso3396113e87.1
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 13:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697660896; x=1698265696; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1IkfvvSOsBHtTtrxwDROKr8J2+syziWFNikOdZa81Lk=;
        b=mkWYfqQqjb878ItjeyYcPAoG0BJ3aTsas2sb2gwBo+WwhMWDee04ln5rcE4/DnhAPU
         mhroC/KttNdHg2mtZfRzMc7p5TSM6COHpUrTMTK4oIzvlPfNx7waf9NsOSxg8zgq6Pgt
         +O9IDirCWv2BLeMchjal9h8TKVLsa8j8CiWfqQLCqEp7sc6+FFXv9PyHJppX+igvLDZA
         qBMJ8GGgIzMeLJ6ovbHbtGEW8Uf21+dL8mtthYiRSL6AER8ohAmAcIioZ/n7XdfXXyE6
         oT+56kc47k9QJW6gFoVxTqkPI9qqWM6vXkbZVEKDgRoXtqQRXLwGztyv5JpcQ8AqtR+n
         e9WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697660896; x=1698265696;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1IkfvvSOsBHtTtrxwDROKr8J2+syziWFNikOdZa81Lk=;
        b=OB582Xztv5C2QfK2BwynR2PsSuO2IiqvoyBFdbaNd+UqsXXBuI99tUy24M0BPkYIzI
         UdcPAiBSDx0qx/PZmeW4R8Ez3oiVTz7Vzal+gZS42ElUeTQOwz6he1aQBIuHk+yMZf6/
         M6mfxt/FAG82oEAprPMlvCi4G8Zgi+Ba46ArjkVkXtpRzrJ/890xxi67XutySALqDsl2
         W4/3Ti0V3/MZ3HHe7v2ez+sv9Z7lt5mlrGNP2tIKSNjdz3jnJeV0GjkOiYAPvrKGtVY2
         fOhgahatG2R97pA2KFB1AL4BXT5n84KOfVfEJtdik8Yfw8FEEQ2gEgah9VVvSO8pajjj
         7q7A==
X-Gm-Message-State: AOJu0YyUN33f+Lr7q2J6OrzPK+NlIngP79sP4npv8BucS6RQTVz2v2eM
	issWt4SuzSm6JSPpJAWfoNZkCQ==
X-Google-Smtp-Source: AGHT+IG8XQIHxsr/RXLobSRarxMuGa2jh08MntDK4B5b0mJ7E/k80IR779VemDrdi8r7WBRejm78mw==
X-Received: by 2002:a19:f603:0:b0:500:b42f:1830 with SMTP id x3-20020a19f603000000b00500b42f1830mr46218lfe.63.1697660895733;
        Wed, 18 Oct 2023 13:28:15 -0700 (PDT)
Received: from [172.30.205.86] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id v12-20020ac2558c000000b00507aced147esm825302lfg.203.2023.10.18.13.28.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 13:28:15 -0700 (PDT)
Message-ID: <5ac0d16a-0303-46c7-a008-31280629cc11@linaro.org>
Date: Wed, 18 Oct 2023 22:28:13 +0200
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
To: Luca Weiss <luca@z3ntu.xyz>, Luca Weiss <luca.weiss@fairphone.com>,
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
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <4958673.31r3eYUQgx@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/14/23 19:52, Luca Weiss wrote:
> On Samstag, 14. Oktober 2023 01:13:29 CEST Konrad Dybcio wrote:
>> On 13.10.2023 10:09, Luca Weiss wrote:
>>> Configure the thermals for the QUIET_THERM, CAM_FLASH_THERM, MSM_THERM
>>> and RFC_CAM_THERM thermistors connected to PM7325.
>>>
>>> With this PMIC the software communication to the ADC is going through
>>> PMK7325 (= PMK8350).
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>>
>>>   arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 117
>>>   +++++++++++++++++++++ 1 file changed, 117 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>> b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts index
>>> 2c01f799a6b2..d0b1e4e507ff 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>> @@ -9,6 +9,7 @@
>>>
>>>   #define PM7250B_SID 8
>>>   #define PM7250B_SID1 9
>>>
>>> +#include <dt-bindings/iio/qcom,spmi-adc7-pm7325.h>
>>>
>>>   #include <dt-bindings/iio/qcom,spmi-adc7-pmk8350.h>
>>>   #include <dt-bindings/leds/common.h>
>>>   #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>>>
>>> @@ -137,6 +138,20 @@ afvdd_2p8: regulator-afvdd-2p8 {
>>>
>>>   	};
>>>   	
>>>   	thermal-zones {
>>>
>>> +		camera-thermal {
>>> +			polling-delay-passive = <0>;
>>> +			polling-delay = <0>;
>>> +			thermal-sensors = <&pmk8350_adc_tm 2>;
>>> +
>>> +			trips {
>>> +				active-config0 {
>>> +					temperature = <125000>;
>>
>> are
>>
>>> +		rear-cam-thermal {
>>>
>>> +					temperature = <125000>;
>>
>> you
>>
>>> +		sdm-skin-thermal {
>>>
>>> +					temperature = <125000>;
>>
>> sure
>>
>> about these temps?
> 
> (email from my other address, quicker right now)
> 
> Well yes and no.
> 
> Yes as in those are the temps specified in downstream dtb.
> No as in I'm 99% sure there's user space with definitely lower threshold that
> actually does something in response to the temps.
> 
> I didn't look too much into this but does the kernel even do something when it
> hits one of these trip points? I assume when there's a cooling device thing
> specified then it can actually tell the driver to do something, but without
> (and most drivers don't support this?) I'm assuming the kernel can't do much
> anyways?
> 
> So e.g. when the temperature for the flash led is reached I'm assuming
> downstream (+Android) either dims the led or turns it off? But I'd have to dig
> quite a bit into the thermal setup there to check what it's really doing.
I think reaching "critical" shuts down the platform, unless something
registering the thermal zone explicitly overrides the behavior.

> 
> But for now I think it's okay to put this current thermal config into dts and
> we'll improve it later when 1. I understand more and 2. maybe some useful
> drivers support the cooling bits?
Yeah it's better than nothing, but ultimately we should probably move
the values that userspace daemon operates on here in the dt..

Konrad

