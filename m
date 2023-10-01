Return-Path: <devicetree+bounces-4973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB7B7B48C3
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 19:09:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A188B281825
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 17:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EFD1EAC9;
	Sun,  1 Oct 2023 17:09:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8767D290
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 17:09:21 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1636C9
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 10:09:16 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-405361bb94eso162029645e9.0
        for <devicetree@vger.kernel.org>; Sun, 01 Oct 2023 10:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696180155; x=1696784955; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iGjxhc44hdrvQoM5w8Uq24pZZMJyLPViDXSpaz6LUOQ=;
        b=PIrWCK20VhQnRFhZLr8BJYgxF/9V0YAiFV+Hf2M42fFiU6i6NlNbUOIdhkBoA8GdsY
         zNOuW8IIgIgDl92FAjwa+W/NsPbj8PL4jYSQ3jomZJBb/e+DuBbVUGnu1ettlNDtYikY
         qfea85hn+jGHoDjtvsV42Pd/Cwu5ilujoGbwMN9R6/P3qm4HCes2B08UdRyDf7oZEdb5
         sZ8//Oj+0QhuFzJq/dvZ5M4jotszsWfndcgSE1TpCJqDyeR2v3YeB7U3YxojSWa8EPGb
         LfTVUmMCwTU/U/YietH9/fGzRxhC07vtnOqo/lUwBUo4xnbUNTaid11ktNK3eKKzOyFd
         A1ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696180155; x=1696784955;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iGjxhc44hdrvQoM5w8Uq24pZZMJyLPViDXSpaz6LUOQ=;
        b=tn/EOYMMi722SlZiR52nQ1kVWDNJiEvZpWTu6FrYAwOqL+O2eeqeDREgsYOUhsFDD7
         qk0cy/m93XdPVowERiggvXk+qbs9ZpeaV0OmFbNDGEJz5YhJw5ZnGPQlJYqxx95H932w
         YprOkeBH7u6XjYSuRPl1mCaU0Ia68pTLJiyKJdMyWO6Z0TMr/KdZImUGhyVQfXIYH9Wz
         mwGyIi5CMpAvEZ3DWMkK91A30DFc9IHAZ6sokXdZVexWMgoAvChuCe05s/beTOvFZI8g
         R6UEizGsdBbjJbtDHiZ610KEwT25VDbDsUX90y6SGVkpOuAb4PAoHf2l2Y/zE+kzdVsT
         4M/g==
X-Gm-Message-State: AOJu0YwDkQJsWViRqIR8N6xdJsddp/SvMAjW9paXxeDz4rqZFX3DgeRP
	LGQ4nOMq8+MJkR/Mpt79MqAKWg==
X-Google-Smtp-Source: AGHT+IErXNESmLvpSluBTQaeEKIBaDfH+rb1+56PY8TrOtE//KDX39aZDf59DzicoUbwO7c7i7IrKA==
X-Received: by 2002:a1c:f717:0:b0:402:e68f:888e with SMTP id v23-20020a1cf717000000b00402e68f888emr8686832wmh.4.1696180154771;
        Sun, 01 Oct 2023 10:09:14 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id u5-20020a05600c00c500b004047ac770d1sm5631296wmm.8.2023.10.01.10.09.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Oct 2023 10:09:14 -0700 (PDT)
Message-ID: <958bad88-c36b-0003-c12f-223d5bc16448@linaro.org>
Date: Sun, 1 Oct 2023 19:09:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v9 1/3] dt-bindings: thermal-zones: Document
 critical-action
Content-Language: en-US
To: Fabio Estevam <festevam@gmail.com>
Cc: rafael@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 conor+dt@kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@denx.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20231001030014.1244633-1-festevam@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20231001030014.1244633-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 01/10/2023 05:00, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Document the critical-action property to describe the thermal action
> the OS should perform after the critical temperature is reached.
> 
> The possible values are "shutdown" and "reboot".
> 
> The motivation for introducing the critical-action property is that
> different systems may need different thermal actions when the critical
> temperature is reached.
> 
> For example, a desktop PC may want the OS to trigger a shutdown
> when the critical temperature is reached.
> 
> However, in some embedded cases, such behavior does not suit well,
> as the board may be unattended in the field and rebooting may be a
> better approach.
> 
> The bootloader may also benefit from this new property as it can check
> the SoC temperature and in case the temperature is above the critical
> point, it can trigger a shutdown or reboot accordingly.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> Changes since v8:
> - Go back to putting critical-action as a thermal-zone property. (Daniel)
> 
>   .../devicetree/bindings/thermal/thermal-zones.yaml       | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
> index 4f3acdc4dec0..c2e4d28f885b 100644
> --- a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
> +++ b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
> @@ -75,6 +75,15 @@ patternProperties:
>             framework and assumes that the thermal sensors in this zone
>             support interrupts.
>   
> +      critical-action:
> +        $ref: /schemas/types.yaml#/definitions/string
> +        description:
> +          The action the OS should perform after the critical temperature is reached.
> +
> +        enum:
> +          - shutdown
> +          - reboot

This option is dangerous and should be more documented.

"The action the OS should perform after the critical temperature is 
reached. By default the system will shutdown as a safe action to prevent 
to damage the hardware if the property is not set. The shutdown action 
should be always the default. Choose carefully 'reboot' as the hardware 
may be in thermal stress, thus leading to infinite reboots damaging the 
hardware. Make sure the firmware will act as the last resort and take 
over the thermal control."

[ and more info if needed ]

(written with best effort with my non native language ;)

>         thermal-sensors:
>           $ref: /schemas/types.yaml#/definitions/phandle-array
>           maxItems: 1

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


