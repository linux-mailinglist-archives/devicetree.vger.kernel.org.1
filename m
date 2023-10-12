Return-Path: <devicetree+bounces-7994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EEA7C668A
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:40:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 93A001C20F4F
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 542FA101C1;
	Thu, 12 Oct 2023 07:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J2YsdFYQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500B5101D0
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:40:24 +0000 (UTC)
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42409D7
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 00:40:20 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-692a885f129so556600b3a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 00:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697096420; x=1697701220; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WeyFnsq7kj9nc73z+mJcYj/SpiIQNbMhSQED5EpeFnk=;
        b=J2YsdFYQ2M8Nck2NuIb55XvT7ouEU99gTX4h7OsZE8vL7D6pwGoK60bwO2T9BJXbG8
         JMNo062PU3Cc/fUPbDKWoblALxERXIlGXz/95ioDPWKGk8zE0xuqZXe7VqTXFofxncQ2
         25z4J9nW5vDhCkYUMWfFanRyG6YFUeV2At7B/k/4FbcTTYx+ABDS6qNu7a/iC1WTF6Ud
         o1ZUZ4vAvLQspjUMSl+reTDAqkgw1wrlelzXINM2IMONcV+F88uaehpjRnOpFotNMHfN
         mEFDcQoUCmxZy0O3SXOcNDlxOV/avXxkAGukvubRWpPeyE5Gpmc7yxE7JPai1lDhSWYk
         Nb0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697096420; x=1697701220;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WeyFnsq7kj9nc73z+mJcYj/SpiIQNbMhSQED5EpeFnk=;
        b=THpaJAFEnW//W/bqT39EpcK2aSwGBU4/mruj5WGKK3/UOelKOkqTKjKlLhaa6jtrG9
         A0sZ7YTHCXAcmv4iwz22pnv2zfG6AOVqQMQBTGhTlWyfJrEUDs/GgQnXDgiOetWiSa3E
         O2ppEg8uKYY6Z457lOssq+X+Wc3ljsx8G84Gu8g9jSb+nVXtGCpq1Qc0a1zGDmV12wju
         ZL4sBV6POAcnkRcIDc4J0IGUR4F5RTx25M+jo/VjoQ48SLkL1vXOPRWmIwqqOTkvgf/a
         9pECcjATZznFDIO1gvfwFZMyvhWmZhgobrrWz5BO+4CJ4K6FhNdW3AN9SqDLxbc1mnwm
         ja1A==
X-Gm-Message-State: AOJu0YxZkG9cr/NIuq94U/iMSM8USqZLBRnN8tvHrsNWBl+beOcrsPCg
	Erw+HgodJBtY+Y9Am/UHVsAu6/BAxNE5pbpZ3quGiw==
X-Google-Smtp-Source: AGHT+IH/pqOJSGAUpimWG1P472lbC+Hea49S/OE3uBkgKRUitvR9pB1D0mSrJquRil0M1gwvWAx/gEyoiscMqY9skRo=
X-Received: by 2002:a05:6a20:4286:b0:159:e0b9:bd02 with SMTP id
 o6-20020a056a20428600b00159e0b9bd02mr25980791pzj.40.1697096419671; Thu, 12
 Oct 2023 00:40:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org> <20231011184823.443959-19-peter.griffin@linaro.org>
In-Reply-To: <20231011184823.443959-19-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 12 Oct 2023 02:40:07 -0500
Message-ID: <CAPLW+4mX5bK7zxpxS_1a5Gi1gG8UFRDpMehnSxxXibTFCn_Txg@mail.gmail.com>
Subject: Re: [PATCH v3 18/20] arm64: dts: google: Add initial Oriole/pixel 6
 board support
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	cw00.choi@samsung.com, tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	saravanak@google.com, willmcvicker@google.com, soc@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org, 
	kernel-team@android.com, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 11, 2023 at 1:49=E2=80=AFPM Peter Griffin <peter.griffin@linaro=
