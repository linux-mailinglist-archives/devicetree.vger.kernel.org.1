Return-Path: <devicetree+bounces-11366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF4F7D572B
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 18:00:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B59C1C20B03
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 16:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6247C38DE7;
	Tue, 24 Oct 2023 15:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dItIRHSA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8781381D3
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:59:57 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E84B5B4
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:59:55 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4084f682d31so34277875e9.2
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698163194; x=1698767994; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9XdO/uS7LDZo8VpsNU96XhPnN4ox1BieKnDVjbtoInk=;
        b=dItIRHSAJvtt0yb7DGuSrdzRy8JamABKhAZlceHziTSR1WPRWW0Jv3QmCHKELQiA8u
         vczRli3WQfH/bwSDMpkGq6Gg6T4LFQshGFDz0bMjtphGSwLvC7RtGNWiIewAmJogjHIS
         UKXzfu70+o0g6XeWigahoBDXKgnvEaVwYt0KAd9ceomyXX4kc7kzMjqmuSMTv0LmZTQt
         KR/NQNzpjf7Tlbmw3AjZ+XSHJafUzjEhb/VAtnhcl6dlTsXWgjVM7Q093ttNFNnxEBca
         0lDwRgwKrkr47tA9vYoEdxq3PvVkB+NkdrnFIR+URl284cPC58J8/pEuv5GYGpA0aqXm
         JsXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698163194; x=1698767994;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9XdO/uS7LDZo8VpsNU96XhPnN4ox1BieKnDVjbtoInk=;
        b=luAKgl0S0vYxMxG0rymG5/0ECPh1uc6xRj/vGSIi9gYoS1C7rbGOS0B9JuFnjvaHqG
         LV8uCdQobqN5vkqqzBJpYB1EGGSNHGoARD5uUGKyGhR1a4rdjq0QPvLpgD8ER+HIZ3IN
         YWKMzrcKRMoD7W39OWlJ7WbEUj2r0roD9Gir2pAtgRvYJWPJBgGVZYk8xp+iLrbBAwVM
         vHq6zpFwu1Gk2QZJDrJD3yNXzEzC5F4xpkqMJP035vWRTHSqwtLGvE7Su7FWOBReIGyY
         CR0kt9GvIzZ0GKNpEzHwBIiiA+dSaDru5U9ivh+NzByR/JwxM2xZauq0JxuZ74NbTHMg
         A38A==
X-Gm-Message-State: AOJu0YyxJQuNFFVSDp73U+YWfzRrxNE2DTFw+tZm7uhN03PChEUiTIj0
	qFgg0c4BMWZdtja2acMZKMtMmA==
X-Google-Smtp-Source: AGHT+IG6NDTNt1rVT1soQ89aYNM2G8SH3D4Cst1e03g2K7VDBXi2LtiwLP4abFWhaLhSb+2T5CjUPg==
X-Received: by 2002:a05:600c:1912:b0:401:b1c6:97dc with SMTP id j18-20020a05600c191200b00401b1c697dcmr9220798wmq.23.1698163194286;
        Tue, 24 Oct 2023 08:59:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id 1-20020a05600c228100b0040596352951sm16780294wmf.5.2023.10.24.08.59.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 08:59:53 -0700 (PDT)
Message-ID: <5c126f13-d199-4e09-bb58-fbf281947115@linaro.org>
Date: Tue, 24 Oct 2023 17:59:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: regulator: add Samsung s2dos05 pmic
Content-Language: en-US
To: Dzmitry Sankouski <dsankouski@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20231024154338.407191-1-dsankouski@gmail.com>
 <20231024154338.407191-2-dsankouski@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231024154338.407191-2-dsankouski@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/10/2023 17:43, Dzmitry Sankouski wrote:
> Add binding for the s2dos05 pmic found in the Samsung S9.
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Dzmitry Sankouski <dsankouski@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> 
> ---
> 
> Changes in v2:
> - hex to decimal in regulator values
> - fix compatible value
> 
>  .../bindings/regulator/samsung,s2dos05.yaml   | 89 +++++++++++++++++++
>  1 file changed, 89 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/samsung,s2dos05.yaml
> 
> diff --git a/Documentation/devicetree/bindings/regulator/samsung,s2dos05.yaml b/Documentation/devicetree/bindings/regulator/samsung,s2dos05.yaml
> new file mode 100644
> index 000000000000..690537738e67
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/samsung,s2dos05.yaml
> @@ -0,0 +1,89 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/samsung,s2dos05.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung s2dos05 regulator

Not a PMIC/MFD device? If not, then:
Samsung S2DOS05 Power Management IC

Otherwise, if this is only for regulators:
Samsung S2DOS05 Power Management IC Regulators


> +
> +maintainers:
> +  - Dzmitry Sankouski <dsankouski@gmail.com>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  The S2DOS05 is a companion power management IC for the smart phones.
> +  Has 4 LDO and 1 BUCK regulators, and has capability to measure
> +  current and power. Can detect short circuit on outputs.
> +
> +properties:
> +  compatible:
> +    const: samsung,s2dos05

Blank line.

> +  reg:
> +    maxItems: 1
> +
> +  regulators:
> +    type: object
> +    description: List of regulators and its properties
> +
> +    patternProperties:
> +      "^s2dos05-buck1|s2dos05-ldo[1-4]$":

^buck1|ldo[1-4]$

> +        type: object
> +        $ref: "regulator.yaml#"

Drop quotes.

It does not look like you tested the bindings, at least after quick
look. Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.

> +        unevaluatedProperties: false
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - regulators
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    regulator@60 {
> +    	compatible = "samsung,s2dos05";
> +    	reg = <0x60>;
> +    	pinctrl-names = "default";
> +    	pinctrl-0 = <&s2dos05_irq>;
> +    	s2dos05,s2dos05_int = <&tlmm 0x31 0x0>;

Eh... No, please test before sending. Drop the property or explain what
is it supposed to be.

> +
> +    	regulators {
> +    		s2dos05_ldo1: s2dos05-ldo1 {

You have messed up indentation. Use 4 spaces for example indentation.

> +    			regulator-name = "s2dos05-ldo1";
> +    			regulator-min-microvolt = <1500000>;
> +    			regulator-max-microvolt = <2000000>;
> +    			regulator-active-discharge = <0x1>;

That's not a hex, but just decimal 1.


Best regards,
Krzysztof


