Return-Path: <devicetree+bounces-49754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BF03C877A9D
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 06:33:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 736C91F21AC9
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 05:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39E428F5C;
	Mon, 11 Mar 2024 05:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="MpP94/mV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5176CAD2D
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 05:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710135188; cv=none; b=ebJTDt69NjXPzf6KmxnXHIB4a98Pp3Cw/Q3o9zwNbU24K/2VeiU7U33HTgfUI94+2qGH3lSQCmn3QYjMsUCWtk4VqmlpXG83WfnZ+LpRvpWkzph9BJnCwicOJ5euVSxaaskeF5CypSXZjAjMsm+KN7cPS7kaXtAQHcdpmrGMhEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710135188; c=relaxed/simple;
	bh=3j3nQTPIQgZmg6idrQtrVJE8ty71JiVFYrY1M4EVvWw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=do6m5d6gg1UZ2XZLdrrjXVW/4hrbB5Uw3LRUoObP1xh7syC3mFH/v7ajfpwBYKs6So55NxVtwFTomSjxsnuirJ+gFaYbaEw5F/0UrZi8ketedGlaFdGiBG9zqJIKweOBjp6ME8jiMQis66m2SqB5XTet3/Mtx3gpMrXqgt1xI1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=MpP94/mV; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5133bd7eb47so4669586e87.3
        for <devicetree@vger.kernel.org>; Sun, 10 Mar 2024 22:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1710135183; x=1710739983; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xHbnC+Lc+LUPq49FUf6LJd/f3BeJuZ1d1Rd9dT+IFJ8=;
        b=MpP94/mV5dIETmUF4pXLN3Lm0l21emjkW42EMwpNDAin1RFUN9tBuXOTJMwFqMK6CX
         935bVRaFcOh92wPbQ3oFZIIXOW1erMaVwLlXBG++MkHazYzxXS96Sm3iG4F13uz5H0n4
         Jd35Xo7YgVshe3I/gx8kSVWTvnq15DWd1U351eJFGfnFU49zcQEyIsOK2w4/ZHNKRp6a
         wn+EKh5JKi/XRwKQdQk0ZTTQvG4zhVn7MP68Vjjg+9ixsME4vtGt1QrddGfLHktiOoCn
         HWueWdYxeZWQalqRcRcsZ70QCUaZk9N02dHsexj1sIAMBGnq/oROsrUpven9LUYUs+Xp
         Jaaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710135183; x=1710739983;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xHbnC+Lc+LUPq49FUf6LJd/f3BeJuZ1d1Rd9dT+IFJ8=;
        b=cog6z6xOc39Hky8Jwh13i4BWvq8vQIbOJ3MjHwoGIrChQE6OeTay39Q1CLKrARVwch
         g435pYhqLXxcBFmpW5XAMXuL5DVb+pIg4Rk9LhY7MEtWKw4b1iG5hHa4m/MQtY6PKFka
         TPENiSOAs+nDd7bJMVugpC/09M8dPMJ0Jiq9q5AO8+zTpxsutXYIbLzOrR/80z4XHzWD
         yUE5yYW1/3QWrSA/QyRO6fP1+w2aF6oTGRzN8X+kD+Uc7dU2MNgJuV4L5HRPBN95SPT5
         ErILOglbhqBaJwbc0kXYNB549pV6IMbuE4j9QUUc2oucMhg25rhnB9XhufUUVej5+qP5
         ISWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWc3DQANfjf97IshSD3ikJNT9H/YYOyQ+oD96kXpYwpMJ+HPjGJFAOrghmAp3a8wiiV2beGmYhW2tl6K4OcKF2P4nKMOfHK17rYWQ==
X-Gm-Message-State: AOJu0YwyWxibfkiwGb4RmHGTT1QDhpGOGmJGGoHoutSSOHJh3KexD/D7
	t753OebQLSONqImkzZjSaz1ngEAGOFEfPLTbDNvf9Q62xO8g1/eXw4h5akzHG00=
X-Google-Smtp-Source: AGHT+IHKHznMTZ58B3IQYLr5W4/d7ASDqFveZHeyayDkPSbuNMpZeKsob78akyJEO8Ad+NXS7lVhIQ==
X-Received: by 2002:a05:6512:3188:b0:513:a7c4:f6e9 with SMTP id i8-20020a056512318800b00513a7c4f6e9mr1660381lfe.11.1710135183248;
        Sun, 10 Mar 2024 22:33:03 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.38])
        by smtp.gmail.com with ESMTPSA id je1-20020a05600c1f8100b00412c1d51a0dsm7705109wmb.45.2024.03.10.22.33.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Mar 2024 22:33:02 -0700 (PDT)
Message-ID: <72901ead-400f-416d-a3f6-7fb06fd23786@tuxon.dev>
Date: Mon, 11 Mar 2024 07:32:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 21/39] dt-bindings: clk: at91: add sam9x7
Content-Language: en-US
To: Varshini Rajendran <varshini.rajendran@microchip.com>,
 mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240223171342.669133-1-varshini.rajendran@microchip.com>
 <20240223172732.672645-1-varshini.rajendran@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240223172732.672645-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

s/dt-bindings: clk: at91/dt-bindings: clocks: at91sam9x5-sckc

or

s/dt-bindings: clk: at91/dt-bindings: clocks:  atmel,at91sam9x5-sckc

in patch title

On 23.02.2024 19:27, Varshini Rajendran wrote:
> Add bindings for SAM9X7's slow clock controller.
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> ---
> Changes in v4:
> - Added sam9x7 compatible as an enum with sama7g5 compatible as per the
>   review comment
> ---
>  .../devicetree/bindings/clock/atmel,at91sam9x5-sckc.yaml      | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/atmel,at91sam9x5-sckc.yaml b/Documentation/devicetree/bindings/clock/atmel,at91sam9x5-sckc.yaml
> index 7be29877e6d2..ab81f0b55ad5 100644
> --- a/Documentation/devicetree/bindings/clock/atmel,at91sam9x5-sckc.yaml
> +++ b/Documentation/devicetree/bindings/clock/atmel,at91sam9x5-sckc.yaml
> @@ -18,7 +18,9 @@ properties:
>            - atmel,sama5d4-sckc
>            - microchip,sam9x60-sckc
>        - items:
> -          - const: microchip,sama7g5-sckc
> +          - enum:
> +              - microchip,sama7g5-sckc
> +              - microchip,sam9x7-sckc

Alphanumerically sorted?

>            - const: microchip,sam9x60-sckc
>  
>    reg:

