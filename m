Return-Path: <devicetree+bounces-12524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D16797D9C98
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 17:08:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 156CCB20CE2
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 15:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB210374C7;
	Fri, 27 Oct 2023 15:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QVPf/ayA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9353A18C0D
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 15:07:43 +0000 (UTC)
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55FDDC4;
	Fri, 27 Oct 2023 08:07:41 -0700 (PDT)
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-d9a518d66a1so1535066276.0;
        Fri, 27 Oct 2023 08:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698419260; x=1699024060; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=qloAnNyX4uVkIPIKZTip1fVvsVzeHLGFV3eqAOjO77U=;
        b=QVPf/ayAJOQdfj3P5koJY9ivaPzPg35sqV3XIcKYWSBKqTPzUmvkmLvmM6Ujk5cxCO
         1mUtwUmT7USL0ZCxO8Q7rVYh9oC0LJ5VD962zVAMvtlxILA2grpo20S4bvQho2I3rDq0
         5052gUwz60DgNDyRYQ7NcZp8dX7uHunALJO+pl0+snWoaBg1KbgzAVaD4lH8ys/uoVJv
         mBRJbZKfbccNQ4pClbUdi4GXyN0q5mGXcUcuOxBlRgo/N5OCznv+tEKKaiurxNm5eWqI
         u2SH06GHojDMX9qUFixi2ccSb8b8kvyoAMS2o5hZoS2sIPwyhXzIJ3uY0/OIyNC7lyvS
         pMCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698419260; x=1699024060;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qloAnNyX4uVkIPIKZTip1fVvsVzeHLGFV3eqAOjO77U=;
        b=OpdGhqfZeG/zcr8wEtlDN4JWCkWv7GJELFiNt68AlzJWRYNZvwVgzvqLYVBFEufqnt
         z5N7qBwYQc6gsrjTo5tjvm3uQUwu9giKLTp6G3qPeJ++r3jN29StQILWfiokjKgXl8ox
         0pCK3WK/7z/6twi91CQcPnxUFT6yQOsRGRo1Gpx2Oo+cKlsk9Xs0MdvbrUKsn5yx2wRQ
         QLqx2kaVimNNIRLslwAZfQpQJdNv80AM1Mhae2CowmZ/m8/yOES2ZV+jt74CBTx88rV4
         GhlMSPUBozuvU/OAcgbTGJVP0zGfLebbXwXV1cUMOYJ7WLvqDzeYGFiunvlKSv/+1kD9
         pG7A==
X-Gm-Message-State: AOJu0Yx0zS/2rMHu2QSRj9+rITm3yfv6jgbV9sZCawkGaVgqOvnUwtgR
	a6jj/MWTiMBI9gfbcSeQkKk=
X-Google-Smtp-Source: AGHT+IEKEXt5/iKxiKcWIl/Ao3PxFYpGuQy/xFOERmbn41PzQs02RXFUo2GS+lXEsahSLBidbEQKAg==
X-Received: by 2002:a25:7694:0:b0:da0:cea9:2b43 with SMTP id r142-20020a257694000000b00da0cea92b43mr2963493ybc.41.1698419260315;
        Fri, 27 Oct 2023 08:07:40 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d7-20020a258247000000b00d89b8bf0147sm711124ybn.15.2023.10.27.08.07.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Oct 2023 08:07:39 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <2fb7109f-b26b-bbd2-6c4d-d900fd4917d4@roeck-us.net>
Date: Fri, 27 Oct 2023 08:07:37 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: aspeed-wdt: Add
 aspeed,reset-mask property
Content-Language: en-US
To: Zev Weiss <zev@bewilderbeest.net>, Andrew Jeffery <andrew@aj.id.au>,
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "Milton D. Miller II" <mdmii@outlook.com>, Rob Herring <robh+dt@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
 openbmc@lists.ozlabs.org
Cc: Eddie James <eajames@linux.ibm.com>,
 Ivan Mikhaylov <i.mikhaylov@yadro.com>,
 =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <linux@weissschuh.net>
References: <20230922104231.1434-4-zev@bewilderbeest.net>
 <20230922104231.1434-5-zev@bewilderbeest.net>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20230922104231.1434-5-zev@bewilderbeest.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/22/23 03:42, Zev Weiss wrote:
