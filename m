Return-Path: <devicetree+bounces-72630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB09A8FC6CC
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:43:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F31241C20C21
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 08:43:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58CAD1946C5;
	Wed,  5 Jun 2024 08:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ovmGnftg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE1F4962C
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 08:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717577002; cv=none; b=U4ER29Xyo/5WZGFP3LjUOHfNue67khrCu9GiPVrwkxxGNkQ/aXDKeezfQCjy5DlInRMudlcdzZMrfcB+tB0QNuON5ld5nY87xY4YTbFneqKo5rtyX23cXBjc2mpOt58fc8bEurymv+ZX4ILjmp0RqN2CJmxn37y/Mp97i0gJ+Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717577002; c=relaxed/simple;
	bh=UyNhSgVl8UD/iWTRN74OFvCp1rWgYw8X5jmz8P0juAo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tj8lpsv1KtxYIM414uu933Qmqi+qBxme3ouFyIAmCpSEORv3pjwYDUamN1OUDn2cg/Ct71KvbtHMz7Yb4emug0iIahlwzShORleQdsHUG0D5eFBVbD5F9HrLNWtDZmD8aBR3O99ubji50tyD2NnT42H51TELMG9QiZ6CwdK/2wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ovmGnftg; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52962423ed8so2136153e87.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 01:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717576999; x=1718181799; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UaBUOGJ1Ak3zXlLeWfU/jqutLHK14Cta/y09o8r+2HE=;
        b=ovmGnftgMtI70Cqj8xtBQA+AXh52/LGaeI6VJDBN/VBtZfwrLLTRCuOrRyYY2fmYDv
         k9+hv6vJml6h6bIMw77nkiWkXy2yvK4iL6UqbvyV66uKhEV/wFq7CTv5/1SvflVzM94M
         PiPKnBtin27zbDCTVdJamuB0LhzpdOp3O14g2v4EpeQlC3CsGokT8xgIYJsodvtz4UQ0
         qan7VQl8ZOsABDOuPfArg9Zud2g9jtxv08S/A80ES4VSM9KZ4SYf8hNH5Jnc9a/LFUHQ
         4RkcX0v4P9TI5Uon3iDSIeUFfA4bCMGavg9hviAHq48gIFmgv1j9fM//cC6b0cTsSZBf
         81BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717576999; x=1718181799;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UaBUOGJ1Ak3zXlLeWfU/jqutLHK14Cta/y09o8r+2HE=;
        b=kzE4EUgOTT8nq0hBSkhCtOyr++Rv6V3b6/fmh/Q2zZAk6EF/gKcnF7KWNxsIVNq/J6
         HnY1T7XY9hH53QwoHcZ4VSecPkIJvKIeRWzNtPa/s2Nw2EG+5rNTY6ccm4cwzuQI4hpc
         szvOWQPvYt6bhpyugw5qV6hF0JkZYQub4Iv47RPThl4R48oxoe5UtuGpq0DpUWv/uZkj
         BDLfoT+mH0W9kSYEuMxzDW5ALOEvIuemWmOeR9lVzYw+FKf6zUAPIgNL9R1XTPPiPax9
         nX4+HP4DYqmA+tbRn6tCINLQvoD+ZI/y3utuCHvH/+h4Xtk6waVzJZaRVUQsWVaPilE0
         9BXw==
X-Forwarded-Encrypted: i=1; AJvYcCXK7UOXb4vKH69Fcerps/2Lp6YlXlAHFch2h6joaaqXL4TOCpLR2a0+ptwJwLK5MLdFwngBTNEhJMZIi+nBdbQqzm4OOnjxiVEbZQ==
X-Gm-Message-State: AOJu0YwU/ZXv5j2xIhYvT1iSkJGLdQ9Ee8yF9Udvagv2FM57RNfceIow
	N9Mtu3Uwx/JrKjTNCDmFB2qLcxBIkBhH3mXoYBgrHxlpOMMGPXiKWiKGtb3Um4A=
