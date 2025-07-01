Return-Path: <devicetree+bounces-191403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D85CAEF27B
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 11:07:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A9A8B4457E3
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 09:04:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC57226D4E2;
	Tue,  1 Jul 2025 09:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Zrim28Nv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1218223716
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 09:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751360682; cv=none; b=P52Pof+XltgOwG8K25ECYMt/2d3i+aIJb7hrIzfccew2tADcOseTP0QD90lEYMRFpeZhv62liZb6Lfj5lmyphWA88pUOWlUOjICToGV7wnpwclrGfOY20I0OIUEkv9GyyovXo6rfTetymX069WS0FJTemciCfVprboYyuMvX5Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751360682; c=relaxed/simple;
	bh=o28C31JrBgAZEzAB1O4WLZDzarIKJHFMpSuZuTBwEc0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rNrwoTDS6SfIfY4kXIma69Wl0PX00iFVUELHJIco5KbmmR25WoMTep4v5iA41b+fGkvbF79uP/1oUcjKwttLtTv0Z2TOSPdoVeFeuI+8Mdp+EYBh7A0ARPEDkm48GlpgSC5PC8KNaol1Q8s8HsYc90QejWDM4a+AJBWkmdr2mwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Zrim28Nv; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-553bcf41440so5470962e87.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 02:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1751360679; x=1751965479; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xkMPKxlbdTBTKL3fl2oC7mwIlMxs96dPn8+iiFtM8yw=;
        b=Zrim28Nv00nzmp4uRo1Ibe+axaeRHmcg+ivcmqIMcgWa8xFVkursiUjEyz7vYIKaF0
         nXmS+nqQzm1V7j8thEe8pZjiKDErFV4Q9RPsSAUeInCdSZYN09HFC2N9AT07z1OCtfl7
         aPimB5SU42eTpn19hkY/kPJ4fokv7x+gWRdts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751360679; x=1751965479;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xkMPKxlbdTBTKL3fl2oC7mwIlMxs96dPn8+iiFtM8yw=;
        b=rgPb5HDclTBWCnEDN0yxOo2eBsvsUuuGPU+ZhGYIuaOZEv6LGjkRuXPZzxQqsB4ep6
         /ip20OibAY8YDOLD4rN6y2cBheRGyusHcSmTOAXcAWTRmnAZJFbZnzfDod6pwJEZl4fx
         JANJ0RDfMrO76yEXp4LknKmeMDV8tx6tqmkf31FrZVJV0UYEDruxRmwztIf33Jfo17FC
         Noj5lUbO1P8+lHros7Ov8fJOh6Dpwfa6eO1ZqJkm22sEi1auFdebZJ/GmsyUExdMvUX+
         rchmvZujAyNdwtGBGA8KmV+iHjp8T/bbAMkzrL5XxmZ77tX1LQsSjRl9x4rUAGcLZM3o
         bnNw==
X-Forwarded-Encrypted: i=1; AJvYcCViXQ/nGty1/26Mv7wrM3ThYwHRyyd5xnp7/g5yENHZO2USLAMMxz98jQ39eDW8C0lDLYZ7prwbBiXe@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6gCpGzZ/RfJFqeM574wMO/ZJPZZt+2m2R0H5m770Q03JtQgkE
	69E68JOk5Euj6b6cRgeWOSWBWU8L05vK2b+WPRtEsxE6dc7KfDBKyqqOkBGnIQTn+0GQc3fTgFa
	0foU=
X-Gm-Gg: ASbGnctHFX3mUKVAQjVjOn2uHXsAu9w8xAB10KOCks23nMswSwWYZigbW6PqZ/2XkhD
	urf3PiylbPQqlIRHQdZGjiXiBTBo7uqEmTL3Cgf9Dm4e3Il1ealwz6o449anFH80xeYa9TVncfE
	8K9cjTKa1Emv/6F+eRE4XhMOxL2qYtrxqAMUPpwZVsWRX9C5w8Vy+FjxJ6cN8NZc3ouBkmHCPPM
	qV+t5G0qCzodNnZsn/aAP+ZebeioiHggmPLG5NNwFG91b3p0ZdGe917YjFCcNCKvNqO0hTQmuG5
	Qbfi+WsirAcJygWBxNKy4ymRnwkqCSsoo1sSRSF8MF2EkjAIrUBAhCinE1on5G8PYBGsbOq99Ov
	OozYtYwnd7RUIN/z8xGZYahbr
X-Google-Smtp-Source: AGHT+IFSVnPJ1zn7W40zZOYK5hNcgYlmTcY2b5q5zSwnXIA+kMdqaym8p6pHHGBczGkpsB4GZRcDSw==
X-Received: by 2002:a05:6512:3b28:b0:553:5d4a:1ce4 with SMTP id 2adb3069b0e04-5550b85b411mr4932137e87.2.1751360678838;
        Tue, 01 Jul 2025 02:04:38 -0700 (PDT)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com. [209.85.167.44])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b2f2ef4sm1716330e87.254.2025.07.01.02.04.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 02:04:38 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-553bcf41440so5470945e87.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 02:04:38 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWEKfXhb3iQ/0azii9K8QH+EJAO4eWbQyNm3qIzaLeykDp+NgADUsY8XqAsFH/p7FlySlInsZ1jUOMG@vger.kernel.org
X-Received: by 2002:a05:6512:6c6:b0:553:cf7d:7283 with SMTP id
 2adb3069b0e04-5550b9ee0bemr5279219e87.33.1751360678000; Tue, 01 Jul 2025
 02:04:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250605-uvc-orientation-v2-0-5710f9d030aa@chromium.org>
 <20250605-uvc-orientation-v2-2-5710f9d030aa@chromium.org> <1ac49bd3-1b65-4611-8c90-92fb2c2ffd4a@linux.intel.com>
In-Reply-To: <1ac49bd3-1b65-4611-8c90-92fb2c2ffd4a@linux.intel.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 1 Jul 2025 11:04:25 +0200
X-Gmail-Original-Message-ID: <CANiDSCuRLVtT54ZxxAh6031OLg422VApsocvOTCOnavQgifTaA@mail.gmail.com>
X-Gm-Features: Ac12FXx3IMpNO_E1OyIfv6p5Mqhpq1vAIqrVG416DGyoC75C25dyBDZ2PZqW7zo
Message-ID: <CANiDSCuRLVtT54ZxxAh6031OLg422VApsocvOTCOnavQgifTaA@mail.gmail.com>
Subject: Re: [PATCH v2 02/12] media: v4l: fwnode: Support ACPI's _PLD for v4l2_fwnode_device_parse
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hdegoede@redhat.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Sakari

Thanks for your review!

