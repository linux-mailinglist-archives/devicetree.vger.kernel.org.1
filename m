Return-Path: <devicetree+bounces-2762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0477AC785
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 12:20:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D0666281472
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 10:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53347ED2;
	Sun, 24 Sep 2023 10:20:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1381B7F
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 10:20:35 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E11A103
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 03:20:33 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40531812168so49326245e9.1
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 03:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695550832; x=1696155632; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hRdPYxD7N5192EFL8LQJaqcXQ1ivTYH8sYpTET86uAk=;
        b=Dmur8oY+/3Az+a5kPuFWCGarnh3QSxz47IqPMKuRBxNB7rkkPUg/v3WxS9a2NAP6Qv
         dJM6Lw3SVvqbRaShedUGXqALGDbXI65M1ryh9DXDyxABB4qTjvqxlOqPbi2JX584txX4
         nGbdiZPtisg1fpT9ddU9lpTFqEGzB3CgxbqsCB2K9uLbVPVmeJmFtIX4+KUNCwuEuLR7
         dvO2fLltFtNjcCISNB43PKVskoLR9sD2xORqeff+y2pZBwmv2sL7+O5tiGXW8kljTjWU
         82UHHW3tie8vSiqHB9SevXihImnEPfbpvxdH8cVu1F5y4PRYxmHsjO7qoOa9eMcRr/EN
         uaug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695550832; x=1696155632;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hRdPYxD7N5192EFL8LQJaqcXQ1ivTYH8sYpTET86uAk=;
        b=K2p5zln5HxHiIl3CwlEH5ZUmnoE4BjtdBeZv5hGjlN9cnH8puwOMRq4/zh893ZpRXt
         0ouImqbpMfCdikmGwxQt/BqCzXyTw3tB6p34fQrA0IOGj/NoLLC4jMc03hvkXBrFX4UW
         Au+YeEK/Y3fNrUVzhPhCls8jr59NQFmpf2TphYAP8XHDIT0QpNmA7WwLdxPttQkpQqS+
         1/Y3DDIlH+vQBSpQJrYH10oCHdzVTtctCHMoOxN6eP8yeeZPezArg8NJBFMMBQk6WWfq
         GHo/tYQPIwWJo3Q5VFX3Ny7iRp2siIF7nOKw++zhOxZ3YEjjXQy2gRyjgNKUXxN6dxCC
         EPrA==
X-Gm-Message-State: AOJu0YxzZjhba+qM9Dtz7O96ZKDaAGHEHS++BiIAgxzlBjSL22ERVOKA
	FrIOEgGrSHwsjnOpT2DL2cRW6g==
X-Google-Smtp-Source: AGHT+IFu0+rneWXwnLmx447DDCYpq9I+WDULyh0rK5GTi2lG1SvGjnNw8JS1kSqjNJFQLKBqC9rfxQ==
X-Received: by 2002:a05:6000:1106:b0:31f:f72c:dfa3 with SMTP id z6-20020a056000110600b0031ff72cdfa3mr3379946wrw.68.1695550831988;
        Sun, 24 Sep 2023 03:20:31 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id b3-20020a05600010c300b0031416362e23sm8970759wrx.3.2023.09.24.03.20.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Sep 2023 03:20:31 -0700 (PDT)
Message-ID: <fac95d85-0802-4819-9efe-a31e6df7a0e4@linaro.org>
Date: Sun, 24 Sep 2023 11:20:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: clock: qcom,camcc.yaml: Convert
 qcom,camcc to a single yaml file
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 andersson@kernel.org, agross@kernel.org, konrad.dybcio@linaro.org,
 mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jonathan@marek.ca,
 quic_tdas@quicinc.com, vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230923150045.1068556-1-bryan.odonoghue@linaro.org>
 <20230923150045.1068556-2-bryan.odonoghue@linaro.org>
 <2565aa33-619c-6c90-de96-29dc5ac5d961@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <2565aa33-619c-6c90-de96-29dc5ac5d961@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 23/09/2023 17:13, Krzysztof Kozlowski wrote:
> On 23/09/2023 17:00, Bryan O'Donoghue wrote:
>> Move the various camcc yaml files into one. The Camera Clock Controller
>> is pretty similar from SoC to SoC.
>>
>> Mostly we have some SoCs which require fewer clocks than others. In some
>> cases we have SoCs which have required-opps and required-power-domains.
>>
>> It is likely we could and should extend the thin CAMCC descriptions such
>> as sdm845 an sm6350 to the more robust descriptions such as sm8250 and
>> sm8450.
>>
>> As a result of listing sm8250 and sm8450 together required-opps and
>> power-domains become required for sm8250, which is a NOP for the dtsi
>> since both declarations already exist for sm8250.
>>
>> sm8250 is also chosen as the example for the new combined camcc.yaml.
>>
>> A minor tweak to fix Bjorn's email address in the Maintainer list is
>> included.
>>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> No, that's not the right approach. For GCC and CamCC and all other
> Qualcomm clock controllers, we split into device schemas, not merge into
> one. The one schema is just becoming unreviewable over time with
> multiple if:then clauses.
> 
> Please use approach like we have for GCC, RPMh interconnects or remote
> proc loaders - common file. What's more, here you probably don't even
> need common file because it is already there - qcom,gcc.yaml
> 
> Best regards,
> Krzysztof
> 

Ah OK, I see what you mean.

commit f8cc21d454c50157a528c900b60aa9588b4066b3
Author: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date:   Tue Dec 27 15:40:56 2022 +0100

     media: dt-bindings: qcom,venus: split common properties

---
bod

