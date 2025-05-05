Return-Path: <devicetree+bounces-173850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FBEAA9D44
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 22:34:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7EB2E1A80BEB
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 20:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C3051E7648;
	Mon,  5 May 2025 20:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="I/Lbi1CV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3EB723CE
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 20:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746477275; cv=none; b=lTapIw8JtcGruyedB48tkU5sXJSp5cfxFxDdpyBbL0kjlFDvqnjCFNXF3mQeUn62k+HdEvlNz19T3lw0Gp7gNUt8UUe7uLgFMjf4D0FwnNcAIHuB//JcJ6BwqRAngOMNjyXmDxSMjxOF3ja2ZsYcI16S47Y2nMhJN+PZpWdOAB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746477275; c=relaxed/simple;
	bh=eXsbeYaStEdVkB/9iiuPPvCcb0GJ33j+Y7Lm4GpCn+k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ifRKKrsPU4sBtCB9PQjlJNYnRy0YVOzZDoLP+xjU+5uwD7KSagHL/szhe/Zkuss9jVnYh0mI72RW2DeeZHUc6Tdgi2D67Eq4ezLhGjUl7z+zWtTfKOtFKbYYl3ZojArV5IzLtTT7B2tdJ3BiN6xK+d4LOabbJOjCxloTF/jHXLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=I/Lbi1CV; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54998f865b8so5306347e87.3
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 13:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1746477271; x=1747082071; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aad+O7LlnePo9Jud5k6L+0x2zxiP/d5GA/t21nuBedc=;
        b=I/Lbi1CVZDl1obG0Fb/2EMGdznGkHEAP980LT0oBlKAb39k9aPyq8cCLUWC7GZtrR/
         rJZfD4xgng58xottKDQH5b7Y40adyt9beewyCkNl3QyGgsLqUFV2uDC2jNQOHy+JoNjS
         9kxQy5p1eLTrg1ioVr0GLrR5s/tj5cc88xCx8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746477271; x=1747082071;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aad+O7LlnePo9Jud5k6L+0x2zxiP/d5GA/t21nuBedc=;
        b=SydVOsaGpb0iTJ1/0urH811YCi37Rj4OvUVqfnKIyE9DCvYlZXVkCDEAW/g80kbbC0
         dZVddAnjsBtuI2rWuIZJpmYnhEZCMbV1Sc/KOcuyCz3AcojvB7Z+29irYfqypDXKCfev
         6MHsd8vo4/xpRvkjNnGCIxS7RkcM235lgedKSkEpwnMGjktcmCu3tpWbvr3ecn6jVy66
         9TTR+OUAQiXlLuN/UVSpMxdV+FM9VF30UcyLOc8E7foMEGX08W4sIi5CCqgqwltWDLfs
         r0gPz1E4GrPsK9OQWJ/Y2ftUat5euPqvefpIxP6qW+9uh6GGwQPOYKOdWkkFz2EmUuGF
         vYCg==
X-Forwarded-Encrypted: i=1; AJvYcCV2YCtljRyA7YRyBILHn4JgJE+icL6vSU/fRy7WpI5GiICr4JIOWqR8xt3YFYa1kJybQnlEj3a+H4FE@vger.kernel.org
X-Gm-Message-State: AOJu0YxAOtpYtseZbmis+Oa/kUwA+N2zLZRdv8/4VAumu5+jB61MyZmR
	GQVmScHfVyf80Z1I2EBcfLOL+s4U5/CA9PMHTX8ra9rdyatrCNZgeUKrnTb7Tf0KZCJHx00qmI8
	=
X-Gm-Gg: ASbGncuUr7MhknlcwUXPMU7i5kn0RJ6AqeNbyy1J0WHb42LzKNrPxR+xAmjAYqQs4X6
	S6DdAWMxmtZNht1mPKKywKjhwIAaMkPJm0EyjOkPPB8iR83huMQtYl6hlsxkZTTwfoQtMovzuBB
	ZTZFXesHyIfbCE/anpNMn0lxfD7zbuaVTL28RNMWsHoC+u1Lrzn5x6MLGoYPoAgkpM64VUm5hYz
	/QQNBH9TIPVVZxa9FIOX7y/pp6Nguoko4eAux+mWC/LedhtY4dyhMNgIIk3Wwsen1BR2+tbnbuK
	Rm4h121f3pWPqSM7TEx/2xF3JXLDlea1wN4uNzsIAlyGCF6hhTG/knjmuONy1Nw9eC5sUJEBW1p
	ESw1Mn80=
