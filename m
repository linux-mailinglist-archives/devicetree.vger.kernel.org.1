Return-Path: <devicetree+bounces-244925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD1BCAA47A
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 11:59:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 73059309C3F6
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 10:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B11D22EB874;
	Sat,  6 Dec 2025 10:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="aGqER0SG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9232D1A239A
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 10:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765018768; cv=none; b=cYf9q7ucwNoF66jxr1BbMIQBJb/7NZcfQwVXkskA1hb+hRQ/DxKYVvJUoVE899NRCkVcHDeF9jf5L6kKKzLGvKRlSEqZhWAxzi/AGsQOJxtjyDeGwTkZvLlPX8hu0vbQuyZz9Zlg0Tm2rWKB1kOZua0n1KQ2S8a3upqk5AfQTSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765018768; c=relaxed/simple;
	bh=iJdK1WjQxm613LzkzGauKVCBOFK/Ax2cz/bC/fWFU0A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FBdrsCfDF6lGCE6447A9PKu8Og9EpOsgIzCbYBKFyOwjdoNoZ3ehrbWDRKgUtUqJQP1D+I3zA3kW7+pRVeS6O8lmifRsqSvCO3Yyha+LxhRcy2tGWH++wATE6lcIVGu6E1f1Zjf26prw/vlY1BxbNtOMO6oyB7au8O/4Y/yLNig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=aGqER0SG; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42e2e77f519so1988346f8f.2
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 02:59:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1765018765; x=1765623565; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RIO9SzB3Xa4kmj3UsTvTuplTcl1BtW8wdpyi8S+F8h4=;
        b=aGqER0SG6xI6xhHvZMvT7CI8P7fTPIeSolTFbdSTPMQMUuTwbYysBdOdcEfsAKxkla
         s796E876o0SFOVWe5ilfJ7gLl86sGJrqTInm9aQX5+rsV4t6sJ4k+CEQ2FYBP3MLLbCZ
         SyYfwIIRPIw4DxWfqRjlnd/mOVvKgFfpExxb4wnvXQ2jIAKcgpf8D+EoIFAUYJK80YN2
         WRBWzbHiaQxnfojad89gv5d1hjZCgFEAtRZhpd0KwE9UqnqSGsEGDPj9dnVVBKH5ekYG
         wcjguP2EwUABhowiQa762sw3MdAKPrt/k1gp/DW/Ce8ID1auXxHnDGvnI4GAvg5/SyX4
         Qtxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765018765; x=1765623565;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RIO9SzB3Xa4kmj3UsTvTuplTcl1BtW8wdpyi8S+F8h4=;
        b=oCPuw1bCbroVECRlyETPSbWRAz4+Y0Zud9JMslzLv0tZ0bu89TjAf65yFRKB8fOLXH
         F9QArI+1+ofcael8aa7rmSOFMdTi9NdwD7ktOfHLP69YwEGAFzMOQVsJJFfbDpHi/8Hk
         iA6f2pp9eNKLpd/ELmOY9GFhZNMK/Oo7S7EzNMEeB6T7wQmn3WK6YUqjikcbsmBAa9KB
         PBczvAQ4ZYdJi67cT8HK+NdDU6Xa3JXlHiWBlQX230bIUhCE5y6kpZH+AogTr615k4cY
         90kay9y9FOp2hRXCXMNEn0ImhZiEj7TU86uTxFyzfewyJzQ3m1bJlNka6WivK5Wh+I2s
         LClA==
X-Gm-Message-State: AOJu0YxkAqyCkYcTSDrsNV8TkzwMz07wAMSolWmUTaJ2L+KL/6P20evk
	/LqsCEyB6qjCqCMLazIriWAZF/SuXDEk0uahZOjiOgDZcc4GkUzkNvo/xQ/3Qn49z6A=
X-Gm-Gg: ASbGncs5+pVovJWay3PxzDghGQPbLeoiTgDdmKbCamwApbNol5sUU1dQwG+2CJlT2Kg
	oxzIAUC1xF/aCcWgU4pn61m2R0GMXwKdxaydftzTKJrZM/zxFsvwiSM3OkU0qkSmXCgFEHO3PnT
	VDNruIvEnkT4VooFRKGBIdRjEzeTvmFp1LqIxFDtr+Hy1AmHMyl6SFfX/Rc7NSP649MW4jJjQv2
	rRWBQOAHllWzZgavI+4MHnQnZnUisAeZ5ox3Izoa4EC2N46BEvf+pG7r3pAjgaYEmBbp2cWBfiK
	7zK8XBhTaAmqyvuCTmB/KdKPtBdEftVagi8qUxTpTJd+x5iAGzYyRHFMToGBQzxWx9SSfNXixIE
	NybkkhO5Toe3IhKnXW/foX7+fCrwvAijGiRwKDJEPcrXSkwhz6mbc4pwcRhULToss5u3xHRJiCC
	ZwzTUkDy0xS+KTOE2Nr82LrPeYhUm7bg==
