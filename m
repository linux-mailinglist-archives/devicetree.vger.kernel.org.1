Return-Path: <devicetree+bounces-8275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DDC7C777E
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 21:57:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B75111C20DC5
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 19:57:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE7903C693;
	Thu, 12 Oct 2023 19:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CIenUTUy"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5835C3C68C
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 19:57:44 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 407D0B7
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 12:57:42 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99c3d3c3db9so217652466b.3
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 12:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697140661; x=1697745461; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HzdM1FhA0+mvDnE+VF9qincSq/5iteifHw8Yz/lxZ7g=;
        b=CIenUTUySFQCs6wLzZcr3nvXLQyN7acFjadaEve6mTzlhJ3bLmAc7yu1q4a2uq45Vj
         ojk2sPA4iUnjbAUa2bYKdBttF/Lu9LXH24xdGs9gVhxtzQSdUi3UO9ZS+3DlvT86DxpK
         TZC30Pv5UHNYlXF8vykpJbp+GUXC6J9FsPr/iaPMPbEqiL+RUZIdRki56VPbulixBAvv
         znay8TyUrYxOXDB+h19HY2DwWMo/vxhhNPfaXWzA+3kH+f0gUjmG26DePCOB5X+XsPxx
         T8+zwFPy63/hxSx/fl0U+TvglB4BVS8xhG16Ga1xdh6nKuN0Vabq+uBMCk/4WU75mxN7
         ftPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697140661; x=1697745461;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HzdM1FhA0+mvDnE+VF9qincSq/5iteifHw8Yz/lxZ7g=;
        b=iwTWhIQsjTm3gH91QU0WqQX62OYGpqh4kb4hVqeRGVgD9EDG9Gx7hkXGbr7lvJc+Bz
         aqB6eYX3jh4zuAQHn3S3XtO0CT4R3RZwdoyny01BoDBIKfu+Zkbs/bStmysEiJjtgCBj
         aDp35JN3VEnuXoP2vjxE3wCWbFEL1zD7Jx2fAy+OdeTIkIk/VOz6NlzDT3K1n/aqPS9b
         dWspn4quatq4m/iBu73T2rpsYMOQRdrBGbsvrjziu3vewEcsZ1Qy/DwJUp5VxA/Lhs6f
         SP9EpRXwrLi4Zk3qSZn+SPmtXovWAtTzvCwSQP8NdrSHCxnvgrOd6I5/3Cc92uJ0wFwt
         BOgA==
X-Gm-Message-State: AOJu0YzBDb6cUxHc8Y+AkdrAJQ0yWEEbT6HgTgkHaxHsd9QRL1t18aZ8
	0vvC+HKtfUfcKwKAtHNL+LOaLw==
X-Google-Smtp-Source: AGHT+IF/ttlctJfCAID+q7zM//FmMDv1jKpRKLSJW+Bkl9rmD8mL9ptu7ULXnErDGpdgPipUutB53Q==
X-Received: by 2002:a17:906:cc0d:b0:9a5:874a:9745 with SMTP id ml13-20020a170906cc0d00b009a5874a9745mr21348818ejb.26.1697140660653;
        Thu, 12 Oct 2023 12:57:40 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id j18-20020a170906411200b0099ccee57ac2sm11541015ejk.194.2023.10.12.12.57.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 12:57:40 -0700 (PDT)
Message-ID: <aaa41ff2-d2e3-4c25-9654-065a02275619@linaro.org>
Date: Thu, 12 Oct 2023 21:57:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: media: Add bindings for THine THP7312
 ISP
Content-Language: en-US
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Julien Stephan <jstephan@baylibre.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org
References: <20231012193737.7251-1-laurent.pinchart@ideasonboard.com>
 <20231012193737.7251-2-laurent.pinchart@ideasonboard.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231012193737.7251-2-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 12/10/2023 21:37, Laurent Pinchart wrote:

Thanks for the changes

> +
> +  port:
> +    $ref: /schemas/graph.yaml#/$defs/port-base
> +    additionalProperties: false
> +
> +    properties:
> +      endpoint:
> +        $ref: /schemas/media/video-interfaces.yaml#
> +        unevaluatedProperties: false
> +
> +        properties:
> +          data-lanes:
> +            description:
> +              This property is for lane reordering between the THP7312 and the
> +              SoC. The sensor supports either two-lane, or four-lane operation.
> +              If this property is omitted four-lane operation is assumed. For
> +              two-lane operation the property must be set to <1 2>.
> +            minItems: 2
> +            maxItems: 4
> +            items:
> +              maximum: 4
> +
> +  sensors:
> +    type: object
> +    description: List of connected sensors

I don't understand why do you list sensors here. From the binding
description I understood these are external sensors, which usually sit
on I2C bus.

> +
> +    properties:
> +      "#address-cells":
> +        const: 1
> +
> +      "#size-cells":
> +        const: 0
> +
> +    patternProperties:
> +      "^sensor@[01]":
> +        type: object
> +        description:
> +          Sensors connected to the first and second input, with one node per
> +          sensor.
> +
> +        properties:
> +          thine,model:
> +            $ref: /schemas/types.yaml#/definitions/string
> +            description:
> +              Model of the connected sensors. Must be a valid compatible string.

Then why this isn't compatible?

> +
> +          reg:
> +            maxItems: 1
> +            description: THP7312 input port number
> +
> +          data-lanes:
> +            $ref: /schemas/media/video-interfaces.yaml#/properties/data-lanes
> +            items:
> +              maxItems: 4
> +            description:
> +              This property is for lane reordering between the THP7312 and the imaging
> +              sensor that it is connected to.
> +
> +        patternProperties:
> +          ".*-supply":
> +            description: Power supplies for the sensor
> +
> +        required:
> +          - reg
> +          - data-lanes
> +
> +        additionalProperties: false
> +
> +    required:
> +      - "#address-cells"
> +      - "#size-cells"
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - reset-gpios
> +  - clocks
> +  - vddcore-supply
> +  - vhtermrx-supply
> +  - vddtx-supply
> +  - vddhost-supply
> +  - vddcmos-supply
> +  - vddgpio-0-supply
> +  - vddgpio-1-supply
> +  - sensors
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        camera@61 {
> +            compatible = "thine,thp7312";
> +            reg = <0x61>;
> +
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&cam1_pins_default>;
> +
> +            reset-gpios = <&pio 119 GPIO_ACTIVE_LOW>;
> +            clocks = <&camera61_clk>;
> +
> +            vddcore-supply = <&vsys_v4p2>;
> +            vhtermrx-supply = <&vsys_v4p2>;
> +            vddtx-supply = <&vsys_v4p2>;
> +            vddhost-supply = <&vsys_v4p2>;
> +            vddcmos-supply = <&vsys_v4p2>;
> +            vddgpio-0-supply = <&vsys_v4p2>;
> +            vddgpio-1-supply = <&vsys_v4p2>;
> +
> +            orientation = <0>;
> +            rotation = <0>;
> +
> +            sensors {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                sensor@0 {
> +                    thine,model = "sony,imx258";
> +                    reg = <0>;
> +
> +                    data-lanes = <4 1 3 2>;
> +
> +                    dovdd-supply = <&vsys_v4p2>;
> +                    avdd-supply = <&vsys_v4p2>;
> +                    dvdd-supply = <&vsys_v4p2>;
> +                };
> +            };
> +
> +            port {
> +                thp7312_2_endpoint: endpoint {
> +                    remote-endpoint = <&mipi_thp7312_2>;
> +                    data-lanes = <4 2 1 3>;
> +                };
> +            };
> +    	  };
> +    };


Best regards,
Krzysztof


