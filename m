Return-Path: <devicetree+bounces-20600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1042D800548
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:17:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93F942819AF
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 08:17:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 007451863E;
	Fri,  1 Dec 2023 08:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TKlDja/s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 285B61708
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 00:17:21 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5488bf9e193so2132043a12.2
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 00:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701418639; x=1702023439; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2at+u9BAAnC93hDhQveZtXqm8MWvwIreF3d/CcuLOJk=;
        b=TKlDja/s8sJn62EsrKqgQ84lwj/E6OWRL5crQpAsKmL/jZVGGNyu+SzjpacTtpROaA
         PmAiuioGjLGIPhTG/ZwowKH4Y05vorSFzKmpOukBgpqUvWyb0IYkAPZildFfkQoldyNu
         g7xzCMdZjn1FuhVQw1TsEE1Tp5hpxQVKLH8yBFX8EuNbl/K99Yt4rat+AQhN32vJRM6q
         sR5npzLnmCqVbaSU1vqY575oM0/wYTTLy9YZwDg3707yMhCIScDNYJ5b975qpzEjRv1u
         I/XCPjkQllmGBledjKGVFB2bL/5p9QOk7NlPICcod99n6/SxgdnBXjLBPcuMRi1vABjN
         grow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701418639; x=1702023439;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2at+u9BAAnC93hDhQveZtXqm8MWvwIreF3d/CcuLOJk=;
        b=B8ToSYLfVylRUED54sj67MGPXbG+KqYdyG3l2HB3YZ4q2X0tr/0CpupWEyEmt95PRj
         PX5AgAIrmx3gL2Uy591v+r1cOIuxDKaP7fQi0rrwNZzZmA0UxGsdc1/NADRf92y/edh3
         rOi8CsAGsWXepfvKsbGc/OvBcVZzyG1RdRr/xnPKUKoXTBNNT9VuTSXocSXujf0QoOOq
         zYZNzDCUlH+IQ1UyVla5KHRuwm3UzMTNikbVPvtB5YnI5Xz8yGQH/85PHHSg5navMrRK
         MkLupFcZImA1zHJYWqRRCE9+AaYmbSFnRAsXextkYcZ/gwxgN43ouOsx4yxvYCfPwcq0
         4NtA==
X-Gm-Message-State: AOJu0YxHlfBltOXWbr4aohNSZT6yhDNDULANXaIobg3+t5wtRBdbmX84
	sdpSYXR4OuCCyxphli46+z+lso7GFc2N/iyhh8GHjw==
X-Google-Smtp-Source: AGHT+IGX/fwDC4N2bAIRHHjUurvcHO3hIL6CGYyL9GI1Im4abLy+epKnhAepuNp06RXRmANbLagRFQ==
X-Received: by 2002:a17:906:3f5e:b0:a19:a19a:eaa7 with SMTP id f30-20020a1709063f5e00b00a19a19aeaa7mr474384ejj.96.1701418639541;
        Fri, 01 Dec 2023 00:17:19 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id qb18-20020a1709077e9200b009f8af454d0dsm1601120ejc.112.2023.12.01.00.17.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Dec 2023 00:17:18 -0800 (PST)
Message-ID: <741a7b27-47ae-441c-9a34-52a6695adfe7@linaro.org>
Date: Fri, 1 Dec 2023 09:17:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 09/14] dt-bindings: display: vop2: Add rk3588 support
Content-Language: en-US
To: Andy Yan <andyshrk@163.com>, heiko@sntech.de
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com,
 Andy Yan <andy.yan@rock-chips.com>
References: <20231130122001.12474-1-andyshrk@163.com>
 <20231130122418.13258-1-andyshrk@163.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231130122418.13258-1-andyshrk@163.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/11/2023 13:24, Andy Yan wrote:
>    clock-names:
> +    minItems: 5
>      items:
>        - const: aclk
>        - const: hclk
>        - const: dclk_vp0
>        - const: dclk_vp1
>        - const: dclk_vp2
> +      - const: dclk_vp3
> +      - const: pclk_vop
>  
>    rockchip,grf:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description:
> -      Phandle to GRF regs used for misc control
> +      Phandle to GRF regs used for control the polarity of dclk/hsync/vsync of DPI,
> +      also used for query vop memory bisr enable status, etc.
> +
> +  rockchip,vo1-grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to VO GRF regs used for control the polarity of dclk/hsync/vsync of hdmi
> +      on rk3588
> +
> +  rockchip,vop-grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to VOP GRF regs used for control data path between vopr and hdmi/edp.
> +
> +  rockchip,pmu:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to PMU GRF used for query vop memory bisr status on rk3588

Some of your above descriptions end with full stop, some not. Keep one
style.

>  
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
> -
> -    properties:
> -      port@0:
> +    description: |
> +      The connections to the output video ports are modeled using the OF
> +      graph bindings specified in Documentation/devicetree/bindings/graph.txt.
> +      The number of ports and their assignment are model-dependent. Each port
> +      shall have a single endpoint.

The description is redundant, drop.

> +
> +    patternProperties:
> +      "^port@[0-3]$":
>          $ref: /schemas/graph.yaml#/properties/port
> -        description:
> -          Output endpoint of VP0
> +        description: Output endpoint of VP0/1/2/3
> +        unevaluatedProperties: false

Why did you add this line? It should not be needed, if I read diff
correctly.

>  
> -      port@1:
> -        $ref: /schemas/graph.yaml#/properties/port
> -        description:
> -          Output endpoint of VP1
> +    required:
> +      - port@0
>  
> -      port@2:
> -        $ref: /schemas/graph.yaml#/properties/port
> -        description:
> -          Output endpoint of VP2
> +    unevaluatedProperties: false
>  
>    iommus:
>      maxItems: 1
> @@ -96,6 +121,61 @@ required:
>    - clock-names
>    - ports
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3588-vop
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 7
> +        clock-names:
> +          items:
> +            - const: aclk
> +            - const: hclk
> +            - const: dclk_vp0
> +            - const: dclk_vp1
> +            - const: dclk_vp2
> +            - const: dclk_vp3
> +            - const: pclk_vop

These look the same as in top-level, so just minItems: 7

> +
> +        ports:
> +          required:
> +            - port@0
> +            - port@1
> +            - port@2
> +            - port@3
> +
> +      required:
> +        - rockchip,grf
> +        - rockchip,vo1-grf
> +        - rockchip,vop-grf
> +        - rockchip,pmu
> +
> +    else:
> +      properties:
> +        rockchip,vo1-grf: false
> +        rockchip,vop-grf: false
> +        rockchip,pmu: false
> +
> +        clocks:
> +          minItems: 5

maxItems instead

> +        clock-names:

maxItems



Best regards,
Krzysztof


