Return-Path: <devicetree+bounces-186785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D546ADD4B5
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 18:13:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B9751945162
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 16:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A802D2E9753;
	Tue, 17 Jun 2025 16:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=criticallink.com header.i=@criticallink.com header.b="GHJxQwWa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356BF28B7CC
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 16:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750176042; cv=none; b=RdCjYNw6CQ9ZLMQ2o1pCtj/Oi2Hx6zbOOGlGAz2jNZRMabLFiy0ZF8cZuKu6nEoH2g+hrZYNlwKyGd0LCrINj6YYPt5ULF8iU1kkFkMBd5mg7ze7THVs9i+ffr4AwdBlM0TXqsGMJSvr/GqhP4xBIr9eoVTTAcv9+9pQalgFOeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750176042; c=relaxed/simple;
	bh=W7JBzyGEiWyG3iUqFnqbYQxPWXtvewFS5AESFU3ByKU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZmeQVO9SsAaWTytZj8wm8xHSb9bY0RyO+5N0pyd65t5A6rlGiDMSAiN4Toubmw/ktEfzSsXdkUKgu5xJoLGsw8PBYX7aEKwrbBVPP92bf2T5NOhu1dCtzub0wa4KCTHa0LONtNROHvafiPjazlnoD1sqaumyEwEvByJIsiILaFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=criticallink.com; spf=pass smtp.mailfrom=criticallink.com; dkim=pass (2048-bit key) header.d=criticallink.com header.i=@criticallink.com header.b=GHJxQwWa; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=criticallink.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=criticallink.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-553b51f5218so4234142e87.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google; t=1750176038; x=1750780838; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W5/cGEPVbEhGxogRtbymQogrM8PjeXwlGoZ+poOqYtw=;
        b=GHJxQwWaHO7ao9PkfJS/Y1JJoepAaUnCJ4H6H7dMQfz1l0e5mxD4iGz3+l9bP016FQ
         PRk784YkkmUYNPVkYHuRfD+jMvFbKwMHjDo5hZiEmXfqnXUgGzMaRRvGlPURgyc0RM3Z
         ry53Bug6Rxp2CkOLtCt9rtdWRIF1X7jJfOj5ujarf5aKo/K5X+Fbes30a6nNrTvXPLHw
         iZ0O9P3Q6a48QPiuhPh9QJbYnt9q9Et2+Z1kWCsxr4p/Lm2rQWXxQ0oBuRZBWyULAHvX
         nRW07HYBB8T5sdV75Sq0M1YJnhmXMSH3DWG9186VAywuBGOnXbkC4kcEfiR+lv2KHNel
         Gs5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750176038; x=1750780838;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W5/cGEPVbEhGxogRtbymQogrM8PjeXwlGoZ+poOqYtw=;
        b=Wtzf75/akn0ZKZiV17hJ3PXJlDKEOeY+KCmtZJiN0NoiATYKA2BsUcDRZQFl1irgFE
         0KPOu93uoUNgojGEIJs4VgQ/94pzVzE6anKTlI+i1oDJUb5sJBY66a/LDHz2bwYHuTH6
         EOQu/KxJrGyn2Vn9JhWdgzjhTUo6pvub1CChvx0D8dgkUtbsymjYqzzD07UtcqBxkGfj
         u2Sgr4eeBBGBIPUuAhvH0BnG+eDXjVJjT3yiUUiRpNPv88oZuu7z/l9IYCEap+o+lTAQ
         gf1i/6G3jlRAKe3T0YGKn3W1mx4EKc2AJR8LWnbyWcLBZva2R9opEnL6k5E0ZL5N3AD0
         cITA==
X-Forwarded-Encrypted: i=1; AJvYcCWZ90WSM63XHPXVQbGfrlvvRUDFLsyJY7MQiy0csVjghkpfdOIPn2BBE01q790kVKbO4jzMmMkHhAcF@vger.kernel.org
X-Gm-Message-State: AOJu0YwvubgbaZPAcrc7vhPf7YL7xnN77i8CNUkD5/yUwuBkA9xuNNvt
	U95EIqsa0lNxR/4IQAkFZXTl4limBNA/flOdkwWV1bkuzvc5yDduojADXdOOIJZJJMhUrIlXseZ
	t8cigE2UsqL0HtVZQUZLWsFW6KbqDsB+H8VjHsl/y
X-Gm-Gg: ASbGncul0BPnG61NMvanmSIYoA60n9NJDtcW7Q0rM3wXRY4xy3JTH5ivqtsrQDZGC1L
	4sBmlra5fP1jhwD41XlS2eorpnHcA9Ux/YJCswAljzJlk9ssJlT0325TBX5WbI6e1NmPFrHYn2u
	rSh52dEDYV3bpHLK5gQ3bK5wz3fBtFORoag0UbeZS//g==
