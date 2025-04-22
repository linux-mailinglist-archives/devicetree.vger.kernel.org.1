Return-Path: <devicetree+bounces-169624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BAFA97A57
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 00:20:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E37AD17781D
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 22:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F37F2C2567;
	Tue, 22 Apr 2025 22:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="G/IMLca4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04702980B0
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 22:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745360430; cv=none; b=SCLz9bSuInNYiQHlL5xh55cR8BaTiKGqbLHQyo/NVqjMojmO5j3pHPblUU/tcnm5K23BXAuA9DzoxHhBZ3X3lFqMqsdTJ2+ANHZ0f5aCZSGpKrHNnCglJqPKV2kbBJvtahrQO7Cwc1nKNKAFHtSedcex5BUvjk60lI0bhoB8mCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745360430; c=relaxed/simple;
	bh=IhWiCysnU1O1r+4wj+Iyzx3Zk2b7ovIvXaDh8CZgsmw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WiH2g7rYvDzI5WbaVn80jzXFSM6zBrXWfnHyvlac1Y5vlsw/SY5zaXROYK547/YKkQQ+VK5HmMuNTHezkS2Y+DYAR1VwKLIY1ypiWZn4wSNnW2f7Fq9GbaVR8sTn+tsjgpHM7zY0Wd1PZG7WoJB1zozOly0W9gMIqF4egOdGX6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=G/IMLca4; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30bf1d48843so49813661fa.2
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 15:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745360426; x=1745965226; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/RisIZZpdy5KkKpBatFJsmDGzCJSoUPI5jtnZDaEF2M=;
        b=G/IMLca4C+vCqKpHP6ANkoy5FXR6RGCMX0egaW0sTYYX4g3tPQD5sLfOlDsG1MeRXO
         oKZMaEUle/jLLj2yPmFQakP0tmCSaJkcCRrAQqP5BRlxxpS/yntWAu1w/hVoA0kStac/
         GeFQrMkNUq7WTrbLnCLbXFTy3NwT+0yrWI3nk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745360426; x=1745965226;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/RisIZZpdy5KkKpBatFJsmDGzCJSoUPI5jtnZDaEF2M=;
        b=fSWEg78G3oRa/6aE2cpvBG4gRWnfpr+UtdZ/6COowVPts97sjnhjQM7f6qbw+7ALWq
         yJ6VxlHnTEvtkpM6lTazpXHVX9W7+jLL3QA+OY1hBrbdamhD89M/hkfy6aDznmEOgu0M
         YaiAq0UATZfXhHY9Q5A5gp4Cc3ZCi1iGk41G7frwWdHEe3u+T5jg3CA7OYMzBcKEDdrZ
         a7PvmdQcDaeNhoN+TRTxgMpIQrtS4oNDmtMfR+hyw9JIyJ+9Qf1eL8tRnxC+NAFfoave
         uUXYFVYlsnaSxPIkk4J5fhoawk/mPCHbe5KUJscysmqaolUafI9uwXMGRlKqpOZXvxHn
         wKWw==
X-Forwarded-Encrypted: i=1; AJvYcCWbPg5/ib/qoxbRc0xAoH8MKRtk7fFo138JO3O9XC1A+MVOBjwYWk1ykQTXoNZeKuvhm19G6YNIjPwY@vger.kernel.org
X-Gm-Message-State: AOJu0YyloIfHjzLCpPs598UxMNW4GvvZ0MdvVPitBtqJBm2ZAQe1x3Yw
	8M/Xfb6mCRrcVTt6mGKXKcxRcVJU0MHvhFpZGBDBQPJLhH/+Qu/zjrI2PrYMAj562SGiUvpGwN8
	=
X-Gm-Gg: ASbGncvm2MLV9nuyd2371ZJZOY2IyN7vtvYC1DJ/qZCE2mst+pDGmrZm0TE5SATdNXb
	Txjq3aoe1N2DxXH7nswuwV+DI4sCHrAGgoQdVneN7hblfzM81objdWWm7LbITJ+S0OCshx+QgJq
	JEcvCZEzMIDSEm0YwY7UyB0DBuvQYol+0xst0/fz2qniLq5S8UzKMpb4s6oLmPj+D+7X3zue2G/
	eWdU56BCZBCbwVoz4GUKno4tsAWJBFhSNZ+gCCeTMo3NCT3uo6/bJPxc1i1oT4CkvAHdTlabgMT
	thNw9p0k1AzejqvGxkvfpLpBk39/VBPFGmKbrw9IjrzesMfHNJMy6FW7C2sVwbWZzXYD2+dR6qS
	McZbeVc4=
X-Google-Smtp-Source: AGHT+IGK5cjYb6IQWd1WgYIh9Asl2j8gRrn7Cy7kDdCVI7NcoRrb0V48pDOea+Qm8araWykVSXppQA==
X-Received: by 2002:a05:651c:543:b0:307:9555:dc5e with SMTP id 38308e7fff4ca-310904b998dmr46528821fa.3.1745360426467;
        Tue, 22 Apr 2025 15:20:26 -0700 (PDT)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com. [209.85.208.181])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-310907838e0sm15779911fa.44.2025.04.22.15.20.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Apr 2025 15:20:24 -0700 (PDT)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-30bf1d48843so49813171fa.2
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 15:20:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU0W3w04pBOD+Yr27O166Wx4bWWn09Z03p1ZCtbTg/Wm/C80uBmB6ugcbeMimp4qmfPoErPk7kjytWa@vger.kernel.org
X-Received: by 2002:a2e:9fc2:0:b0:30d:e104:b67d with SMTP id
 38308e7fff4ca-31090564a9dmr51657691fa.40.1745360423509; Tue, 22 Apr 2025
 15:20:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250403-uvc-orientation-v1-0-1a0cc595a62d@chromium.org>
 <20250403-uvc-orientation-v1-6-1a0cc595a62d@chromium.org> <20250422212824.GQ17813@pendragon.ideasonboard.com>
In-Reply-To: <20250422212824.GQ17813@pendragon.ideasonboard.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Wed, 23 Apr 2025 06:20:09 +0800
X-Gmail-Original-Message-ID: <CANiDSCuOaZ9bnd20tGLWzOA7cGA2q+oKdGktvouT-8+cUkHF1w@mail.gmail.com>
X-Gm-Features: ATxdqUGIhjZvbmNCpbPrynHifQrHVxxDwsRGMfa0T4T_eCecFDTqz3Zdu3ccroM
Message-ID: <CANiDSCuOaZ9bnd20tGLWzOA7cGA2q+oKdGktvouT-8+cUkHF1w@mail.gmail.com>
Subject: Re: [PATCH 6/8] media: uvcvideo: Factor out gpio functions to its own file
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Hans de Goede <hdegoede@redhat.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Laurent

On Wed, 23 Apr 2025 at 05:28, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Ricardo,
>
> Thank you for the patch.
>
> Hans raised an issue on "[PATCH v3 2/8] media: uvcvideo: Factor out gpio
> functions to its own file" (part of "[PATCH v3 0/8] media: uvcvideo:
> Implement the Privacy GPIO as a evdev"), asking if GPIO handling should
> still use a uvc_entity if it moves to a evdev. There are implications on
> this series too. Unless I'm mistaken, I haven't seen a reply from you to
> my last e-mail. Can we please first finish that discussion ?

Are you referring to:
https://lore.kernel.org/all/0dfb780b-f2dc-43ed-a67d-afd5f50bb88f@redhat.com/
?

Is it an open discussion? I believe we agreed to remove the uvc_entity.

I posted v4 back in november. In that version I remove completely the
uvc_entity:
https://patchwork.linuxtv.org/project/linux-media/patch/20241125-uvc-subdev-v4-6-51e040599f1a@chromium.org/



