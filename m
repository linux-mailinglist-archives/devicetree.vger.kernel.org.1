Return-Path: <devicetree+bounces-1839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A4C7A8951
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 18:15:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 62B5E1C209A2
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 16:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 854473D3BF;
	Wed, 20 Sep 2023 16:15:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0436831A8E
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 16:15:05 +0000 (UTC)
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29F2F9F;
	Wed, 20 Sep 2023 09:15:03 -0700 (PDT)
Received: by mail-il1-x135.google.com with SMTP id e9e14a558f8ab-34ff2ee8f8eso10509875ab.3;
        Wed, 20 Sep 2023 09:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695226502; x=1695831302; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vp5ehFIEHrL6EHi+otp8Bh+D7ZWmQZrK9toHBT+EKsk=;
        b=fkK308tOwM0ClFtcDbIUpUxCq8faXWFRNy55+NMozqburk3bhnAlvW+r6vJl+AyGzb
         3m4AgC72EYruJVJ3Bob7zmKTfM4wmao3z9KoK86ClU2iBlUwdSJmf4rIFJdN8wNDMi3w
         uRbcW81H53Gjktexn2bOi2p0S6Nc6dn4W9aUWrZDzvasCj4hWZ7k6HQPbFeLvufP0VUt
         Hms1pruL+933165mFnxKB8qmMNhuEiDKuj/9LTGUs0oOwjpKeUv79Zyn5RoSkJ8C7NTA
         1R3H3ibJoucpOqsoN/un4p7+4pavOwrcYpn4Jzd0FiBmIpXXVmiSJXT9WKX6twAvbcsX
         nPFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695226502; x=1695831302;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vp5ehFIEHrL6EHi+otp8Bh+D7ZWmQZrK9toHBT+EKsk=;
        b=EEHO4/roedrFaWr4PvDWeXbjHRQVKpzSaHNFJ9S2B96QSgzC3z0Cw9jVLuE55tAiFk
         j0DW+pv6kp7MTEOsYFPU9tRVaqxQfLUnMkOO0GkryEspG9U4BKSE0laTyTlXTh+CbFoD
         H0Q3i6ZnXKQpHZRwU14MFUJURNFKZelKvaWYoskwuKpzdqyRoJOGqN934llAqvxVbj0T
         j7rSaBF781BwHsMPioDmDbpiZzpe0VtkhLrsWx3uyCJeHgoI7VM8iXbiJdDlM3CXnq4O
         WDeJC/m/tsjDHL33bK5PA3U7WxiYC+vlpxfPBmuFio6sG1TDGX8oZ23cQY9i21V6Awtw
         Y7+w==
X-Gm-Message-State: AOJu0Yxs8v7amWOuNRe9HQ1dKaQNCG3BsLkI+IFuNrirmmKkDcIBKEA9
	+70c164tq4BUboCyi9W+Rts=
X-Google-Smtp-Source: AGHT+IEoJRppbCar5L+CmeQPgUld+slWvoWUC9djlkm8jLzTeiLSqSZkhxD6dqlF5pFs289hDWVU3w==
X-Received: by 2002:a05:6e02:14c1:b0:34f:6dbb:6a24 with SMTP id o1-20020a056e0214c100b0034f6dbb6a24mr3180632ilk.1.1695226502303;
        Wed, 20 Sep 2023 09:15:02 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id c10-20020a92dc8a000000b0034f6f2eca21sm1667137iln.69.2023.09.20.09.15.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 09:15:01 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <76c39035-06a4-a7db-50e5-517004c0dad9@roeck-us.net>
Date: Wed, 20 Sep 2023 09:14:59 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>, patrick@stwcx.xyz,
 Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230920054739.1561080-1-Delphine_CC_Chiu@wiwynn.com>
 <20230920054739.1561080-2-Delphine_CC_Chiu@wiwynn.com>
From: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v1 1/2] dt-bindings: hwmon: add INA233 binding documents
In-Reply-To: <20230920054739.1561080-2-Delphine_CC_Chiu@wiwynn.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 9/19/23 22:47, Delphine CC Chiu wrote:
> Add INA233 binding documents for Yosemite V4 config.
> 
> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
> ---
>   .../devicetree/bindings/hwmon/ina233.txt      | 27 +++++++++++++++++++
>   MAINTAINERS                                   |  6 +++++
>   2 files changed, 33 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/hwmon/ina233.txt
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/ina233.txt b/Documentation/devicetree/bindings/hwmon/ina233.txt
> new file mode 100644
> index 000000000000..a1067788ec0c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/ina233.txt
> @@ -0,0 +1,27 @@
> +Bindings for the Maxim MAX31790 Intelligent Fan Controller

Not really.

> +==========================================================
> +
> +Reference:
> +
> +https://pdf1.alldatasheet.com/datasheet-pdf/view/930928/TI1/INA233.html
> +
> +The INA233 device is a current, voltage and power monitor with an I2C-, SMBus-,and PMBus-compatible interface
> +that is compliant with digital bus voltages from 1.8 V to 5.0 V.
> +The device monitors and reports values for current, voltage and power.
> +The integrated power accumulator can be used for energy or average power calculations.
> +Programmable calibration value, conversion times and averaging when combined with an internal multiplier
> +enable direct readouts of current in amperes and power in watts.
> +
> +Required properties:
> +- compatible     	: ti,ina233
> +- reg            	: I2C address
> +- resistor-calibration  : MFR_CALIBRATION which will be set into register 0xd4
> +- current-lsb    	: Current_LSB for calibration

The lack of valid ranges is a concern for me, as well as the lack of units.
MFR_CALIBRATION is register 0xd4, so I don't think that "MFR_CALIBRATION
which will be set into register 0xd4" is a really useful description.

Also, the calibration register value is, per datasheet, supposed to be
calculated from current_lsb and Rshunt. Since current_lsb is calculated
from the maximum expected current, the properties should actually be
the maximum expected current and Rshunt.

> +Example:
> +
> +        ina233@45 {
> +                compatible = "ti,ina233";
> +                reg = <0x45>;
> +                resistor-calibration = /bits/ 16 <0x0a00>;
> +                current-lsb= /bits/ 16 <0x0001>;
> +        };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index bf0f54c24f81..48b9a73d259f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10243,6 +10243,12 @@ F:	Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
>   F:	Documentation/hwmon/ina209.rst
>   F:	drivers/hwmon/ina209.c
>   
> +INA233 HARDWARE MONITOR DRIVER
> +M:     Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
> +S:     Odd Fixes
> +F:     Documentation/devicetree/bindings/hwmon/ina233.txt
> +F:     drivers/hwmon/ina233.c
> +
>   INA2XX HARDWARE MONITOR DRIVER
>   M:	Guenter Roeck <linux@roeck-us.net>
>   L:	linux-hwmon@vger.kernel.org


