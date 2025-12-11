Return-Path: <devicetree+bounces-245821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D082ECB5989
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 12:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D28B3005FFA
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 11:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B56A42F7AA8;
	Thu, 11 Dec 2025 11:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rBKEbwZ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06552D8364
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 11:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765450974; cv=none; b=BUztfvE6877zRn52ayuVCNmTcfZkWQBuWWzXkvz3R37aPBXPQY34MFVTxXEoul2M8YJntw8Gli5G0Z9vx9NjjYwSSEkn9Ro5oBsfcWJAMpbafp0LQnz6s66/U2TjA+o07SP0uJn05XMESl8HboXe4RAV+dE3btIijlasTdWdh4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765450974; c=relaxed/simple;
	bh=nrYL+p3whmUEM5YpWCZ767nAIenkR15h2mmeoDqw5PQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TfkMHzzrUyXIyOOyZM079+KK9LU7qCByqtLRDWWlDnUiniY1sWSrKT6c9cHzYbjxh2Ydk30aCgDxrdraroxbDz5lskHy+UMcvgYfx0jYu8cnFLw6WepOs55V+x6ztGo8xGXVfgvo2yYbkwm/fd6GOT02Wn7Lm1u/lVulDGUk2Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rBKEbwZ/; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5957a623c7fso136559e87.0
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 03:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765450971; x=1766055771; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4IpgOIEea7XPlTH9HIW1XTLqM3YdzmpFIYxfSSkeFYE=;
        b=rBKEbwZ/fBVLDv5YnOt8cl8mOKQ/knlS7A7zX+c2bkKmuPETpCeA625WCVMz+nl9qy
         QTQXA2Pd0BBeuYSnzL7IrtHbu7TgH/E1/Rlzg/MWSwYI4nabLal4PnZNOQ497Dwe4WEw
         c6gOEBCM+AnRTs8Ybuw/SzrM017ta4GS3Qh1/ua1JcmNjmr+95kx1DaNVQDwXLN2rePg
         WZHdAfiyt2tGuwKvn97ioPaUC8LPQIvskZDnn/yC/9Lm+qe3azT1N+c499fudzJpaYzp
         ciOez2mGqbqYSIBiBL7xPOSjuGcMo/08YVbMbVen1E6W75vn+kOqdBgmlqZAxWW8yKxK
         95og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765450971; x=1766055771;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4IpgOIEea7XPlTH9HIW1XTLqM3YdzmpFIYxfSSkeFYE=;
        b=wYH5W+vIKE+LHevRL8ruf2azKkqa2SO4J94ooXVQwnc0YcS4fXKZKNcf5A/AxS9nZw
         AwEthjKGabNszLmamixO2qzXBem1zUrCwnWYwddouTBz0MA08iJlyNJQp0BMxBDDc0mz
         DfdZxEMyyFwE/X1C+73fq9ajggKXmM/sILHsSwrExmmGmdcWD+fLlFAJKfvaR82u6RUd
         oQAUYLhgLyVoDvDeydRdDHBJ+bLxuQjuYjX4+OkBDAvV01DNte20+XVTP+2J2lmKpXD3
         eUtX4FWSr3X1YcF7YaSw2EhMVKbfPJgmRwKGtl/Zr4sHcvtiSKsDOcrz/QlVk8d8j+zc
         JlFA==
X-Forwarded-Encrypted: i=1; AJvYcCVUxIelrzFM0TzyanaaEdw9alvX3Cebeb0VARdZCTNoroeUjzWIfWDHpPhQO5wNt3EKSfpoAegN4/gV@vger.kernel.org
X-Gm-Message-State: AOJu0YzKRalPHzm8nMgv3i3d+7F3FoNALIzRgRNCrw42SYAG2/5QVBYb
	Uwni0F4+qow689KZ9mX8izkpyUuxa1D8NSHlcGxt2Zdm8db4xGuZZlgAlvLmSX90x5U=
X-Gm-Gg: AY/fxX66216HA3UHP9dnbBaYdCUHDqecblNkly8GK0wtahZzxNBEImHwqNj5/sBFUK2
	84XrmlnjOFPW0tslVg4pf0AY6TZvBWWj4C9f2MgsD01K1yjWxE1pdDpvFotdYzUwYEwoW+HbxWU
	csnLgZBr6gAetksbNs5Z5Sn2M7jIYnRxNfJhLBTwB2Crm0kf84QAP8u3XYFEMU6+jAzE5UQTOV5
	Oz0/WXoKCkoKjHGeoZzsQf+ZcnSKdyXbOpnTuGDBB28ou34nlEDeRBkg9Y5rlMAV5ulaURJ1Z6y
	CkM4rPW88ugiIt4Ce0YxigcrdvKt0mpzfWV9zf4JolMgETIwulhmr4BnLHxag5gMw2l3C6s4wTY
	ln9InKj1EIjSwU9OdS5UCjdqxpqmvj3Vgrhx+A4WBjC2RQ4erlaJEYjKMHmZQtW5gtXhYarX9Zg
	kPelgDeCwrlL5mFxvd05Y2g5yC9dHb843JgkHrVP++EKC3N3PjHKeB7hSS3gdvntSvBQ==
