Return-Path: <devicetree+bounces-169159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1193A95A1B
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 02:24:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD6883B5037
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 00:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B4371386B4;
	Tue, 22 Apr 2025 00:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gxem5lhJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD3674059
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 00:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745281454; cv=none; b=p2h9OSTfLX2SwcfBcXi1hl/aZWvW2K7wchC5Z0LklFl++vpl4EKrf8vG2yuSzoPWhMwQvgk1CzxDZPyJLDXlpXfqiX7IXsWRbkcD0r3DDkxu9NmroH3BS+XEaCeJoWYcblHjz7pBCySxa8gen3CtKZ/FEKwOCJ+W3oTynzEIAJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745281454; c=relaxed/simple;
	bh=u52bVrB/pZ0lfovnX74KF6WwBxpQoIaVYqukYlfqcMg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XqvspS3+CtsFY27WA1c0Avl6OuhzN8C1Gm6KzyiH5OFgCzP03kq2s/uRoXE6xrxchGVxR90RCU5VVJwhIUmFjHT+x1HOi/WiM3mkEAmsk38HV1H3lIF7HDar45y8eGLJIqt6RzacXfmHgQGUHsCADoR4skZfS4w8HiMmVKEphgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=gxem5lhJ; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30bf3f3539dso47430941fa.1
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 17:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745281450; x=1745886250; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hfCnlXym9eZAbX+zdYaRO3WcEjSZxfzTyz2pRkP+wp4=;
        b=gxem5lhJ+4DHlvLI3uNia58B73VfYi7pHotLLMwrnPEwyeKAnuPKgbgz4ZnhNLzGSe
         6MNIomgzHCv/S/WDtolKl8Pim3obpqcm4/HlrlY08q3p7Av4G/tdyuxDQWWGkDS8whZY
         Ary/n2nS5YKkjIn6JYHl0c36xfrMFreeuiizQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745281450; x=1745886250;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hfCnlXym9eZAbX+zdYaRO3WcEjSZxfzTyz2pRkP+wp4=;
        b=fNpDWTyU5W0MM+jBtrZMJnhyT43Z828rZlWDgeJ/ZPtkAVVudJOBXmAavyCompjORI
         XgXfIriXv/uQxyOONntvFVlHjrjMB1T2qtVYFZY89svcaBFfRVUoKOomYN1gfOnbhpz9
         HLNhQbZFwQ9EJRIV2ESRebhDO+gIE8R61EJ2lpWw/cbjLrb1nUWnMnIyVUHxRcGoJ68p
         cJuTLMt4qAGn8WHh34itXaCQNyOWwtsdnYIpVEsIBY7HtMQTHNoQO50jItp++lE5eq+m
         2Hyy3vFoBYg5jbjXfzMp0G1p4j9YQIMLstYMb5gL2SXdR9PQW1AkrRl8VKstl2jg1JKO
         VkRA==
X-Forwarded-Encrypted: i=1; AJvYcCUQRisEqB3xuIlZ96620RPpp4AOyAI72qWrSwyjNd49tXHaeqpjArjNVdMD38ADU/D1h0A3Mfd7KohH@vger.kernel.org
X-Gm-Message-State: AOJu0YzUPTMTvrYAaSvBhVUqVatunpX+nGPzAy/eHMQcVsZO0+l3ePg1
	ikQB/KPy9azMcOknlxfOA3IEi5tIykosbSGBrBsiX6FwuLIcp+KCe1NJB90qJ7Pe7LuL2Z3B8uI
	=
X-Gm-Gg: ASbGncs0hMt2VMlnbDmubpehZkqMmizwGJKJuLv2GUDbvOEfg5yqaHfOqjwqgPIMEIy
	XuQUr+wVuZTIFSe1FeDatN3A4Iv6tINqFrzuB/iEQh4lgBgRVQO1ur3/cbyFrdzP616RbYRqQz3
	nMbnkY7E8C5Ztqn9FamSWDa0avzpOtz/90GluAteE3IBpedCHoKG5m4hc5cSIKfzJFN8c33Xq5n
	LI9ato8HKZ6y2S2Ow+mGlsiyJ+43PnrfguR4dr2BiIdLxKzg9QDontEhK49g0pg5evbMuSjFzEQ
	OfJdZAwfaou12SoYU5ZormOECiWaebe7UQ6wzOAukniSyHdMhJcqKwA3P5hPNBPCBnqHo++r7V1
	ax+c=
X-Google-Smtp-Source: AGHT+IEQoFLQ0Qbkk1ZTkN+ri7iVVXF8usJRnBYdMVxTTBSmTGyB4zCqRwISiR2+W831mzhVG46mMA==
X-Received: by 2002:a05:651c:54b:b0:30b:c328:3cdc with SMTP id 38308e7fff4ca-31090dd8c0dmr39516931fa.2.1745281450086;
        Mon, 21 Apr 2025 17:24:10 -0700 (PDT)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com. [209.85.167.45])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-310907824c4sm12978121fa.25.2025.04.21.17.24.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Apr 2025 17:24:07 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54af20849adso4357790e87.1
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 17:24:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW4b1v4nflkq5il5NUY/+pofJlDv6YchTZpCg1km3ZG1mSGip24fn8K6yAPnge0pHdLobgOXVDT/UXM@vger.kernel.org
X-Received: by 2002:a05:6512:3995:b0:54a:cc10:1050 with SMTP id
 2adb3069b0e04-54d6e789b2bmr3360285e87.15.1745281447045; Mon, 21 Apr 2025
 17:24:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250403-uvc-orientation-v1-0-1a0cc595a62d@chromium.org>
 <20250403-uvc-orientation-v1-3-1a0cc595a62d@chromium.org> <Z_uIyEe4uU_BC5aY@valkosipuli.retiisi.eu>
In-Reply-To: <Z_uIyEe4uU_BC5aY@valkosipuli.retiisi.eu>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 22 Apr 2025 08:23:52 +0800
X-Gmail-Original-Message-ID: <CANiDSCvQC25ZrSZgUuFt6deCogFL6=GPsYYrsegK1NOK=uzRJA@mail.gmail.com>
X-Gm-Features: ATxdqUGV9UNm6rsWa1b6fT7zaIeRsrhtYZHR863_Li8k5tC_mUahvNyGq--RUEU
Message-ID: <CANiDSCvQC25ZrSZgUuFt6deCogFL6=GPsYYrsegK1NOK=uzRJA@mail.gmail.com>
Subject: Re: [PATCH 3/8] media: v4l: fwnode: Support acpi devices for v4l2_fwnode_device_parse
To: Sakari Ailus <sakari.ailus@iki.fi>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hdegoede@redhat.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Sakari

On Sun, 13 Apr 2025 at 17:50, Sakari Ailus <sakari.ailus@iki.fi> wrote:
>
> Hi Ricardo,
>
> Thanks for the patch.
>
> On Thu, Apr 03, 2025 at 07:16:14PM +0000, Ricardo Ribalda wrote:
> > This patch modifies v4l2_fwnode_device_parse() to support ACPI devices.
> >
> > We initially add support only for orientation via the ACPI _PLD method.
> >
> > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > ---
> >  drivers/media/v4l2-core/v4l2-fwnode.c | 58 +++++++++++++++++++++++++++++++----
> >  1 file changed, 52 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/media/v4l2-core/v4l2-fwnode.c b/drivers/media/v4l2-core/v4l2-fwnode.c
> > index cb153ce42c45d69600a3ec4e59a5584d7e791a2a..81563c36b6436bb61e1c96f2a5ede3fa9d64dab3 100644
> > --- a/drivers/media/v4l2-core/v4l2-fwnode.c
> > +++ b/drivers/media/v4l2-core/v4l2-fwnode.c
> > @@ -15,6 +15,7 @@
> >   * Author: Guennadi Liakhovetski <g.liakhovetski@gmx.de>
> >   */
> >  #include <linux/acpi.h>
> > +#include <acpi/acpi_bus.h>
> >  #include <linux/kernel.h>
> >  #include <linux/mm.h>
> >  #include <linux/module.h>
> > @@ -807,16 +808,47 @@ int v4l2_fwnode_connector_add_link(struct fwnode_handle *fwnode,
> >  }
> >  EXPORT_SYMBOL_GPL(v4l2_fwnode_connector_add_link);
> >
> > -int v4l2_fwnode_device_parse(struct device *dev,
> > -                          struct v4l2_fwnode_device_properties *props)
> > +static int v4l2_fwnode_device_parse_acpi(struct device *dev,
> > +                                      struct v4l2_fwnode_device_properties *props)
> > +{
> > +     struct acpi_pld_info *pld;
> > +     int ret = 0;
> > +
> > +     if (!acpi_get_physical_device_location(ACPI_HANDLE(dev), &pld)) {
> > +             dev_dbg(dev, "acpi _PLD call failed\n");
> > +             return 0;
> > +     }
>
> You could have software nodes in an ACPI system as well as DT-aligned
> properties. They're not the primary means to convey this information still.
>
> How about returning e.g. -ENODATA here if _PLD doesn't exist for the device
> and then proceeding to parse properties as in DT?

Do you mean that there can be devices with ACPI handles that can also
have DT properties?

Wow that is new to me :).

