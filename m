Return-Path: <devicetree+bounces-13086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 979787DC818
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 09:22:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B0ACFB20BEB
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 08:22:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B1AA11182;
	Tue, 31 Oct 2023 08:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KGre/aTH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0EE1FDA
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 08:22:02 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D6ADE6
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 01:22:00 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40859dee28cso41684415e9.0
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 01:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698740518; x=1699345318; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9fiIztG3yV+Rle2yiPUeMRHRyVQUODxvOfbzllDGbK4=;
        b=KGre/aTH60AimNRnKWQmWYkSET2HaD1io2PZ7K31hRJHHHTAn3PjJWKI0ADdV/Upjr
         ekLzysI5lDOPB93wSJjhDBpcLQY6IJfc7WhluOwQLPMeBUDZX6btHoHtqqsg1RmaBr+L
         3ZXM32uIFyJZAyV9H9Ohs3BMyeUyR4Gw1l2LIAoXqhNZQqfG/XCsPOKGd6wJJIhiNNqR
         RxaiPrpQ1rnFgzeNYLoondk/e4KbrV8uHtZgrYAqbgZrYXRFpScMxAbkVkDchuY7+sHE
         bNTO7F6RWJrZRpBosZbuie6CFFmMEL9dFj8wad0icDwFE8gjAkZ7Mq4sC0sTgZ6xKpwq
         A0bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698740518; x=1699345318;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9fiIztG3yV+Rle2yiPUeMRHRyVQUODxvOfbzllDGbK4=;
        b=l2p84cPoL4JeD+LJCboxj6g6aBtA4JlQxBvhq/XjZ8ztZFCvHyniR23O1yjRSzDakg
         vfG06s5kR14x0nMhZhAamQdZW5iwaC7y+Oumyi6gUUmFcQ6TMR8IFxmLwVYG9PqODjlE
         npw1cto705juoBPzWtkEdc5Bo6/gNg5G/FPTray9wdj2JhyjpJTaJxEoUBgniUiX1jXz
         aE6jx/AyYdK4AF7YisHFAm92v2YOTBHd9T2fz70X1uB3Ffg3WMCgnPitiL6MAUhVPYe1
         QUdD5AQxaRj2U+BCsHLS0badJL+9ubxic84UcMarq8rlUAglBuRtdhd6uTfrswzQbNdS
         UVLQ==
X-Gm-Message-State: AOJu0YygsAbpPv7LjpmphX9MksVKUsIAekYiGpQDLkzYA0/tev6P9bDK
	s1sRLEvSOVQM0EB32+sp6iOQ/Q==
X-Google-Smtp-Source: AGHT+IFgS7VNwKr4uBqszcxFBYEnOPs3nH16cxyJUvGXlFiEt+E4GOw6Eb8G5Vb5LDRWW9FrpPFw3A==
X-Received: by 2002:a05:600c:a06:b0:409:51c2:1199 with SMTP id z6-20020a05600c0a0600b0040951c21199mr889474wmp.28.1698740518588;
        Tue, 31 Oct 2023 01:21:58 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id e13-20020a5d594d000000b00327bf4f2f14sm887919wri.88.2023.10.31.01.21.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 01:21:57 -0700 (PDT)
Message-ID: <82d76f96-331d-465d-9159-e9473a02f957@linaro.org>
Date: Tue, 31 Oct 2023 09:21:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: i2c: Add yaml for Spreadtrum I2C controller
Content-Language: en-US
To: Huangzheng Lai <Huangzheng.Lai@unisoc.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Orson Zhai <orsonzhai@gmail.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 huangzheng lai <laihuangzheng@gmail.com>,
 Xiongpeng Wu <xiongpeng.wu@unisoc.com>
References: <20231031080820.5588-1-Huangzheng.Lai@unisoc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231031080820.5588-1-Huangzheng.Lai@unisoc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 31/10/2023 09:08, Huangzheng Lai wrote:
> Add yaml file to replace txt file, and added description and
> example of reset attribute for Spreadtrum I2C controller.
> 
> Signed-off-by: Huangzheng Lai <Huangzheng.Lai@unisoc.com>
> ---
>  .../devicetree/bindings/i2c/i2c-sprd.txt      | 31 --------
>  .../devicetree/bindings/i2c/i2c-sprd.yaml     | 79 +++++++++++++++++++

