Return-Path: <devicetree+bounces-14620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C75117E5B89
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 17:41:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5E532B20D58
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 16:41:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E92A2916;
	Wed,  8 Nov 2023 16:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A52DF4B
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 16:41:14 +0000 (UTC)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64DB11FE7;
	Wed,  8 Nov 2023 08:41:14 -0800 (PST)
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-6ce31c4a653so4337188a34.3;
        Wed, 08 Nov 2023 08:41:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699461673; x=1700066473;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TSxL3MDH/hHWV3cRZwmMwvNKyaUEVCBXJu1BFVWJHwQ=;
        b=RkyqA0d943HOlowoJM5a1xsc3QJ/P5gDxrCg8PEar94aEy1CQsANQ1b4zkl+pH/CcV
         DEec0c6zlgX78rIyZdO5N4UxyNr1jQyF6OyBYKX9AHYmpM/lWKjALrKPOOYma+5ctKxQ
         t+fDobhcL8XAUGND4ASxBFxZCaYKBCG3pLzER6hZBO8IbVWIhU7WZA8YNe4aZBrlV7Nj
         DKcOiyd8Quywp43DXTc3YMgE3Pn27y4GB6dkklYc0uCRWQuhNp1+N8rziANRy1I15hBd
         0rZviilmqptBJ8+RzlFrp23FZE4yOu+xCTJD9q8ZkN0cAsqN40fDHB8xuZUat0X2K95K
         d1Xg==
X-Gm-Message-State: AOJu0YwwKnXRNQiZniYhdBYlYq9vCmgfjuCu9r+2mihxRGXWTDqphrsu
	8tc8Q8/oL9hYZULD7SBWmA==
X-Google-Smtp-Source: AGHT+IEf+6ItAebPYovhnFoCTcGgM9HQB5LAxzETm5MftRlfTvL6If9mI5W6oa4ALafvno12x6nzlw==
X-Received: by 2002:a9d:744e:0:b0:6b7:43eb:c1a with SMTP id p14-20020a9d744e000000b006b743eb0c1amr2306497otk.36.1699461673654;
        Wed, 08 Nov 2023 08:41:13 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e2-20020a9d7302000000b006ce32816a35sm1940528otk.81.2023.11.08.08.41.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 08:41:13 -0800 (PST)
Received: (nullmailer pid 2364307 invoked by uid 1000);
	Wed, 08 Nov 2023 16:41:11 -0000
Date: Wed, 8 Nov 2023 10:41:11 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Julius Werner <jwerner@chromium.org>, linux-watchdog@vger.kernel.org, 
	Justin Chen <justinpopo6@gmail.com>, Oleksij Rempel <linux@rempel-privat.de>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, linux-sunxi@lists.linux.dev, 
	Evan Benn <evanbenn@chromium.org>, Guenter Roeck <linux@roeck-us.net>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, asahi@lists.linux.dev, 
	Sven Peter <sven@svenpeter.dev>, Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org, 
	Hector Martin <marcan@marcan.st>, Jamie Iles <jamie@jamieiles.com>, 
	Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>, Baruch Siach <baruch@tkos.co.il>, 
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?77+9ZWNraQ==?= <rafal@milecki.pl>, 
	Samuel Holland <samuel@sholland.org>, Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Marc Zyngier <maz@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] dt-bindings: watchdog: intel,keembay: reference
 common watchdog schema
Message-ID: <169946167110.2364244.9399282289978694454.robh@kernel.org>
References: <20231105184154.43700-1-krzysztof.kozlowski@linaro.org>
 <20231105184154.43700-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231105184154.43700-2-krzysztof.kozlowski@linaro.org>


On Sun, 05 Nov 2023 19:41:54 +0100, Krzysztof Kozlowski wrote:
> Reference common watchdog.yaml schema to allow "timeout-sec" property
> and enforce proper device node name.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/watchdog/intel,keembay-wdt.yaml      | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


