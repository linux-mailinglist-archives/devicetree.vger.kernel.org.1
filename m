Return-Path: <devicetree+bounces-10270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2BB7D08C4
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 08:50:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F6C7B2128B
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 06:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8431AC8D5;
	Fri, 20 Oct 2023 06:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aumhktJg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B942CA43
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 06:50:29 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E8F8D4C
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 23:50:26 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-53e07db272cso596725a12.3
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 23:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697784624; x=1698389424; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=azmV7W5JW8zyudwbWsHoiqbA0mwuihx4qdiSEKPNByo=;
        b=aumhktJglf9ZdZAombpLUUM5+yWe1otrmuUKsYwnrRXAqAhgP2yW931F8eFzhVnNar
         5PM8dYft1s9YdpQi409xMvUN3xiKJSZHiO9Efec0l/3+n9K1VIBvq6zNUXfxyfx7nRjD
         Z8950jNH56TZqVNERhd/B9ImYxnn+s/FrSgOGeVxPx+C4FsIUbH8VRKpMJf+eaZqLhVQ
         sluvtGBOBl/65rXCCl9S7uPZFHtWvEMzIMgknTsy8zNYgt5E+ZvfNU77IkJGNhKdpx9W
         MohgNrsoXbRIPk860s1i6jVhGQrts+VzHo7WwkZGZu9cjLwbQrikwLekWo79a++tQHWd
         PUsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697784624; x=1698389424;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=azmV7W5JW8zyudwbWsHoiqbA0mwuihx4qdiSEKPNByo=;
        b=cN+rGKGGZi/WY8XDy668N7K8ymhdtoI8ktKE6EHsX2lpauNRpTAxqpaWQWcUvIlMWG
         j8fd2hIPD244PaOBrqL/y39HN/wLOu/VSqoNvCh3bcRyM5O4GZLDCugmM9YkT6ah4/+w
         EyydMDCUbfgC7OKSj5tAorE19xEkqTtgYhjsFpqdWUhsUsfXaBqWeZmPube2PsLnEijw
         lF2bUO94oemJAPxCoExKxwDdHk6IgInyz8N1FTF1OlR7q+ymBmgkyZRCjz2YyRolxU1m
         lIsg17AF0f4ApwFYTTSgWSSHQM12R69iWES+5gXHDlyvWdrjCiLoP2LWNVeDT3PXJSbQ
         NLww==
X-Gm-Message-State: AOJu0Yz5+JdOmr6dOx7yF1avW/yiKWeRhT00Z0cxKYRp98oTAHHMf9XN
	SkAorSZ+JRP5iVhKX+ItYiCTbw==
X-Google-Smtp-Source: AGHT+IHzNTB5ez1wTApnbaEdDTRR3FdZPFm8heQPvy1GJP1r1aAfGyv8vaghrNWDAqhMBOMeRoioZw==
X-Received: by 2002:aa7:d787:0:b0:53e:538e:3b70 with SMTP id s7-20020aa7d787000000b0053e538e3b70mr903035edq.29.1697784624469;
        Thu, 19 Oct 2023 23:50:24 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id 23-20020a508e17000000b0053df23511b0sm875259edw.29.2023.10.19.23.50.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 23:50:24 -0700 (PDT)
Message-ID: <c779d973-2f3e-44b5-91e0-1ad0910fa016@linaro.org>
Date: Fri, 20 Oct 2023 08:50:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3][4/4] dt-bindings: mmc: Add dt-bindings for realtek mmc
 driver
To: Jyan Chou <jyanchou@realtek.com>, adrian.hunter@intel.com,
 jh80.chung@samsung.com, ulf.hansson@linaro.org
Cc: riteshh@codeaurora.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 asutoshd@codeaurora.org, p.zabel@pengutronix.de, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, arnd@arndb.de,
 briannorris@chromium.org, doug@schmorgal.com, tonyhuang.sunplus@gmail.com,
 abel.vesa@linaro.org, william.qiu@starfivetech.com
References: <20231020034921.1179-1-jyanchou@realtek.com>
 <20231020034921.1179-5-jyanchou@realtek.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231020034921.1179-5-jyanchou@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/10/2023 05:49, Jyan Chou wrote:
> Document the device-tree bindings for Realtek SoCs mmc driver.
> 
> Signed-off-by: Jyan Chou <jyanchou@realtek.com>
> 
> ---
> v2 -> v3:
> - Modify dt-bindings' content and description.
> - Fix coding style.
> - Update the list of maintainers.
> 
> v0 -> v2:
> - Add dt-bindings.
> ---
> ---
>  .../bindings/mmc/realtek-dw-mshc.yaml         | 150 ++++++++++++++++++
>  1 file changed, 150 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml
> new file mode 100644
> index 000000000000..b1e37fb37be9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml

