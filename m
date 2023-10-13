Return-Path: <devicetree+bounces-8549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 459D87C895A
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 17:59:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4DFCDB20A56
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 15:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 621001C287;
	Fri, 13 Oct 2023 15:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zNmY2jAv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABB21C280
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 15:59:20 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFD00FC
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 08:59:18 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4060b623e64so14950555e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 08:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697212757; x=1697817557; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YxW+eJtcnC0E0SJpXFcLjjbQKwvukxtZrwKx+nQrH3k=;
        b=zNmY2jAvrN0XlBf4GAjyiyOm+GbF39VAjmGmyN2seNrSXCdP/OaibwuyYwzAhQs5li
         TbL/L1gO+j8p34+qNDH8ea5O6uHsfflTQXxXAC0Hf8EEJuZUcbhsekW+b/zay6APGCOz
         9wN1Tx7XaqRY8ZlmNoxPxhL52NilHszOIy7Fyvf3GGQzHDjOE1x7EwFSLRsFVS4SvlPA
         NYeVkvebRfNJdEGUwXjPzNWYBe9N15sBuFckce/0nb9z0FG3Yd5PVPwjPofn1M1P4wZP
         44PlgyuucrXgHKGej2W91XtM3BJtLgZvr9XLESehDo3O986zuGnNS+xajFjZ2ySXnZlo
         0CtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697212757; x=1697817557;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YxW+eJtcnC0E0SJpXFcLjjbQKwvukxtZrwKx+nQrH3k=;
        b=X97vT55cuO2B0GroiVEYm+kNT6lZACahDybCV7PXHLfYcPHHwOt9jln5je/uh+X/i3
         8bZIUXdSDaJaiEf+DEwmi8v3NscdA80akuXhzZ6dGxTdBLWiILYjoaL785+MvtsAFs28
         kgy/QXL4z6/WUNHX2GqkoXPoyoHbt4dJTxbNV9jD1P8xZIGQiG8fF6eQSjnWviySXZsU
         TaXQu5QKsq0pvrevvyyUfJKH7Qa8Fn/EBXmVPzPWlED2t6CYUQIKj4OQJNWbfuy4CmVi
         bee9spHDxYnUQ5oBVMfcZVecreTo8QnJfI+NIrBbekrJllOlOEca/z15Psqto7qO/8O8
         VbKQ==
X-Gm-Message-State: AOJu0Yxi6pPKBTlRsDCU6oOhf2VlIQaO/uH+pWF+s89BVZWE5167nplc
	jZz1egHVikVg0GlQhfB7mvT/FQ==
X-Google-Smtp-Source: AGHT+IECqTwQVm4ULj3UM8Bat5aO219Wvjuq7wSOK2sIHlyPCLUn51JLF1j/zKPnu6q6ak+kSLtdVg==
X-Received: by 2002:a05:600c:5198:b0:401:c7ec:b930 with SMTP id fa24-20020a05600c519800b00401c7ecb930mr470965wmb.10.1697212757331;
        Fri, 13 Oct 2023 08:59:17 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id m39-20020a05600c3b2700b003fee567235bsm529436wms.1.2023.10.13.08.59.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Oct 2023 08:59:17 -0700 (PDT)
Message-ID: <076c0672-8656-4af2-9960-7c31589d8794@linaro.org>
Date: Fri, 13 Oct 2023 17:59:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/13] dt-bindings: thermal: tegra: Add
 nvidia,thermal-zones property
Content-Language: en-US
To: Thierry Reding <thierry.reding@gmail.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20231012175836.3408077-1-thierry.reding@gmail.com>
 <20231012175836.3408077-4-thierry.reding@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20231012175836.3408077-4-thierry.reding@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 12/10/2023 19:58, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The throttle configurations need to be associated with one or more
> thermal zones before they can be enabled, so introduce a new property,
> called nvidia,thermal-zones, that contains a list of phandles to the
> thermal zones for which a throttle configuration is applicable.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
> Changes in v2:
> - new patch to hook up throttling with thermal zones
> 
>   .../bindings/thermal/nvidia,tegra124-soctherm.yaml           | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml b/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml
> index 0eb6277082fe..359344f60a6e 100644
> --- a/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml
> +++ b/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml
> @@ -161,6 +161,11 @@ properties:
>                 throttling is engaged after the OC event is deasserted.
>               default: 0
>   
> +          nvidia,thermal-zones:
> +            $ref: /schemas/types.yaml#/definitions/phandle
> +            description: A list of phandles to the thermal zones that this
> +              throttle configuration applies to.
> +

 From a DT perspective, I believe it is more correct to point to the 
devices the hardware throttling mechanism applies to instead of the 
thermal zones which is kind of software component

>     # optional
>     nvidia,thermtrips:
>       $ref: /schemas/types.yaml#/definitions/uint32-matrix

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


