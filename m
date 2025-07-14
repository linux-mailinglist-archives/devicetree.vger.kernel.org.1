Return-Path: <devicetree+bounces-196068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BB20FB04130
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 16:15:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6C894189A5EE
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 14:15:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2E75255F2C;
	Mon, 14 Jul 2025 14:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="axw5HpY2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9E92459D2
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 14:14:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752502473; cv=none; b=aLWjRtgqcbBIE10dTSfvKa4tpW31Emgrc7esf23HSkUoFdrwrwMHcZXEea5vMnPncQ/3c0GmGwlOQaUsk2O2lk/A2pakdsBFvghBr9c87PtKHSW6gNwSjxm39LvZw/QDnpqPFs4ses1h93x9QkMfLoRURfFPF2H4F/DeCjnErfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752502473; c=relaxed/simple;
	bh=83AgYV4x+hwPaNGzWopzeXSbiWGOVcEuU5XbcQfD8es=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jkKzP/reqeoYAV1by6NbFwBB7fAj2vCmJFpK3PEfE++R0/n0+ygSS/CnfGvHGnLRayic+r7af5gOuhQbSjkrLYU+zSyKqMjJ4GbBXErR6gk45KLnzBlImznnQCAR91TLSS4TUQm6XRJSLtjwY0kccMTNJ/242E7NaUAYDa2SLRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=axw5HpY2; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-553d2eb03a0so5893021e87.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 07:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1752502470; x=1753107270; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aPBTalpHMZbUCps9VnvQc6q/AJch4FZWjrxFyUqpLTw=;
        b=axw5HpY2VCYIBxJkGlPuakiFyhLCqvr6WCxn5jAQk3jUGHmKmFGaOw9f4PJ366Fpki
         vQ2yvAkXF16tDOdcTp9btxHVbBy/MkmA/P6bdPZ+PSG/iwCVulfxsx11lt9lMKyQZ/H+
         e01wCWyrZgOG/ytezdp+jRnaxrt6KDuPuR5Fo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752502470; x=1753107270;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aPBTalpHMZbUCps9VnvQc6q/AJch4FZWjrxFyUqpLTw=;
        b=NzMRSaWVHhSOyt3ZsuWyd/3+dlkmPFNTeq39mbrASt0dBd8ctWTrmf5IHZ/m0vHnQL
         BvHOXUz3r74BdkJzLXwfuUF9hZC3OuSeL/C/rJtaE0lTOoKczZdP0bosYcrU8Qko2lF6
         aTpA1T55Q8udSfKmpx+29VGaW/kYt1bCOgbLxqLp66doG8+26pHYIvRqt5qRJdmt+DS5
         Qtn8Mirckbh+3+aoy0AM6ZgMY3YUijMDyCgatEKxkk0JG+LN9ecAsaGQQalKOFIqyrRc
         37UNsjPbXJwpurcPHgmZI8RxZ+7CQ/x23DKi7N6e3mE56t3fRyxMqa876VY2eZQ/HTJ4
         Vgwg==
X-Forwarded-Encrypted: i=1; AJvYcCXf5s1LJVSWccge2zJTAWbstm31W55uZfX6rYknTyuK4IikI5FgTTG3HivrdHTJTy/ZZG7NBRJbzXF6@vger.kernel.org
X-Gm-Message-State: AOJu0YzSlDbK8JM4oIZptuOcdGfg+5vIvP469y8QR/sbq8xZ0JtKbUq3
	+1CZMYVWwmOxtiPwgxosJ3vs/i6tYEp3nBzXvSGZxyENCwcnhnT+wVevVEF3Dags7E38LI0h+gu
	w4XA=
X-Gm-Gg: ASbGncvcFtDkdeiib0NBgqrgOJ8eM7mDxnsYAZof50NS1ONwAtZmRtcnqwlQQREAMSY
	0sRrZ9alnDU40wr0lt04nMIx5yX6xeM9PO/5lVMjkArU+lQKGfouXWGON8VzCWCzRJtbmqy8loJ
	SHhr+j59R0ybiGlUUJk5DLqjeObPPro4KB74+PV1ruODmOc6PTmDPkgJdK8CEHhhyJfzKWBL7o+
	trbyDxlX/4e5JUh52xDr9YwxRcZqBZenl/+kPX5mnRbRQ+l8NZ8Cqyu3SprHeNbN+moOfwiomCc
	2RSIFbEnurRLXhe91Yi1bPKLVMYkMbAPXHn53MYmwZNYoclVd+Zkh9Mq3mXnbyRc2BYC/bS5JWP
	2gopaDkC/c0Qn58/sNA26y6BknW7egEIqdhG66e5Zl59o5GdlEZNRhOzMeOkZ8UqTu1EYnNmbFP
	k=
