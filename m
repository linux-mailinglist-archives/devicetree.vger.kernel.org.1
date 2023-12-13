Return-Path: <devicetree+bounces-24602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DE1810A63
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 07:35:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91705281D22
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 06:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E8EDFBFA;
	Wed, 13 Dec 2023 06:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gHVqO02S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7802AF
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 22:35:07 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a1f0616a15bso731977766b.2
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 22:35:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702449306; x=1703054106; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=igoDahi7rNbkSlz7yguA+9xfPvLprhhiBvehrui8ccw=;
        b=gHVqO02SGP+VxndbyfbXJo7es5tzWCQqQugzcJADrxoPaBFZaiijUR1h9SGN7cbHcy
         Q6q3NrRfkeV/XDQL6flHDfd+rVf6MthGUTmxglDi4ZYU0922qmRWWFMh5eEWuChpJq4Q
         Fr+BpMFq5Ivl7xxp6sXdUodmOFa9+8ILksNuv13AiM7fvTa00nIwCDkdnuQtLen2qgEd
         LjkQnuvPIGVzz+7gyWQZRU3QR66rsEUpXDz8tdSWiUw+aQAjI82b48dQYKQEwzjvhvFR
         4wSfBr3iJR8rPX7wkDKnq2EayceVitmAUZ7LYyIT+mL9xpOFtPG0yz0XqSTnOEX5GEHy
         at3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702449306; x=1703054106;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=igoDahi7rNbkSlz7yguA+9xfPvLprhhiBvehrui8ccw=;
        b=mi6X+u0j6NBBlfgkNuk8UBGU6XGv6t2w5RMHA5eaXhjH+ZawQ7CHZzWQEjM5G0sUcn
         Z9oTiYPHsxdHJ7kPIyhFOLW7+7IK16aHM9qwcMW1kwRLDjQCiOXaih10eWmbzG5W00CE
         t+ZhOJWmOPwkgrQwhlSFGcCX9/VIRBGzzd5DtyIrrOGkxkMlV7wjgyRSVugHOitKa8wQ
         rNW4P3oK3S/+alyNVyypbRxsie83BoKJfhtnQQ89PgbVYKPjCr1cNW0bexBGN2/BO5si
         T4c3A262PGQHl46kdG0A+hKIOmvYO8/suveC6lTV8uLSfKbyu32/LlUKeiQXA0V1lrJc
         3pdg==
X-Gm-Message-State: AOJu0YyT4nl9GPQFq/xhZJALZeUvkWo4CJPoQ7K6iEskOdy7wuMbeq5M
	8zWsNUOUEm8cXBLriBR1Sh+lTj5oKAyBaBUmXVU=
X-Google-Smtp-Source: AGHT+IFeeIsf7NByZzMsHaAFNhVZ9wrE5PNegNkkaPtp+UMy9/9okjLZmNr1LvCCtwlqSOuwTs677w==
X-Received: by 2002:a17:906:b341:b0:a01:b9bd:878 with SMTP id cd1-20020a170906b34100b00a01b9bd0878mr3821013ejb.14.1702449306010;
        Tue, 12 Dec 2023 22:35:06 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id vg16-20020a170907d31000b00a1cdf29af64sm7199429ejc.45.2023.12.12.22.35.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Dec 2023 22:35:05 -0800 (PST)
Message-ID: <d91a9278-f70e-4f0f-92c1-ce0bdac69ff5@linaro.org>
Date: Wed, 13 Dec 2023 07:35:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: mailbox: add Versal IPI bindings
Content-Language: en-US
To: Tanmay Shah <tanmay.shah@amd.com>, jassisinghbrar@gmail.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 michal.simek@amd.com, shubhrajyoti.datta@amd.com
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20231212230353.888714-1-tanmay.shah@amd.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231212230353.888714-1-tanmay.shah@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/12/2023 00:03, Tanmay Shah wrote:
> Add documentation for AMD-Xilinx Versal platform Inter Processor Interrupt
> controller. Versal IPI controller contains buffer-less IPI which do not
> have buffers for message passing. For such IPI channels message buffers
> are not expected and only notification to/from remote agent is expected.
> 
> Signed-off-by: Tanmay Shah <tanmay.shah@amd.com>
> ---
> 


>  properties:
>    compatible:
> -    const: xlnx,zynqmp-ipi-mailbox
> +    enum:
> +      - xlnx,zynqmp-ipi-mailbox
> +      - xlnx,versal-ipi-mailbox
>  
>    method:
>      description: |
>        The method of calling the PM-API firmware layer.
> -      Permitted values are.
> -      - "smc" : SMC #0, following the SMCCC
> -      - "hvc" : HVC #0, following the SMCCC
> -

Independent change. Please do not mix logical changes in one patch.