X-Google-Smtp-Source: AGHT+IFxGBJ/k+j6ZJVsFWmHOE/rf9wjq6MUOtPQXnpgzYxyl4FqltBjWGP+EQyry4lPmAzMGt5Q8g==
X-Received: by 2002:a05:6000:2c12:b0:42b:3d93:9a27 with SMTP id ffacd0b85a97d-42f89f455b1mr2081660f8f.36.1765018764417;
        Sat, 06 Dec 2025 02:59:24 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7cbff352sm14011733f8f.17.2025.12.06.02.59.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Dec 2025 02:59:24 -0800 (PST)
Message-ID: <b8e4805e-c0fc-489f-941d-d052668cbe74@tuxon.dev>
Date: Sat, 6 Dec 2025 12:59:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] ARM: dts: Add support for pcb8385
To: Horatiu Vultur <horatiu.vultur@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, wsa+renesas@sang-engineering.com,
 romain.sioen@microchip.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251201082629.2326339-1-horatiu.vultur@microchip.com>
 <20251201082629.2326339-3-horatiu.vultur@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20251201082629.2326339-3-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Horatiu,

On 12/1/25 10:26, Horatiu Vultur wrote:
> Add basic support for pcb8385 [1]. It is a modular board which allows
> to add different daughter cards on which there are different PHYs.
> This adds support for UART, LEDs and I2C.
> 
> [1] https://www.microchip.com/en-us/development-tool/ev83e85a
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  arch/arm/boot/dts/microchip/Makefile          |   3 +-
>  .../boot/dts/microchip/lan966x-pcb8385.dts    | 131 ++++++++++++++++++
>  2 files changed, 133 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/microchip/lan966x-pcb8385.dts
> 
> diff --git a/arch/arm/boot/dts/microchip/Makefile b/arch/arm/boot/dts/microchip/Makefile
> index 79cd38fdc7dab..08986c24a4700 100644
> --- a/arch/arm/boot/dts/microchip/Makefile
> +++ b/arch/arm/boot/dts/microchip/Makefile
> @@ -102,4 +102,5 @@ dtb-$(CONFIG_SOC_LAN966) += \
>  	lan966x-kontron-kswitch-d10-mmt-8g.dtb \
>  	lan966x-pcb8290.dtb \
>  	lan966x-pcb8291.dtb \
> -	lan966x-pcb8309.dtb
> +	lan966x-pcb8309.dtb \
> +	lan966x-pcb8385.dtb
> diff --git a/arch/arm/boot/dts/microchip/lan966x-pcb8385.dts b/arch/arm/boot/dts/microchip/lan966x-pcb8385.dts
> new file mode 100644
> index 0000000000000..6bbe1222f9106
> --- /dev/null
> +++ b/arch/arm/boot/dts/microchip/lan966x-pcb8385.dts
> @@ -0,0 +1,131 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * lan966x-pcb8385.dts - Device Tree file for PCB8385
> + */
> +/dts-v1/;
> +
> +#include "lan966x.dtsi"
> +#include "dt-bindings/phy/phy-lan966x-serdes.h"
> +
> +/ {
> +	model = "Microchip EVB - LAN9668";
> +	compatible = "microchip,lan9668-pcb8385", "microchip,lan9668", "microchip,lan966";
> +
> +	aliases {
> +		serial0 = &usart3;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	gpio-restart {
> +		compatible = "gpio-restart";
> +		gpios = <&gpio 59 GPIO_ACTIVE_LOW>;
> +		open-source;
> +		priority = <200>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-p1-green {
> +			label = "cu0:green";
> +			gpios = <&sgpio_out 2 0 GPIO_ACTIVE_LOW>;
> +			default-state = "off";
> +		};
> +
> +		led-p1-yellow {
> +			label = "cu0:yellow";
> +			gpios = <&sgpio_out 2 1 GPIO_ACTIVE_LOW>;
> +			default-state = "off";
> +		};
> +
> +		led-p2-green {
> +			label = "cu1:green";
> +			gpios = <&sgpio_out 3 0 GPIO_ACTIVE_LOW>;
> +			default-state = "off";
> +		};
> +
> +		led-p2-yellow {
> +			label = "cu1:yellow";
> +			gpios = <&sgpio_out 3 1 GPIO_ACTIVE_LOW>;
> +			default-state = "off";
> +		};
> +	};
> +};
> +
> +&aes {
> +	status = "disabled"; /* Reserved by secure OS */

According to [1] this should be marked as reserved.

[1]
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#status

Thank you,
Claudiu

