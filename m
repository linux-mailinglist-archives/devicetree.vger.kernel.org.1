Return-Path: <devicetree+bounces-8181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6987C6FF4
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 16:03:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66C3828294B
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 14:03:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCAC230D03;
	Thu, 12 Oct 2023 14:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gy88XDvv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512FA2E65E
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 14:03:50 +0000 (UTC)
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8917D7
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:03:48 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-d9a58f5f33dso1084967276.1
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697119428; x=1697724228; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=puIzhyS5gW8rbBXjq7G5YhTTPZWWF1R9uTZ424mIyo8=;
        b=Gy88XDvvmkXt+pXJa4u5QHliGDqbu6a4N7qgkEOzNtirQ3cRHpgJstqW/Ih3HderE6
         E948rl30Mcpi9qsC2I8KpD8ca9SoL+HpKhtd1DJFhND3BWiAzdyAUy+HW+8+RUdS68ss
         vrymLykl7dN2WI/agPO7Nj2TzfNEhd6+xgLjo7QP6cGEAIfSEaupeTk9eKG+kAQLWLig
         JkCHNViDQpeasr8lAD3gVs0gV52CbcBC99Df2hgvg5sb8YQfoVkx5CF80x0X3kIR70cZ
         1QJxUA06eZdaqlTFg0v7KviQe3pQ+btL2XXzKUJUdeQrtHY0UyYnokhjlC1iKefiex74
         0sWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697119428; x=1697724228;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=puIzhyS5gW8rbBXjq7G5YhTTPZWWF1R9uTZ424mIyo8=;
        b=jxxSAhMiCVa/i3q2twFxnmvfQztBXzzYhi7jF561XFxCPko+pQAdgB3q48bCEdNXxf
         r7Iuuc+ITVl0/JIAjmyz2x6zAQS2BuKgql36lCOYmI08WlAllzU//peiaJBuqscciWxw
         hMiH9IfRGmomDnNBaDnGjOxyjMfztIIYQ25OcUqXu5fQlf6LV5dtwPGSPKBzBBt3hjvE
         46TRpiZo4Uk4j+U+6NDBHGP+c/9AaXl+b023+d/s7VXnfdK48gzia40r+VspFtWI9ZzH
         NZJKZnamJAxHJrOqU6MjLVKZUsZn0jcLXF3h5tTZpGooVo0cix4u5GD86AD2lQr7UoFb
         Y7pw==
X-Gm-Message-State: AOJu0YyZzMR1yGtbO0tbsfbgIEITOBqOGpXuiHxJ21t+kkzLAz/S3EJc
	v71aN9GAxAg+1HPF59fIORMkbXLluaz0BIXOFpzkyQ==
X-Google-Smtp-Source: AGHT+IEGxOAHYxFWe5zN7VMnBZpra60R5/a8mbnM6JL9voxiaeBEv75YfHq+VJXGhKSFvI92pIjqpWnDeQDRoREZX68=
X-Received: by 2002:a5b:40b:0:b0:d5c:1b9b:6f5a with SMTP id
 m11-20020a5b040b000000b00d5c1b9b6f5amr20283517ybp.44.1697119427708; Thu, 12
 Oct 2023 07:03:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org>
 <20231011184823.443959-17-peter.griffin@linaro.org> <ccd0d092-8ae5-4033-96cf-5ba37e175e0c@linaro.org>
In-Reply-To: <ccd0d092-8ae5-4033-96cf-5ba37e175e0c@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 12 Oct 2023 15:03:35 +0100
Message-ID: <CADrjBPpUt-PShY4Wm9UWK7ZxujYsm7DoNUY67tzUMAp33BVY=w@mail.gmail.com>
Subject: Re: [PATCH v3 16/20] tty: serial: samsung: Add gs101 compatible and
 SoC data
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	cw00.choi@samsung.com, tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Krzysztof,

On Thu, 12 Oct 2023 at 07:26, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 11/10/2023 20:48, Peter Griffin wrote:
> > Add serial driver data for Google Tensor gs101 SoC.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  drivers/tty/serial/samsung_tty.c | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
> > index 07fb8a9dac63..26bc52e681a4 100644
> > --- a/drivers/tty/serial/samsung_tty.c
> > +++ b/drivers/tty/serial/samsung_tty.c
> > @@ -2597,14 +2597,22 @@ static const struct s3c24xx_serial_drv_data exynos850_serial_drv_data = {
> >       .fifosize = { 256, 64, 64, 64 },
> >  };
> >
> > +static const struct s3c24xx_serial_drv_data gs101_serial_drv_data = {
> > +     EXYNOS_COMMON_SERIAL_DRV_DATA(),
> > +     /* rely on samsung,uart-fifosize DT property for fifosize */
>
> It's an optional property, so you cannot rely on it.

Is it possible to make it a mandatory DT property for certain SoCs?

>
> > +     .fifosize = { 0 },

I can update this to 256, and we can add more sizes as we enable other
UARTs I suppose.

What's the purpose of having fifosize specified in DT and in *_serial_drv_data?

Thanks,

Peter

