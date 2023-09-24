Return-Path: <devicetree+bounces-2768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED107AC7CB
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 13:45:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 618691C2042F
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 11:45:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3083E1375;
	Sun, 24 Sep 2023 11:45:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AB41368
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:45:08 +0000 (UTC)
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D381F100
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 04:45:06 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-31fa15f4cc6so4532583f8f.2
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 04:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695555905; x=1696160705; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bfo+tbTQVTfcB3muEtJ5dcAI76Wff7ckKMaMA7hGJTc=;
        b=mem4Gj/ALL5KmE+GqBobzCFoByRTLQrhDm+bsx2yj7BTmWi35kVTl+bSpbpEjhtKtb
         2HLj4REEhbEOFrDk0ZR8uAFwXQ5fgS0m+eEF7ft8DVbZJbo1hMsyaKLP+kJo5c1icU8N
         2B+mAcYGQLD5rid+ktVMS5B5fOdReUaiG+Hj0NJJgz70xMjY5YmKKlj2WrfOKSpANXC/
         HwDZdVccXtgHjuW8BHGewq4oImC4JhPKjpuDF8aZPTEdLRuB9Knfg5/ilmVmEw55RQbO
         Z47AwwybN7m86WHppRh26Fr2B8HIBsQU/7EYLCl9H1rkL1h02tk8d/DaU73nb6RKfABo
         XcuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695555905; x=1696160705;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bfo+tbTQVTfcB3muEtJ5dcAI76Wff7ckKMaMA7hGJTc=;
        b=Qg7B1PI3o7nIwbLS/IucBuf0Aoj4pt98/vyL/jChVpe7sqaHpeXfDgTw76emGTp8td
         bP0bBtIoms3sUDHQ7alv/+t2M7sG9k4wHKx6iZPn+GvZZWYZDYc3kmLWP6f+YS0zus15
         FatP9jxJKlHD57+tCHfOouUW2dnyremy9RmbswBjO+/vMBjnv4/i0ZDJ+ivZBglVFtLz
         2SCJM9U2o7QSoeFRhEuUs6fsG3arFvMPqTDEyJxIW4TlYWzGoTCnGJ4HVibC6+sWNJxz
         xLIN8IAPR9/Mbw+0QsvIqhKwUgMxptWs3fR0evprKsXnfZqq83F49Jg9xvKGx5+hfQDH
         /7nQ==
X-Gm-Message-State: AOJu0YxNqmhPKUp+Qyz3tv2xLwz8IXbJm8Pm92Hqc4r1SNmk4oinjkMn
	PiT1464U2Keni2g5tXNJPbC2HQ==
X-Google-Smtp-Source: AGHT+IEatxzY4iGxij3aKDiWG2DKIBpfinUH0KyqJo8wPunfVfcVbwDKYCOzxb44z/Samx/U6zZbBg==
X-Received: by 2002:adf:e791:0:b0:31f:fab1:c3c3 with SMTP id n17-20020adfe791000000b0031ffab1c3c3mr3898673wrm.35.1695555905240;
        Sun, 24 Sep 2023 04:45:05 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id m12-20020a056000008c00b0031f3b04e7cdsm9077174wrx.109.2023.09.24.04.45.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Sep 2023 04:45:04 -0700 (PDT)
Message-ID: <53e67234-1dc3-0f23-c4c4-6622828a24b9@linaro.org>
Date: Sun, 24 Sep 2023 13:45:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/4] dt-bindings: clock: qcom,camcc.yaml: Convert
 qcom,camcc to a single yaml file
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, andersson@kernel.org,
 agross@kernel.org, konrad.dybcio@linaro.org, mturquette@baylibre.com,
 sboyd@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, jonathan@marek.ca, quic_tdas@quicinc.com,
 vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230923150045.1068556-1-bryan.odonoghue@linaro.org>
 <20230923150045.1068556-2-bryan.odonoghue@linaro.org>
 <2565aa33-619c-6c90-de96-29dc5ac5d961@linaro.org>
 <fac95d85-0802-4819-9efe-a31e6df7a0e4@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <fac95d85-0802-4819-9efe-a31e6df7a0e4@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 24/09/2023 12:20, Bryan O'Donoghue wrote:
> On 23/09/2023 17:13, Krzysztof Kozlowski wrote:
>> On 23/09/2023 17:00, Bryan O'Donoghue wrote:
>>> Move the various camcc yaml files into one. The Camera Clock Controller
>>> is pretty similar from SoC to SoC.
>>>
>>> Mostly we have some SoCs which require fewer clocks than others. In some
>>> cases we have SoCs which have required-opps and required-power-domains.
>>>
>>> It is likely we could and should extend the thin CAMCC descriptions such
>>> as sdm845 an sm6350 to the more robust descriptions such as sm8250 and
>>> sm8450.
>>>
>>> As a result of listing sm8250 and sm8450 together required-opps and
>>> power-domains become required for sm8250, which is a NOP for the dtsi
>>> since both declarations already exist for sm8250.
>>>
>>> sm8250 is also chosen as the example for the new combined camcc.yaml.
>>>
>>> A minor tweak to fix Bjorn's email address in the Maintainer list is
>>> included.
>>>
>>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>
>> No, that's not the right approach. For GCC and CamCC and all other
>> Qualcomm clock controllers, we split into device schemas, not merge into
>> one. The one schema is just becoming unreviewable over time with
>> multiple if:then clauses.
>>
>> Please use approach like we have for GCC, RPMh interconnects or remote
>> proc loaders - common file. What's more, here you probably don't even
>> need common file because it is already there - qcom,gcc.yaml
>>
>> Best regards,
>> Krzysztof
>>
> 
> Ah OK, I see what you mean.
> 
> commit f8cc21d454c50157a528c900b60aa9588b4066b3
> Author: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Date:   Tue Dec 27 15:40:56 2022 +0100
> 
>      media: dt-bindings: qcom,venus: split common properties

Yes, except that in case of camcc it might be enough to use existing
gcc.yaml

Best regards,
Krzysztof


