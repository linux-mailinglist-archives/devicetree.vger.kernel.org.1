Return-Path: <devicetree+bounces-17674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 996137F3636
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 19:39:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50B53282425
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 18:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1F4F20DE0;
	Tue, 21 Nov 2023 18:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vhjcE2L7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEDE618C
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 10:39:51 -0800 (PST)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6cbb71c3020so35221b3a.1
        for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 10:39:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700591991; x=1701196791; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=88OBIvtQUDQ1J1FmUcJfKPLmP+A7EipGuNLwHhkdaGU=;
        b=vhjcE2L70b7fEIeQj3RFPAos3AZThXpuUpuMqlL0V3d824VIM7LzaLggbN+qNPIYLA
         vaYV1ySV9Ia80oicki4TtcN8cAU7BBDHI9DNVvqcaLSjCxmCQUOrF0fAkfrENfLLZeDE
         CuzwuqRUTmXUXG/9FgA1d3NFYIoMSq5H6+IZR8vlKK3W1c7a/XbwX5C2L2Wiq/bH7zM2
         bwxhyOBY1DSN8nxlF79EmK23fMn7tGkI6g2UMENeHszNem6fSGrq9VQkfcRVwPdhgu0Z
         445BfSMe/l4ogf2NJLWWfq682NL/Q76V+1BV85xpvS1sj/NxUmZcmFEHsu3xGac3l6bk
         STeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700591991; x=1701196791;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=88OBIvtQUDQ1J1FmUcJfKPLmP+A7EipGuNLwHhkdaGU=;
        b=Ya9kpi2d9lUhlbh6zYfw6sLIvmXYzwjEPGdpiN6FJg7QHFPgxDgSPoY/keUqEgzjys
         9xphKr4a7o2Yo+eY1qUTae9h1uwlPcqEq/k02RCDsiufEhAwBXIcplY8bq9g6b+nHtxx
         1cZIzHDto1Si/gZFtqCPH2hKexh8I9gWZZ44y79lQSfG+IQeFGXIbjKolAp3LckmK4vh
         DWYuDUCVg9GLg1tLTg1b9eCoujJaMg8f1L5fcFW3xvbwt6+3bIV0C5hsbTlu+aUWM0CE
         cresnHL3+QvH/RCSpS7xILZY7OBMO39iFr+RK+AyOWPDUG6BdZCKWjez+sRAGGFnBYTU
         xCyw==
X-Gm-Message-State: AOJu0YyLFUsUwWxHeqPOsqovJpXg7tORBYWg/VA24zYl0sSsvBNiDuYP
	3mVmrdIqR0l2KJ1JfT1Ac+z6Zce8Z0szmNnZhCu3DQ==
X-Google-Smtp-Source: AGHT+IEhYaU4m2OTY3a0PI+MToJaIVcF/4UdYe32j14vCIjXKkqf40PVc53uZa36ibIBrkb58eNTKgucMjF0E4QOZMA=
X-Received: by 2002:a17:90b:4a87:b0:280:204e:9121 with SMTP id
 lp7-20020a17090b4a8700b00280204e9121mr277345pjb.23.1700591991220; Tue, 21 Nov
 2023 10:39:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231120212037.911774-1-peter.griffin@linaro.org> <20231120212037.911774-19-peter.griffin@linaro.org>
In-Reply-To: <20231120212037.911774-19-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 21 Nov 2023 12:39:40 -0600
Message-ID: <CAPLW+4k=M1q1thr2RXG4fGkvD51H7NxS1A3Ck+Up7W1nTcUPcw@mail.gmail.com>
Subject: Re: [PATCH v4 18/19] arm64: dts: exynos: google: Add initial
 Oriole/pixel 6 board support
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 20, 2023 at 3:21=E2=80=AFPM Peter Griffin <peter.griffin@linaro=
.org> wrote:
>
> Add initial board support for the Pixel 6 phone code named Oriole. This
> has been tested with a minimal busybox initramfs and boots to a shell.
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  arch/arm64/boot/dts/exynos/Makefile           |  2 +
>  arch/arm64/boot/dts/exynos/google/Makefile    |  4 +
>  .../boot/dts/exynos/google/gs101-oriole.dts   | 79 +++++++++++++++++++
>  3 files changed, 85 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/exynos/google/Makefile
>  create mode 100644 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
>
> diff --git a/arch/arm64/boot/dts/exynos/Makefile b/arch/arm64/boot/dts/ex=
ynos/Makefile
> index 6e4ba69268e5..44c24a8ad9e1 100644
> --- a/arch/arm64/boot/dts/exynos/Makefile
> +++ b/arch/arm64/boot/dts/exynos/Makefile
> @@ -1,4 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
> +subdir-y +=3D google
> +
>  dtb-$(CONFIG_ARCH_EXYNOS) +=3D \
>         exynos5433-tm2.dtb              \
>         exynos5433-tm2e.dtb             \
> diff --git a/arch/arm64/boot/dts/exynos/google/Makefile b/arch/arm64/boot=
/dts/exynos/google/Makefile
> new file mode 100644
> index 000000000000..0a6d5e1fe4ee
> --- /dev/null
> +++ b/arch/arm64/boot/dts/exynos/google/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +dtb-$(CONFIG_ARCH_EXYNOS) +=3D \
> +       gs101-oriole.dtb \
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/ar=
m64/boot/dts/exynos/google/gs101-oriole.dts
> new file mode 100644
> index 000000000000..111665490840
> --- /dev/null
> +++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
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

Now that the dts is being built as a dtb (not dtbo), I don' think this
/plugin/ bit is needed here?

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
> +       };
> +
> +       gpio-keys {
> +               compatible =3D "gpio-keys";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&key_voldown>, <&key_volup>, <&key_power>;
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
> +};
> --
> 2.43.0.rc1.413.gea7ed67945-goog
>