What shall we do if _PLD contradicts the DT property? What takes precedence?

>
> > +
> > +     switch (pld->panel) {
> > +     case ACPI_PLD_PANEL_FRONT:
> > +             props->orientation = V4L2_FWNODE_ORIENTATION_FRONT;
> > +             break;
> > +     case ACPI_PLD_PANEL_BACK:
> > +             props->orientation = V4L2_FWNODE_ORIENTATION_BACK;
> > +             break;
> > +     case ACPI_PLD_PANEL_TOP:
> > +     case ACPI_PLD_PANEL_LEFT:
> > +     case ACPI_PLD_PANEL_RIGHT:
> > +     case ACPI_PLD_PANEL_UNKNOWN:
> > +             props->orientation = V4L2_FWNODE_ORIENTATION_EXTERNAL;
> > +             break;
>
> How about the rotation in _PLD?

If we agree on the orientation part I will extend it to support
rotation. It should not be a complicated change.

>
> > +     default:
> > +             dev_dbg(dev, "Unknown _PLD panel val %d\n", pld->panel);
> > +             ret = -EINVAL;
> > +             break;
> > +     }
> > +
> > +     ACPI_FREE(pld);
> > +     return ret;
> > +}
> > +
> > +static int v4l2_fwnode_device_parse_dt(struct device *dev,
> > +                                    struct v4l2_fwnode_device_properties *props)
> >  {
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
> > @@ -833,7 +865,6 @@ int v4l2_fwnode_device_parse(struct device *dev,
> >               dev_dbg(dev, "device orientation: %u\n", val);
> >       }
> >
> > -     props->rotation = V4L2_FWNODE_PROPERTY_UNSET;
> >       ret = fwnode_property_read_u32(fwnode, "rotation", &val);
> >       if (!ret) {
> >               if (val >= 360) {
> > @@ -847,6 +878,21 @@ int v4l2_fwnode_device_parse(struct device *dev,
> >
> >       return 0;
> >  }
> > +
> > +int v4l2_fwnode_device_parse(struct device *dev,
> > +                          struct v4l2_fwnode_device_properties *props)
> > +{
> > +     struct fwnode_handle *fwnode = dev_fwnode(dev);
> > +
> > +     memset(props, 0, sizeof(*props));
> > +
> > +     props->orientation = V4L2_FWNODE_PROPERTY_UNSET;
> > +     props->rotation = V4L2_FWNODE_PROPERTY_UNSET;
> > +
> > +     if (is_acpi_device_node(fwnode))
> > +             return v4l2_fwnode_device_parse_acpi(dev, props);
> > +     return v4l2_fwnode_device_parse_dt(dev, props);
> > +}
> >  EXPORT_SYMBOL_GPL(v4l2_fwnode_device_parse);
> >
> >  /*
> >
>
> --
> Kind regards,
>
> Sakari Ailus



-- 
Ricardo Ribalda

