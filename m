Return-Path: <devicetree+bounces-25468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B22813511
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:43:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 78964B20FD6
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A012D5D8F8;
	Thu, 14 Dec 2023 15:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LElnosvI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDFC8121
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 07:43:04 -0800 (PST)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-6cebbf51742so616542b3a.1
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 07:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702568584; x=1703173384; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vrf71zeRoakCOirikHCZQN6uP6xeWPqt6djJMiGmq4s=;
        b=LElnosvI9dDxlQWUhLtNohHhPJzSIq9wY+2LBzHamZTeXWc/xwW43NFTUa4RKA6iUO
         n6G/6elc0MawwhAb8VWtFKjN8tHdCRtjB5Gs4g/HRM61Un7wRKXTdcS4SUyaWmI4668B
         MtvKtFlixzKWw90Yy7bye4FhuH22FX1s+ZxlvYiHYlDgGuNpa/6TAfcfek39pIDZ/e0J
         VL4qAkG8fTfz6mFbGHojsXkTazmTWJPFa50gOU7F/A/DAMjH7Sa+7KtgEqoppbTpD6Z9
         Lj7fZ5gNyc2N+++w031ripq92XoRtVHJgTkokvJDZqHnlPzvaLza7fjpCye7FmMCqW6X
         6ytA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702568584; x=1703173384;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vrf71zeRoakCOirikHCZQN6uP6xeWPqt6djJMiGmq4s=;
        b=IB5SWfI4695TjnsSEa+0lajKliWKr4iBplcnOjoegJGt4K+IEVefeyj3Rsbl4cjkv5
         U8nv90+pS5ViV3AiuLpGnd9392OBXG361EEBApeMHclt9KL6Iqh3r1qkllL1zOmoGXaf
         aEyGO9MS8JAl5z933Sinho6kGSMDFZ/nYXYwhiSWD7St50UfHDyjpv0yYT2iMQ0KIxVK
         w0YcrhxpEL7IpJnt/rurTbyEwyEymqmuAQhLjipc3Ag4CZtcggzINJ0C317CyKU7VivG
         u0E7ZLLxGsEygsgW0UEhpHgcR7tjI1uthyb1YwMB73QBo+I69NAuKVc3XYGlUSO7XXSH
         oDcg==
X-Gm-Message-State: AOJu0YxpplXn4E2eCziIWhf9mee7rdMm+I8yRytWadrUTocYw7fpw4Re
	5NVdOrJ2grxVJApYYwnxMG5F4HzOY1GHJKyavaP+dQ==
X-Google-Smtp-Source: AGHT+IE2jilk7oyFiidXwFcRC0piQwl6OP8nRC5rbBI5bUGmjT02Tn4mP2ogLRSB6Dh8EFxlAaTVDguaa4ZMpkPqCu8=
X-Received: by 2002:a05:6a00:bef:b0:6d0:96d2:f2f7 with SMTP id
 x47-20020a056a000bef00b006d096d2f2f7mr7169098pfu.3.1702568584185; Thu, 14 Dec
 2023 07:43:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231214105243.3707730-1-tudor.ambarus@linaro.org> <20231214105243.3707730-10-tudor.ambarus@linaro.org>
In-Reply-To: <20231214105243.3707730-10-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 14 Dec 2023 09:42:53 -0600
Message-ID: <CAPLW+4kzdsuHiPqFuCbgD+595Kg3+mM8ziXr+D3K0LvEQXF_rQ@mail.gmail.com>
Subject: Re: [PATCH 09/13] arm64: dts: exynos: gs101: update USI UART to use
 peric0 clocks
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: peter.griffin@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
	conor+dt@kernel.org, andi.shyti@kernel.org, alim.akhtar@samsung.com, 
	gregkh@linuxfoundation.org, jirislaby@kernel.org, catalin.marinas@arm.com, 
	will@kernel.org, s.nawrocki@samsung.com, tomasz.figa@gmail.com, 
	cw00.choi@samsung.com, arnd@arndb.de, andre.draszik@linaro.org, 
	saravanak@google.com, willmcvicker@google.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 4:53=E2=80=AFAM Tudor Ambarus <tudor.ambarus@linaro=
.org> wrote:
>
> Get rid of the dummy clock and start using the cmu_peric0 clocks
> for the usi_uart and serial_0 nodes.
>
> Tested the serial at 115200, 1000000 and 3000000 baudrates,
> everthing went fine.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
>  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/bo=
ot/dts/exynos/google/gs101.dtsi
> index d0b0ad70c6ba..ffb7b4d89a8c 100644
> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> @@ -180,14 +180,6 @@ HERA_CPU_SLEEP: cpu-hera-sleep {
>                 };
>         };
>
> -       /* TODO replace with CCF clock */
> -       dummy_clk: clock-3 {
> -               compatible =3D "fixed-clock";
> -               #clock-cells =3D <0>;
> -               clock-frequency =3D <12345>;
> -               clock-output-names =3D "pclk";
> -       };
> -
>         /* ect node is required to be present by bootloader */
>         ect {
>         };
> @@ -369,7 +361,8 @@ usi_uart: usi@10a000c0 {
>                         ranges;
>                         #address-cells =3D <1>;
>                         #size-cells =3D <1>;
> -                       clocks =3D <&dummy_clk>, <&dummy_clk>;
> +                       clocks =3D <&cmu_peric0 CLK_GOUT_PERIC0_CLK_PERIC=
0_USI0_UART_CLK>,
> +                                <&cmu_peric0 CLK_DOUT_PERIC0_USI0_UART>;

Why using DIV clock here? Usually all leaf clocks are GATE clocks (at
least it's so in Exynos850).

>                         clock-names =3D "pclk", "ipclk";
>                         samsung,sysreg =3D <&sysreg_peric0 0x1020>;
>                         samsung,mode =3D <USI_V2_UART>;
> @@ -381,7 +374,8 @@ serial_0: serial@10a00000 {
>                                 reg-io-width =3D <4>;
>                                 interrupts =3D <GIC_SPI 634
>                                               IRQ_TYPE_LEVEL_HIGH 0>;
> -                               clocks =3D <&dummy_clk 0>, <&dummy_clk 0>=
;
> +                               clocks =3D <&cmu_peric0 CLK_GOUT_PERIC0_C=
LK_PERIC0_USI0_UART_CLK>,
> +                                        <&cmu_peric0 CLK_DOUT_PERIC0_USI=
0_UART>;

Ditto.

>                                 clock-names =3D "uart", "clk_uart_baud0";
>                                 samsung,uart-fifosize =3D <256>;
>                                 status =3D "disabled";
> --
> 2.43.0.472.g3155946c3a-goog
>