X-Google-Smtp-Source: AGHT+IFU6tCYFX6rLeU4r4jG0o0LNAOKh0+H2zldYWfLL3X1Bkf7DM2a/8Myo0nP66Ti4vOwJ0PRhThhpF6KiIE+j4Y=
X-Received: by 2002:a05:6512:118e:b0:553:65bc:4232 with SMTP id
 2adb3069b0e04-553b6f0adb5mr3806046e87.31.1750176038169; Tue, 17 Jun 2025
 09:00:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250520-linux-stable-tps6594-pwrbutton-v1-0-0cc5c6e0415c@criticallink.com>
 <20250520-linux-stable-tps6594-pwrbutton-v1-3-0cc5c6e0415c@criticallink.com> <20250613141105.GG897353@google.com>
In-Reply-To: <20250613141105.GG897353@google.com>
From: Job Sava <jsava@criticallink.com>
Date: Tue, 17 Jun 2025 12:00:27 -0400
X-Gm-Features: Ac12FXwfPKT9YJfCDfUDOTDxW57qAjgmoI3NzvLaV0dDRdDqEIP6JAr4MAEbwyU
Message-ID: <CAKMwjwT-74=QRqH_ML9PMe6Bfq8WCJgxoYBjFFegH8EvGMamQA@mail.gmail.com>
Subject: Re: [PATCH 3/3] mfd: tps6594: Adds support for powering off the PMIC
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Julien Panis <jpanis@baylibre.com>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
	jcormier@criticallink.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 13, 2025 at 10:11=E2=80=AFAM Lee Jones <lee@kernel.org> wrote:
>
> On Tue, 20 May 2025, Job Sava wrote:
>
> > When the FSM_I2C_TRIGGER register's bit 0 is set it triggers TRIGGER_I2=
C_0
> > and the PMIC is transitioned to the STANDBY state
> > (table 6-18: SLVSGG7 =E2=80=93 DECEMBER 2023).
> >
> > An ON request is required to transition from STANDBY to ACTIVE.
> >
> > Signed-off-by: Job Sava <jsava@criticallink.com>
> > ---
> >  drivers/mfd/tps6594-core.c | 24 ++++++++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> >
> > diff --git a/drivers/mfd/tps6594-core.c b/drivers/mfd/tps6594-core.c
> > index 1b0b3d1bf6c4..f4c434c0d87a 100644
> > --- a/drivers/mfd/tps6594-core.c
> > +++ b/drivers/mfd/tps6594-core.c
> > @@ -10,6 +10,7 @@
> >  #include <linux/interrupt.h>
> >  #include <linux/module.h>
> >  #include <linux/of.h>
> > +#include <linux/reboot.h>
> >
> >  #include <linux/mfd/core.h>
> >  #include <linux/mfd/tps6594.h>
> > @@ -615,6 +616,19 @@ static int tps6594_enable_crc(struct tps6594 *tps)
> >       return ret;
> >  }
> >
> > +static int tps6594_soft_shutdown(struct tps6594 *tps)
>
> Why do you have a whole separate function that itself is only called
> once and only conducts a single one call to one other function?

I copied this code from the tps65219 pmic driver, which setup the
functions in this way. I will merge the two functions.

>
> > +{
> > +     return regmap_update_bits(tps->regmap, TPS6594_REG_FSM_I2C_TRIGGE=
RS,
> > +                             TPS6594_BIT_TRIGGER_I2C(0),
> > +                             TPS6594_BIT_TRIGGER_I2C(0));
> > +}
> > +
> > +static int tps6594_power_off_handler(struct sys_off_data *data)
> > +{
> > +     tps6594_soft_shutdown(data->cb_data);
> > +     return NOTIFY_DONE;
> > +}
> > +
> >  int tps6594_device_init(struct tps6594 *tps, bool enable_crc)
> >  {
> >       struct device *dev =3D tps->dev;
> > @@ -623,6 +637,7 @@ int tps6594_device_init(struct tps6594 *tps, bool e=
nable_crc)
> >       const struct mfd_cell *cells;
> >       int n_cells;
> >       bool pwr_button;
> > +     bool system_power_controller;
> >
> >       if (enable_crc) {
> >               ret =3D tps6594_enable_crc(tps);
> > @@ -681,6 +696,15 @@ int tps6594_device_init(struct tps6594 *tps, bool =
enable_crc)
> >                       return dev_err_probe(dev, ret, "Failed to add RTC=
 child device\n");
> >       }
> >
> > +     system_power_controller =3D of_property_read_bool(dev->of_node, "=
system-power-controller");
> > +     if (system_power_controller) {
> > +             ret =3D devm_register_power_off_handler(tps->dev,
> > +                                                             tps6594_p=
ower_off_handler,
> > +                                                             tps);
>
> This alignment is odd.

Will have this fixed for the next patch.

>
> > +             if (ret)
> > +                     return dev_err_probe(dev, ret, "Failed to registe=
r power-off handler\n");
> > +     }
> > +
> >       return 0;
> >  }
> >  EXPORT_SYMBOL_GPL(tps6594_device_init);
> >
> > --
> > 2.43.0
> >
>
> --
> Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]

Thank you
-Job