X-Google-Smtp-Source: AGHT+IEdkhuJyEGG4QQJfi8QrsFr0b5gZRDLXBax+GaaL3oWOlf9C2sb41oAs0rzX7Kpejbyl/KDIA==
X-Received: by 2002:a05:6512:1101:b0:558:faa8:f667 with SMTP id 2adb3069b0e04-559006a21b7mr5249170e87.5.1752502469568;
        Mon, 14 Jul 2025 07:14:29 -0700 (PDT)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com. [209.85.208.173])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fa2913852sm16154881fa.16.2025.07.14.07.14.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 07:14:28 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-32b4876dfecso54069341fa.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 07:14:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUp6W62XRdIxnmwe+l2r+Jp20nrQUvZHteBMa1LWjVzcuh9DpeV9kCwArbCZkNEKFtnbECOpOhq4Fv6@vger.kernel.org
X-Received: by 2002:a05:651c:2002:b0:32b:59d1:7ef2 with SMTP id
 38308e7fff4ca-32f50c780f8mr41327731fa.9.1752502467634; Mon, 14 Jul 2025
 07:14:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250605-uvc-orientation-v2-0-5710f9d030aa@chromium.org>
 <20250605-uvc-orientation-v2-2-5710f9d030aa@chromium.org> <a02801c8-4be0-4a53-a037-e38bf0f05db1@redhat.com>
In-Reply-To: <a02801c8-4be0-4a53-a037-e38bf0f05db1@redhat.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 14 Jul 2025 16:14:14 +0200
X-Gmail-Original-Message-ID: <CANiDSCsq4_R5R6+W3qxN6tpDJxqSkZ8E20Hza=Ye-HpqfCza1w@mail.gmail.com>
X-Gm-Features: Ac12FXyYIipkCH4Sx5CVKejVWW7_NLIKMhi6EeKATJWIjzTAUBbADXkCmkZ4IHg
Message-ID: <CANiDSCsq4_R5R6+W3qxN6tpDJxqSkZ8E20Hza=Ye-HpqfCza1w@mail.gmail.com>
Subject: Re: [PATCH v2 02/12] media: v4l: fwnode: Support ACPI's _PLD for v4l2_fwnode_device_parse
To: Hans de Goede <hdegoede@redhat.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 14 Jul 2025 at 15:03, Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi,
>
> On 5-Jun-25 19:52, Ricardo Ribalda wrote:
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
> >  drivers/media/v4l2-core/v4l2-fwnode.c | 85 ++++++++++++++++++++++++++++++++---
> >  1 file changed, 79 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/media/v4l2-core/v4l2-fwnode.c b/drivers/media/v4l2-core/v4l2-fwnode.c
> > index cb153ce42c45d69600a3ec4e59a5584d7e791a2a..379290ab3cfde74c8f663d61837a9a95011b5ae0 100644
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
> > @@ -807,16 +808,65 @@ int v4l2_fwnode_connector_add_link(struct fwnode_handle *fwnode,
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
> > +     if (!is_acpi_device_node(dev_fwnode(dev)))
> > +             return 0;
> > +
> > +     if (!acpi_get_physical_device_location(ACPI_HANDLE(dev), &pld)) {
> > +             dev_dbg(dev, "acpi _PLD call failed\n");
> > +             return 0;
> > +     }
> > +
> > +     if (props->orientation != V4L2_FWNODE_PROPERTY_UNSET) {
>
> "!=" should be "==" here. So that we set it when not set already,
> rather then leaving it unset when not set already.
>
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
> > +                     ret = -EINVAL;
> > +                     goto done;
> > +             }
> > +     }
> > +
> > +     if (props->rotation != V4L2_FWNODE_PROPERTY_UNSET) {
>
> Same here.
>
>
> > +             switch (pld->rotation) {
> > +             case 0 ... 7:
> > +                     props->rotation = pld->rotation * 45;
> > +                     break;
> > +             default:
> > +                     dev_dbg(dev, "Unknown _PLD rotation val %d\n", pld->panel);
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
> >  }
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
> As Sakari set, this can be dropped, with the 2 checks above
> fixed to be == v4l2_fwnode_device_parse_acpi() will become
> a no-op in this case.

I wanted to avoid calling he _PLD method if it was not necessary.

But if both Sakari and you dislike the optimization then let's get rid of it :)

Thanks


>
> With these things fixed:
>
> Reviewed-by: Hans de Goede <hansg@kernel.org>
>
> Regards,
>
> Hans
>
>
> > +
> > +     /* Let's check the acpi table. */
> > +     return v4l2_fwnode_device_parse_acpi(dev, props);
> > +}
> >  EXPORT_SYMBOL_GPL(v4l2_fwnode_device_parse);
> >
> >  /*
> >
>


--
Ricardo Ribalda