Filename matching compatible.

BTW, before you respond, be sure you have fixed your email client. In
your last response everything was not properly wrapped (not matching
mailing list discussion style).

> @@ -0,0 +1,150 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/realtek-dw-mshc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek designware mobile storage host controller


DesignWare

> +
> +description:
> +  Realtek uses the Synopsys designware mobile storage host controller

DesignWare

> +  to interface a SoC with storage medium. This file documents the Realtek
> +  specific extensions.
> +
> +allOf:
> +  - $ref: synopsys-dw-mshc-common.yaml#
> +
> +maintainers:
> +  - Jyan Chou <jyanchou@realtek.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - realtek,rtd-dw-cqe-emmc

Compatibles should have SoC-specific part. It does not look like you
have one here.

Missing blank line

> +  reg:
> +    maxItems: 2

You need to describe the items.

> +
> +  reg-names:
> +    maxItems: 2

You need to describe the items.

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  cqe:
> +    maxItems: 1

Looks like some custom property. If it is a generic one, where is it
documented? If it is custom, missing vendor prefix and description.
Detailed description.

> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 4


No. This is variable. You need fixed number of items (because why
exactly the same device would have different number of clocks?) and you
need to describe them.

> +
> +  clock-names:
> +    minItems: 2
> +    maxItems: 4

You need to describe the items.

> +
> +  clock-freq-min-max:
> +    description:
> +      Clk frequency should be in the interval.

No, drop property.

> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: reset

And here you describe the item? The only place when it is not needed?
Drop entierly.

> +
> +  speed-step:
> +    maxItems: 1

Drop.

> +
> +  pinctrl-0:
> +    description:
> +      should contain default/high speed pin ctrl.
> +    maxItems: 1
> +
> +  pinctrl-1:
> +    description:
> +      should contain sdr50 mode pin ctrl.
> +    maxItems: 1
> +
> +  pinctrl-2:
> +    description:
> +      should contain ddr50 mode pin ctrl.
> +    maxItems: 1
> +
> +  pinctrl-3:
> +    description:
> +      should contain hs200 speed pin ctrl.
> +    maxItems: 1
> +
> +  pinctrl-4:
> +    description:
> +      should contain hs400 speed pin ctrl.
> +    maxItems: 1
> +
> +  pinctrl-5:
> +    description:
> +      should contain tune0 pin ctrl.
> +    maxItems: 1
> +
> +  pinctrl-6:
> +    description:
> +      should contain tune1 pin ctrl.
> +    maxItems: 1
> +
> +  pinctrl-7:
> +    description:
> +      should contain tune2 pin ctrl.
> +    maxItems: 1
> +
> +  pinctrl-8:
> +    description:
> +      should contain tune3 pin ctrl.
> +    maxItems: 1
> +
> +  pinctrl-9:
> +    description:
> +      should contain tune4 pin ctrl.
> +    maxItems: 1
> +
> +  pinctrl-names:
> +    maxItems: 10
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - pinctrl-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    emmc: mmc@12000 {
> +        compatible = "realtek,rtd-dw-cqe-emmc";
> +        reg = <0x00012000 0x00600>,
> +              <0x00012180 0x00060>;
> +        reg-names = "emmc", "cqhci";
> +        interrupts = <0 42 4>;
> +        clocks = <&cc 22>, <&cc 26>, <&cc 121>, <&cc 122>;
> +        clock-names = "biu", "ciu", "vp0", "vp1";
> +        clock-freq-min-max = <300000 400000000>;
> +        clock-frequency = <400000>;
> +        vmmc-supply = <&reg_vcc1v8>;
> +        resets = <&rst 20>;
> +        reset-names = "reset";
> +        speed-step = <3>;
> +        cqe = <1>;
> +        pinctrl-names = "default", "sdr50", "ddr50", "hs200", "hs400",
> +                        "tune0", "tune1", "tune2", "tune3", "tune4";
> +        pinctrl-0 = <&emmc_pins_sdr50>;
> +        pinctrl-1 = <&emmc_pins_sdr50>;
> +        pinctrl-2 = <&emmc_pins_ddr50>;
> +        pinctrl-3 = <&emmc_pins_hs200>;
> +        pinctrl-4 = <&emmc_pins_hs400>;
> +        pinctrl-5 = <&emmc_pins_tune0>;
> +        pinctrl-6 = <&emmc_pins_tune1>;
> +        pinctrl-7 = <&emmc_pins_tune2>;
> +        pinctrl-8 = <&emmc_pins_tune3>;
> +        pinctrl-9 = <&emmc_pins_tune4>;
> +        };

Fix indentation.


Best regards,
Krzysztof