> This property configures the Aspeed watchdog timer's reset mask, which
> controls which peripherals are reset when the watchdog timer expires.
> Some platforms require that certain devices be left untouched across a
> reboot; aspeed,reset-mask can now be used to express such constraints.
> 
> Signed-off-by: Zev Weiss <zev@bewilderbeest.net>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   .../bindings/watchdog/aspeed-wdt.txt          | 18 +++-
>   include/dt-bindings/watchdog/aspeed-wdt.h     | 92 +++++++++++++++++++
>   2 files changed, 109 insertions(+), 1 deletion(-)
>   create mode 100644 include/dt-bindings/watchdog/aspeed-wdt.h
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> index a8197632d6d2..3208adb3e52e 100644
> --- a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> +++ b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> @@ -47,7 +47,15 @@ Optional properties for AST2500-compatible watchdogs:
>   			   is configured as push-pull, then set the pulse
>   			   polarity to active-high. The default is active-low.
>   
> -Example:
> +Optional properties for AST2500- and AST2600-compatible watchdogs:
> + - aspeed,reset-mask: A bitmask indicating which peripherals will be reset if
> +		      the watchdog timer expires.  On AST2500 this should be a
> +		      single word defined using the AST2500_WDT_RESET_* macros;
> +		      on AST2600 this should be a two-word array with the first
> +		      word defined using the AST2600_WDT_RESET1_* macros and the
> +		      second word defined using the AST2600_WDT_RESET2_* macros.
> +
> +Examples:
>   
>   	wdt1: watchdog@1e785000 {
>   		compatible = "aspeed,ast2400-wdt";
> @@ -55,3 +63,11 @@ Example:
>   		aspeed,reset-type = "system";
>   		aspeed,external-signal;
>   	};
> +
> +	#include <dt-bindings/watchdog/aspeed-wdt.h>
> +	wdt2: watchdog@1e785040 {
> +		compatible = "aspeed,ast2600-wdt";
> +		reg = <0x1e785040 0x40>;
> +		aspeed,reset-mask = <AST2600_WDT_RESET1_DEFAULT
> +				     (AST2600_WDT_RESET2_DEFAULT & ~AST2600_WDT_RESET2_LPC)>;
> +	};
> diff --git a/include/dt-bindings/watchdog/aspeed-wdt.h b/include/dt-bindings/watchdog/aspeed-wdt.h
> new file mode 100644
> index 000000000000..7ae6d84b2bd9
> --- /dev/null
> +++ b/include/dt-bindings/watchdog/aspeed-wdt.h
> @@ -0,0 +1,92 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +
> +#ifndef DT_BINDINGS_ASPEED_WDT_H
> +#define DT_BINDINGS_ASPEED_WDT_H
> +
> +#define AST2500_WDT_RESET_CPU		(1 << 0)
> +#define AST2500_WDT_RESET_COPROC	(1 << 1)
> +#define AST2500_WDT_RESET_SDRAM		(1 << 2)
> +#define AST2500_WDT_RESET_AHB		(1 << 3)
> +#define AST2500_WDT_RESET_I2C		(1 << 4)
> +#define AST2500_WDT_RESET_MAC0		(1 << 5)
> +#define AST2500_WDT_RESET_MAC1		(1 << 6)
> +#define AST2500_WDT_RESET_GRAPHICS	(1 << 7)
> +#define AST2500_WDT_RESET_USB2_HOST_HUB	(1 << 8)
> +#define AST2500_WDT_RESET_USB_HOST	(1 << 9)
> +#define AST2500_WDT_RESET_HID_EHCI	(1 << 10)
> +#define AST2500_WDT_RESET_VIDEO		(1 << 11)
> +#define AST2500_WDT_RESET_HAC		(1 << 12)
> +#define AST2500_WDT_RESET_LPC		(1 << 13)
> +#define AST2500_WDT_RESET_SDIO		(1 << 14)
> +#define AST2500_WDT_RESET_MIC		(1 << 15)
> +#define AST2500_WDT_RESET_CRT		(1 << 16)
> +#define AST2500_WDT_RESET_PWM		(1 << 17)
> +#define AST2500_WDT_RESET_PECI		(1 << 18)
> +#define AST2500_WDT_RESET_JTAG		(1 << 19)
> +#define AST2500_WDT_RESET_ADC		(1 << 20)
> +#define AST2500_WDT_RESET_GPIO		(1 << 21)
> +#define AST2500_WDT_RESET_MCTP		(1 << 22)
> +#define AST2500_WDT_RESET_XDMA		(1 << 23)
> +#define AST2500_WDT_RESET_SPI		(1 << 24)
> +#define AST2500_WDT_RESET_SOC_MISC	(1 << 25)
> +
> +#define AST2500_WDT_RESET_DEFAULT 0x023ffff3
> +
> +#define AST2600_WDT_RESET1_CPU		(1 << 0)
> +#define AST2600_WDT_RESET1_SDRAM	(1 << 1)
> +#define AST2600_WDT_RESET1_AHB		(1 << 2)
> +#define AST2600_WDT_RESET1_SLI		(1 << 3)
> +#define AST2600_WDT_RESET1_SOC_MISC0	(1 << 4)
> +#define AST2600_WDT_RESET1_COPROC	(1 << 5)
> +#define AST2600_WDT_RESET1_USB_A	(1 << 6)
> +#define AST2600_WDT_RESET1_USB_B	(1 << 7)
> +#define AST2600_WDT_RESET1_UHCI		(1 << 8)
> +#define AST2600_WDT_RESET1_GRAPHICS	(1 << 9)
> +#define AST2600_WDT_RESET1_CRT		(1 << 10)
> +#define AST2600_WDT_RESET1_VIDEO	(1 << 11)
> +#define AST2600_WDT_RESET1_HAC		(1 << 12)
> +#define AST2600_WDT_RESET1_DP		(1 << 13)
> +#define AST2600_WDT_RESET1_DP_MCU	(1 << 14)
> +#define AST2600_WDT_RESET1_GP_MCU	(1 << 15)
> +#define AST2600_WDT_RESET1_MAC0		(1 << 16)
> +#define AST2600_WDT_RESET1_MAC1		(1 << 17)
> +#define AST2600_WDT_RESET1_SDIO0	(1 << 18)
> +#define AST2600_WDT_RESET1_JTAG0	(1 << 19)
> +#define AST2600_WDT_RESET1_MCTP0	(1 << 20)
> +#define AST2600_WDT_RESET1_MCTP1	(1 << 21)
> +#define AST2600_WDT_RESET1_XDMA0	(1 << 22)
> +#define AST2600_WDT_RESET1_XDMA1	(1 << 23)
> +#define AST2600_WDT_RESET1_GPIO0	(1 << 24)
> +#define AST2600_WDT_RESET1_RVAS		(1 << 25)
> +
> +#define AST2600_WDT_RESET1_DEFAULT 0x030f1ff1
> +
> +#define AST2600_WDT_RESET2_CPU		(1 << 0)
> +#define AST2600_WDT_RESET2_SPI		(1 << 1)
> +#define AST2600_WDT_RESET2_AHB2		(1 << 2)
> +#define AST2600_WDT_RESET2_SLI2		(1 << 3)
> +#define AST2600_WDT_RESET2_SOC_MISC1	(1 << 4)
> +#define AST2600_WDT_RESET2_MAC2		(1 << 5)
> +#define AST2600_WDT_RESET2_MAC3		(1 << 6)
> +#define AST2600_WDT_RESET2_SDIO1	(1 << 7)
> +#define AST2600_WDT_RESET2_JTAG1	(1 << 8)
> +#define AST2600_WDT_RESET2_GPIO1	(1 << 9)
> +#define AST2600_WDT_RESET2_MDIO		(1 << 10)
> +#define AST2600_WDT_RESET2_LPC		(1 << 11)
> +#define AST2600_WDT_RESET2_PECI		(1 << 12)
> +#define AST2600_WDT_RESET2_PWM		(1 << 13)
> +#define AST2600_WDT_RESET2_ADC		(1 << 14)
> +#define AST2600_WDT_RESET2_FSI		(1 << 15)
> +#define AST2600_WDT_RESET2_I2C		(1 << 16)
> +#define AST2600_WDT_RESET2_I3C_GLOBAL	(1 << 17)
> +#define AST2600_WDT_RESET2_I3C0		(1 << 18)
> +#define AST2600_WDT_RESET2_I3C1		(1 << 19)
> +#define AST2600_WDT_RESET2_I3C2		(1 << 20)
> +#define AST2600_WDT_RESET2_I3C3		(1 << 21)
> +#define AST2600_WDT_RESET2_I3C4		(1 << 22)
> +#define AST2600_WDT_RESET2_I3C5		(1 << 23)
> +#define AST2600_WDT_RESET2_ESPI		(1 << 26)
> +
> +#define AST2600_WDT_RESET2_DEFAULT 0x03fffff1
> +
> +#endif


