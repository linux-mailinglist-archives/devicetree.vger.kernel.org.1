Return-Path: <devicetree+bounces-7891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EB77C5FAE
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 23:56:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 180371C20964
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 21:56:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 261EB3D3B9;
	Wed, 11 Oct 2023 21:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="dQYRnZDS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5D52230D
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 21:55:58 +0000 (UTC)
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E941FC4
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 14:55:56 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1c9b70b9671so27655ad.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 14:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1697061356; x=1697666156; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=G/VI1T6Gc+cmhbjX/uIBr6xwzKYJ41bXjCF3hoBcXSk=;
        b=dQYRnZDSgyHGgzh4Xl/gB9TJX6D9odkM5I2DRi686SX8PEUTmB8zC0SMutn204QZoU
         OJzfRbRx3TxgjfRiIOwGDdID3iEIulr+hOFAdYWZ0NWB8lrbno1aeipm94sOn668BMWH
         Kr372vOwQNXJt6G9pHTTMwSturvTX8tx/uyv44rOkhqCxIISToynzlFgCCKH2BtPZa6L
         8bFFwZnqsI7SXwv87EYjXF/H+tt3ShMTHjABt0gZQyRuUNGiU8iQs7B24Uw2viXs+5aY
         aU2xUnOryBqDU7Orzv84q+e4dbLsg2o1OwEhRCGFq+3lfw5DXsjiNsAj/IYO2Xt68OUy
         sHnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697061356; x=1697666156;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G/VI1T6Gc+cmhbjX/uIBr6xwzKYJ41bXjCF3hoBcXSk=;
        b=JZxNxgzAMiW/jdj+2b7CUje4TVEJsOE6WvqMjvUqBxr79QJ4YdbxGX3Of1SU6lg/Qu
         1L43KW5PMfNmt00gnlYwGWB57DCyeF++gATAouVLfVfT8QbjR3Vw+EMock4zo3mL7mi3
         s1WBXtKKdGri9kRzoNfmXcZ9yul9mkWrNNKyUkNBE8f5D0tyr7wub5YWM7/LZLBrCnbh
         f0ugricolcaAI43TA9OtdhZlC4h9ESJ2ByDH6Hf2X78v9oyDtPvt/qUltAkMlApGfoLR
         2Vre6MhzF6ht5feMvpGdzctrAJIOM0Byk3MSz5ewfMs0EatURBmVCBRZUR78bbAOr9aJ
         PRnQ==
X-Gm-Message-State: AOJu0Yz1tbxfi2Lna3xCqyy9g+1MYmt5oqdbDtBT9jNGzywo6Nch7gbc
	IMBc0B2gCAE9EHw8tpMXyzrAQQ==
X-Google-Smtp-Source: AGHT+IH26ndrbRmlPXq3wQJVSDukvD+Vyc34hMIx/sm9X8JrygezPnauwA7sBJz/7ERG9RJTkTLm7g==
X-Received: by 2002:a17:903:18b:b0:1c6:ec8:4c82 with SMTP id z11-20020a170903018b00b001c60ec84c82mr303171plg.23.1697061356195;
        Wed, 11 Oct 2023 14:55:56 -0700 (PDT)
Received: from google.com (13.65.82.34.bc.googleusercontent.com. [34.82.65.13])
        by smtp.gmail.com with ESMTPSA id z125-20020a633383000000b0058a381de499sm327436pgz.77.2023.10.11.14.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 14:55:55 -0700 (PDT)
Date: Wed, 11 Oct 2023 14:55:52 -0700
From: William McVicker <willmcvicker@google.com>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org,
	tomasz.figa@gmail.com, s.nawrocki@samsung.com,
	linus.walleij@linaro.org, wim@linux-watchdog.org,
	linux@roeck-us.net, catalin.marinas@arm.com, will@kernel.org,
	arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org,
	cw00.choi@samsung.com, tudor.ambarus@linaro.org,
	andre.draszik@linaro.org, semen.protsenko@linaro.org,
	saravanak@google.com, soc@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org,
	kernel-team@android.com, linux-serial@vger.kernel.org
Subject: Re: [PATCH v3 18/20] arm64: dts: google: Add initial Oriole/pixel 6
 board support