On Mon, 30 Jun 2025 at 09:06, Sakari Ailus <sakari.ailus@linux.intel.com> wrote:
>
> Hi Ricardo,
>
> Thanks for the update.
>
> On 6/5/25 20:52, Ricardo Ribalda wrote:
> > Currently v4l2_fwnode_device_parse() obtains the orientation and
> > rotation via fwnode properties.
> >
> > Extend the function to support as well ACPI devices with _PLD info.
> >
> > We give a higher priority to fwnode, because it might contain quirks
> > injected via swnodes.
> >
> > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > ---
> >   drivers/media/v4l2-core/v4l2-fwnode.c | 85 ++++++++++++++++++++++++++++++++---
> >   1 file changed, 79 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/media/v4l2-core/v4l2-fwnode.c b/drivers/media/v4l2-core/v4l2-fwnode.c
> > index cb153ce42c45d69600a3ec4e59a5584d7e791a2a..379290ab3cfde74c8f663d61837a9a95011b5ae0 100644
> > --- a/drivers/media/v4l2-core/v4l2-fwnode.c
> > +++ b/drivers/media/v4l2-core/v4l2-fwnode.c
> > @@ -15,6 +15,7 @@
> >    * Author: Guennadi Liakhovetski <g.liakhovetski@gmx.de>
> >    */
> >   #include <linux/acpi.h>
> > +#include <acpi/acpi_bus.h>
> >   #include <linux/kernel.h>
> >   #include <linux/mm.h>
> >   #include <linux/module.h>
> > @@ -807,16 +808,65 @@ int v4l2_fwnode_connector_add_link(struct fwnode_handle *fwnode,
> >   }
> >   EXPORT_SYMBOL_GPL(v4l2_fwnode_connector_add_link);
> >
> > -int v4l2_fwnode_device_parse(struct device *dev,
> > -                          struct v4l2_fwnode_device_properties *props)
> > +static int v4l2_fwnode_device_parse_acpi(struct device *dev,
> > +                                      struct v4l2_fwnode_device_properties *props)
> > +{
> > +     struct acpi_pld_info *pld;
> > +     int ret = 0;
> > +
> > +     if (!is_acpi_device_node(dev_fwnode(dev)))
> > +             return 0;
> > +
> > +     if (!acpi_get_physical_device_location(ACPI_HANDLE(dev), &pld)) {
> > +             dev_dbg(dev, "acpi _PLD call failed\n");
>
> I'd do:
>
> acpi_handle_debug(ACPI_HANDLE(dev), "cannot obtain _PLD\n");
ack
>
> > +             return 0;
> > +     }
> > +
> > +     if (props->orientation != V4L2_FWNODE_PROPERTY_UNSET) {
> > +             switch (pld->panel) {
> > +             case ACPI_PLD_PANEL_FRONT:
> > +                     props->orientation = V4L2_FWNODE_ORIENTATION_FRONT;
> > +                     break;
> > +             case ACPI_PLD_PANEL_BACK:
> > +                     props->orientation = V4L2_FWNODE_ORIENTATION_BACK;
> > +                     break;
> > +             case ACPI_PLD_PANEL_TOP:
> > +             case ACPI_PLD_PANEL_LEFT:
> > +             case ACPI_PLD_PANEL_RIGHT:
> > +             case ACPI_PLD_PANEL_UNKNOWN:
> > +                     props->orientation = V4L2_FWNODE_ORIENTATION_EXTERNAL;
> > +                     break;
> > +             default:
> > +                     dev_dbg(dev, "Unknown _PLD panel val %d\n", pld->panel);
>
> Similarly:
>
> acpi_handle_debug(ACPI_HANDLE(dev), "invalid panel %u in _PLD\n",
>                   pld->panel);
>
> > +                     ret = -EINVAL;
>
> Should this be an error or should we simply ignore it here (and maybe
> use acpi_handle_warn())?

v4l2_fwnode_device_parse_of() returns -EINVAL for a similar situation,
so I think it is better to be consistent and return -EINVAL here.
But I agree that acpi_handle_warn() better suits here than _dbg.

>
> > +                     goto done;
> > +             }
> > +     }
> > +
> > +     if (props->rotation != V4L2_FWNODE_PROPERTY_UNSET) {
> > +             switch (pld->rotation) {
> > +             case 0 ... 7:
> > +                     props->rotation = pld->rotation * 45;
> > +                     break;
> > +             default:
> > +                     dev_dbg(dev, "Unknown _PLD rotation val %d\n", pld->panel);
>
> acpi_handle_debug(ACPI_HANDLE(dev), "invalid rotation %u in _PLD\n",
>                   pld->rotation);
>
> > +                     ret = -EINVAL;
> > +                     goto done;
> > +             }
> > +     }
> > +
> > +done:
> > +     ACPI_FREE(pld);
> > +     return ret;
> > +}
> > +
> > +static int v4l2_fwnode_device_parse_dt(struct device *dev,
>
> I'd call this v4l2_fwnode_device_parse_of() as we're parsing OF nodes
> and properties here.
ack
>
> > +                                    struct v4l2_fwnode_device_properties *props)
> >   {
> >       struct fwnode_handle *fwnode = dev_fwnode(dev);
> >       u32 val;
> >       int ret;
> >
> > -     memset(props, 0, sizeof(*props));
> > -
> > -     props->orientation = V4L2_FWNODE_PROPERTY_UNSET;
> >       ret = fwnode_property_read_u32(fwnode, "orientation", &val);
> >       if (!ret) {
> >               switch (val) {
> > @@ -833,7 +883,6 @@ int v4l2_fwnode_device_parse(struct device *dev,
> >               dev_dbg(dev, "device orientation: %u\n", val);
> >       }
> >
> > -     props->rotation = V4L2_FWNODE_PROPERTY_UNSET;
> >       ret = fwnode_property_read_u32(fwnode, "rotation", &val);
> >       if (!ret) {
> >               if (val >= 360) {
> > @@ -847,6 +896,30 @@ int v4l2_fwnode_device_parse(struct device *dev,
> >
> >       return 0;
> >   }
> > +
> > +int v4l2_fwnode_device_parse(struct device *dev,
> > +                          struct v4l2_fwnode_device_properties *props)
> > +{
> > +     int ret;
> > +
> > +     memset(props, 0, sizeof(*props));
> > +
> > +     props->orientation = V4L2_FWNODE_PROPERTY_UNSET;
> > +     props->rotation = V4L2_FWNODE_PROPERTY_UNSET;
> > +
> > +     /* Start by looking into swnodes and dt. */
> > +     ret =  v4l2_fwnode_device_parse_dt(dev, props);
> > +     if (ret)
> > +             return ret;
> > +
> > +     /* Orientation and rotation found!, we are ready. */
> > +     if (props->orientation != V4L2_FWNODE_PROPERTY_UNSET &&
> > +         props->rotation != V4L2_FWNODE_PROPERTY_UNSET)
> > +             return 0;
>
> I think you can remove this check without affecting the functionality.
I want to avoid calling an acpi method unless it is strictly
necessary. The check is not that ugly... if it is ok with you i'd
rather keep it.

>
> > +
> > +     /* Let's check the acpi table. */
> > +     return v4l2_fwnode_device_parse_acpi(dev, props);
> > +}
> >   EXPORT_SYMBOL_GPL(v4l2_fwnode_device_parse);
> >
> >   /*
> >
>
> --
> Regards,
>
> Sakari Ailus

Thanks!

-- 
Ricardo Ribalda