Filename matching compatible.

>  2 files changed, 79 insertions(+), 31 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-sprd.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/i2c-sprd.yaml
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-sprd.txt b/Documentation/devicetree/bindings/i2c/i2c-sprd.txt
> deleted file mode 100644
> index 7b6b3b8d0d11..000000000000
> --- a/Documentation/devicetree/bindings/i2c/i2c-sprd.txt
> +++ /dev/null
> @@ -1,31 +0,0 @@
> -I2C for Spreadtrum platforms
> -
> -Required properties:
> -- compatible: Should be "sprd,sc9860-i2c".
> -- reg: Specify the physical base address of the controller and length
> -  of memory mapped region.
> -- interrupts: Should contain I2C interrupt.
> -- clock-names: Should contain following entries:
> -  "i2c" for I2C clock,
> -  "source" for I2C source (parent) clock,
> -  "enable" for I2C module enable clock.
> -- clocks: Should contain a clock specifier for each entry in clock-names.
> -- clock-frequency: Contains desired I2C bus clock frequency in Hz.
> -- #address-cells: Should be 1 to describe address cells for I2C device address.
> -- #size-cells: Should be 0 means no size cell for I2C device address.
> -
> -Optional properties:
> -- Child nodes conforming to I2C bus binding
> -
> -Examples:
> -i2c0: i2c@70500000 {
> -	compatible = "sprd,sc9860-i2c";
> -	reg = <0 0x70500000 0 0x1000>;
> -	interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
> -	clock-names = "i2c", "source", "enable";
> -	clocks = <&clk_i2c3>, <&ext_26m>, <&clk_ap_apb_gates 11>;
> -	clock-frequency = <400000>;
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -};
> -
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-sprd.yaml b/Documentation/devicetree/bindings/i2c/i2c-sprd.yaml
> new file mode 100644
> index 000000000000..54378afe8419
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/i2c-sprd.yaml
> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright 2020 Unisoc Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/i2c-sprd.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Unisoc I2C Controller Device
> +
> +maintainers:
> +  - Huangzheng Lai <laihuangzheng@gmail.com>
> +

Missing ref to i2c-controller. Open existing bindings and use them as
template instead of making something on your own with known bugs.

> +properties:
> +  compatible:
> +    items:

You can drop the items.

> +      - const: sprd,sc9860-i2c
> +
> +  reg:
> +    maxItems: 2

You need to describe the items (items with description)

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: i2c
> +      - const: source
> +      - const: enable
> +
> +  clocks:
> +    items:
> +      - description: Clock specifier for "i2c" in clock-names

This description is useless and redundant. Instead, say what clock is
it. If you do not know, then just maxItems: 3

> +      - description: Clock specifier for "source" in clock-names
> +      - description: Clock specifier for "enable" in clock-names
> +
> +  clock-frequency:
> +    description: Constains desired I2C bus clock frequency in Hz

Typo, Contains

> +
> +  "#address-cells":
> +    const: 1
> +    description: Address cells for I2C device address

Drop, why do you need it?

> +
> +  "#size-cells":
> +    const: 0
> +    description: Size cell for I2C device address

Drop

> +
> +  reset-names:
> +    const: i2c_rst

Drop, wasn't in original binding. Or explain in commit msg what you
changed and why.

> +
> +  resets:
> +    maxItems: 1
> +    description: Phandle to the reset controller.

Drop, wasn't in original binding. Or explain in commit msg what you
changed and why.

Description is also quite redundant/useless.


> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clock-names
> +  - clocks
> +  - "#address-cells"
> +  - "#size-cells"

Really... Open existing bindings.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c0: i2c@2240000 {
> +      compatible = "sprd,sc9860-i2c";
> +      reg = <0 0x2240000 0 0x1000>;
> +      interrupts = <11>;
> +      clock-names = "i2c", "source", "enable";
> +      clocks = <&clk_i2c3>, <&ext_26m>, <&clk_ap_apb_gates 11>;
> +      clock-frequency = <400000>;
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      reset-names = "i2c_rst";
> +      resets = <&apahb_gate 3>;

Incomplete. Add child node.

> +    };
> +

Best regards,
Krzysztof