>      $ref: /schemas/types.yaml#/definitions/string
>      enum:
>        - smc
> @@ -58,16 +56,26 @@ properties:
>    '#size-cells':
>      const: 2
>  
> -  xlnx,ipi-id:
> -    description: |
> -      Remote Xilinx IPI agent ID of which the mailbox is connected to.
> -    $ref: /schemas/types.yaml#/definitions/uint32
> +  reg:
> +    minItems: 1
> +    maxItems: 2
> +
> +  reg-names:
> +    minItems: 1
> +    maxItems: 2

I don't understand why this change is here. Previously you did not have
MMIO address space? If yes, then where do you restrict the old device to
disallow these?


>  
>    interrupts:
>      maxItems: 1
>  
>    ranges: true
>  
> +  xlnx,ipi-id:
> +    description: |
> +      Remote Xilinx IPI agent ID of which the mailbox is connected to.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 64
> +
>  patternProperties:
>    '^mailbox@[0-9a-f]+$':
>      description: Internal ipi mailbox node
> @@ -76,57 +84,116 @@ patternProperties:
>      properties:
>  
>        compatible:
> -        const: xlnx,zynqmp-ipi-dest-mailbox
> +        enum:
> +          - xlnx,zynqmp-ipi-dest-mailbox
> +          - xlnx,versal-ipi-dest-mailbox
>  
> -      xlnx,ipi-id:
> -        description:
> -          Remote Xilinx IPI agent ID of which the mailbox is connected to.
> -        $ref: /schemas/types.yaml#/definitions/uint32
> +      reg:
> +        minItems: 1
> +        maxItems: 4
> +
> +      reg-names:
> +        minItems: 1
> +        maxItems: 4

Same concern.

>  
>        '#mbox-cells':
>          const: 1
>          description:
>            It contains tx(0) or rx(1) channel IPI id number.
>  
> -      reg:
> -        maxItems: 4
> -
> -      reg-names:
> -        items:
> -          - const: local_request_region
> -          - const: local_response_region
> -          - const: remote_request_region
> -          - const: remote_response_region
> +      xlnx,ipi-id:
> +        description:
> +          Remote Xilinx IPI agent ID of which the mailbox is connected to.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 0
> +        maximum: 64
>  
>      required:
>        - compatible
>        - reg
>        - reg-names
>        - "#mbox-cells"
> -
> -additionalProperties: false
> -
> +      - xlnx,ipi-id
> +
> +    allOf:
> +      - if:
> +          properties:
> +            compatible:
> +              contains:
> +                enum:
> +                  - xlnx,zynqmp-ipi-dest-mailbox
> +        then:
> +          properties:
> +            reg:
> +              items:
> +                - description: Host agent request message buffer
> +                - description: Host agent response message buffer
> +                - description: Remote agent request message buffer
> +                - description: Remote agent response message buffer
> +
> +            reg-names:
> +              items:
> +                - const: local_request_region
> +                - const: local_response_region
> +                - const: remote_request_region
> +                - const: remote_response_region
> +        else:
> +          properties:
> +            reg:
> +              minItems: 1
> +              items:
> +                - description: Remote IPI agent control register
> +                - description: Remote IPI agent optional message buffer

Were these described in old binding? If not, it's a separate change.

> +
> +            reg-names:
> +              minItems: 1
> +              items:
> +                - const: ctrl
> +                - const: msg

Blank line

>  required:
>    - compatible
> -  - interrupts
>    - '#address-cells'
>    - '#size-cells'
> +  - interrupts

Separate change with its own rationale. Trivial cleanups can be
organized in one patch, but should not be mixed with adding new devices.

>    - xlnx,ipi-id
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - xlnx,versal-ipi-mailbox
> +    then:
> +      properties:
> +        reg:
> +          items:
> +            - description: Host IPI agent control registers
> +            - description: Host IPI agent optional message buffers
> +
> +        reg-names:
> +          items:
> +            - const: ctrl
> +            - const: msg
> +
> +      required:
> +        - reg
> +        - reg-names
> +
> +additionalProperties: false
> +
> +

Just one blank line.

>  examples:
>    - |
>      #include<dt-bindings/interrupt-controller/arm-gic.h>
>  
> -    amba {
> -      #address-cells = <0x2>;
> -      #size-cells = <0x2>;
> +    bus {
>        zynqmp-mailbox {
>          compatible = "xlnx,zynqmp-ipi-mailbox";
>          interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
>          xlnx,ipi-id = <0>;
>          #address-cells = <2>;
>          #size-cells = <2>;
> -        ranges;

How is this related to Versal?

>  
>          mailbox: mailbox@ff9905c0 {
>            compatible = "xlnx,zynqmp-ipi-dest-mailbox";
> @@ -144,4 +211,41 @@ examples:
>        };
>      };
>  
> +  - |
> +    #include<dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    bus {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +      zynqmp-mailbox@ff300000 {

mailbox@

> +        compatible = "xlnx,versal-ipi-mailbox";
> +        interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +        reg = <0x0 0xff300000 0x0 0x1000>,
> +              <0x0 0xff990000 0x0 0x1ff>;
> +        reg-names = "ctrl", "msg";
> +        xlnx,ipi-id = <0>;
> +        ranges;
> +


Best regards,
Krzysztof


