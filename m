Return-Path: <devicetree+bounces-4285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DF07B1E77
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 15:32:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id EB17028225C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:32:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 084CE3B2B3;
	Thu, 28 Sep 2023 13:32:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A37FC38DCD
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 13:32:53 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7778198
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 06:32:51 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-405361bb93bso128493295e9.3
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 06:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695907970; x=1696512770; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/LFPkZX/1gUK7F/uY/aH14+cb1Ue1VnDX6eq0URoca8=;
        b=jUarAXlaTwlJA4zmvXqpuLyXbr6xugRBXKpwmzpUpBJPG03b3g9wyrR57B0g+UCALm
         2pD/FLTnCfZOVsl39uPqOj6giIyoxWJ79PxfRQAybhcCPe9mHmq8i1WULmrKaUPKEF1E
         b6/wZIZHdp+/NVkteS5ncGbKtdTMJUjWflQIr1ZlV9Db+4O2gYywlQxMgGUvbFHFzFyV
         5yrhFihcRuxIXBp57Xf9WcNoaHQ1pO9lbg99fw9WBnwg2HqYZpWnfXHkdOsHpHwAWoaW
         P9BWurorHi/vWqG7gQkxarQGBdWWy7hd4Dhwu6d4OVxVDzYCpLnr2Djg7HMYqulvemDU
         oPGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695907970; x=1696512770;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/LFPkZX/1gUK7F/uY/aH14+cb1Ue1VnDX6eq0URoca8=;
        b=OizHv0EWbSblPtgvl4X4vjyWKvUUkAHgWkIMskJPCOlz3FYnXuhHyEEv9xUYFX/KC5
         kKbr7EZsAu1wTRy0ZsSUWCXRC8KBahmMO7p7vszJTXCBcSjQEQ2qNM3OLUOkG+nbGi6d
         0R6GVUwz0uL3kUppIb1r9QvFpCnTGJ+mq4bu9lk9NJEg95fxhV2PQdFWrQ8KEkaH+dkd
         O+Rb6V0Pl95KsvrtSsiUOzbIVkoCp9MTmWSxrtSZqqOeafdevcGM2ynPf1KXqk9U+Q1v
         IAcOm0f2TJkzKIKr9nr8GxnaMm1q3iZqfvLWKYXtVuyWHRitHqWUASChIU/UTQZ+1Zau
         YTlA==
X-Gm-Message-State: AOJu0Yxq2wuPiKClyPMVbJEAeVAZv099RSbDnTQRzKKJWzX4SMpY7Cn+
	cnHYMAbScw4OfbW+WAgSYRpmdUKr+HrsoMkckc0=
X-Google-Smtp-Source: AGHT+IHAbge+Ntd+bTFRkoLZgej8iUaRLJlUiUs79u8Pf7GBDFP+XnQeWZI0rnEZdvM6IuWWosMkgA==
X-Received: by 2002:a05:600c:2207:b0:3f6:58ad:ed85 with SMTP id z7-20020a05600c220700b003f658aded85mr1270450wml.10.1695907969994;
        Thu, 28 Sep 2023 06:32:49 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id v2-20020a1cf702000000b003feae747ff2sm22690325wmh.35.2023.09.28.06.32.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Sep 2023 06:32:49 -0700 (PDT)
Message-ID: <1e81197e-7f69-b716-4cb9-23639db83235@linaro.org>
Date: Thu, 28 Sep 2023 15:32:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 5/8] dt-bindings: thermal: fsl,scu-thermal: Document
 imx8dl
Content-Language: en-US
To: Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, linux-imx@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Amit Kucheria <amitk@kernel.org>
References: <20230926122957.341094-1-festevam@gmail.com>
 <20230926122957.341094-5-festevam@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230926122957.341094-5-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 26/09/2023 14:29, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> imx8dxl also contains the SCU thermal block.
> 
> Add an entry for 'fsl,imx8dxl-sc-thermal'.
> 
> Cc: Rafael J. Wysocki <rafael@kernel.org>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Amit Kucheria <amitk@kernel.org>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---

May I apply this patch or do you want it to be applied with the series 
it belongs?

>   .../devicetree/bindings/thermal/fsl,scu-thermal.yaml          | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/fsl,scu-thermal.yaml b/Documentation/devicetree/bindings/thermal/fsl,scu-thermal.yaml
> index 3721c8c8ec64..e02d04d4f71e 100644
> --- a/Documentation/devicetree/bindings/thermal/fsl,scu-thermal.yaml
> +++ b/Documentation/devicetree/bindings/thermal/fsl,scu-thermal.yaml
> @@ -18,7 +18,9 @@ allOf:
>   properties:
>     compatible:
>       items:
> -      - const: fsl,imx8qxp-sc-thermal
> +      - enum:
> +          - fsl,imx8dxl-sc-thermal
> +          - fsl,imx8qxp-sc-thermal
>         - const: fsl,imx-sc-thermal
>   
>     '#thermal-sensor-cells':

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


