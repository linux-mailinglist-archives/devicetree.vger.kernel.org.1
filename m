Return-Path: <devicetree+bounces-9748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CEB07CE52F
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 19:44:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2ADFB281AB4
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E7473FB33;
	Wed, 18 Oct 2023 17:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SsJab72b"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A43743FB0C
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 17:44:23 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8DE310DA
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:44:21 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507a29c7eefso6151566e87.1
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697651060; x=1698255860; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YSjGpLh46b5iKDUK/TbTUkbxdrxFCdobLrJFcW9LwtE=;
        b=SsJab72bA5lMF4oZHoL68uqcIzfhqPdAsbDWu/NqPboAGgDaiICt+HyTRf+SnD511a
         7TSQv4NhXz4ff4lZqhlrKLB7r5SNCsqd50ca2YaDFf9YSw6tqMhXdfBwjI5skp7TC3y3
         IZo1pIQnk5SCwGVMur4t+rsrjP6BOUf72uKGJkvbYZadoNYcFa5WDkYGM8lQp/RIPw9x
         3K+xhAhIgyi4q+l7VORLnD0A9EXHxcYGp4XJHxXTf6rxMXvNZcI6nNid37oEVcKqc/R7
         ZJZcbRAODPXFsW6pjCjcL7CdnbTtT76dbMkcHU0eQyjMr2yq3FI+tPPZNX5GJFF74b6x
         hdLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697651060; x=1698255860;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YSjGpLh46b5iKDUK/TbTUkbxdrxFCdobLrJFcW9LwtE=;
        b=X9NlWaXkHLvJq+x/jirzLVBh1Q9VC2ExHBpSPpAsw75g93jcRfoYu/rSSo2mxsYbtJ
         0TW7DxcEWx0J7SA0wnk/voCSRw9S2Dv1e0jrooR5Hfmo6459nwwK9wiWjJjuMkUA1cfi
         c2vnZFwukL1+7ldb3Tp7So/kiQzjhsnzuHnkKTWZrgFVwq2pcQ4YG+qDwFEr2fd4lEcx
         KXoxoOoJjgoiwl5iP2Ox5MXNcZVWG6MgxNUFcWQ+WMLh1ERxOND0J1MXnuqhf11lJ1p3
         xYvrZBn8c6c9mP9mQu4lkGV03Li5NeAX94WLmGkP850zTxTcn4P3T5YQXTyd+S/GKGzd
         lmXQ==
X-Gm-Message-State: AOJu0YwPRgh2RbtWSMoamX9xGyztsrBZfJJTBpjDXa+2Pgs9H0tGSePL
	B0sUU/41J/HcNxeHTNtCXEpyBw==
X-Google-Smtp-Source: AGHT+IE3783iU1dnjkiPm2xolvCZbstnb7FsjsJDnjEBXm8/qAYzcn7KDeGomfE0PIigmE4UV7xHkw==
X-Received: by 2002:a05:6512:60f:b0:4f9:5426:6622 with SMTP id b15-20020a056512060f00b004f954266622mr4400621lfe.69.1697651060022;
        Wed, 18 Oct 2023 10:44:20 -0700 (PDT)
Received: from [172.30.205.86] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id o15-20020ac24e8f000000b00502ae6b8ebcsm781411lfr.304.2023.10.18.10.44.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 10:44:19 -0700 (PDT)
Message-ID: <25185346-2d5d-469c-8a88-0f0f9f02a739@linaro.org>
Date: Wed, 18 Oct 2023 19:44:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom,sa8775p-tlmm: add missing
 wakeup-parent
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231018145750.429385-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231018145750.429385-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/18/23 16:57, Krzysztof Kozlowski wrote:
> Add missing wakeup-parent property, already used by DTS to indicate that
> pins are wakeup capable:
> 
>    sa8775p-ride.dtb: pinctrl@f000000: 'wakeup-parent' does not match any of the regexes: '-state$', 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml
> index e119a226a4b1..2173c5255638 100644
> --- a/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml
> @@ -28,6 +28,7 @@ properties:
>     gpio-controller: true
>     "#gpio-cells": true
>     gpio-ranges: true
> +  wakeup-parent: true
>   
>     gpio-reserved-ranges:
>       minItems: 1
All the properties visiable in this diff sound reasonable to
put in the common yaml, no?

Konrad

