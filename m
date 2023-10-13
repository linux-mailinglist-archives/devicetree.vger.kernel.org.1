Return-Path: <devicetree+bounces-8548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DA27C893B
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 17:57:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 98BB31F2131B
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 15:57:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 791D11BDFF;
	Fri, 13 Oct 2023 15:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yioa1HuL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071061BDDF
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 15:57:17 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9F4BB7
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 08:57:15 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40572aeb73cso23730235e9.3
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 08:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697212634; x=1697817434; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8LAXrLJ2lcRFW09jUVSADWHxU251/uo5zq+bUMsrf4Y=;
        b=yioa1HuLG6pe/lfSyDIcSMKlzNW3Bf4RUG1a7S4xHkXhNuKCTdvwn4W0muDd/2X7HK
         KW+nknYD+6QeUm7M/VsIQ6OBlWovtKHipGb8fAuLdgmUJBYLYGOx1o2JrFGSMErg35ay
         RiL3NPubxamQfzFDRe6m01CEVDhlS2JMjGk4OCuC0kiyi+fpkg7JRA9UsuswT3uQqU9C
         QDrIgBB4i86bywbpxNFN74H14i5X3AxCE6y3nNG5zpuuPPPFYMY+M3EQiIRZdZgbQ54Q
         LIEaBlgxpRJ2VooCnfs5Ut+Ywt4dm4iQOmBGQHYsdsTiIUGyui/6ZgYlp/ixxXtgtJN2
         y5gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697212634; x=1697817434;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8LAXrLJ2lcRFW09jUVSADWHxU251/uo5zq+bUMsrf4Y=;
        b=UDhGGBJlh8C/gjZ4COAzbGLBKbYhdsQ/GixdpwAddI5C91P6B7klZvltH7BZ0v6x5g
         WBPWbv4Z8U/3INbk7WK/lM9PLW2r4ZqYQdbf/jbCeNuktJPneQcHvnj8VPTSC5JhN46C
         Yoa4GI6fxfd9MqbFoX31Vxoa54IIY1hIWB7tkGddH6S4K9wqZm8wwizH9h6rUbMFjV7j
         IVTJSXj547DUJeZkEHU0zMFsFW0n0rVxiJMvJWkZ5dR3sDyWn1G9/D1cEQLCW8GmVeEN
         bahGYPgSR3NsA9MMS3xfyztwYr/sGy8ZKO+Aq1ymYjmBY+6jRgitVB4JwDZedd2t3kKA
         atug==
X-Gm-Message-State: AOJu0YyKCsU+cafupggttFdIyP7SOal94+Ry+AFtXXnf7r78jW2YqTBd
	xtcPNZGrqoYUPAIXnk4E8KFP6g==
X-Google-Smtp-Source: AGHT+IEdcvcROHXymY8k3U3zBL4YWhy8WSXHNikbBAaMbWzhaR2J7dU+GMvl7wYK5y6A9d0B+d8aWQ==
X-Received: by 2002:a05:6000:1946:b0:327:e073:d604 with SMTP id e6-20020a056000194600b00327e073d604mr21446330wry.45.1697212634245;
        Fri, 13 Oct 2023 08:57:14 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id j11-20020a05600c42cb00b0040652e8ca13sm468988wme.43.2023.10.13.08.57.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Oct 2023 08:57:13 -0700 (PDT)
Message-ID: <ea6c4056-9e7c-4aa3-b207-a97436682b8e@linaro.org>
Date: Fri, 13 Oct 2023 17:57:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/13] thermal: tegra: Do not register cooling device
Content-Language: en-US
To: Thierry Reding <thierry.reding@gmail.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20231012175836.3408077-1-thierry.reding@gmail.com>
 <20231012175836.3408077-7-thierry.reding@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20231012175836.3408077-7-thierry.reding@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 12/10/2023 19:58, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The SOCTHERM's built-in throttling mechanism doesn't map well to the
> concept of a cooling device because it will automatically start to
> throttle when the programmed temperature threshold is crossed.
> 
> Remove the cooling device implementation and instead unconditionally
> program the throttling for the CPU and GPU thermal zones.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---

[ ... ]

> +	ret = of_property_read_u32(np, "temperature-millicelsius",
> +				   &stc->temperature);
> +	if (ret < 0)
> +		goto err;
> +
> +	ret = of_property_read_u32(np, "hysteresis-millicelsius",
> +				   &stc->hysteresis);
> +	if (ret < 0)
> +		goto err;
> +
> +	stc->num_zones = of_count_phandle_with_args(np, "nvidia,thermal-zones",
> +						    NULL);
> +	if (stc->num_zones > 0) {
> +		struct device_node *zone;
> +		unsigned int i;
> +
> +		stc->zones = devm_kcalloc(ts->dev, stc->num_zones, sizeof(zone),
> +					  GFP_KERNEL);
> +		if (!stc->zones)
> +			return -ENOMEM;
> +
> +		for (i = 0; i < stc->num_zones; i++) {
> +			zone = of_parse_phandle(np, "nvidia,thermal-zones", i);
> +			stc->zones[i] = zone;
> +		}
> +	}

What is the connection between the temperature sensor and the hardware 
limiter?

I mean, one hand there is the hardware limiter which is not connected to 
the sensor neither a thermal zone and it could be self contained in a 
separate driver. And then there is the temperature sensor.

The thermal zone phandle things connected with the throttling bindings 
sounds like strange to me.

What prevents to split the throttling and the sensor into separate code?

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


