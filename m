Return-Path: <devicetree+bounces-245791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EC2CB55D5
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 10:35:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 79AE930010C8
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 09:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ADC12F3C02;
	Thu, 11 Dec 2025 09:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DeOTeIRC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6752F6572
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 09:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765445717; cv=none; b=o2I1/ubXG7NSQmybjg2WB5WWSO4Ckutn3JJXrIhZkN2sgfw6F7lx3nx2eTwNDPQQNmroZ4sWPqJmqyNT+D9m2MQBmIPGVYyQlir0GE6xH6J0CRAVxXK+MoihU4gYgf04Trh4x50Bk2BtbCyyDW0uKWfpDoRnNPWLvpoRcD66DFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765445717; c=relaxed/simple;
	bh=nJrunBhBQBMvNQw/Fbsfe7jvJ+KN4zVgiCXiLL/YIHI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L2RW9M76oiT0IZfb8t4/KPNcxYR9ACnS/nQ0pIeAZa/qEmJjOE+XtKil68A5t78XbuSSCimhAaI8wjQpNbhBMfQmlWqCO6Y7+f3vB03zVMnnHd/rq8csxPNvY57FNfP+/Fvfo/cOfEA8c8vZSaQxYZuZqAATrlwUS7YyvcLxwJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DeOTeIRC; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-597c418b79eso74405e87.2
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:35:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765445713; x=1766050513; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gHjKWneZHFEFoK9PkdTJIjwJCl0oEnMit2/JJ/uLhvY=;
        b=DeOTeIRCxam89wbqzl/aWKdDIg8mGIbTlTiIVhyq/AgpcH7ZBzP69sNFjeNh6EtEji
         NRbvqZ4GTgL8hnBV7GoG3iTP/ytJ1BZa16qn4uk9zK7f0AREIswrjbj64YJYEjzkxklk
         uzmbpVYtn8c7Zu9RIApBoxCqGCaZcSNc3e/JB0lfYtBOt0+p05oHrWFfXS20QjVp2Mve
         KzLa/3478tPY/XkeOS8zsNZF7KO3DqUNIiEWGa8nsiosPpd72PkjTZo0hCuMC7B3g//R
         XCDr99Th1B/9eKy/0WnmBW2VJPKm3hKW03cZrB8N2TUqrpYYk8reHoATQ/BuqumtA8eR
         d4KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765445713; x=1766050513;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gHjKWneZHFEFoK9PkdTJIjwJCl0oEnMit2/JJ/uLhvY=;
        b=R6GYUeX8WWBMddF6Ak8VKgZNWjnRuCE2H/mHlUKtpEKmmrBMjJSl9V8dM2L2zbqDuQ
         K1zxfpp+ea4VUtss+xkSIDXLGsS/WpPMJ6+hqXrHdro7FchK549fY1TT1LrYljLsmQiV
         ePkU1Bhhm1fvtIu3gVjnrXmYXKUxJyigzi36UqhnXYnvs9zThvtpjl9yG9Pt3h/slnlG
         yjL9PLJ0a8MprmN4oFO0ZAcDStepSz4ix+HEzO6NdPo4fmJWMnyKoG5YjTfrGGoIZDh9
         dwGcT1bIlobZNEbzvm+F+Lp2/Rm/yI3rCTDx+vgFj7bvfDrSC9v41ayufPRmLDsfVZbG
         PPuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHBo5Wz6f1sgd7VomQ4VtscLQOYmLxV3Fb8ZbXSf0m0zQyjIU+rFpPKusy+vmj9/DliThfqvAO2EFw@vger.kernel.org
X-Gm-Message-State: AOJu0Yz14g/ZuNl2gbsGWihwn2o1CpUF346yky8uxZlpNaibvD2uze0Y
	sBgFGNxH8vFC5zG5Qn8jufg1h/+JM/y5CL01dPQDWbfgJ4QLxadqJAVPKXTGwyKu0nA=
X-Gm-Gg: AY/fxX7YuQ1Y6h4bzn9KBYK3sPXL8mTrm6T55Gc7SkTPmYrJd16cuIIab5nDO/S0DXi
	4mrcKF4rZZTUOOw5qN3q2JKYbg69rQ72ExXdK0AqSSWZyZWhyqKNjO0Rj5CXGCS4pEpv+exdAE5
	Es+/aZjXJM1Z8oy3Qhxg2WhZZx2Z51clBOfjgSRnUO9vnOp78bGbJoVZ+6p5eWUDUdG/GowpgIn
	m1+CSRsTOv0FQlRG6om5CPLoDxHntARFH1Scc2oAhIIQv2ExiqdaxPfhRnKOIVuFrdhRe5ckFHM
	MhOSf+DaaJ6XMd5oHxy5+1LY3R90/ob3cB3vS6WxYhtdZUG0ZzQgALyr1XaGSyH+q+PNKdLqOy4
	mUdytCiRoLDKBXq3lkAQ0oSVxeJeHh8XUh5323ys4k33OQ8FLfcwe2pS98x2P9cms1WVXrM9+Yr
	vIX45UHnIt8N6JdnaoqFbsNTTv91fsUM3vZ8cHZucYQnKWtPsWR78wt98Jy5tQbnsfs2RZ8g19V
	ogj
X-Google-Smtp-Source: AGHT+IFmYQeN0NmklStZ/0kcb9NNDJoQrGwBtmW+zlao4Ey6WBHWnQ/bowNdnSt64t/1gqgeBKnRPg==
X-Received: by 2002:a05:6512:3ca0:b0:594:253c:20a5 with SMTP id 2adb3069b0e04-598ee53a6d3mr1211114e87.5.1765445711723;
        Thu, 11 Dec 2025 01:35:11 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f3ef28sm700274e87.24.2025.12.11.01.35.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Dec 2025 01:35:11 -0800 (PST)
Message-ID: <74d7b5a6-c65d-47be-8e2b-f527b1d0bbc2@linaro.org>
Date: Thu, 11 Dec 2025 11:35:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/5] dt-bindings: media: i2c: Add Sony IMX355
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

Hi Richard.

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

Please enumerate data lanes starting from 1.

> +
> +        required:
> +          - link-frequencies
> +          - data-lanes

If the sensor does not support any other lanes configuration,
the property can be optional.

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