X-Google-Smtp-Source: AGHT+IEtAuTUJOgyxA9VyEFjWEgu5PKtq+H6twFaZ537BslaCtZIZvVRT1oONC4aOsZjuZpjldvq9Q==
X-Received: by 2002:a05:6512:3e24:b0:549:8f4a:6baa with SMTP id 2adb3069b0e04-54fb4a67ca9mr133902e87.27.1746477270915;
        Mon, 05 May 2025 13:34:30 -0700 (PDT)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com. [209.85.208.174])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94b18a1sm1847864e87.42.2025.05.05.13.34.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 13:34:29 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-30c091b54aaso41955431fa.3
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 13:34:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVI7MVBng0zXlh5h2CJPBTyrMfaoPbfQIeJ2dgJ8sGay7kcMfhQhBL52JB50YpiU0If6a2K9MxADthk@vger.kernel.org
X-Received: by 2002:a05:651c:b2a:b0:319:d856:c2f3 with SMTP id
 38308e7fff4ca-3266b59789emr751721fa.10.1746477268328; Mon, 05 May 2025
 13:34:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250403-uvc-orientation-v1-0-1a0cc595a62d@chromium.org>
 <20250403-uvc-orientation-v1-3-1a0cc595a62d@chromium.org> <Z_uIyEe4uU_BC5aY@valkosipuli.retiisi.eu>
 <CANiDSCvQC25ZrSZgUuFt6deCogFL6=GPsYYrsegK1NOK=uzRJA@mail.gmail.com>
 <dd471b51-333b-4537-ac58-29ad2a10f1e2@redhat.com> <aAdkU65ruBfyRjss@valkosipuli.retiisi.eu>
In-Reply-To: <aAdkU65ruBfyRjss@valkosipuli.retiisi.eu>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 5 May 2025 22:34:16 +0200
X-Gmail-Original-Message-ID: <CANiDSCt5_HwfwXDWNGWvzkSAW2ZB4PJwS00=i0EizY_3A-OSgw@mail.gmail.com>
X-Gm-Features: ATxdqUEg2rUAsN7TYo98ElSvRXDzyBQACXaWg80nr6xGofF6c5WfqBKJm9vPYRM
Message-ID: <CANiDSCt5_HwfwXDWNGWvzkSAW2ZB4PJwS00=i0EizY_3A-OSgw@mail.gmail.com>
Subject: Re: [PATCH 3/8] media: v4l: fwnode: Support acpi devices for v4l2_fwnode_device_parse
To: Sakari Ailus <sakari.ailus@iki.fi>
Cc: Hans de Goede <hdegoede@redhat.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sakari

