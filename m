Return-Path: <devicetree+bounces-13149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BAB7DCBA8
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 12:20:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 536A0281364
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 11:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03F3D19BB9;
	Tue, 31 Oct 2023 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y9a7Ye6m"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7EA16418
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 11:20:30 +0000 (UTC)
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A09FC2
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 04:20:27 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c51682fddeso73118051fa.1
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 04:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698751225; x=1699356025; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WaFOI0Gw6kDi9dU7QWDZ1HYnSrWAUkD+UDU2f1uDB0E=;
        b=Y9a7Ye6msWgIo/z4H7T0EYmnsttdZJSI5W/ykYdyGIqUPAFCJsv8whQAWyTyLWryBj
         wLyOfY1pvgwxu/9IIYXv7SqI+M7C9wPUFb1PqzMAfda3MdIP7nZkCp5lYMKilq/ttjmn
         FE+E7l+m9TKynMGvCV/DThlfwgSHIiE27YNK2xCgJIvUgcimBp21u3zvyExZb6zu4eBe
         9pRdPjYZGw9vbBGykoPTr7hnlDaA5iJyRyhTv8FAc94VBY98DGBTghYviRmQyfSIZtZ0
         mUhXbTDglkNxy7FGATBFe3dCnbxoI5kxN4rBUxXIyTv72s9B7FxUfjPK/eNFSpAKDcZb
         7XBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698751225; x=1699356025;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WaFOI0Gw6kDi9dU7QWDZ1HYnSrWAUkD+UDU2f1uDB0E=;
        b=srj4zp4MxMoD0E2vxjWww0o71Mxl2FYVpG6O4ZqXHI1djsq+y6BtX947rBgVb51v69
         I3KwgB8i4C1mAQ/t8HkfLFwpg6/tdzSLMoJ6irScirsqXjcyRVLE8viVLdcX2mFjMsHO
         o9JKETYzVwKAfIWkeyX9Uc2GMwFrEOZjE4MWb1DbhTTFcZB3DcfCFawFJrKbZfWPV33U
         pVhap5EfnFRJvXk/DnXmD+hwtso++fBFb6KvwfoSAgOyrJevWcW6SBoEAcuinSYcQGC7
         Mgwiqc+L8TpLIOcLeRfQLZQThxBDInF4p4S6IZsPENWRZVJ2YCJxfdRALJZn85wSsQGz
         nEpw==
X-Gm-Message-State: AOJu0YyjA8Yoi4UdyKlPhCCrZgvA+4QSHKrt1Xxq2N0+G3YeZhEC0EN6
	vG9CopkmAAd0QSrYX/jTpWWiCg==
X-Google-Smtp-Source: AGHT+IHJWZo6aPq/6oaBctWZK5OiFZHeCzJ2kYnbWvfihWWWt04SSGZ3Q3DiWnJ8WXLUb7qPbSZrJw==
X-Received: by 2002:a05:651c:2211:b0:2c4:fe28:7b45 with SMTP id y17-20020a05651c221100b002c4fe287b45mr1114252ljq.8.1698751225431;
        Tue, 31 Oct 2023 04:20:25 -0700 (PDT)
Received: from [192.168.143.96] (178235177091.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.91])
        by smtp.gmail.com with ESMTPSA id a11-20020a2eb54b000000b002c128e4524dsm166291ljn.116.2023.10.31.04.20.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 04:20:25 -0700 (PDT)
Message-ID: <cfa286e2-43a4-4fcf-9f14-776265cbf6d9@linaro.org>
Date: Tue, 31 Oct 2023 12:20:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: pm8916: Add BMS and charger
Content-Language: en-US
To: Nikita Travkin <nikita@trvn.ru>, Bjorn Andersson <andersson@kernel.org>
Cc: Stephan Gerhold <stephan@gerhold.net>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20231023-pm8916-dtsi-bms-lbc-v2-0-343e3dbf423e@trvn.ru>
 <20231023-pm8916-dtsi-bms-lbc-v2-2-343e3dbf423e@trvn.ru>
 <3dff444b-c439-4c40-9d21-1e390f449840@linaro.org>
 <b9c7f8662e4c02a4f9f275d27469f3be@trvn.ru>
 <f3c215a3-579a-4b4f-92bf-092c91234180@linaro.org>
 <ZTq7XGz4Ux8lYQho@gerhold.net>
 <e56bec85-46be-4c88-ae88-199e7272ccdd@linaro.org>
 <bd1da1d81f1345e25c37995af3014308@trvn.ru>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <bd1da1d81f1345e25c37995af3014308@trvn.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 27.10.2023 07:44, Nikita Travkin wrote:
> Konrad Dybcio писал(а) 27.10.2023 01:03:
>> On 10/26/23 21:17, Stephan Gerhold wrote:
>>> On Thu, Oct 26, 2023 at 08:54:00PM +0200, Konrad Dybcio wrote:
>>>> On 10/24/23 11:29, Nikita Travkin wrote:
>>>>> Konrad Dybcio писал(а) 24.10.2023 13:34:
>>>>>> On 10/23/23 08:20, Nikita Travkin wrote:
>>>>>>> pm8916 contains some hardware blocks for battery powered devices:
>>>>>>>
>>>>>>> - VM-BMS: Battery voltage monitoring block.
>>>>>>> - LBC: Linear battery charger.
>>>>>>>
>>>>>>> Add them to the pmic dtsi so the devices that make use of those blocks
>>>>>>> can enable them.
>>>>>>>
>>>>>>> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
>>>>>>> ---
>>>>>>>     arch/arm64/boot/dts/qcom/pm8916.dtsi | 48 ++++++++++++++++++++++++++++++++++++
>>>>>>>     1 file changed, 48 insertions(+)
>>>>>>>
>>>>>>> diff --git a/arch/arm64/boot/dts/qcom/pm8916.dtsi b/arch/arm64/boot/dts/qcom/pm8916.dtsi
>>>>>>> index f4de86787743..4b2e8fb47d2d 100644
>>>>>>> --- a/arch/arm64/boot/dts/qcom/pm8916.dtsi
>>>>>>> +++ b/arch/arm64/boot/dts/qcom/pm8916.dtsi
>>>>>>> @@ -41,6 +41,35 @@ watchdog {
>>>>>>>     			};
>>>>>>>     		};
>>>>>>>     +		pm8916_charger: charger@1000 {
>>>>>>> +			compatible = "qcom,pm8916-lbc";
>>>>>>> +			reg = <0x1000>, <0x1200>, <0x1300>, <0x1600>;
>>>>>>> +			reg-names = "chgr", "bat_if", "usb", "misc";
>>>>>>> +
>>>>>>> +			interrupts = <0x0 0x10 0 IRQ_TYPE_EDGE_BOTH>,
>>>>>>> +				     <0x0 0x10 5 IRQ_TYPE_EDGE_BOTH>,
>>>>>>> +				     <0x0 0x10 6 IRQ_TYPE_EDGE_BOTH>,
>>>>>>> +				     <0x0 0x10 7 IRQ_TYPE_EDGE_BOTH>,
>>>>>>> +				     <0x0 0x12 0 IRQ_TYPE_EDGE_BOTH>,
>>>>>>> +				     <0x0 0x12 1 IRQ_TYPE_EDGE_BOTH>,
>>>>>>> +				     <0x0 0x13 0 IRQ_TYPE_EDGE_BOTH>,
>>>>>>> +				     <0x0 0x13 1 IRQ_TYPE_EDGE_BOTH>,
>>>>>>> +				     <0x0 0x13 2 IRQ_TYPE_EDGE_BOTH>,
>>>>>>> +				     <0x0 0x13 4 IRQ_TYPE_EDGE_BOTH>;
>>>>>>> +			interrupt-names = "vbat_det",
>>>>>>> +					  "fast_chg",
>>>>>>> +					  "chg_fail",
>>>>>>> +					  "chg_done",
>>>>>>> +					  "bat_pres",
>>>>>>> +					  "temp_ok",
>>>>>>> +					  "coarse_det",
>>>>>>> +					  "usb_vbus",
>>>>>> So, both the charger and the USBIN driver use the same irq? :/
>>>>>>
>>>>>
>>>>> AFAIU the usbin extcon driver pretty much just tracks the state
>>>>> of the IRQ to report extcon. It happens to assume the same part
>>>>> of the pmic though, yes, which also means there will be no user
>>>>> that would enable both charger and vbus extcon, since charger
>>>>> driver provides this functionality as well.
>>>> So, should USBIN be removed from PM8916 dt since it's essentially
>>>> a part of the charger block?
>>>>
>>>
>>> The "USB_IN" pad of the PM8916 seems to be connected on pretty much all
>>> devices, even if they are using external chargers and the charging
>>> functionality of PM8916 is completely disabled. For those devices, the
>>> &pm8916_usbin device provides a convenient way to detect the USB state,
>>> even without a working charger driver.
>>>
>>> While we could modify the PM8916 charger driver and DT node to have some
>>> special mode where charging and battery monitoring is completely
>>> disabled and only the USBIN extcon is provided, I'm not sure if that
>>> would provide a significant advantage compared to just keeping the
>>> simple &pm8916_usbin node with the existing driver.
>> Hmm okay I see..
>>
>> Generally it's rather "no bueno" to have two DT nodes consuming the
>> same register space.. What happens when you enable BMS on a device
>> with a non-PM8916 charger? Does it correctly recognize "no battery"
>> etc.?
>>
> 
> The _charger and _bms are separate and communicate in a generic
> manner via power-supplies and supply core (see 3/3) so giving
> a different charger to _bms can work.
> 
> If an external charger is present in the device, qcom mandates
> "external charger" optional line of the pmic to be tied, and
> _charger is then disabled. The driver bails out in this case,
> but _usbin could still be used.
Meh..

I guess I'll reluctantly let it slide, unless Bjorn has some objections

Konrad

