Return-Path: <devicetree+bounces-3135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5537AD6AD
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:08:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 153931C2039F
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 11:08:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D1D018E01;
	Mon, 25 Sep 2023 11:08:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6D918AE7
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 11:08:35 +0000 (UTC)
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C3ACC0;
	Mon, 25 Sep 2023 04:08:35 -0700 (PDT)
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-57b72cef02bso2620197eaf.2;
        Mon, 25 Sep 2023 04:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695640114; x=1696244914; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KhksRDH5+3gqX7xxC5k77QH+a4l6ggBxkAUvbHIGKz0=;
        b=nEQLn/FDGU+Iop6gChSODERS3OcXfZmBewzE+Y1vdp5NPoKv2C9GwO6b2iv6p3FXb/
         AbrOpukAzvCXxEssVjmVvkXZ/XPViYgW8guqngZSQ4oKvODeEZ63NqezU5L32SL4t8Ig
         J19UOUYBOsF8ny/Uuz0Zr8jmo7wxo2LW0mOqwV1ZLW4K/y5AF6CzI780jFXmlnjk23XU
         l0K54k9K8uFtdmvgaw7f30yNsnMr8TrCG5GIqqX/RKyC/8eIWZzno8rkldPQep5TWjqV
         jPpMWaU/PLpVo3NjZBQYzny1wl33z2h6Tz8l2HExoqqmZeEz+fx5Dg8JKzg69ApYhbFL
         FMpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695640114; x=1696244914;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KhksRDH5+3gqX7xxC5k77QH+a4l6ggBxkAUvbHIGKz0=;
        b=YeprHjTkbZUdADGe9NKzaaS+cBwA61rVXiahdWDjp7mc6ghsFjum3BgmeKPJFYxpUD
         Ua4CPMNgV2FvgTZuRb5CfD3hiEn+f7f25We+0Aqj7FzDHwdBQG7NexFh+41G8dFyLbQs
         fMs12uAmTYPZeEQguxkhQhrtX485PTvmKq+3CmfCqaLfuZh7WkCP0/iUqs2bNqJUHWD8
         JYjctfrfzMs4fHkToCpRPCkYfBgOFWeoUXUHGL8UyPGwXUOxX/EEKtak1GW1dXirGFE8
         WpUgB4M5GWoi0V3vDVLV5vdjgCbJ+ETNxVnLIp59Iy9yfz+sGc3zjoJS+Jk/st+cqShe
         +siQ==
X-Gm-Message-State: AOJu0YxxATgr/uB8dMk5cwM8AHjdyazxYJ0DtHZahki3OhhAhOLyYVj8
	bvQY+uX8cQNv5qxvdWBE29fcGKzzIFinLcfAV08=
X-Google-Smtp-Source: AGHT+IFBgmxC31xNGXnzyqamskZ+s2s9UQR4bCjAqXcXs6+kWLWrWojSJeEx88cBC3xxQ/DWK8+ElGzFm+N4jg4xWsE=
X-Received: by 2002:a4a:6c03:0:b0:57b:cbc2:79ff with SMTP id
 q3-20020a4a6c03000000b0057bcbc279ffmr1999532ooc.4.1695640114280; Mon, 25 Sep
 2023 04:08:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230924222559.2038721-1-andreas@kemnade.info> <20230924222559.2038721-3-andreas@kemnade.info>
In-Reply-To: <20230924222559.2038721-3-andreas@kemnade.info>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 25 Sep 2023 14:07:58 +0300
Message-ID: <CAHp75VfvmED4ZsmrH4B6m9kGsH=68-zjQd5JMszb6UBTtbF0bw@mail.gmail.com>
Subject: Re: [PATCH 2/3] iio: imu: mpu6050: add level shifter flag
To: Andreas Kemnade <andreas@kemnade.info>
Cc: jic23@kernel.org, lars@metafoo.de, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, bcousson@baylibre.com, 
	tony@atomide.com, jean-baptiste.maneyrol@tdk.com, chenhuiz@axis.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 1:26=E2=80=AFAM Andreas Kemnade <andreas@kemnade.in=
fo> wrote:
>
> Some boards fail in magnetometer probe if flag is not set.

Which flag? Can you elaborate a bit more?

Does it deserve the Fixes tag?

...

>         unsigned int val;
>         int ret;

> +       ret =3D regmap_update_bits(st->map, 0x1, 0x80,
> +                                st->level_shifter ? 0x80 : 0);

This is a bit cryptic, what does 1 stand for?

Also

  unsigned int mask =3D BIT(7);
  ...
  val =3D st->level_shifter ? mask : 0;

> +       if (ret)
> +               return ret;

...
> +       st->level_shifter =3D device_property_present(dev,
> +                                                   "invensense,level-shi=
fter");

It was a recommendation to use _read_bool() when reading the value,
while the result will be the same.

--
With Best Regards,
Andy Shevchenko