On Tue, 22 Apr 2025 at 11:41, Sakari Ailus <sakari.ailus@iki.fi> wrote:
>
> Hi Hans, Ricardo,
>
> On Tue, Apr 22, 2025 at 10:44:41AM +0200, Hans de Goede wrote:
> > Hi Ricardo,
> >
> > On 22-Apr-25 2:23 AM, Ricardo Ribalda wrote:
> > > Hi Sakari
> > >
> > > On Sun, 13 Apr 2025 at 17:50, Sakari Ailus <sakari.ailus@iki.fi> wrot=
e:
> > >>
> > >> Hi Ricardo,
> > >>
> > >> Thanks for the patch.
> > >>
> > >> On Thu, Apr 03, 2025 at 07:16:14PM +0000, Ricardo Ribalda wrote:
> > >>> This patch modifies v4l2_fwnode_device_parse() to support ACPI devi=
ces.
> > >>>
> > >>> We initially add support only for orientation via the ACPI _PLD met=
hod.
> > >>>
> > >>> Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > >>> ---
> > >>>  drivers/media/v4l2-core/v4l2-fwnode.c | 58 +++++++++++++++++++++++=
++++++++----
> > >>>  1 file changed, 52 insertions(+), 6 deletions(-)
> > >>>
> > >>> diff --git a/drivers/media/v4l2-core/v4l2-fwnode.c b/drivers/media/=
v4l2-core/v4l2-fwnode.c
> > >>> index cb153ce42c45d69600a3ec4e59a5584d7e791a2a..81563c36b6436bb61e1=
c96f2a5ede3fa9d64dab3 100644
> > >>> --- a/drivers/media/v4l2-core/v4l2-fwnode.c
> > >>> +++ b/drivers/media/v4l2-core/v4l2-fwnode.c
> > >>> @@ -15,6 +15,7 @@
> > >>>   * Author: Guennadi Liakhovetski <g.liakhovetski@gmx.de>
> > >>>   */
> > >>>  #include <linux/acpi.h>
> > >>> +#include <acpi/acpi_bus.h>
> > >>>  #include <linux/kernel.h>
> > >>>  #include <linux/mm.h>
> > >>>  #include <linux/module.h>
> > >>> @@ -807,16 +808,47 @@ int v4l2_fwnode_connector_add_link(struct fwn=
ode_handle *fwnode,
> > >>>  }
> > >>>  EXPORT_SYMBOL_GPL(v4l2_fwnode_connector_add_link);
> > >>>
> > >>> -int v4l2_fwnode_device_parse(struct device *dev,
> > >>> -                          struct v4l2_fwnode_device_properties *pr=
ops)
> > >>> +static int v4l2_fwnode_device_parse_acpi(struct device *dev,
> > >>> +                                      struct v4l2_fwnode_device_pr=
operties *props)
> > >>> +{
> > >>> +     struct acpi_pld_info *pld;
> > >>> +     int ret =3D 0;
> > >>> +
> > >>> +     if (!acpi_get_physical_device_location(ACPI_HANDLE(dev), &pld=
)) {
> > >>> +             dev_dbg(dev, "acpi _PLD call failed\n");
> > >>> +             return 0;
> > >>> +     }
> > >>
> > >> You could have software nodes in an ACPI system as well as DT-aligne=
d
> > >> properties. They're not the primary means to convey this information=
 still.
> > >>
> > >> How about returning e.g. -ENODATA here if _PLD doesn't exist for the=
 device
> > >> and then proceeding to parse properties as in DT?
> > >
> > > Do you mean that there can be devices with ACPI handles that can also
> > > have DT properties?
> >
> > Yes it is possible to embed DT properties in ACPI, but I don't
> > think that is really applicable here.
>
> This is determined by
> Documentation/firmware-guide/acpi/DSD-properties-rules.rst . So rotation
> and orientation shouldn't come from _DSD properties on ACPI systems.

Doesn't this contradict what DisCo does?


if (!fwnode_property_present(adev_fwnode, "rotation")) {
struct acpi_pld_info *pld;

if (acpi_get_physical_device_location(handle, &pld)) {
swnodes->dev_props[NEXT_PROPERTY(prop_index, DEV_ROTATION)] =3D
PROPERTY_ENTRY_U32("rotation",
   pld->rotation * 45U);
kfree(pld);
}
}

It seems to first check for the rotation property, and then check _DSD.

If I send a v2, shall I also replace DisCo even if that means
reverting its logic?


>
> >
> > But we also have secondary software-fwnodes which are used
> > extensively on x86 to set device-properties on devices by
> > platform code to deal with ACPI tables sometimes having
> > incomplete information.
> >
> > For example atm _PLD is already being parsed in:
> >
> > drivers/media/pci/intel/ipu-bridge.c and that is then used to add
> > a standard "orientation" device-property on the sensor device.
> >
> > This is actually something which I guess we can drop once your
> > patches are in, since those should then do the same in a more
> > generic manner.
>
> DisCo for Imaging support currently also digs this information from _PDL
> (see init_crs_csi2_swnodes() in drivers/acpi/mipi-disco-img.c), but this
> is only done if a _CRS CSI-2 descriptor is present. It could also be done
> for devices with the IPU Windows specific ACPI objects and it would be a
> natural location for handing quirks -- there are some
> unrelated Dell DSDT quirks already.
>
> >
> > > What shall we do if _PLD contradicts the DT property? What takes prec=
edence?
> >
> > As for priorities, at east for rotation it seems that we are going
> > to need some quirks, I already have a few Dell laptops where it seems
> > that the sensor is upside down and parsing the rotation field in
> > the IPU6 specific SSDB ACPI package does not yield a 180=C2=B0 rotation=
,
> > so we are going to need some quirks.
> >
> > I expect these quirks to live in the bridge code, while your helper
> > will be called from sensor drivers, so in order to allow quirks to
> > override things, I think that first the "orientation" device-property
> > should be checked (which the ACPI glue code we have can set before
> > the sensor driver binds) and only then should _PLD be checked.
> >
> > IOW _PLD should be seen as the fallback, because ACPI tables are
> > often a copy and paste job so it can very well contain wrong info
> > copy-pasted from some example ACPI code or from another hw model.
>
> Unfortunately that does happen. :-(
>
> --
> Regards,
>
> Sakari Ailus



--=20
Ricardo Ribalda

