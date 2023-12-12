Return-Path: <devicetree+bounces-24403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 991AB80F19F
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 16:56:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 42F371F2153A
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 15:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F44F76DD5;
	Tue, 12 Dec 2023 15:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ee8l5pAa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1255DAC
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 07:56:33 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-54cde11d0f4so8158500a12.2
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 07:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1702396591; x=1703001391; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w4vXCh8F5LedUSisfsukth4eGUf9Q/FPN0WUaR5/XEE=;
        b=ee8l5pAa3diRouUko7Efi3B6j831XfoEQugdxcdCkcvmDlr1zNUXaZr9HSQ3cvpxEY
         AP9kA7/Fk5SlHTyp0AgM4Ezn/01lSnyAPt81g8h6/IbM09sthKjZCW1t2QSadG8/23Qc
         tZ61VUEQb9AR9Hj0HZIbzB4OigyQbegVjlyRCExSTquHztyVmsXEKiPm93+2/uhUwwcP
         bLhM0gEztm1fezgY+xa11lUvkvQnVDqLMCzCPbENRN84VqJ0BOgfoLhF2UxJfaKHbizE
         TIOs37et1xl5bKXa3pangmLOHvvQujorGUUI9kYDkYxiCQrpU7/Zx+TLHkh1P4+Tz2OW
         XhvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702396591; x=1703001391;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w4vXCh8F5LedUSisfsukth4eGUf9Q/FPN0WUaR5/XEE=;
        b=j+PvYK7o3sOH4lTzDj0spVxehGMa+mALFWUYuMs3nDBdbQx+vhc/MPG71MwvWtOqVJ
         +rUDo0Zbn9trv62G0knJSRXFIXQf5VW0cecaBvOjTaH1gK0ziYxRH6lsdJSPsT39vO8c
         +TWWHVHZY6LTiUc0/NDm0peissmOeX9eJs3B8kxcf7iA8b6l7ApfKQ9Jj4x5Ba2aeatd
         PC2UJ2pB9lDnWO50hHQUx+HAmI2vdVm6FsV82z1+N2Se2oMsi63IMR09sXBW7DtEvBgi
         EkwHyUUflvbBpdeBzEeYZOJCOaa8zIKMD7hXnTcCKsI+lm/bwSebr6jCAvmoSCHVpTII
         PYtw==
X-Gm-Message-State: AOJu0YwT32KuSmKNGUX7BEqZvSupDIGY40mT0+sxxvRCZ5BB0fvCpPoX
	uZ7UnatVttrZrvyDHPyD5ffFJQ==
X-Google-Smtp-Source: AGHT+IEGg6rxKLnmGKepM3gl8qsFTYq7RJMCavGZ9nBlCMjxq7R0x9NL4zxA543DCWbQ5cBSi4zuiQ==
X-Received: by 2002:a50:bac2:0:b0:551:db7e:cada with SMTP id x60-20020a50bac2000000b00551db7ecadamr169941ede.27.1702396591427;
        Tue, 12 Dec 2023 07:56:31 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.103])
        by smtp.gmail.com with ESMTPSA id cn10-20020a0564020caa00b0054ca2619c1bsm4858893edb.9.2023.12.12.07.56.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Dec 2023 07:56:30 -0800 (PST)
Message-ID: <bae162b2-5f81-4275-a7bc-ac3f9886ff18@tuxon.dev>
Date: Tue, 12 Dec 2023 17:56:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: microchip: sama5d27_som1_ek: Remove
 mmc-ddr-3_3v property from sdmmc0 node
Content-Language: en-US
To: Mihai Sain <mihai.sain@microchip.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: cristian.birsan@microchip.com
References: <20231211070345.2792-1-mihai.sain@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20231211070345.2792-1-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11.12.2023 09:03, Mihai Sain wrote:
> On board the sdmmc0 interface is wired to a SD Card socket.
> According with mmc-controller bindings, the mmc-ddr-3_3v property
> is used for eMMC devices to enable high-speed DDR mode (3.3V I/O).
> Remove the mmc-ddr-3_3v property from sdmmc0 node.
> 
> Signed-off-by: Mihai Sain <mihai.sain@microchip.com>

Applied to at91-dt, thanks!

> ---
>  arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts
> index d0a6dbd377df..f3ffb8f01d8a 100644
> --- a/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts
> @@ -54,7 +54,6 @@ usb2: ehci@500000 {
>  
>  		sdmmc0: sdio-host@a0000000 {
>  			bus-width = <8>;
> -			mmc-ddr-3_3v;
>  			pinctrl-names = "default";
>  			pinctrl-0 = <&pinctrl_sdmmc0_default>;
>  			status = "okay";