Regardss
>
> On Thu, Apr 03, 2025 at 07:16:17PM +0000, Ricardo Ribalda wrote:
> > This is just a refactor patch, no new functionality is added.
> >
> > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > ---
> >  drivers/media/usb/uvc/Makefile     |   3 +-
> >  drivers/media/usb/uvc/uvc_driver.c | 121 +-----------------------------------
> >  drivers/media/usb/uvc/uvc_gpio.c   | 123 +++++++++++++++++++++++++++++++++++++
> >  drivers/media/usb/uvc/uvcvideo.h   |   6 ++
> >  4 files changed, 133 insertions(+), 120 deletions(-)
> >
> > diff --git a/drivers/media/usb/uvc/Makefile b/drivers/media/usb/uvc/Makefile
> > index 4f9eee4f81ab6436a8b90324a688a149b2c3bcd1..85514b6e538fbb8284e574ca14700f2d749e1a2e 100644
> > --- a/drivers/media/usb/uvc/Makefile
> > +++ b/drivers/media/usb/uvc/Makefile
> > @@ -1,6 +1,7 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >  uvcvideo-objs  := uvc_driver.o uvc_queue.o uvc_v4l2.o uvc_video.o uvc_ctrl.o \
> > -               uvc_status.o uvc_isight.o uvc_debugfs.o uvc_metadata.o
> > +               uvc_status.o uvc_isight.o uvc_debugfs.o uvc_metadata.o \
> > +               uvc_gpio.o
> >  ifeq ($(CONFIG_MEDIA_CONTROLLER),y)
> >  uvcvideo-objs  += uvc_entity.o
> >  endif
> > diff --git a/drivers/media/usb/uvc/uvc_driver.c b/drivers/media/usb/uvc/uvc_driver.c
> > index da24a655ab68cc0957762f2b67387677c22224d1..b52e1ff401e24f69b867b5e975cda4260463e760 100644
> > --- a/drivers/media/usb/uvc/uvc_driver.c
> > +++ b/drivers/media/usb/uvc/uvc_driver.c
> > @@ -8,7 +8,6 @@
> >
> >  #include <linux/atomic.h>
> >  #include <linux/bits.h>
> > -#include <linux/gpio/consumer.h>
> >  #include <linux/kernel.h>
> >  #include <linux/list.h>
> >  #include <linux/module.h>
> > @@ -792,8 +791,8 @@ static const u8 uvc_media_transport_input_guid[16] =
> >       UVC_GUID_UVC_MEDIA_TRANSPORT_INPUT;
> >  static const u8 uvc_processing_guid[16] = UVC_GUID_UVC_PROCESSING;
> >
> > -static struct uvc_entity *uvc_alloc_entity(u16 type, u16 id,
> > -             unsigned int num_pads, unsigned int extra_size)
> > +struct uvc_entity *uvc_alloc_entity(u16 type, u16 id, unsigned int num_pads,
> > +                                 unsigned int extra_size)
> >  {
> >       struct uvc_entity *entity;
> >       unsigned int num_inputs;
> > @@ -1242,122 +1241,6 @@ static int uvc_parse_control(struct uvc_device *dev)
> >       return 0;
> >  }
> >
> > -/* -----------------------------------------------------------------------------
> > - * Privacy GPIO
> > - */
> > -
> > -static void uvc_gpio_event(struct uvc_device *dev)
> > -{
> > -     struct uvc_entity *unit = dev->gpio_unit;
> > -     struct uvc_video_chain *chain;
> > -     u8 new_val;
> > -
> > -     if (!unit)
> > -             return;
> > -
> > -     new_val = gpiod_get_value_cansleep(unit->gpio.gpio_privacy);
> > -
> > -     /* GPIO entities are always on the first chain. */
> > -     chain = list_first_entry(&dev->chains, struct uvc_video_chain, list);
> > -     uvc_ctrl_status_event(chain, unit->controls, &new_val);
> > -}
> > -
> > -static int uvc_gpio_get_cur(struct uvc_device *dev, struct uvc_entity *entity,
> > -                         u8 cs, void *data, u16 size)
> > -{
> > -     if (cs != UVC_CT_PRIVACY_CONTROL || size < 1)
> > -             return -EINVAL;
> > -
> > -     *(u8 *)data = gpiod_get_value_cansleep(entity->gpio.gpio_privacy);
> > -
> > -     return 0;
> > -}
> > -
> > -static int uvc_gpio_get_info(struct uvc_device *dev, struct uvc_entity *entity,
> > -                          u8 cs, u8 *caps)
> > -{
> > -     if (cs != UVC_CT_PRIVACY_CONTROL)
> > -             return -EINVAL;
> > -
> > -     *caps = UVC_CONTROL_CAP_GET | UVC_CONTROL_CAP_AUTOUPDATE;
> > -     return 0;
> > -}
> > -
> > -static irqreturn_t uvc_gpio_irq(int irq, void *data)
> > -{
> > -     struct uvc_device *dev = data;
> > -
> > -     uvc_gpio_event(dev);
> > -     return IRQ_HANDLED;
> > -}
> > -
> > -static int uvc_gpio_parse(struct uvc_device *dev)
> > -{
> > -     struct uvc_entity *unit;
> > -     struct gpio_desc *gpio_privacy;
> > -     int irq;
> > -
> > -     gpio_privacy = devm_gpiod_get_optional(&dev->intf->dev, "privacy",
> > -                                            GPIOD_IN);
> > -     if (!gpio_privacy)
> > -             return 0;
> > -
> > -     if (IS_ERR(gpio_privacy))
> > -             return dev_err_probe(&dev->intf->dev,
> > -                                  PTR_ERR(gpio_privacy),
> > -                                  "Can't get privacy GPIO\n");
> > -
> > -     irq = gpiod_to_irq(gpio_privacy);
> > -     if (irq < 0)
> > -             return dev_err_probe(&dev->intf->dev, irq,
> > -                                  "No IRQ for privacy GPIO\n");
> > -
> > -     unit = uvc_alloc_entity(UVC_EXT_GPIO_UNIT, UVC_EXT_GPIO_UNIT_ID, 0, 1);
> > -     if (!unit)
> > -             return -ENOMEM;
> > -
> > -     unit->gpio.gpio_privacy = gpio_privacy;
> > -     unit->gpio.irq = irq;
> > -     unit->gpio.bControlSize = 1;
> > -     unit->gpio.bmControls = (u8 *)unit + sizeof(*unit);
> > -     unit->gpio.bmControls[0] = 1;
> > -     unit->get_cur = uvc_gpio_get_cur;
> > -     unit->get_info = uvc_gpio_get_info;
> > -     strscpy(unit->name, "GPIO", sizeof(unit->name));
> > -
> > -     list_add_tail(&unit->list, &dev->entities);
> > -
> > -     dev->gpio_unit = unit;
> > -
> > -     return 0;
> > -}
> > -
> > -static int uvc_gpio_init_irq(struct uvc_device *dev)
> > -{
> > -     struct uvc_entity *unit = dev->gpio_unit;
> > -     int ret;
> > -
> > -     if (!unit || unit->gpio.irq < 0)
> > -             return 0;
> > -
> > -     ret = request_threaded_irq(unit->gpio.irq, NULL, uvc_gpio_irq,
> > -                                IRQF_ONESHOT | IRQF_TRIGGER_FALLING |
> > -                                IRQF_TRIGGER_RISING,
> > -                                "uvc_privacy_gpio", dev);
> > -
> > -     unit->gpio.initialized = !ret;
> > -
> > -     return ret;
> > -}
> > -
> > -static void uvc_gpio_deinit(struct uvc_device *dev)
> > -{
> > -     if (!dev->gpio_unit || !dev->gpio_unit->gpio.initialized)
> > -             return;
> > -
> > -     free_irq(dev->gpio_unit->gpio.irq, dev);
> > -}
> > -
> >  /* ------------------------------------------------------------------------
> >   * UVC device scan
> >   */
> > diff --git a/drivers/media/usb/uvc/uvc_gpio.c b/drivers/media/usb/uvc/uvc_gpio.c
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..30e3e6dd22cbc9cfee420dde7f7f64dbdce499b9
> > --- /dev/null
> > +++ b/drivers/media/usb/uvc/uvc_gpio.c
> > @@ -0,0 +1,123 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +/*
> > + *      uvc_gpio.c  --  USB Video Class driver
> > + *
> > + *      Copyright 2025 Google LLC
> > + */
> > +
> > +#include <linux/kernel.h>
> > +#include <linux/gpio/consumer.h>
> > +#include "uvcvideo.h"
> > +
> > +static void uvc_gpio_event(struct uvc_device *dev)
> > +{
> > +     struct uvc_entity *unit = dev->gpio_unit;
> > +     struct uvc_video_chain *chain;
> > +     u8 new_val;
> > +
> > +     if (!unit)
> > +             return;
> > +
> > +     new_val = gpiod_get_value_cansleep(unit->gpio.gpio_privacy);
> > +
> > +     /* GPIO entities are always on the first chain. */
> > +     chain = list_first_entry(&dev->chains, struct uvc_video_chain, list);
> > +     uvc_ctrl_status_event(chain, unit->controls, &new_val);
> > +}
> > +
> > +static int uvc_gpio_get_cur(struct uvc_device *dev, struct uvc_entity *entity,
> > +                         u8 cs, void *data, u16 size)
> > +{
> > +     if (cs != UVC_CT_PRIVACY_CONTROL || size < 1)
> > +             return -EINVAL;
> > +
> > +     *(u8 *)data = gpiod_get_value_cansleep(entity->gpio.gpio_privacy);
> > +
> > +     return 0;
> > +}
> > +
> > +static int uvc_gpio_get_info(struct uvc_device *dev, struct uvc_entity *entity,
> > +                          u8 cs, u8 *caps)
> > +{
> > +     if (cs != UVC_CT_PRIVACY_CONTROL)
> > +             return -EINVAL;
> > +
> > +     *caps = UVC_CONTROL_CAP_GET | UVC_CONTROL_CAP_AUTOUPDATE;
> > +     return 0;
> > +}
> > +
> > +static irqreturn_t uvc_gpio_irq(int irq, void *data)
> > +{
> > +     struct uvc_device *dev = data;
> > +
> > +     uvc_gpio_event(dev);
> > +     return IRQ_HANDLED;
> > +}
> > +
> > +int uvc_gpio_parse(struct uvc_device *dev)
> > +{
> > +     struct uvc_entity *unit;
> > +     struct gpio_desc *gpio_privacy;
> > +     int irq;
> > +
> > +     gpio_privacy = devm_gpiod_get_optional(&dev->intf->dev, "privacy",
> > +                                            GPIOD_IN);
> > +     if (!gpio_privacy)
> > +             return 0;
> > +
> > +     if (IS_ERR(gpio_privacy))
> > +             return dev_err_probe(&dev->intf->dev,
> > +                                  PTR_ERR(gpio_privacy),
> > +                                  "Can't get privacy GPIO\n");
> > +
> > +     irq = gpiod_to_irq(gpio_privacy);
> > +     if (irq < 0)
> > +             return dev_err_probe(&dev->intf->dev, irq,
> > +                                  "No IRQ for privacy GPIO\n");
> > +
> > +     unit = uvc_alloc_entity(UVC_EXT_GPIO_UNIT, UVC_EXT_GPIO_UNIT_ID, 0, 1);
> > +     if (!unit)
> > +             return -ENOMEM;
> > +
> > +     unit->gpio.gpio_privacy = gpio_privacy;
> > +     unit->gpio.irq = irq;
> > +     unit->gpio.bControlSize = 1;
> > +     unit->gpio.bmControls = (u8 *)unit + sizeof(*unit);
> > +     unit->gpio.bmControls[0] = 1;
> > +     unit->get_cur = uvc_gpio_get_cur;
> > +     unit->get_info = uvc_gpio_get_info;
> > +     strscpy(unit->name, "GPIO", sizeof(unit->name));
> > +
> > +     list_add_tail(&unit->list, &dev->entities);
> > +
> > +     dev->gpio_unit = unit;
> > +
> > +     return 0;
> > +}
> > +
> > +int uvc_gpio_init_irq(struct uvc_device *dev)
> > +{
> > +     struct uvc_entity *unit = dev->gpio_unit;
> > +     int ret;
> > +
> > +     if (!unit || unit->gpio.irq < 0)
> > +             return 0;
> > +
> > +     ret = request_threaded_irq(unit->gpio.irq, NULL, uvc_gpio_irq,
> > +                                IRQF_ONESHOT | IRQF_TRIGGER_FALLING |
> > +                                IRQF_TRIGGER_RISING,
> > +                                "uvc_privacy_gpio", dev);
> > +
> > +     unit->gpio.initialized = !ret;
> > +
> > +     return ret;
> > +}
> > +
> > +void uvc_gpio_deinit(struct uvc_device *dev)
> > +{
> > +     if (!dev->gpio_unit || !dev->gpio_unit->gpio.initialized)
> > +             return;
> > +
> > +     free_irq(dev->gpio_unit->gpio.irq, dev);
> > +}
> > +
> > diff --git a/drivers/media/usb/uvc/uvcvideo.h b/drivers/media/usb/uvc/uvcvideo.h
> > index b4ee701835fc016474d2cd2a0b67b2aa915c1c60..aef96b96499ce09ffa286c51793482afd9832097 100644
> > --- a/drivers/media/usb/uvc/uvcvideo.h
> > +++ b/drivers/media/usb/uvc/uvcvideo.h
> > @@ -683,6 +683,8 @@ do {                                                                      \
> >   */
> >
> >  struct uvc_entity *uvc_entity_by_id(struct uvc_device *dev, int id);
> > +struct uvc_entity *uvc_alloc_entity(u16 type, u16 id, unsigned int num_pads,
> > +                                 unsigned int extra_size);
> >
> >  /* Video buffers queue management. */
> >  int uvc_queue_init(struct uvc_video_queue *queue, enum v4l2_buf_type type);
> > @@ -829,4 +831,8 @@ void uvc_debugfs_cleanup_stream(struct uvc_streaming *stream);
> >  size_t uvc_video_stats_dump(struct uvc_streaming *stream, char *buf,
> >                           size_t size);
> >
> > +/* gpio */
> > +int uvc_gpio_parse(struct uvc_device *dev);
> > +int uvc_gpio_init_irq(struct uvc_device *dev);
> > +void uvc_gpio_deinit(struct uvc_device *dev);
> >  #endif
> >
>
> --
> Regards,
>
> Laurent Pinchart



-- 
Ricardo Ribalda

