Return-Path: <devicetree+bounces-23066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A81C380A280
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 12:45:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C81FB1C204F8
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 11:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6114B1B29F;
	Fri,  8 Dec 2023 11:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QbqUoYpt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5BD4D59
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 03:45:23 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3335397607dso2368650f8f.1
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 03:45:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702035922; x=1702640722; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2UbWvB06mmfALjtcN8mYvlcjQ9XovqclQuk0oMAZDfk=;
        b=QbqUoYptT/Z2dQPIhigk0LFXF9EYfrVP3JD4/ZH7NmRjjsXjai4F1OzQ7pKKDsnvkV
         vlYxT7ekakI8oiwXBjYfETSH1wJO55WecUy/iMQpggFYISHQAUmJ60FeulRxgitbtBcj
         aiYzbK0sRCt1ykqEYT5BRxcJd4Vc/SrbdvpkrructJTwzweM/pWwFq8SVjOnKt54+G62
         hfvlY165k6lC6mS29PiVen6WbLt5EBV+RKlIzgUOWtOPZUalJsblrSr0zhJYVRibG+56
         B2sS7szttl7zIdJs0dcEcQPV1p1SaKRplheKOox4nxuU4QiRwmrxPmsyzREq5Prbz/pD
         bBig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702035922; x=1702640722;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2UbWvB06mmfALjtcN8mYvlcjQ9XovqclQuk0oMAZDfk=;
        b=QTgBKrZyJtIcR2Gtt8YmS+2Nc3rnMD4Z38jjMdQ/VeRTrKstoxcgqJXlKixQ2pAVDZ
         Tb70s1Fwah0wPkFs2K7cQ6DMWT1GkORLpCWWzGJCiByRlk9tgM1MCR3avgf8hbb5MIFS
         nPJw8nN9TvVnd1M31lsxc4+kkjqGzt9SI660r9vLm/t8Pw46Ie4JrO0LDJysL60KeJlH
         07+a/T7vbiXa3RC95qk/3LPwpYPv4/DtOVA0Pg3t+1pCpK0iQ1ERqBqOnG+CRGRWJlnm
         PxMsexWCsl0jpEFrCiewzCRXRenwcrTIoiRsKksSZhBhfOftRdLMo2/XYL9/I/Luu5v2
         LVZQ==
X-Gm-Message-State: AOJu0YzY21B3wjUulqXRCtZUBRZASVcmJwQQuR4lCvLIhAK3KIbAYajF
	5AwTsI4mmf0jw6l+ok/eFQ7Euw==
X-Google-Smtp-Source: AGHT+IHxV8vQZw9lrUg8EA+eqd1XYxg1Nuagx6G+R7swTXbLbbbtS5ZbpjttQnOSm42GpimVlM2dDg==
X-Received: by 2002:a05:600c:3d19:b0:40c:3417:233 with SMTP id bh25-20020a05600c3d1900b0040c34170233mr324624wmb.102.1702035922201;
        Fri, 08 Dec 2023 03:45:22 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id b1-20020a05600c4e0100b00405959469afsm2665118wmq.3.2023.12.08.03.45.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Dec 2023 03:45:21 -0800 (PST)
Message-ID: <d9d27fa4-6ede-4958-b717-db425be61068@linaro.org>
Date: Fri, 8 Dec 2023 12:45:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: qcom-edp: Add X1E80100 PHY
 compatibles
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Abel Vesa
 <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Johan Hovold <johan@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231122-phy-qualcomm-edp-x1e80100-v3-0-576fc4e9559d@linaro.org>
 <20231122-phy-qualcomm-edp-x1e80100-v3-2-576fc4e9559d@linaro.org>
 <b6d3928c-75ba-47a3-93fc-a60729be2e35@linaro.org>
 <545d3ace-66e5-4470-b3a4-cbdac5ae473d@linaro.org>
 <ab7223a2-9f3f-4c9c-ab97-31512e7a0123@linaro.org>
 <CAA8EJpoboN85bLiayXJgn5iwh+Gn0OtK0aZ26ZJu9H3xkTT2Tw@mail.gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAA8EJpoboN85bLiayXJgn5iwh+Gn0OtK0aZ26ZJu9H3xkTT2Tw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/12/2023 12:04, Dmitry Baryshkov wrote:
> On Fri, 8 Dec 2023 at 09:47, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 07/12/2023 20:16, Konrad Dybcio wrote:
>>>
>>>
>>> On 12/7/23 17:51, Krzysztof Kozlowski wrote:
>>>
>>> [...]
>>>
>>>>> +allOf:
>>>>> +  - if:
>>>>> +      properties:
>>>>> +        compatible:
>>>>> +          contains:
>>>>> +            enum:
>>>>> +              - qcom,x1e80100-dp-phy
>>>>> +    then:
>>>>> +      properties:
>>>>> +        phy-type:
>>>>> +          description: DP (default) or eDP type
>>>>
>>>> Properties must be defined in top-level "properties:" block. In
>>>> allOf:if:then you only disallow them for other variants.
>>>>
>>>>> +          enum: [ 6, 13 ]
>>>>> +          default: 6
>>>>
>>>> Anyway, I was thinking this should be rather argument to phy-cells.
>>> I'm not sure I'm for this, because the results would be:
>>>
>>> --- device.dts ---
>>> &dp_controller0 {
>>>      phys = <&dp_phy0 PHY_EDP>;
>>> };
>>>
>>> &dp_controller1 {
>>>      phys = <&dp_phy1 PHY_DP>;
>>> };
>>> ------------------
>>>
>>> as opposed to:
>>>
>>> --- device.dts ---
>>> &dp_phy0 {
>>>      phy-type <PHY_EDP>;
>>> };
>>>
>>> &dp_phy1 {
>>>      phy-type = <PHY_DP>;
>>> };
>>> ------------------
>>
>> Which is exactly what I proposed/wanted to see.
>>
>>>
>>> i.e., we would be saying "this board is connected to this phy
>>> instead" vs "this phy is of this type on this board".
>>>
>>> While none of them really fit the "same hw, different config"
>>> situation, I'd vote for the latter one being closer to the
>>> truth
>>
>> Then maybe I miss the bigger picture, but commit msg clearly says:
>> "multiple PHYs that can work in both eDP or DP mode"
>>
>> If this is not the case, describe the hardware correctly in the commit
>> msg, so people will not ask stupid questions...
> 
> There are multiple PHYs (each of them at its own address space). Each
> of the PHYs in question can be used either for the DisplayPort output
> (directly or through the USB-C) or to drive the eDP panel.
> 
> Same applies to the displayport-controller. It can either drive the DP
> or eDP output, hardware-wise it is the same.

Therefore what I proposed was correct - the block which uses the phy
configures its mode. Because this part:
  "this phy is of this type on this board".
is not true. The phy is both types.

Best regards,
Krzysztof


