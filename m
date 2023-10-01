Return-Path: <devicetree+bounces-4969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AC57B48A6
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 18:48:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 65B02281B2F
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 16:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47E9863A5;
	Sun,  1 Oct 2023 16:48:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1EE659
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 16:48:13 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3C73B3
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 09:48:11 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9b1ebc80d0aso1856871566b.0
        for <devicetree@vger.kernel.org>; Sun, 01 Oct 2023 09:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696178890; x=1696783690; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zomMtbkoNs/DKHx2Dap7ItwtUcBSlDhdfQANZJTKOMg=;
        b=L6ubMCxmR1LT+b+FhSmR5DkUXJtXi+iY8FQBLtan0duWnC3f7HltPDcqi2shSjJhbx
         hl8k2myPcLpGcVPupafNSoJL/iwfCe3PqOES16+rt/roZd0HArkF+iXckENh9GxgjEdM
         ktlUXJDCG6g8RiqfQhB96DwCgqUNE2Hw9VVfmy+NrdrjazvCUgrUfhk+jzKKtzvNtYpr
         UR04TEdwEiD587KpLQhp0y9ahdl1Q9qL5xkn5p7p8BkQsC0EaDXlxByCIuKW21aTuVDZ
         DCVVv8EpovE2wS+KYQwVb3+ZcBF+xsN/g0bKPoryrOXcJR9HaY3Rg3LiQ+hFPd5Rkiap
         ELbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696178890; x=1696783690;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zomMtbkoNs/DKHx2Dap7ItwtUcBSlDhdfQANZJTKOMg=;
        b=YzcIM2f/PUoso1n5HbFYJAN7GA1vBR1K7QSD2s1izG+6bxPGFtJxjyzsy4r/16+B5i
         0RVAJkBZZrUJ05M1wDRV6STsj0HY2+T/W+yVgULPgeC4jXzmexXK7rQ7uWO8PgP2lq6n
         WP6RN9Ef22/XHFqyiJdzLu5yUHwd+SCDguCrpYjuv+weeC0i5IcfNA0l/xfRS18JOLSq
         5Ne9N5dGRl4HkK4GcX2CwS4dGqgMzI/soa3Toh2DzJXUpzvhLamZXUtRU0E1eBIzeU1H
         kvs5yT+2bqMI+T/ltMe4a5BFvj57YErcOhV7cgLhhesoRLWfaHemouCorBG/c3mPSX2C
         tt9g==
X-Gm-Message-State: AOJu0Yw+YSGztShVdUh2ZfSmY3ijM9YMj4u2nalhKsayn8eWKuileAWl
	bp/seePAiY6MLu+RG+VQIl43e3/Xy1u5O/1gtwE=
X-Google-Smtp-Source: AGHT+IE0aNyZI1rgE9NWbvRTli9mAmGIdHbRYMeWiBQrd9BwR4LsxfYgllYXMVPcGg2F6WzaM5hecg==
X-Received: by 2002:a17:907:2cf8:b0:9ad:ae3a:ed01 with SMTP id hz24-20020a1709072cf800b009adae3aed01mr7639475ejc.2.1696178890046;
        Sun, 01 Oct 2023 09:48:10 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id p12-20020a05600c204c00b00403bbe69629sm5621117wmg.31.2023.10.01.09.48.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Oct 2023 09:48:09 -0700 (PDT)
Message-ID: <43ac7981-49d1-b1a3-c63e-5d304af9350b@linaro.org>
Date: Sun, 1 Oct 2023 18:48:08 +0200
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
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
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

 From my POV, 'critical' means kernel handles the action. We can not 
trust the userspace at this point.

The 'hot' trip point will result on a notification to the OS which can 
then take an last resort action before 'critical' kicks in (suspend, 
kill process, cpu hotplug, whatever)

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
> +
>         thermal-sensors:
>           $ref: /schemas/types.yaml#/definitions/phandle-array
>           maxItems: 1

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


