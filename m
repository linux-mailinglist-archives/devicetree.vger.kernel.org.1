Return-Path: <devicetree+bounces-6583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EE77BBE2F
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 19:58:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46A1C1C20A0C
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 17:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B17347D2;
	Fri,  6 Oct 2023 17:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NuTJnx0K"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7F5341BB
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 17:58:03 +0000 (UTC)
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA65AC5;
	Fri,  6 Oct 2023 10:58:00 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-77433d61155so150058585a.2;
        Fri, 06 Oct 2023 10:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696615080; x=1697219880; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lLvfcfjTt5FPbCb7jmi7H5VpIo6AQyBiwiFzkClCnXo=;
        b=NuTJnx0KUR8WGCoC5tM6KKfeOWNYQDq+YWTv/GJ9ntuw8fyxSfH+3isYbwnLC9xe/6
         SnHs7eHZOS46dCAEru3aCMoUAgLzhXGk05h3HaMxeHzZSNr38LwPWvC3EW4ave56p7/c
         VJ0cgon6vWR+HvgrFOtNKLfRmdFSnUhQRsNfBXnSbg2Q5dnH+h1VowjxvG3dMC/GQpjM
         LqwZMtIfrR1YRmFhghqm6QGJzOmurRxsRog9YUtfUDw4z4Jhpbs/OK8OdSqOkr1RZiBX
         B2wV/WhPNgnrd0jKvahge/ie2DmhdRGsJ8poPvsqmGa2XyJr8MzMqavojxfA9SRKxglG
         BwhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696615080; x=1697219880;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lLvfcfjTt5FPbCb7jmi7H5VpIo6AQyBiwiFzkClCnXo=;
        b=U3QywjadlqiwiBtK2og6wMmCf+5x+2PqwMR7Nnj09rhDsVlGEbjZKrf0p0JPzB7vvZ
         12C311wS7gEQxd594w0L8D6CzSAk64EL3kTUhKEN5KOQS0CmzRNjakkhBm9FL20c/Ec5
         +g9FMXhKbdRU9bRo1DkBe4qeNwnvOlBGKmEPXsGWLFAb/JaTzYKdOOHtd8VdygknJGTI
         7JOjhKKqIaNba+Ao1fbgJ+ngSupCY71XY/6Oxw2nFrOOxc7NpBfJTTAoVBDElirSyXoY
         x6XqOhR3voXx/IEptbmR3K80Mvcd7B+0+Si522GcT0ht1TO3oPB8BEAfm1QXJngNTICz
         cXvA==
X-Gm-Message-State: AOJu0YxczYdoA7HQTtAi2Hi9zplpCQibAxP2qUDrUb2GcDCXJ7vL/Djt
	8JShWLg2z8Kk464FHlcG8ZRYmGagxD4qUqjgfT2SKJPhFdM=
X-Google-Smtp-Source: AGHT+IEOBvsmsRBdXDPeJMHImtJpkRSdNhjXDv5yS6UjSRSIA/n51PsmjWr01IwPPVdGctOTNRLPhqS8TpubGLRqTbA=
X-Received: by 2002:a05:6214:5585:b0:626:f3d:9e46 with SMTP id
 mi5-20020a056214558500b006260f3d9e46mr9141180qvb.18.1696615079856; Fri, 06
 Oct 2023 10:57:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231006160437.15627-1-ddrokosov@salutedevices.com> <20231006160437.15627-4-ddrokosov@salutedevices.com>
In-Reply-To: <20231006160437.15627-4-ddrokosov@salutedevices.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 6 Oct 2023 20:57:23 +0300
Message-ID: <CAHp75VceobJuEnpQY2Hi1hrjTDCSa-zxi7zxaWt5-k9haGDFUg@mail.gmail.com>
Subject: Re: [PATCH v1 03/11] leds: aw200xx: support HWEN hardware control
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: lee@kernel.org, pavel@ucw.cz, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, kernel@sberdevices.ru, 
	rockosov@gmail.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-leds@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Oct 6, 2023 at 7:04=E2=80=AFPM Dmitry Rokosov
<ddrokosov@salutedevices.com> wrote:
>
> HWEN is hardware control, which is used for enable/disable aw200xx chip.
> It's high active, internally pulled down to GND.
>
> After HWEN pin set high the chip begins to load the OTP information,
> which takes 200us to complete. About 200us wait time is needed for
> internal oscillator startup and display SRAM initialization. After
> display SRAM initialization, the registers in page1 to page5 can be

pages 1 to 5


> configured via i2c interface.

...

> +#include <linux/of_gpio.h>

Definitely not.

Use agnostic APIs.

...

> @@ -116,6 +117,7 @@ struct aw200xx {
>         struct mutex mutex;

>         u32 num_leds;
>         u32 display_rows;
> +       int hwen;
>         struct aw200xx_led leds[];

Side note: add a patch to use __counted_by() here.

>  };

...

> +       if (!gpio_is_valid(chip->hwen))

Absolutely not. You may not use legacy GPIO APIs.

> +               return;
> +
> +       gpio_set_value(chip->hwen, 1);

Ditto.

...

> +       usleep_range(400, 500);

fsleep() ?

...

> +static void aw200xx_disable(const struct aw200xx *const chip)
> +{
> +       if (gpio_is_valid(chip->hwen))
> +               gpio_set_value(chip->hwen, 0);
> +}

As per above.

...

> +static void aw200xx_probe_hwen(struct device *dev, struct aw200xx *chip)
> +{
> +       chip->hwen =3D of_get_named_gpio(dev->of_node, "awinic,hwen-gpio"=
, 0);
> +       if (gpio_is_valid(chip->hwen))
> +               if (devm_gpio_request_one(dev, chip->hwen, GPIOF_OUT_INIT=
_HIGH,
> +                                         "AW200XX HWEN")) {
> +                       dev_warn(dev, "Can't request gpio %d, tag it inva=
lid\n",
> +                                chip->hwen);
> +                       chip->hwen =3D -EINVAL;
> +               }
> +}

Please, rewrite this completely using supported APIs and not
deprecated or obsolete ones.

--=20
With Best Regards,
Andy Shevchenko

