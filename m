Return-Path: <devicetree+bounces-30254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C0A827172
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 15:34:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC4A31F2340F
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 14:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A175CA42;
	Mon,  8 Jan 2024 14:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AqQNc60X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDB047785
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 14:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-680fa99a0a5so13971356d6.2
        for <devicetree@vger.kernel.org>; Mon, 08 Jan 2024 06:34:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704724460; x=1705329260; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6DI+q5qLC0m4S5PldegpNVIq+GhikISQElmsTEesw/w=;
        b=AqQNc60XX/MiguGhRC36yhDWITUPAs4zQf/W4e9Re6YcCk45J/1fPnwYmdzEpwttbN
         cTn+zbnnCcKYm+k7s8jw3C7PPosF5s7bK2+P/RiZgmv57M2NXYSEFMc6g9n0QvdWiiU1
         xTBUcvxI+rEXpZT6g2BsDW2z/UYbOVbr3Za+XeYJyGQ2JTznwzFz8tZo5KyoRm4Buqom
         Hd+DEmVGlF5lsfacOxXLtyKIhdDy8kaCqoCTUuiOvZrfgXM0tObdERC0JHFiIvdxt2qZ
         MEVnemsamXGZ6mxWwBgAnbue4oMwbnBMlSo5nmk8mMu/DrNTsfpU6o3rC1rc1JfJgXoB
         hZUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704724460; x=1705329260;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6DI+q5qLC0m4S5PldegpNVIq+GhikISQElmsTEesw/w=;
        b=E0Zk00ezqhKg0tfMkQJaX9VU7/VOIWDg5N9Vdkw5/xeaCM0nDGLwH4JHuedCHymWO/
         Hh4Fo1Cq3jQ+aQJRFofAUdqdE3ppXZpB33i/6IvovgJp7FmuNHdigtmrPgVzs4Ieo06U
         cpgpYnYLwHYqIwGqCt9h6DWWnkp2A6u7h6YhJ/T9Nvaba9sdhHSt9F4ZITBd0TRP7NRo
         UJlnD/2Lggru9hJmyL26j2Qx05cY4xazb9sIsPWN2zmak5akVtM+jBEnGqj69V/dsJSn
         73m/A0bqsgduwhqRGyyUIQ04WGe5FgFv2KaxambZFlRmqPc6P0l8EjuFgajlwxGVbKrH
         VkYA==
X-Gm-Message-State: AOJu0YyDxaUU76f93QWYUaxBOJqV8CSJoudWRSVhUyhoh04XVEG5eriB
	O8aWOQTYmvTZQF5aq4gPdyMayFmC2+gYuPM6HxSj+WUv7TnbpQ==
X-Google-Smtp-Source: AGHT+IElULHRVxMwPWLAqS1wTYQ8tyXEYos8JXKwiW8eupF+CZehujEPHiFYUOOCEgYWDpd7SlWd4g0/9Z3Fp0gzPWo=
X-Received: by 2002:a05:6214:c63:b0:680:ca9:6700 with SMTP id
 t3-20020a0562140c6300b006800ca96700mr5415286qvj.108.1704724460150; Mon, 08
 Jan 2024 06:34:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231228125805.661725-1-tudor.ambarus@linaro.org> <20231228125805.661725-7-tudor.ambarus@linaro.org>
In-Reply-To: <20231228125805.661725-7-tudor.ambarus@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 8 Jan 2024 14:34:08 +0000
Message-ID: <CADrjBPpkBe4FsTHMOnQ-RLBjDCFM_QW8QZ0uVn35aX_9uiuo1A@mail.gmail.com>
Subject: Re: [PATCH v2 06/12] tty: serial: samsung: add gs101 earlycon support
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, conor+dt@kernel.org, 
	andi.shyti@kernel.org, alim.akhtar@samsung.com, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, s.nawrocki@samsung.com, tomasz.figa@gmail.com, 
	cw00.choi@samsung.com, arnd@arndb.de, semen.protsenko@linaro.org, 
	andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-serial@vger.kernel.org, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"

Hi Tudor,

On Thu, 28 Dec 2023 at 12:58, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>
> The entire bus (PERIC) on which the GS101 serial resides only allows
> 32-bit register accesses. The reg-io-width dt property is disallowed
> for the "google,gs101-uart" compatible and instead the iotype is
> inferred from the compatible. Always set UPIO_MEM32 iotype for the
> gs101 earlycon.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>

That's a nice addition to avoid folks shooting themselves in the foot
when enabling earlycon.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>






> ---
> v2: update commit message
>
>  drivers/tty/serial/samsung_tty.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
> index 938127179acf..2fbaaf0e756b 100644
> --- a/drivers/tty/serial/samsung_tty.c
> +++ b/drivers/tty/serial/samsung_tty.c
> @@ -2812,6 +2812,17 @@ OF_EARLYCON_DECLARE(exynos4210, "samsung,exynos4210-uart",
>  OF_EARLYCON_DECLARE(artpec8, "axis,artpec8-uart",
>                         s5pv210_early_console_setup);
>
> +static int __init gs101_early_console_setup(struct earlycon_device *device,
> +                                           const char *opt)
> +{
> +       /* gs101 always expects MMIO32 register accesses. */
> +       device->port.iotype = UPIO_MEM32;
> +
> +       return s5pv210_early_console_setup(device, opt);
> +}
> +
> +OF_EARLYCON_DECLARE(gs101, "google,gs101-uart", gs101_early_console_setup);
> +
>  /* Apple S5L */
>  static int __init apple_s5l_early_console_setup(struct earlycon_device *device,
>                                                 const char *opt)
> --
> 2.43.0.472.g3155946c3a-goog
>

