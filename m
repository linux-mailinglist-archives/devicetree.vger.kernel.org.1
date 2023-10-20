Return-Path: <devicetree+bounces-10493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 65ABE7D186B
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 23:48:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 167B6281CBF
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 21:48:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92BE82FE36;
	Fri, 20 Oct 2023 21:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fkQSFbeT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C849D2FE09
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 21:48:05 +0000 (UTC)
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com [IPv6:2607:f8b0:4864:20::f2e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D39AD75
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 14:48:00 -0700 (PDT)
Received: by mail-qv1-xf2e.google.com with SMTP id 6a1803df08f44-66d17fd450aso20427886d6.1
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 14:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697838479; x=1698443279; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/mBv1buCpcnwBc220mZjRsjDHmbRRP2xfyJ2lFdmR6s=;
        b=fkQSFbeTNaotD+CG4FKQHumTVggsF4QQ1QA1edAb3YoOcjsvemrDs8zsMNkGu8wPXk
         oAgYd+57Et82jKpaGhkZ75Y1hHIdDtaCiAA5rF8ge6XQaC4O9pD2CYSBjNz2uPwIn6tV
         sGHY4IrTsZcuOg6d+uCtLwqow3Iu/LVm/UHyHTUHRcYN5PNYRtTKiamZvH+raxvq+qgD
         8hM6sHMSRlABL5JBLc1XL9igXG0ZIoHslLimSfvDAcYpMUzkDwwdmJcjtSulMFPyYXd6
         O0iTtB1UJfvENqmACX6Z1BwL7l/Q+RC5Pt1a62/rxF1VRwMC0PyUI6ixz/gYgrUA24s8
         WmWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697838479; x=1698443279;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/mBv1buCpcnwBc220mZjRsjDHmbRRP2xfyJ2lFdmR6s=;
        b=eTVE6AeF9jFobgkY7c1JFY3s81z0NMUMw1woZJl9wek0iAMRPlRuJaipwuMQda/Otn
         ITFT2f74DxXTaxRJjuhQBEQT6jdd9VsSHQpz3Lcn14QvgV+pwmkV0iwBkgStYOTZQm4M
         XS/n2ILXf6WRYjVEbcuBTtMjwOURlZobyw3vyuv3f+dczs70hAtJxrNJzBC/ovv2sI51
         bLDJbhJLyKUrx1q/y6GIfpZkseDReqdUqzCd+uNx0NyqHRWgfxAfnl0kpUv619yjHW39
         3qIsDiFT/MaTcyjFLI5yiW0jenmdj/BmQimCw2b5GosN7A3mdBosIFGSM/96zqfc5H4t
         mSSw==
X-Gm-Message-State: AOJu0YwBFpRkM/eYulMnkQNMfFsbdXwpv74Ycjvb9RqJCuH3AOhS+In5
	IDVOMw3JtxzNilzG5QgAA0rF4Y9EQTHPQZDVEpZRTw==
X-Google-Smtp-Source: AGHT+IHQJ7x9/SuQ4EBTGwOQciXDqQRU/H0wUJap6zldAAHxxJLfRsl7IevqZUOUANlVf9xne6BrdF0f6OpD88sD5HM=
X-Received: by 2002:ad4:5dc2:0:b0:66d:9b63:72fb with SMTP id
 m2-20020ad45dc2000000b0066d9b6372fbmr2943620qvh.5.1697838479398; Fri, 20 Oct
 2023 14:47:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org>
 <20231011184823.443959-17-peter.griffin@linaro.org> <eca9feea-b4a6-438c-83c7-452e8fe388c6@app.fastmail.com>
In-Reply-To: <eca9feea-b4a6-438c-83c7-452e8fe388c6@app.fastmail.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 20 Oct 2023 22:47:47 +0100
Message-ID: <CADrjBPqPR54FqsdG1irrAYVn+Bkuc5hU3Vip7mUS8Aeq1b=JOw@mail.gmail.com>
Subject: Re: [PATCH v3 16/20] tty: serial: samsung: Add gs101 compatible and
 SoC data
To: Arnd Bergmann <arnd@arndb.de>
Cc: Rob Herring <robh+dt@kernel.org>, krzysztof.kozlowski+dt@linaro.org, 
	Michael Turquette <mturquette@baylibre.com>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Olof Johansson <olof@lixom.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Chanwoo Choi <cw00.choi@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	andre.draszik@linaro.org, Sam Protsenko <semen.protsenko@linaro.org>, saravanak@google.com, 
	William McVicker <willmcvicker@google.com>, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-watchdog@vger.kernel.org, 
	kernel-team@android.com, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Arnd,

On Thu, 12 Oct 2023 at 07:07, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Wed, Oct 11, 2023, at 20:48, Peter Griffin wrote:
> > Add serial driver data for Google Tensor gs101 SoC.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
>
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>

Thanks!

>
> While the patch is now correct, I would point out a few
> improvements we could make on top:
>
> > +static const struct s3c24xx_serial_drv_data gs101_serial_drv_data = {
> > +     EXYNOS_COMMON_SERIAL_DRV_DATA(),
> > +     /* rely on samsung,uart-fifosize DT property for fifosize */
> > +     .fifosize = { 0 },
> > +};
> > +
> >  #define EXYNOS4210_SERIAL_DRV_DATA (&exynos4210_serial_drv_data)
> >  #define EXYNOS5433_SERIAL_DRV_DATA (&exynos5433_serial_drv_data)
> >  #define EXYNOS850_SERIAL_DRV_DATA (&exynos850_serial_drv_data)
> > +#define GS101_SERIAL_DRV_DATA (&gs101_serial_drv_data)
>
> Since this is now actually correct for any Exynos variant that
> has the FIFO size listed in the DT, we could use a variable/macro
> name that leads itself to being used by future chips.

I've updated this to exynos_fifoszdt_serial_drv_data and
EXYNOS_FIFOSZDT_SERIAL_DRV_DATA in v4 and added a
comment that it is common struct for platforms that specify
uart,fifosize in DT.

I've also updated the YAML to make this a required property for
google,gs101-uart.

>
> There is also the question of whether we want to address the
> ordering bug for the other SoC types. The way I understand it,
> the .fifosize array logic is wrong because it relies on having
> a particular alias for each of the ports to match the entry in
> the array.
> For the exynosautov9, this would be trivially fixed
> by using the same data as gs101 (since it already lists the
> correct size in DT), but for the other ones we'd need a different
> logic.
>

It seems samsung,exynosautov9-uart is in the yaml bindings and
exynosautov9.dtsi but never actually made it into the driver. But
it could be added to the driver and made to use the common
exynos_fifoszdt_serial_drv_data mentioned above.

I think any new platform should specify this in DT as many of these
UARTs on newer Exynos are actually universal serial IPs which can
be UART, I2C or SPI which is board dependent. So having the fifosize
in the driver, based on a SoC compatible and relying on probe order
and DT aliases seems very prone to error.

regards,

Peter.

> > @@ -2688,6 +2696,9 @@ static const struct platform_device_id
> > s3c24xx_serial_driver_ids[] = {
> >       }, {
> >               .name           = "artpec8-uart",
> >               .driver_data    = (kernel_ulong_t)ARTPEC8_SERIAL_DRV_DATA,
> > +     }, {
> > +             .name           = "gs101-uart",
> > +             .driver_data    = (kernel_ulong_t)GS101_SERIAL_DRV_DATA,
> >       },
> >       { },
> >  };
>
> I just noticed that the platform_device_id array is currently
> only used for mach-crag6410, since everything else uses DT
> based probing. s3c64xx is scheduled for removal in early 2024
> (though no patch has been sent), and we can probably just
> remove all the atags/platform_device based code when that happens.
>
>       Arnd