Message-ID: <ZScZ6Khov9fM4SZb@google.com>
References: <20231011184823.443959-1-peter.griffin@linaro.org>
 <20231011184823.443959-19-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011184823.443959-19-peter.griffin@linaro.org>
X-Spam-Status: No, score=-15.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,HK_RANDOM_ENVFROM,HK_RANDOM_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL,
	USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/11/2023, Peter Griffin wrote:
> Add initial board support for the Pixel 6 phone code named Oriole. This
> has been tested with a minimal busybox initramfs and boots to a shell.
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

Tested-by: Will McVicker <willmcvicker@google.com>

Thanks,
Will

> ---
>  arch/arm64/boot/dts/google/Makefile         |  4 ++
>  arch/arm64/boot/dts/google/gs101-oriole.dts | 79 +++++++++++++++++++++
>  2 files changed, 83 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/google/Makefile
>  create mode 100644 arch/arm64/boot/dts/google/gs101-oriole.dts
> 
> diff --git a/arch/arm64/boot/dts/google/Makefile b/arch/arm64/boot/dts/google/Makefile
> new file mode 100644
> index 000000000000..5cea8ff27141
> --- /dev/null
> +++ b/arch/arm64/boot/dts/google/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +dtb-$(CONFIG_ARCH_GOOGLE_TENSOR) += \
> +	gs101-oriole.dtb \
> diff --git a/arch/arm64/boot/dts/google/gs101-oriole.dts b/arch/arm64/boot/dts/google/gs101-oriole.dts
> new file mode 100644
> index 000000000000..3bebca989d34
> --- /dev/null
> +++ b/arch/arm64/boot/dts/google/gs101-oriole.dts
> @@ -0,0 +1,79 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Oriole Device Tree
> + *
> + * Copyright 2021-2023 Google,LLC
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include "gs101-pinctrl.h"
> +#include "gs101.dtsi"
> +
> +/ {
> +	model = "Oriole";
> +	compatible = "google,gs101-oriole", "google,gs101";
> +
> +	chosen {
> +		bootargs = "earlycon=exynos4210,mmio32,0x10A00000 console=ttySAC0";
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&key_voldown &key_volup &key_power>;
> +
> +		button-vol-down {
> +			label = "KEY_VOLUMEDOWN";
> +			linux,code = <KEY_VOLUMEDOWN>;
> +			gpios = <&gpa7 3 GPIO_ACTIVE_LOW>;
> +			wakeup-source;
> +		};
> +
> +		button-vol-up {
> +			label = "KEY_VOLUMEUP";
> +			linux,code = <KEY_VOLUMEUP>;
> +			gpios = <&gpa8 1 GPIO_ACTIVE_LOW>;
> +			wakeup-source;
> +		};
> +
> +		button-power {
> +			label = "KEY_POWER";
> +			linux,code = <KEY_POWER>;
> +			gpios = <&gpa10 1 GPIO_ACTIVE_LOW>;
> +			wakeup-source;
> +		};
> +	};
> +};
> +
> +&pinctrl_1 {
> +	key_voldown: key-voldown-pins {
> +		samsung,pins = "gpa7-3";
> +		samsung,pin-function = <0xf>;
> +		samsung,pin-pud = <0>;
> +		samsung,pin-drv = <GS101_PIN_DRV_2_5_MA>;
> +	};
> +
> +	key_volup: key-volup-pins {
> +		samsung,pins = "gpa8-1";
> +		samsung,pin-function = <0xf>;
> +		samsung,pin-pud = <0>;
> +		samsung,pin-drv = <GS101_PIN_DRV_2_5_MA>;
> +	};
> +};
> +
> +&pinctrl_0 {
> +	key_power: key-power-pins {
> +		samsung,pins = "gpa10-1";
> +		samsung,pin-function = <0xf>;
> +		samsung,pin-pud = <0>;
> +		samsung,pin-drv = <GS101_PIN_DRV_2_5_MA>;
> +	};
> +};
> +
> +&watchdog_cl0 {
> +	timeout-sec = <30>;
> +};
> -- 
> 2.42.0.655.g421f12c284-goog
> 

