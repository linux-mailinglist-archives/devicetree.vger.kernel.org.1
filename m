Return-Path: <devicetree+bounces-19857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3566A7FD0AB
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 09:27:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 57B66B20FA6
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 08:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7A7011CA8;
	Wed, 29 Nov 2023 08:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A20bbuBH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FA9119B1
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 00:26:54 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-54af1daf6a9so1208389a12.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 00:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701246413; x=1701851213; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Nb0sd11Av3CMkGhGdQzd0rV3v0LIh4Qth9PFA6TikPQ=;
        b=A20bbuBHDuq/iMlt99ZZUeU/VU4RM0X2z4xMywp6oFZwWaNlrYV8QGZRMwwn+1Qdtk
         av1forpwfjDXvP+7OpUi3i/F4SPP+w8aPDl3bjgMCamS2jHiYIc2ikmAsUYBwZK+y6or
         +vZqarKtMYEgMnJYa1F2gnojosrwZcmPJ9O0FokpUd6ZKjbYqSHaVMImfhL320JQgF9m
         SW295JInuxQJyzpnHjBElcJuYyqdYgsbUE5eFp6hrDYHOR/GwdqYHUqIFW0TzPU7J69+
         oRC2id47nLLL2Ce4gSuzzzl04ugWaBcsS1IBJL4brfMLGqwwr34RvCkvUPzGV5IvsFx+
         ZfTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701246413; x=1701851213;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nb0sd11Av3CMkGhGdQzd0rV3v0LIh4Qth9PFA6TikPQ=;
        b=RBhQA64D+ZceDp+5tB/i1rbxPjRaoqRzBsuR3VH3KA9oWygy4jHhfsMcGq9Xf7uprj
         Ce7E8HwdRK5qQAdbCFJahaOdPlaFv/i77GMaPWmKjYKzH9haJcBpJ06lynARyjaDYCOU
         Dm0495/pHI3BwGRpETPT3x9rqk2kROaq+3AYUcatSVgHCe9N113++Yy8v4qae3aoHOEp
         hAJxZeCIggo4gXu7KAibOtQh1qmOCDsUG/Zkc8R7EgD8xVAYkGRUlmYR5xnvyZB22Psd
         ryB9qoADvY8guiUG4eO6wAFrBzXT4FWgs6VXybPFlPrx9VZVV9wRPXBIZTc84XS6pFxz
         Tx3w==
X-Gm-Message-State: AOJu0Yy/tF0AzgnMet3KjGtCGL64W2KOeJGRwJUAZWkQhPCLWyj7b690
	JQS0tyfYewj4G77T/275ozY5mA==
X-Google-Smtp-Source: AGHT+IG/fyPtMS55tX56Cri8UiNjK9c3l/18wLkLJUxQHTyYOkAJinH5jIwwV45yDxYxQtiQH+wPAw==
X-Received: by 2002:a05:6402:354d:b0:54b:81ba:1d71 with SMTP id f13-20020a056402354d00b0054b81ba1d71mr8615692edd.8.1701246412827;
        Wed, 29 Nov 2023 00:26:52 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id cn6-20020a0564020ca600b0054b2a9dc69csm4560652edb.40.2023.11.29.00.26.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Nov 2023 00:26:52 -0800 (PST)
Message-ID: <76a13e48-5053-4fdc-8089-710943e52e29@linaro.org>
Date: Wed, 29 Nov 2023 09:26:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] dt-bindings: riscv: Add StarFive JH8100 SoC
Content-Language: en-US
To: Sia Jee Heng <jeeheng.sia@starfivetech.com>, kernel@esmil.dk,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, krzk@kernel.org,
 conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, daniel.lezcano@linaro.org, tglx@linutronix.de,
 conor@kernel.org, anup@brainfault.org, gregkh@linuxfoundation.org,
 jirislaby@kernel.org, michal.simek@amd.com, michael.zhu@starfivetech.com,
 drew@beagleboard.org
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, leyfoon.tan@starfivetech.com
References: <20231129060043.368874-1-jeeheng.sia@starfivetech.com>
 <20231129060043.368874-3-jeeheng.sia@starfivetech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231129060043.368874-3-jeeheng.sia@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/11/2023 07:00, Sia Jee Heng wrote:
> Add device tree bindings for the StarFive JH8100 RISC-V SoC.
> 
> Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
> ---
>  Documentation/devicetree/bindings/riscv/starfive.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml b/Documentation/devicetree/bindings/riscv/starfive.yaml
> index cc4d92f0a1bf..7e2da9eef3db 100644
> --- a/Documentation/devicetree/bindings/riscv/starfive.yaml
> +++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
> @@ -29,7 +29,10 @@ properties:
>                - starfive,visionfive-2-v1.2a
>                - starfive,visionfive-2-v1.3b
>            - const: starfive,jh7110
> -
> +      - items:
> +          - enum:
> +              - starfive,jh8100-evb
> +          - const: starfive,jh8100

Why did you remove the blank line? No need for doing that.

>  additionalProperties: true
>  
>  ...

Best regards,
Krzysztof


