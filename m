Return-Path: <devicetree+bounces-13717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D31D27E0264
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 12:54:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7824AB212E7
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 11:54:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DBA5156D2;
	Fri,  3 Nov 2023 11:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T2X3NYna"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7332154BF
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 11:54:33 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAEFDD43
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 04:54:24 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-540fb78363bso3314133a12.0
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 04:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699012463; x=1699617263; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a9kNRf0CsSUO5sRqZg+at1j9P6cp/urULOMMSKC1Rrw=;
        b=T2X3NYnaYbJlhn7eqDeyyO4fCllTs+iVzd/ry5l4pgD7ih+wJ3Lzk+hqZxqPe03B+C
         r6kF3InH+2YL/LLZC5MsdDeU7t118ApFcg5B4tj03RbcUqhYvOSIL9NyQ4fJJPS2xKXQ
         Bh+qKFW75DRDqPUG8VovetVXyU+732f+64TFerzlgWyAgDdQwjamgXiXVFtp9brYTThD
         STI96VGay9EEPdyUPhTQZmAQfQChIBTyasVsTe6KynuTxyaRo0qifeq3bk0qdFF8fCR5
         uHobVODQlTCeA4K6S7xAPBJ8OAbcTQIssbsxhpNmVBiygrN+Zy6wDfI+LLeiBFqBwInr
         Tzhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699012463; x=1699617263;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a9kNRf0CsSUO5sRqZg+at1j9P6cp/urULOMMSKC1Rrw=;
        b=S3TmAHWf439vKO+DaxA4Ws+qWcxE2nbsgpmyRSGfYTJTmMUPWCQwfvcM2EJafoJ+xL
         Yzkb6Ln1w3itA0lMn51+MkfpErRSjisQqWQy1/nuQagy/AjCcvp+o+zRrG8eb/hO8hsT
         XyY6iHurzP6QqkEuE4G5X/YJRxMTqAHlxaxJ2yuWxdydxWULaJze/h6ruzILU5IoUPU7
         tbUoLUOU1JnbUBCIUeUEV++6Feh53G9yskR6TKH6bD3VNzLdMlPNeaYr7DGdZSqgCaCG
         3SfK3PMt3K2UiOXviYyy0apQ5gPtlcPDcgCM05iRj9hSTqywnH0oWdcW0QQr3SAl81qL
         Y8Ww==
X-Gm-Message-State: AOJu0Yzd4B2R8A2PnvXtcpFAog5i5BBodZ7nHeMr+lDGgrLufddZLenK
	5rmxLDpsruQy9HGjsc+EgbIK8g==
X-Google-Smtp-Source: AGHT+IG1N8SZ/jzKh8ZYt5XgSD0V57TCwEf2YUgVzGOZDSMrpkxr4Pfi8Q2uASltahBpgpU5AhTLPQ==
X-Received: by 2002:aa7:d61a:0:b0:53e:1825:be92 with SMTP id c26-20020aa7d61a000000b0053e1825be92mr16659684edr.31.1699012463081;
        Fri, 03 Nov 2023 04:54:23 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id eo12-20020a056402530c00b00530a9488623sm873380edb.46.2023.11.03.04.54.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Nov 2023 04:54:22 -0700 (PDT)
Message-ID: <a0624558-6420-479c-ba0e-c75f4e6d1b80@linaro.org>
Date: Fri, 3 Nov 2023 12:54:20 +0100
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
References: <20231103091653.4591-1-Huangzheng.Lai@unisoc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231103091653.4591-1-Huangzheng.Lai@unisoc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 03/11/2023 10:16, Huangzheng Lai wrote:
> Add a yaml file to replace the txt file. Due to the recent addition
> of the 'reset' framework to the Spreadtrum I2C driver to reset the

Where? I don't see it. Don't mix new properties with conversion.

> controller, information related to the 'reset' attribute has been
> added to the bindings file.
> 

Mark/version your patches correctly (git format-patch -v2). Your subject
claims it is v1.

> Change in V2

Changelog goes to changelog place, so after ---.

> -Rename 'i2c-sprd.txt' to 'sprd,sc9860-i2c.yaml'.
> -Add ref to i2c-controller.
> -Drop items in 'compatible'.
> -Add describe for 'reg' items.
> -Drop 'clocks' description and just maxItems: 3.
> -Fix typo in 'clo-frequency': Contains.
> -Add explanation in commit message explaining why 'resets' be added.
> -Drop '#size-cells' and 'address-cells' in properties and required.
> -Drop description of 'resets'.
> -Add child node in examples.
> 
> Signed-off-by: Huangzheng Lai <Huangzheng.Lai@unisoc.com>
> ---
>  .../devicetree/bindings/i2c/i2c-sprd.txt      | 31 --------
>  .../bindings/i2c/sprd,sc9860-i2c.yaml         | 75 +++++++++++++++++++
>  2 files changed, 75 insertions(+), 31 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-sprd.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/sprd,sc9860-i2c.yaml
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
> diff --git a/Documentation/devicetree/bindings/i2c/sprd,sc9860-i2c.yaml b/Documentation/devicetree/bindings/i2c/sprd,sc9860-i2c.yaml
> new file mode 100644
> index 000000000000..f7dd5f116e0c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/sprd,sc9860-i2c.yaml
> @@ -0,0 +1,75 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright 2020 Unisoc Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/sprd,sc9860-i2c.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Unisoc I2C Controller Device
> +
> +maintainers:
> +  - Huangzheng Lai <laihuangzheng@gmail.com>
> +
> +allOf:
> +  - $ref: /schemas/i2c/i2c-controller.yaml#
> +
> +properties:
> +  compatible:
> +    const: sprd,sc9860-i2c
> +
> +  reg:
> +    description: physical base address of the controller, length of memory mapped region.
> +    maxItems: 2
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
> +    maxItems: 3
> +
> +  clock-frequency:
> +    description: Contains desired I2C bus clock frequency in Hz.
> +    minimum: 100000
> +    maximum: 3400000
> +
> +  reset-names:
> +    const: i2c_rst

This is not a conversion. Drop the names, not really useful for one entry.

> +
> +  resets:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clock-names
> +  - clocks
> +
> +additionalProperties: false

Still not tested.

Please test patches before sending. Due to untested code, I am not
performing full review.

> +
> +examples:
> +  - |
> +    i2c0: i2c@2240000 {
> +            compatible = "sprd,sc9860-i2c";

Use 4 spaces for example indentation.

> +            reg = <0 0x2240000 0 0x1000>;

Best regards,
Krzysztof


