Return-Path: <devicetree+bounces-18743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7DB7F8A05
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 11:44:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60C0F1C20BD2
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 10:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2512D2106;
	Sat, 25 Nov 2023 10:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v9Nq8PC4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DAD410E7
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 02:44:40 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a049d19b63bso375847566b.2
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 02:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700909079; x=1701513879; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i5Cp1vx3gVvbCmj7yjPQKKD5FRRXR8fk4il/qJSsZs0=;
        b=v9Nq8PC4mXighOO2LDVjbya0mSFSGvbPl4mJtqAydwomeEji8ya1m3WTHm4FWNqAm8
         nyTxENv6Sf8E4R3Y02wfgjDiyoP/y3E3MuqKtxtxbGvYDnJan025CjY9CyN/oYARAKbr
         cl98TZmINNW6PkBqXigIOdhO7HvA66NFwWyCICZ0X2lZVdakK5gK9njajBVlOLc1thok
         W/21Dc1ZzKb4KjhUQPm2MwZtrrBPqEmRBlvD3zRcbCs9OntUCtmF/ZQqmCQylVcg02GO
         zlyti6BVEozTfWjZ9G8qevf/UttDCapyQz8kptEr0DZUP5h8Cs8f1aCQdZ/27f+EhepM
         bLpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700909079; x=1701513879;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i5Cp1vx3gVvbCmj7yjPQKKD5FRRXR8fk4il/qJSsZs0=;
        b=TbmgIU+DjyNox7TREbeELFo6j6IYu1FAVPEyTWZFeg1D0N+3wUZMzqV+HsSs9z5a1J
         4ZxV4NTMvk1m4scMVjeXDJXYDkoQaCKl4lrF8w7miwLBOn9LKxSacCx8dlsSvtkGouCs
         Wsu9zNFIfc1pd3msrQoHhjxFUC/rtyOLwJZU84JdZPc0OO/rANC8qXmX6lHKxgcJpxGK
         cldDydMo/JNlWLNlBlX5rJybUxe3XO19Rrk+CudpPd1YLkhAtVhGfJhBssgFM3+6u7wU
         GsYnBm85mIO6hPPIbbQWoiLay9BaYHZY0s5fGVCXEW7SYJXl3f0iZ2bkPqwXuOotEQZS
         4YIg==
X-Gm-Message-State: AOJu0YzMzm+ltr/48gvdF2MMcKZQ4cWc8NcT8XnjkZfsJzWv4pEYLV5A
	pS59b9uXDfYOEBYi89Y2Z60npg==
X-Google-Smtp-Source: AGHT+IEeAm/4J+tigujRp6ombtjYSDl6OzuU738PT+Tj7UmZiuQHgmWNLWnNgHXTM+RwBL9NAu4lJQ==
X-Received: by 2002:a17:906:348c:b0:9e7:133a:5787 with SMTP id g12-20020a170906348c00b009e7133a5787mr4074090ejb.38.1700909078488;
        Sat, 25 Nov 2023 02:44:38 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id l23-20020a170906231700b009ff1997ce86sm3323512eja.149.2023.11.25.02.44.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Nov 2023 02:44:37 -0800 (PST)
Message-ID: <9ec78ce2-6b2f-4c31-9746-572b5e64fe87@linaro.org>
Date: Sat, 25 Nov 2023 11:44:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: leds: add mps mp3326 LED
Content-Language: en-US
To: Yuxi Wang <Yuxi.Wang@monolithicpower.com>, pavel@ucw.cz, lee@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 devicetree@vger.kernel.org, wyx137120466@gmail.com
References: <20231124093034.951-1-Yuxi.Wang@monolithicpower.com>
 <20231124093034.951-2-Yuxi.Wang@monolithicpower.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231124093034.951-2-Yuxi.Wang@monolithicpower.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/11/2023 10:30, Yuxi Wang wrote:
> Document mps mp3326 LED driver devicetree bindings.
> 
> Signed-off-by: Yuxi Wang <Yuxi.Wang@monolithicpower.com>
> ---
>  .../devicetree/bindings/leds/mps,mp3326.yaml  | 143 ++++++++++++++++++
>  1 file changed, 143 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/leds/mps,mp3326.yaml
> 
> diff --git a/Documentation/devicetree/bindings/leds/mps,mp3326.yaml b/Documentation/devicetree/bindings/leds/mps,mp3326.yaml
> new file mode 100644
> index 000000000000..5f6bde46ccc8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/leds/mps,mp3326.yaml
> @@ -0,0 +1,143 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/leds/mps,mp3326.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MPS MP3326 RGB/White LED Driver
> +
> +maintainers:
> +  - Yuxi Wang <Yuxi.Wang@monolithicpower.com>
> +
> +description: |
> +  The MP3326 is a RGB/White LED driver with I2C interface.
> +
> +  For more product information please see the link below:
> +  https://www.monolithicpower.com/en/products/mp3326.html
> +
> +properties:
> +  compatible:
> +    const: mps,mp3326
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  reg:
> +    maxItems: 1
> +
> +  multi-led:
> +    type: object

Missing ref to multi-led class. Please open existing bindings with such
node and take a look how it is done there.

> +    unevaluatedProperties: false
> +
> +    properties:
> +      "#address-cells":
> +        const: 1
> +
> +      "#size-cells":
> +        const: 0
> +
> +      color:
> +        description: RGB module

Drop property

> +
> +    patternProperties:
> +      "^led@[0-3]$":

This says 4...

> +        type: object
> +        $ref: common.yaml#
> +        unevaluatedProperties: false
> +
> +        properties:
> +          reg:
> +            description: Index of the LED.
> +            minimum: 1
> +            maximum: 16

But this says 16.

Also reg does not match unit address. Minimum reg is 1, but unit address
is 0.

> +
> +        required:
> +          - reg
> +          - color
> +
> +    required:
> +      - "#address-cells"
> +      - "#size-cells"
> +      - color

Drop color, it is coming with class-multicolor


> +
> +patternProperties:
> +  "^led@[0-9]$":

It's even weirded. Here you have 10 leds with indices 0-9

> +    type: object
> +    $ref: common.yaml#
> +    unevaluatedProperties: false
> +
> +    properties:
> +      reg:
> +        description: Index of the LED.
> +        minimum: 1
> +        maximum: 16

bu there 16! With indices 1-16.

It's a mess.


> +    required:
> +      - reg
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/leds/common.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        led-controller@30 {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +            compatible = "mps,mp3326";
> +            reg = <0x30>;
> +            multi-led {
> +              #address-cells = <1>;
> +              #size-cells = <0>;
> +              color = <LED_COLOR_ID_RGB>;
> +
> +              led@0 {
> +                  reg  = <1>;

OK, you did not test it. Test your DTS before sending.

Also, messed indentation. Use 4 spaces.

Best regards,
Krzysztof


