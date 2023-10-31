Return-Path: <devicetree+bounces-13131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1F77DCA5D
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 11:06:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6B556B20B91
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 10:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 048FCD28D;
	Tue, 31 Oct 2023 10:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oh9TIwDC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713D220EE
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 10:06:51 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3502CFC
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 03:06:49 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-507a5f2193bso6075125e87.1
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 03:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698746807; x=1699351607; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dSMdT3bgIwz4v1Mx9wkamTkECO9XGv8qtfa6U2f2xS4=;
        b=oh9TIwDCR9EcjGFT8bTTcrgh42egGpipwBq2+pADqlqu1x6H1D0+Dz0Gw2I31YChF4
         lciZ/p82eouqet/cc47TrBapQ0OrJK+4oSq3WVJfwFjCRTQtySRf08mUJc/z2/1la/Dz
         74gQgaZ39q2rQwIH1g9f0KoooqHDznp/kvLMytPWMu+5W8Nf5FqIX3AD5Xw3V011gdql
         p2vZ+kMpLQMnRQQn4pH60repNQU/ATaPlDbul2bvCmB88AwiY1C63I+tZCPS4A842wdk
         VFAiehLS4a1nJjYqNTdQ4k7P+s5a5oB0cFHIgC8ILoi+SP0p7VST4fJl27NcqmeT4v0c
         mMxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698746807; x=1699351607;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dSMdT3bgIwz4v1Mx9wkamTkECO9XGv8qtfa6U2f2xS4=;
        b=w6kFpTACZJJvhtYQO6nHZjxsImaWWSXvx7jU3/jUj++TYsMR2Hjoxo/HoYEaD5Bf1r
         PniGb8gITsA1vgx5We7re88cbqkfJamvAcax+Un2oCIckQsmgySHielU3xIq3tOaPgk/
         DYplGeLxDMlkoXjHAiXI7DOl6ThbBJTYc2FwpLQDLY+vdYsJYDMGcihy8Jbh6ZwqBZVk
         Lq9Yodbi5ZEC+RToDlG42zM5bytK0KcEvDNjoP/VeH3jCYcMzDGe3oRapvz65C5k47LG
         T8t2//0WZeps2e6BGQKSxkZCg6FTYWziiZ1iYouPu0FK98ub0y7jztwhKxxWXwitpiAT
         vv2w==
X-Gm-Message-State: AOJu0YyaKjQFWeTcGlX8Py4WOq9f9Ko0UdxZENF94R+agJh1zWd0wuTY
	MtdwJO0dfVD1U0cE45oFsymX2w==
X-Google-Smtp-Source: AGHT+IFjtOa7kZn7L0qpsXnsTCc9IAB5Kfl8q9+JEvUP0t2bkIxxZzFFlR25mBlrP5/0f8RQV6SzJA==
X-Received: by 2002:a05:6512:3ca9:b0:505:7163:c132 with SMTP id h41-20020a0565123ca900b005057163c132mr845191lfv.7.1698746807170;
        Tue, 31 Oct 2023 03:06:47 -0700 (PDT)
Received: from [192.168.143.96] (178235177091.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.91])
        by smtp.gmail.com with ESMTPSA id i21-20020a056512341500b00507a0098421sm165357lfr.181.2023.10.31.03.06.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 03:06:46 -0700 (PDT)
Message-ID: <7d4140bb-9cc6-4686-8794-9388c7ab0792@linaro.org>
Date: Tue, 31 Oct 2023 11:06:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: acer-aspire1: Correct audio codec
 definition
Content-Language: en-US
To: Nikita Travkin <nikita@trvn.ru>
Cc: cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231027-aspire1-sound-v1-0-5ff3cf8b5701@trvn.ru>
 <20231027-aspire1-sound-v1-2-5ff3cf8b5701@trvn.ru>
 <3a423cb7-cdf1-433a-a848-8636917640bb@linaro.org>
 <eda1c91bd2dce76e633dd82ad3105355@trvn.ru>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <eda1c91bd2dce76e633dd82ad3105355@trvn.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 31.10.2023 08:20, Nikita Travkin wrote:
> Konrad Dybcio писал(а) 31.10.2023 02:48:
>> On 27.10.2023 16:42, Nikita Travkin wrote:
>>> When initially added, a mistake was made in the definition of the codec.
>>>
>>> Despite the fact that the DMIC line is connected on the side of the
>>> codec chip, and relevant passive components, including 0-ohm resistors
>>> connecting the dmics, are present, the dmic line is still cut in
>>> another place on the board, which was overlooked.
>>>
>>> Correct this by replacing the dmic configuration with a comment
>>> describing this hardware detail.
>>>
>>> While at it, also add missing regulators definitions. This is not a
>>> functional change as all the relevant regulators were already added via
>>> the other rail supplies.
>>>
>>> Fixes: 4a9f8f8f2ada ("arm64: dts: qcom: Add Acer Aspire 1")
>>> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
>>> ---
>>>  arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts | 17 +++++++++++++++--
>>>  1 file changed, 15 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
>>> index cfde8cd47107..00b442696618 100644
>>> --- a/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
>>> @@ -209,9 +209,22 @@ alc5682: codec@1a {
>>>  		AVDD-supply = <&vreg_l15a_1p8>;
>>>  		MICVDD-supply = <&reg_codec_3p3>;
>>>  		VBAT-supply = <&reg_codec_3p3>;
>>> +		DBVDD-supply = <&vreg_l15a_1p8>;
>>> +		LDO1-IN-supply = <&vreg_l15a_1p8>;
>>> +
>>> +		/*
>>> +		 * NOTE: The board has a path from this codec to the
>>> +		 * DMIC microphones in the lid, however some of the option
>>> +		 * resistors are absent and the microphones are connected
>>> +		 * to the SoC instead.
>> Would that not also require more DT changes and maybe UCM?
> 
> I don't think I had any other descriptions to support the dmic in
> the initial set (first audio support for this board is 3/3 here)
> and there is no upstream UCM yet - I will probably hold it off until
> I get vamacro and dmic on it working.
I was told that VAMACRO is "the easiest thing possible to get going"
(paraphrasing), did you go through something like this sequence [1]?

https://git.linaro.org/people/srinivas.kandagatla/alsa-ucm-conf.git/tree/ucm2/codecs/qcom-lpass/va-macro/DMIC0EnableSeq.conf?h=x13s&id=244979b03f5b9284e6a68eae6f9995f6ac735be8

Konrad

