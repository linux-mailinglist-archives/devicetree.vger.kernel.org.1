Return-Path: <devicetree+bounces-5439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F27577B655F
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:23:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A432E281395
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C51ADF5A;
	Tue,  3 Oct 2023 09:23:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1AEDDAC
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 09:23:03 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C616DD8
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 02:23:01 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9a645e54806so115757466b.0
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 02:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696324980; x=1696929780; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HnOkHwByTjjkEvzBTwCNw0j+k22LND4/hJeZu2SKbsU=;
        b=p1NZ93Ws2HbNeAOwB79QNQzvdr2wZI+RzZpuhw6fAVvloUcyxNUatV8CQvsLGBjFGe
         fJJ8MkEHMVIbJb26VJYE25U7BKBSaDnSv2fScn+7s+RxZfLa4Adc12pVx1UKcRfh9oSM
         XzhQzxuiE+OFFJPsBy8PLJvbE5pIGkdBN8HRfSIpu3POK49XZyMaiEvqgFJYsDFDXBBi
         jQRhczlz7JQN6DlDqMZ4MaIwZ/J2t4cAdhVE/j34b0zV7Ko/5UOCNIbGXSO4AxhzEQvh
         IWdSuj2IFn4KItI0Er2HT7duCAd0z6+kJ0EeU+r4tv0VkTy0ROheYumbyAWdAURFU+2L
         dReQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696324980; x=1696929780;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HnOkHwByTjjkEvzBTwCNw0j+k22LND4/hJeZu2SKbsU=;
        b=FhbndG71Cwk4CFJpeoTBNjAdD/53QfwULXG4cQsiQniBjOU8JeiN1UhEXqyCHHXYAq
         iuoXzObeblMOyZ20Xt+nCNl2A5XUkFXINVA+ZCMJxLXzU6miD+s75KTFI+0uFuP5o3jY
         Y7Gpc0vKnvtnsf0IGUqNuErnQ+V812ad+zO1U8oXdSKRI9FpYgKG7iHnH3XRzXSOE0TU
         b95g+wmUIe9z/dmwZubtyBBpYcVv+FNU0ubO7qS6o2sg2yJtSASpkVlayj676R6LUWa2
         XQvsSFOsnk2fKqnetFZcInQbfxQXGWvNEKhhF6P90LUQ3rwoOTaVUig1rx/3r7LnEIzX
         T4+Q==
X-Gm-Message-State: AOJu0YzyZykCRNaesib05jTe8uEzCnOhpQ+DLAlGIXebQC/M1DUlkXyZ
	46HrJwjJ422aLSx04m3+zF4ZgA==
X-Google-Smtp-Source: AGHT+IHn3FqEBLDQsr7OcNDUqS3eJLPKgiFSA75d/nmt46cKe2GadNwJsVa89Hqf+6e/jOAs0Zq1nA==
X-Received: by 2002:a17:907:2e01:b0:9ae:6389:911 with SMTP id ig1-20020a1709072e0100b009ae63890911mr12314193ejc.31.1696324980160;
        Tue, 03 Oct 2023 02:23:00 -0700 (PDT)
Received: from [192.168.1.197] (5-157-101-10.dyn.eolo.it. [5.157.101.10])
        by smtp.gmail.com with ESMTPSA id fy33-20020a1709069f2100b009ae4ead6c01sm718636ejc.163.2023.10.03.02.22.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 02:22:59 -0700 (PDT)
Message-ID: <7ed841ee-765b-47a6-8a28-3c4df6b21185@linaro.org>
Date: Tue, 3 Oct 2023 11:22:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: mfd: sie,cronos-cpld: Add initial DT
 binding
Content-Language: en-US
To: Shawn Anastasio <sanastasio@raptorengineering.com>,
 devicetree@vger.kernel.org, lee@kernel.org,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: Timothy Pearson <tpearson@raptorengineering.com>,
 linux-kernel@vger.kernel.org
References: <cover.1696285339.git.sanastasio@raptorengineering.com>
 <8b014f8b302f8b41c45c4f6fb114cf18e84a76fa.1696285339.git.sanastasio@raptorengineering.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <8b014f8b302f8b41c45c4f6fb114cf18e84a76fa.1696285339.git.sanastasio@raptorengineering.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 03/10/2023 00:32, Shawn Anastasio wrote:
> The SIE Cronos Platform Controller CPLD is a multi-purpose platform

What is SIE? Vendor prefix says sony.

What is Cronos?


> controller that provides both a watchdog timer and an LED controller. As
> both functions are provided by the same CPLD, a multi-function device is
> exposed as the parent of both functions.

A nit, subject: drop second/last, redundant "DT binding". The
"dt-bindings" prefix is already stating that these are bindings.

> 
> Add a DT binding for this device.
> 
> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>

Except that this was clearly no tested...

> ---

...

> +properties:
> +  compatible:
> +    const: sie,cronos-cpld
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1

Why do you need it?

> +
> +  '#size-cells':
> +    const: 1

Also looks unneeded.

> +
> +  leds:
> +    type: object
> +    description: Cronos Platform Status LEDs

Missing additionalProperties:false... but anyway this is just empty. No
resources? Drop the node.

> +
> +    properties:
> +      compatible:
> +        const: sie,cronos-leds
> +
> +  watchdog:
> +    type: object
> +    description: Cronos Platform Watchdog Timer
> +
> +    properties:
> +      compatible:
> +        const: sie,cronos-watchdog

No resources? Drop the node.

Best regards,
Krzysztof


