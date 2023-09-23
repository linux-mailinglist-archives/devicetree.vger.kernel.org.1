Return-Path: <devicetree+bounces-2663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4E87AC165
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 13:49:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CF1112823D6
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 11:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E7FD1640F;
	Sat, 23 Sep 2023 11:49:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FAB2117
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:49:27 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24D7C19E
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 04:49:26 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9a9cd066db5so474344366b.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 04:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695469764; x=1696074564; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GbjDHTHeQvNKBZv/8lID9zOviuVPTSuhipCFv7HoZZw=;
        b=qAhF5x/wQUOWeeVuUuWKV5kng5p4jRhZ5JBk69gA4vHOhkmbL0M5qaP8E03I9F3veJ
         Pi5w3n0qjVuR/pOKilLQs1iPpF69WFfnBni43JPB2bZfPuGfkaJGoUyUf5xT2W3s6pCq
         YPpHXhKJwA9YZ1VjPWwy8uCk21krdYPEKZ80SuXgXa6PCpzM4t03oZud2n+kuIl+D346
         kfVWe6/CPcyxnRTzbkf/Bnxl4Fyqq+FU097Fb2VzYTxLcvypqegQYAalvkvBLf5+NyJk
         VaJGAx10ZMva99boHMP9kAbSj5IAutvVPHBR6yGsHlTs2OFxZDYfWxE6uyqCnCaPTNfl
         I9eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695469764; x=1696074564;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GbjDHTHeQvNKBZv/8lID9zOviuVPTSuhipCFv7HoZZw=;
        b=rgtMj3OJAL+brgxq/X9sJsA5sJw+Ewqyu2s2tChb7AAj5My5NGO/w0bXPsGw2IMMux
         NFlw2V6JsEvmx3ogp2A6sf/R+BkWJxv1anORjA9ZXOIpXyRDrXLiSrt8ALOzsfKCiIH5
         IryS9lhy3DmTQDEaeefe3dZ33Edt3fP9XcU0ZRjUMkyNlzqzs8Fgq14HMJNPJXOKuEtD
         HVlbA6NbKWwEgmMmz+lqM03Xf5nBbZuElF3HoCchCmdUbUBNEkE4/1096xM7B4sHgLnL
         AEL6jlivQuEqW2MqCO4F12gDiMSiEIDbbyXiaIdlB4ST3HkpPBEk0hDY8nCuTrU4Yumw
         34IQ==
X-Gm-Message-State: AOJu0YxCggMquL94K9CO8VIu0UvS2yNmJgviFl0Z2Rlq5z9jx4PRkytN
	gbC5JL0Xqjw+zu+gzSsPfxNitg==
X-Google-Smtp-Source: AGHT+IFYzeDASr/AjsnCqe+x2OPCcr54QmgexSCbdQD5IIx5jqCWPJuXfCY1280EbooxNihVP9Y1Xw==
X-Received: by 2002:a17:906:ae81:b0:9ae:961a:de7f with SMTP id md1-20020a170906ae8100b009ae961ade7fmr1781632ejb.30.1695469764578;
        Sat, 23 Sep 2023 04:49:24 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id gu20-20020a170906f29400b009ad8796a6aesm3872479ejb.56.2023.09.23.04.49.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 04:49:24 -0700 (PDT)
Message-ID: <0fe357a3-c2c7-f642-30ba-a068a9c04e66@linaro.org>
Date: Sat, 23 Sep 2023 13:49:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v6 01/14] dt-bindings: usb: tps6598x: Add tps25750
Content-Language: en-US
To: Abdel Alkuor <alkuor@gmail.com>, heikki.krogerus@linux.intel.com,
 krzysztof.kozlowski+dt@linaro.org, bryan.odonoghue@linaro.org
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, conor+dt@kernel.org, ryan.eleceng@gmail.com,
 Abdel Alkuor <abdelalkuor@geotab.com>
References: <20230923073959.86660-1-alkuor@gmail.com>
 <20230923073959.86660-2-alkuor@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230923073959.86660-2-alkuor@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 23/09/2023 09:39, Abdel Alkuor wrote:
> From: Abdel Alkuor <abdelalkuor@geotab.com>
> 
> TPS25750 is USB TypeC PD controller which is a subset of TPS6598x.
> 
> Signed-off-by: Abdel Alkuor <abdelalkuor@geotab.com>
> ---
> Changes in v6:
>   - Use reg property for patch address
> Changes in v5:
>   - Add tps25750 bindings
> 
>  .../devicetree/bindings/usb/ti,tps6598x.yaml  | 80 ++++++++++++++++++-
>  1 file changed, 78 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/ti,tps6598x.yaml b/Documentation/devicetree/bindings/usb/ti,tps6598x.yaml
> index 5497a60cddbc..da299a2bb19e 100644
> --- a/Documentation/devicetree/bindings/usb/ti,tps6598x.yaml
> +++ b/Documentation/devicetree/bindings/usb/ti,tps6598x.yaml
> @@ -20,8 +20,7 @@ properties:
>      enum:
>        - ti,tps6598x
>        - apple,cd321x
> -  reg:
> -    maxItems: 1

reg must be defined in top-level.

https://elixir.bootlin.com/linux/v5.19-rc6/source/Documentation/devicetree/bindings/clock/samsung,exynos7-clock.yaml#L57

> +      - ti,tps25750
>  
>    wakeup-source: true
>  
> @@ -32,10 +31,55 @@ properties:
>      items:
>        - const: irq
>  
> +  firmware-name:
> +    description: |
> +      Should contain the name of the default patch binary
> +      file located on the firmware search path which is
> +      used to switch the controller into APP mode.
> +      This is used when tps25750 doesn't have an EEPROM
> +      connected to it.
> +    maxItems: 1
> +
>  required:
>    - compatible
>    - reg
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: ti,tps25750
> +    then:
> +      properties:
> +        reg:
> +          maxItems: 2
> +
> +        reg-names:
> +          description: |
> +            The first reg is PD device address and the second
> +            reg is I2C slave address field in PBMs input data
> +            which is used as the device address when writing the
> +            patch for TPS25750.
> +            The patch address can be any value except 0x00, 0x20,
> +            0x21, 0x22, and 0x23

Entire description is not suitable here, but should be used as
description of items in reg: (instead of maxItems).

> +          items:
> +            - const: main
> +            - const: patch-address
> +
> +        connector:
> +          required:
> +            - data-role
> +
> +      required:
> +        - connector
> +        - reg-names
> +    else:
> +      properties:
> +        reg:
> +          maxItems: 1
> +
> +

Only one blank line.

Best regards,
Krzysztof


