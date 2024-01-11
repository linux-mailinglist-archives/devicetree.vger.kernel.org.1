Return-Path: <devicetree+bounces-31334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E067C82ADC2
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 12:46:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3DE65B22194
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 11:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E68D1549A;
	Thu, 11 Jan 2024 11:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T2FRndFl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E12156DD
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 11:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3376d424a79so3396237f8f.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 03:46:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704973565; x=1705578365; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=52xl0uhMvabERoEsPzcpHwQagOMexONVciD2fffBEEE=;
        b=T2FRndFlld+Y2NRdK/Z/XbfNFZh0Y8idhJnsES0whV0/EyeWHPl2Tz9qZgeDVYD1zb
         jeAaDu9apdasvx3Q851wv6Y9ZyetqR7IWgeAPonffqw8OUqUpVmkoC4KrrYRGNEqDWhA
         qRQIR4BesNFGMAsgpb83qKzeuDbIPd29V0Ewh59Jr549BTFD/YbbUvU64V5cj58xVGK/
         bFOn04mOdT8Iq2GsbKRJ8QyCBKkU0QYdWwuK0WT3f0m9HutiShQdeSntfgWl3JyPs9KN
         hjHwg0BClabX08H4QvbFRq+sczLUfeIWt+miFw6jBv0o9WGLXol7as64R4Mpd55VW78g
         u6xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704973565; x=1705578365;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=52xl0uhMvabERoEsPzcpHwQagOMexONVciD2fffBEEE=;
        b=nZIHBu5Jsv/roLZgR5N2gBIW7LgpqgCnMCjlhxAsI0cCWZDFETapdSynQJ5/pjHuGB
         hUcnSKuaoZZ3IR9f6zAsg+u3qjz/4wWMdT0j5+Y1oUL8VRHRhaIVUePemnDLapJW0JqH
         P6mz7/XLvB69jol7kDvUb17uUrcpSNDgHrNVAYSbklMvaP7CfPRVD4hFnQETX8uWNEgn
         cxxoXYkagWZrhh7uxLIGeIlD7zuKmzbO2adB7E/8kw/NiTsleaIntIkHRVMmaSybcXHT
         3wiRG6KiHE1zTMWdjbtzER0IGc67mzxlU0xYGixWL4XSnd29ojtI4g+I8E7CW9d2nDNJ
         3ukA==
X-Gm-Message-State: AOJu0YwvTINsjrhGRnzfh8/7G1SiUC0ZyE86Wzipki/udiL0gmUVdMDE
	6tKBZUxXxwWQCqERSWWidelAykC7leBWXQ==
X-Google-Smtp-Source: AGHT+IEQhnVs2f57xZIxlVHUCUvPIq6rtWsjynneoUuKaXrW/yGx34MRZRexyryQaiUamU8mOc3Y4Q==
X-Received: by 2002:adf:e2ca:0:b0:337:53d4:6b77 with SMTP id d10-20020adfe2ca000000b0033753d46b77mr508671wrj.56.1704973565326;
        Thu, 11 Jan 2024 03:46:05 -0800 (PST)
Received: from [192.168.100.48] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id h18-20020adf9cd2000000b00336a1f6ce7csm1019372wre.19.2024.01.11.03.46.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jan 2024 03:46:04 -0800 (PST)
Message-ID: <c98a234d-3c4a-43bd-b26b-52cd72588cc7@linaro.org>
Date: Thu, 11 Jan 2024 11:46:14 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: sc8280xp: camss: Add CCI
 definitions
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240109-linux-next-24-01-02-sc8280xp-camss-core-dtsi-v3-0-b8e3a74a6e6a@linaro.org>
 <20240109-linux-next-24-01-02-sc8280xp-camss-core-dtsi-v3-3-b8e3a74a6e6a@linaro.org>
 <4f8aafa2-2145-4090-afba-8a26242d5ac3@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <4f8aafa2-2145-4090-afba-8a26242d5ac3@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/01/2024 11:03, Konrad Dybcio wrote:
> 
> 
> On 1/9/24 17:06, Bryan O'Donoghue wrote:
>> sc8280xp has four Camera Control Interface (CCI) blocks which pinout to
>> two I2C master controllers for each CCI.
>>
>> The CCI I2C pins are not muxed so we define them in the dtsi.
>>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 307 
>> +++++++++++++++++++++++++++++++++
>>   1 file changed, 307 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi 
>> b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>> index febf28356ff8..f48dfa5e5f36 100644
>> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>> @@ -3451,6 +3451,169 @@ usb_1_role_switch: endpoint {
>>               };
>>           };
>> +        cci0: cci@ac4a000 {
>> +            compatible = "qcom,sc8280xp-cci", "qcom,msm8996-cci";
>> +            reg = <0 0x0ac4a000 0 0x1000>;
>> +
>> +            interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
>> +
>> +            clocks = <&camcc CAMCC_CAMNOC_AXI_CLK>,
>> +                 <&camcc CAMCC_SLOW_AHB_CLK_SRC>,
>> +                 <&camcc CAMCC_CPAS_AHB_CLK>,
>> +                 <&camcc CAMCC_CCI_0_CLK>;
>> +            clock-names = "camnoc_axi",
>> +                      "slow_ahb_src",
>> +                      "cpas_ahb",
>> +                      "cci";
>> +
>> +            power-domains = <&camcc TITAN_TOP_GDSC>;
>> +
>> +            pinctrl-names = "default", "sleep";
>> +            pinctrl-0 = <&cci0_default>;
>> +            pinctrl-1 = <&cci0_sleep>;
>> +
> property-names goes below property-n, just like with clocks 10 lines
> above :/

Didn't you ask for this to be re-ordered ?

https://lore.kernel.org/linux-arm-msm/d8b2867f-7fc6-4147-ae48-11bbf580b5bf@linaro.org/

quote

"
 > +
 > +			pinctrl-0 = <&cci0_default>;
 > +			pinctrl-1 = <&cci0_sleep>;
 > +			pinctrl-names = "default", "sleep";

please refer to Documentation/devicetree/bindings/dts-coding-style.rst
"

Never mind I suppose.

---
bod