X-Google-Smtp-Source: AGHT+IHSUT5SCWDrqLRDCxVgfYjYbJDRkmqElMEcHxiyJVbLLK6Y6zKPWnCYgcMcdL7lIkZ8f3s3vw==
X-Received: by 2002:ac2:5059:0:b0:521:54b5:86a3 with SMTP id 2adb3069b0e04-52bab509c32mr875541e87.64.1717576998609;
        Wed, 05 Jun 2024 01:43:18 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d828a1sm1708733e87.221.2024.06.05.01.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 01:43:18 -0700 (PDT)
Date: Wed, 5 Jun 2024 11:43:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>, 
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>, Stephen Boyd <swboyd@chromium.org>, 
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Andy Shevchenko <andy.shevchenko@gmail.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH v2 11/14] dt-bindings: mfd: pm8008: rework binding
Message-ID: <d5omeycp4l3mrzgswga2jkgxydpiayqfdjavwnfswcojawiqkt@zuol3vvkao5r>
References: <20240529162958.18081-1-johan+linaro@kernel.org>
 <20240529162958.18081-12-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240529162958.18081-12-johan+linaro@kernel.org>

On Wed, May 29, 2024 at 06:29:55PM +0200, Johan Hovold wrote:
> Rework the pm8008 binding by dropping internal details like register
> offsets and interrupts and by adding the missing regulator and
> temperature alarm properties.
> 
> Note that child nodes are still used for pinctrl and regulator
> configuration.
> 
> Also note that the pinctrl state definition will be extended later and
> could eventually also be shared with other PMICs (e.g. by breaking out
> bits of qcom,pmic-gpio.yaml).

Obviously we want to adapt this style of bindings for the other PMICs
too. My main concern here are PMICs which have two kinds of controlled
pins: GPIOs and MPPs. With the existing bindings style those are
declared as two subdevices. What would be your suggested way to support
MPPs with the proposed kind of bindings?

> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../devicetree/bindings/mfd/qcom,pm8008.yaml  | 149 +++++++++++-------
>  1 file changed, 90 insertions(+), 59 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml b/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml
> index d71657f488db..ccf472e7f552 100644
> --- a/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml
> +++ b/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml
> @@ -27,103 +27,134 @@ properties:
>    reset-gpios:
>      maxItems: 1
>  
> -  "#interrupt-cells":
> +  vdd-l1-l2-supply: true
> +  vdd-l3-l4-supply: true
> +  vdd-l5-supply: true
> +  vdd-l6-supply: true
> +  vdd-l7-supply: true
> +
> +  gpio-controller: true
> +
> +  "#gpio-cells":
>      const: 2
>  
> -    description: |
> -      The first cell is the IRQ number, the second cell is the IRQ trigger
> -      flag. All interrupts are listed in include/dt-bindings/mfd/qcom-pm8008.h.
> +  gpio-ranges:
> +    maxItems: 1
>  
>    interrupt-controller: true
>  
> -  "#address-cells":
> -    const: 1
> +  "#interrupt-cells":
> +    const: 2
>  
> -  "#size-cells":
> +  "#thermal-sensor-cells":
>      const: 0
>  
> -patternProperties:
> -  "^gpio@[0-9a-f]+$":
> +  pinctrl:
>      type: object
> +    additionalProperties: false
> +    patternProperties:
> +      "-state$":
> +        type: object
> +        $ref: "#/$defs/qcom-pm8008-pinctrl-state"
> +        unevaluatedProperties: false
>  
> -    description: |
> -      The GPIO peripheral. This node may be specified twice, one for each GPIO.
> -
> -    properties:
> -      compatible:
> -        items:
> -          - const: qcom,pm8008-gpio
> -          - const: qcom,spmi-gpio
> +  regulators:
> +    type: object
> +    additionalProperties: false
> +    patternProperties:
> +      "^ldo[1-7]$":
> +        type: object
> +        $ref: /schemas/regulator/regulator.yaml#
> +        unevaluatedProperties: false
>  
> -      reg:
> -        description: Peripheral address of one of the two GPIO peripherals.
> -        maxItems: 1
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - vdd-l1-l2-supply
> +  - vdd-l3-l4-supply
> +  - vdd-l5-supply
> +  - vdd-l6-supply
> +  - vdd-l7-supply
> +  - gpio-controller
> +  - "#gpio-cells"
> +  - gpio-ranges
> +  - interrupt-controller
> +  - "#interrupt-cells"
> +  - "#thermal-sensor-cells"
>  
> -      gpio-controller: true
> +additionalProperties: false
>  
> -      gpio-ranges:
> -        maxItems: 1
> +$defs:
> +  qcom-pm8008-pinctrl-state:
> +    type: object
>  
> -      interrupt-controller: true
> +    allOf:
> +      - $ref: /schemas/pinctrl/pinmux-node.yaml
> +      - $ref: /schemas/pinctrl/pincfg-node.yaml
>  
> -      "#interrupt-cells":
> -        const: 2
> +    properties:
> +      pins:
> +        items:
> +          pattern: "^gpio[12]$"
>  
> -      "#gpio-cells":
> -        const: 2
> +      function:
> +        items:
> +          - enum:
> +              - normal
>  
>      required:
> -      - compatible
> -      - reg
> -      - gpio-controller
> -      - interrupt-controller
> -      - "#gpio-cells"
> -      - gpio-ranges
> -      - "#interrupt-cells"
> +      - pins
> +      - function
>  
>      additionalProperties: false
>  
> -required:
> -  - compatible
> -  - reg
> -  - interrupts
> -  - "#address-cells"
> -  - "#size-cells"
> -  - "#interrupt-cells"
> -
> -additionalProperties: false
> -
>  examples:
>    - |
>      #include <dt-bindings/gpio/gpio.h>
> -    #include <dt-bindings/mfd/qcom-pm8008.h>
>      #include <dt-bindings/interrupt-controller/irq.h>
>  
>      i2c {
>        #address-cells = <1>;
>        #size-cells = <0>;
>  
> -      pmic@8 {
> +      pm8008: pmic@8 {
>          compatible = "qcom,pm8008";
>          reg = <0x8>;
> -        #address-cells = <1>;
> -        #size-cells = <0>;
> -        interrupt-controller;
> -        #interrupt-cells = <2>;
>  
>          interrupt-parent = <&tlmm>;
>          interrupts = <32 IRQ_TYPE_EDGE_RISING>;
>  
>          reset-gpios = <&tlmm 42 GPIO_ACTIVE_LOW>;
>  
> -        pm8008_gpios: gpio@c000 {
> -          compatible = "qcom,pm8008-gpio", "qcom,spmi-gpio";
> -          reg = <0xc000>;
> -          gpio-controller;
> -          gpio-ranges = <&pm8008_gpios 0 0 2>;
> -          #gpio-cells = <2>;
> -          interrupt-controller;
> -          #interrupt-cells = <2>;
> +        vdd-l1-l2-supply = <&vreg_s8b_1p2>;
> +        vdd-l3-l4-supply = <&vreg_s1b_1p8>;
> +        vdd-l5-supply = <&vreg_bob>;
> +        vdd-l6-supply = <&vreg_bob>;
> +        vdd-l7-supply = <&vreg_bob>;
> +
> +        gpio-controller;
> +        #gpio-cells = <2>;
> +        gpio-ranges = <&pm8008 0 0 2>;
> +
> +        interrupt-controller;
> +        #interrupt-cells = <2>;
> +
> +        #thermal-sensor-cells = <0>;
> +
> +        pinctrl {
> +          gpio-keys-state {
> +            pins = "gpio1";
> +            function = "normal";
> +          };
> +        };
> +
> +        regulators {
> +          ldo1 {
> +            regulator-name = "vreg_l1";
> +            regulator-min-microvolt = <950000>;
> +            regulator-max-microvolt = <1300000>;
> +          };
>          };
>        };
>      };
> -- 
> 2.44.1
> 

-- 
With best wishes
Dmitry