.org> wrote:
>
> Add initial board support for the Pixel 6 phone code named Oriole. This
> has been tested with a minimal busybox initramfs and boots to a shell.
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  arch/arm64/boot/dts/google/Makefile         |  4 ++
>  arch/arm64/boot/dts/google/gs101-oriole.dts | 79 +++++++++++++++++++++
>  2 files changed, 83 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/google/Makefile
>  create mode 100644 arch/arm64/boot/dts/google/gs101-oriole.dts
>
> diff --git a/arch/arm64/boot/dts/google/Makefile b/arch/arm64/boot/dts/go=
ogle/Makefile
> new file mode 100644
> index 000000000000..5cea8ff27141
> --- /dev/null
> +++ b/arch/arm64/boot/dts/google/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +dtb-$(CONFIG_ARCH_GOOGLE_TENSOR) +=3D \
> +       gs101-oriole.dtb \
> diff --git a/arch/arm64/boot/dts/google/gs101-oriole.dts b/arch/arm64/boo=
t/dts/google/gs101-oriole.dts
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

Why is this needed? Is that really not possible to build this board
dts as actual dtb, not dtbo (and remove this 'plugin' line)? If GS
bootloader is similar to Exynos850 bootloader, it should be possible
to only use dtb, and flash empty dtbo image. Just a thought.

> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include "gs101-pinctrl.h"
> +#include "gs101.dtsi"
> +
> +/ {
> +       model =3D "Oriole";
> +       compatible =3D "google,gs101-oriole", "google,gs101";
> +
> +       chosen {
> +               bootargs =3D "earlycon=3Dexynos4210,mmio32,0x10A00000 con=
sole=3DttySAC0";

Why is that earlycon is needed here? The serial should work fine (and
actually even better) without that. Might be very useful for debugging
though, but in production dts I'd remove that bit. Also, not sure why
console is needed. Isn't it enough to just have something like:

        stdout-path =3D &serial_0;

inside of /chosen node?

Btw, why isn't serial node enabled somewhere in this dts?

> +       };
> +
> +       gpio-keys {
> +               compatible =3D "gpio-keys";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&key_voldown &key_volup &key_power>;
> +
> +               button-vol-down {
> +                       label =3D "KEY_VOLUMEDOWN";
> +                       linux,code =3D <KEY_VOLUMEDOWN>;
> +                       gpios =3D <&gpa7 3 GPIO_ACTIVE_LOW>;
> +                       wakeup-source;
> +               };
> +
> +               button-vol-up {
> +                       label =3D "KEY_VOLUMEUP";
> +                       linux,code =3D <KEY_VOLUMEUP>;
> +                       gpios =3D <&gpa8 1 GPIO_ACTIVE_LOW>;
> +                       wakeup-source;
> +               };
> +
> +               button-power {
> +                       label =3D "KEY_POWER";
> +                       linux,code =3D <KEY_POWER>;
> +                       gpios =3D <&gpa10 1 GPIO_ACTIVE_LOW>;
> +                       wakeup-source;
> +               };
> +       };
> +};
> +
> +&pinctrl_1 {
> +       key_voldown: key-voldown-pins {
> +               samsung,pins =3D "gpa7-3";
> +               samsung,pin-function =3D <0xf>;
> +               samsung,pin-pud =3D <0>;

Here and further: maybe replace pid-function and pin-pud hard-coded
values with corresponding named constants?

> +               samsung,pin-drv =3D <GS101_PIN_DRV_2_5_MA>;
> +       };
> +
> +       key_volup: key-volup-pins {
> +               samsung,pins =3D "gpa8-1";
> +               samsung,pin-function =3D <0xf>;
> +               samsung,pin-pud =3D <0>;
> +               samsung,pin-drv =3D <GS101_PIN_DRV_2_5_MA>;
> +       };
> +};
> +
> +&pinctrl_0 {
> +       key_power: key-power-pins {
> +               samsung,pins =3D "gpa10-1";
> +               samsung,pin-function =3D <0xf>;
> +               samsung,pin-pud =3D <0>;
> +               samsung,pin-drv =3D <GS101_PIN_DRV_2_5_MA>;
> +       };
> +};
> +
> +&watchdog_cl0 {
> +       timeout-sec =3D <30>;

No status =3D "okay" here? The same question goes for wdt_cl1.

> +};
> --
> 2.42.0.655.g421f12c284-goog
>