X-Google-Smtp-Source: AGHT+IFk2biVIAj45RBGf3zLMigOPvVju7YdIhY0AHKiPT8b07zME4lPqCahZLx/NOmDPJlsa42yNQ==
X-Received: by 2002:a05:6512:3da3:b0:594:493b:4249 with SMTP id 2adb3069b0e04-598f373d7f5mr421553e87.0.1765450970793;
        Thu, 11 Dec 2025 03:02:50 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f3e82dsm762042e87.23.2025.12.11.03.02.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Dec 2025 03:02:50 -0800 (PST)
Message-ID: <25c8ad84-2a3f-4e09-a32f-8af68379858e@linaro.org>
Date: Thu, 11 Dec 2025 13:02:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/5] dt-bindings: media: i2c: Add Sony IMX355
Content-Language: ru-RU
To: Richard Acayan <mailingradian@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-2-mailingradian@gmail.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251211014846.16602-2-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/11/25 03:48, Richard Acayan wrote:
> The IMX355 camera sensor is a camera sensor that can be found as the
> front camera in some smartphones, such as the Pixel 3, Pixel 3 XL, Pixel
> 3a, and Pixel 3a XL. It already has a driver, but needs support for
> device tree. Document the IMX355 to support defining it in device tree.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>   .../bindings/media/i2c/sony,imx355.yaml       | 119 ++++++++++++++++++
>   1 file changed, 119 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml
> new file mode 100644
> index 000000000000..9aa2c7b7ea71
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml
> @@ -0,0 +1,119 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/sony,imx355.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sony IMX355 Sensor
> +
> +maintainers:
> +  - Richard Acayan <mailingradian@gmail.com>
> +
> +description:
> +  The IMX355 sensor is a 3280x2464 image sensor, commonly found as the front
> +  camera in smartphones.
> +
> +allOf:
> +  - $ref: /schemas/media/video-interface-devices.yaml#
> +
> +properties:
> +  compatible:
> +    const: sony,imx355
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: mclk

clock-names property can be removed, there is just one supply clock.

> +
> +  avdd-supply:
> +    description: Analog power supply.
> +
> +  dvdd-supply:
> +    description: Digital power supply.
> +
> +  dovdd-supply:
> +    description: Interface power supply.
> +
> +  reset-gpios:
> +    maxItems: 1

Please explicitly document that the reset GPIO is active low, and make
the correspondent dts changes.

> +
> +  port:
> +    $ref: /schemas/graph.yaml#/$defs/port-base
> +    additionalProperties: false
> +
> +    properties:
> +      endpoint:
> +        $ref: /schemas/media/video-interfaces.yaml
> +        unevaluatedProperties: false
> +
> +        data-lanes:
> +          items:
> +            - const: 0
> +            - const: 1
> +            - const: 2
> +            - const: 3
> +
> +        required:
> +          - link-frequencies
> +          - data-lanes
> +
> +    required:
> +      - endpoint
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - avdd-supply
> +  - dvdd-supply
> +  - dovdd-supply
> +  - port
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,camcc-sdm845.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        camera@1a {
> +            compatible = "sony,imx355";
> +            reg = <0x1a>;
> +
> +            clocks = <&camcc CAM_CC_MCLK2_CLK>;
> +            clock-names = "mclk";
> +
> +            assigned-clocks = <&camcc CAM_CC_MCLK2_CLK>;
> +            assigned-clock-rates = <24000000>;
> +
> +            reset-gpios = <&tlmm 9 GPIO_ACTIVE_HIGH>;
> +
> +            avdd-supply = <&cam_front_ldo>;
> +            dvdd-supply = <&cam_front_ldo>;
> +            dovdd-supply = <&cam_vio_ldo>;
> +
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&cam_front_default>;
> +
> +            rotation = <270>;
> +            orientation = <0>;
> +
> +            port {
> +                cam_front_endpoint: endpoint {
> +                    data-lanes = <0 1 2 3>;
> +                    link-frequencies = /bits/ 64 <360000000>;
> +                    remote-endpoint = <&camss_endpoint1>;
> +                };
> +            };
> +        };
> +    };

-- 
Best wishes,
Vladimir

