Return-Path: <devicetree+bounces-9799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CAB7CE87F
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 22:07:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E781F2819E1
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 576A01EB45;
	Wed, 18 Oct 2023 20:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MhqVxXvn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014EC1EB3B
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 20:06:57 +0000 (UTC)
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E09C11D
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 13:06:56 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2bb9a063f26so96170531fa.2
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 13:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697659614; x=1698264414; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fV7fTkn3aVtTytg7FjK9RSeuS2ZwMLzGixbs5gWSolA=;
        b=MhqVxXvnxZIYtc18dQccvzFd/4SAmWvq9iXnOtfzH42g5MtrA3i7iw96h4g5w0R8gO
         +2H//6lG3RxNZ0ECge5KhPXsT9cVFhP7BjIr2NZ68MP29oHX5tdhMz8T4WqrZ6dW2iCL
         hr9xIOFocT308reggY0Uo6jNkIuXUvveHa8sjIzSTowikV9eZ1RHw02TkEJrF0Ti34cr
         oDK8o84GPFjnNZrRzSk2y/Tn3nJ3SCpWtJpYuZUeWaJuxHhnygbUJUJ26wiwMvH1gVNt
         KDTBh+URHftLGqRvGNQaPjI9+6Ag9VPeK+EJepnKMYBd7UR1Fim1gTVVjT/UFzif4Llx
         qDUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697659614; x=1698264414;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fV7fTkn3aVtTytg7FjK9RSeuS2ZwMLzGixbs5gWSolA=;
        b=PZ145pqrAeHpUj8xf3J0CnwZVUB0quVOm4NUOE/TF1iKG/WT42vtaD5dp6FYDd+I3r
         sMa62hKC5euUeqXkMyxkA56UcTwFAUB9DU5nj205mTPdErdbkwl5BUuUOtVpC07ZkqJg
         PLS25CMVFine/OnEjM8p5vXB/Xr5JVhcJUYs72VijRdm/k6ZMG7qoO/T3RTo7aq/iYwQ
         DeylmwqaEqDUmX+NCMcW7db8w8AIq1VTHGLWGDIKjx9b+/U2VoSK7hBKfyls39a2j3/d
         DDNjEI0BaNHIFCxt3IVLtjhq5dqo2Ot3yFA95DtUt7bx+8O8SA63ccwP6WkUS4s/ypb3
         B76Q==
X-Gm-Message-State: AOJu0YzfeSETgatxG6qa9kvTWRVBy0Qvh7FVTh+QqbYK0mwliRfhxXIe
	tTDI5EJ+YB9gyWYZoW7Bq/m8/Q==
X-Google-Smtp-Source: AGHT+IG1Y7dg+9BY88IKn03L6i6fqmO+TD3nURIXN8mg6bV5JruPLssiJqQILJDxYCQmw9MeGFm9rg==
X-Received: by 2002:a05:651c:4d2:b0:2c5:2103:604b with SMTP id e18-20020a05651c04d200b002c52103604bmr33279lji.2.1697659614439;
        Wed, 18 Oct 2023 13:06:54 -0700 (PDT)
Received: from [172.30.205.86] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id l13-20020a2e99cd000000b002bcc303bbffsm817654ljj.104.2023.10.18.13.06.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 13:06:54 -0700 (PDT)
Message-ID: <8e57d7a7-2441-4056-848d-d8846f45156f@linaro.org>
Date: Wed, 18 Oct 2023 22:06:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom,sa8775p-tlmm: add missing
 wakeup-parent
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231018145750.429385-1-krzysztof.kozlowski@linaro.org>
 <25185346-2d5d-469c-8a88-0f0f9f02a739@linaro.org>
 <56a8ec24-789f-42ae-88ac-cb35693df390@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <56a8ec24-789f-42ae-88ac-cb35693df390@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/18/23 21:23, Krzysztof Kozlowski wrote:
> On 18/10/2023 19:44, Konrad Dybcio wrote:
>>
>>
>> On 10/18/23 16:57, Krzysztof Kozlowski wrote:
>>> Add missing wakeup-parent property, already used by DTS to indicate that
>>> pins are wakeup capable:
>>>
>>>     sa8775p-ride.dtb: pinctrl@f000000: 'wakeup-parent' does not match any of the regexes: '-state$', 'pinctrl-[0-9]+'
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> ---
>>>    Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml | 1 +
>>>    1 file changed, 1 insertion(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml
>>> index e119a226a4b1..2173c5255638 100644
>>> --- a/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml
>>> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml
>>> @@ -28,6 +28,7 @@ properties:
>>>      gpio-controller: true
>>>      "#gpio-cells": true
>>>      gpio-ranges: true
>>> +  wakeup-parent: true
>>>    
>>>      gpio-reserved-ranges:
>>>        minItems: 1
>> All the properties visiable in this diff sound reasonable to
>> put in the common yaml, no?
> 
> Is something missing from common?
No, I just forgot how the yaml worked and didn't notice
we're essentially status=okaying the properties here..

Konrad

