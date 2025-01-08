Return-Path: <devicetree+bounces-136843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C989A068B2
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 23:45:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E87A1888FB7
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 22:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29B5D204C12;
	Wed,  8 Jan 2025 22:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fo8+Sb/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB752046A9
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 22:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736376299; cv=none; b=g3H3+c9V/FIYmonwUoXeeF3uJgGZvUVJOGdxfB46TKrCKwMdM7jJCQtEiPxQ6Ayz1WPBQKjJ2FNNCiMMHxNAMAicq+u0j0TnRjV6yn5ry8D9IYhSFmc9qaR3Yl8LwFyhNgfDyn0iSft5XIxuD8VrPfdELvarRKP+ZuM2Ax2I7q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736376299; c=relaxed/simple;
	bh=c6qzH6M04EpmnrxrnTUrfn1gPyfm5fau7DjBH79aYXU=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Co9OaV3aFt/IY24S8oexYC+aExjmQ8wL8xMmQoT8uvMAuX2WOqqZPaXY9n+ndJI92SB+EgsNIyMpxDAmzcgDMNV1gmTJgG4JeiqW78tOYBqgVTaHjqARZ2+2nE2naonmVnFrxrNXH2ifpXEWvCmvBi4BI9n18g3dqfQvqm6BJ9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fo8+Sb/Z; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7b6f95d2eafso30652485a.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 14:44:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736376294; x=1736981094; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:user-agent
         :from:references:in-reply-to:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ql9KgAfRTbaAqeZqn0FEB+3SVYZKcwjQsk+4GLgd/tQ=;
        b=fo8+Sb/ZMIuhddnml4a7zam7rxlmNTsGE4RY+DrzORvBANXr5vOwzBgD//oxVRpxXO
         vmDeYoXQRrdaMeOrL995I9VDZNfUh2XqyyfbgosGSW4RasMNZYn7teSZ3s69pWrFH/me
         X3vSmc2ROY5gvwETYIatIdnG3MZ9ppW8snuEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736376294; x=1736981094;
        h=content-transfer-encoding:cc:to:subject:message-id:date:user-agent
         :from:references:in-reply-to:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ql9KgAfRTbaAqeZqn0FEB+3SVYZKcwjQsk+4GLgd/tQ=;
        b=kyvquYgVMxDmM+fdwoYa1H6y4KmhYiYJCPvt93mgQ5EjDnBzta4nRyGgFfI9Qp2OQC
         nDqb4o/yWeCMYMnvUu5DeoZPg3KUp2W7s3k87ZopYv00dqE1pfyetLHTmxh0jN3puMLa
         dcr0gEsmYyIz6COpH9TGNKDHQfZiXDw6YmFJwsBe6tEfFqIZimbo0htD3rLM969VwoXf
         xlKrfwDiQEDnDI/Ntir5kCzkF05k9qlSY3IxmMacyW7EKKe2/f1zlgtiJq6yllo5qqLI
         XOgVnjBoft+a33Ku2oliMG+1wS54KoIVWtLUh2KWfIcYa1jnino9VGdfvlvaxciy2hRn
         kqNQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2lB6r+oUZeCHEdebKRMpo5OXQoRCwIwLuiZX3A75oD2E8fwh5J2QUdL77lfl5q+2joc8/RkSNcQq4@vger.kernel.org
X-Gm-Message-State: AOJu0YwJH6biSUcONFqoaiqVsKRfxnk1dCeqkb1Rs1/wwTxIhlHtEYf6
	AC0GYm9m+Z3HgXI82HLNsaOix9BudBF5EmrGn5MbCT3t+C5xSh9cgYwHy8PYxR9YbYfM93rfbM6
	+P8CW5f0Ur8PvQsDQYBaCMP9PhurYnFxqUhNB
X-Gm-Gg: ASbGncvpmbIB579gixdxVZtd8lpjQ5q5cdjhRfa2hQZnTLnpQOiayLsl3VHBPxh32BV
	QepxMUamStdUjyrNzm4O+Ksff4g36kVTod4MKbVcOGKTA46Qa7PdQt5cnf9Du8PAiJQ==
X-Google-Smtp-Source: AGHT+IEO1UjbzlWHUzA9Gg/J/8qMV0j9bHf+zPg27HIqSiBhM4IvZGuoAL+oAG1OVL66PaeXK53g4W+9J5Q0ff2nIrA=
X-Received: by 2002:a05:620a:19a3:b0:7b6:d273:9b52 with SMTP id
 af79cd13be357-7bcd9709522mr745480585a.24.1736376294544; Wed, 08 Jan 2025
 14:44:54 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 Jan 2025 14:44:54 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKMcHPhf8yzEZNC6280-k+aSmo3SQOBZLMjmfTR47BH=g@mail.gmail.com>
References: <20250108012846.3275443-1-swboyd@chromium.org> <20250108012846.3275443-2-swboyd@chromium.org>
 <CAL_JsqKMcHPhf8yzEZNC6280-k+aSmo3SQOBZLMjmfTR47BH=g@mail.gmail.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.12.dev1+gaa8c22fdeedb
Date: Wed, 8 Jan 2025 14:44:54 -0800
X-Gm-Features: AbW1kvb1_nWtQftRF6WxL1bcdIY5RMcBpQuHQK_ddNANpT_CioCq0Ftpnme_gUw
Message-ID: <CAE-0n52k0Gg85Ry4KyjE7Ms_dJgj=aPA4aPB5gmC-VGWSNLZXA@mail.gmail.com>
Subject: Re: [RFC PATCH 1/6] bus: Extract simple-bus into self-contained driver
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-kernel@vger.kernel.org, patches@lists.linux.dev, 
	devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>, 
	Conor Dooley <conor+dt@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Quoting Rob Herring (2025-01-08 06:11:28)
> On Tue, Jan 7, 2025 at 7:28=E2=80=AFPM Stephen Boyd <swboyd@chromium.org>=
 wrote:
> >
> > Extract the simple bus into a self contained driver so that devices are
> > still populated when a node has two (or more) compatibles with the leas=
t
> > specific one being the generic "simple-bus". Allow the driver to be a
> > module so that in a fully modular build a driver module for the more
> > specific compatible will be loaded first before trying to match this
> > driver.
> >
> > Cc: Rob Herring <robh@kernel.org>
> > Cc: Saravana Kannan <saravanak@google.com>
> > Cc: <devicetree@vger.kernel.org>
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: "Uwe Kleine-K=C3=B6nig" <u.kleine-koenig@baylibre.com>
> > Cc: Bjorn Andersson <andersson@kernel.org>
> > Cc: Konrad Dybcio <konradybcio@kernel.org>
> > Cc: <linux-arm-msm@vger.kernel.org>
> > Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> > ---
> >  drivers/bus/Kconfig         | 23 +++++++++++
> >  drivers/bus/Makefile        |  3 ++
> >  drivers/bus/simple-bus.c    | 79 +++++++++++++++++++++++++++++++++++++
> >  drivers/bus/simple-pm-bus.c |  2 +
> >  drivers/of/platform.c       | 50 +++++++++++++++++++++++
> >  5 files changed, 157 insertions(+)
> >  create mode 100644 drivers/bus/simple-bus.c
> >
> > diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
> > index ff669a8ccad9..7c2aa1350578 100644
> > --- a/drivers/bus/Kconfig
> > +++ b/drivers/bus/Kconfig
> > @@ -261,6 +261,29 @@ config DA8XX_MSTPRI
> >           configuration. Allows to adjust the priorities of all master
> >           peripherals.
> >
> > +config ALLOW_SIMPLE_BUS_OVERRIDE
> > +       bool "Allow simple-bus compatible OF nodes to match other drive=
rs"
> > +       depends on OF
> > +       help
> > +         Allow nodes with the "simple-bus" compatible to use a more sp=
ecific
> > +         driver which populates child devices itself.
>
> A kconfig option for this is not going to work. What does a distro kernel=
 pick?

I was thinking a distro kernel would set it to =3DY

>
> > +
> > +config OF_SIMPLE_BUS
> > +       tristate "OF Simple Bus Driver"
> > +       depends on ALLOW_SIMPLE_BUS_OVERRIDE || COMPILE_TEST
> > +       default ALLOW_SIMPLE_BUS_OVERRIDE
> > +       help
> > +         Driver for the "simple-bus" compatible nodes in DeviceTree. C=
hild
> > +         nodes are usually automatically populated on the platform bus=
 when a
> > +         node is compatible with "simple-bus". This driver maintains t=
hat
> > +         feature but it fails probe to allow other drivers to try to p=
robe
> > +         with a more specific compatible if possible.
> > +
> > +         Those other drivers depend on this kconfig symbol so that the=
y match
> > +         the builtin or modular status of this driver. Don't disable t=
his
> > +         symbol if ALLOW_SIMPLE_BUS_OVERRIDE is set and there isn't an=
other
> > +         driver for the simple-bus compatible.
>
> Giving users some rope to hang themselves?

Heh.

>
> > +
> >  source "drivers/bus/fsl-mc/Kconfig"
> >  source "drivers/bus/mhi/Kconfig"
> >
> > diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
> > index cddd4984d6af..f3968221d704 100644
> > --- a/drivers/bus/Makefile
> > +++ b/drivers/bus/Makefile
> > @@ -40,5 +40,8 @@ obj-$(CONFIG_VEXPRESS_CONFIG) +=3D vexpress-config.o
> >
> >  obj-$(CONFIG_DA8XX_MSTPRI)     +=3D da8xx-mstpri.o
> >
> > +# Must be last for driver registration ordering
> > +obj-$(CONFIG_OF_SIMPLE_BUS)    +=3D simple-bus.o
> > +
> >  # MHI
> >  obj-y                          +=3D mhi/
> > diff --git a/drivers/bus/simple-bus.c b/drivers/bus/simple-bus.c
> > new file mode 100644
> > index 000000000000..3e39b9818566
> > --- /dev/null
> > +++ b/drivers/bus/simple-bus.c
> > @@ -0,0 +1,79 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Simple Bus Driver
> > + */
> > +
> > +#include <linux/mod_devicetable.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/of_device.h>
> > +#include <linux/of_platform.h>
> > +#include <linux/platform_device.h>
> > +
> > +static struct platform_driver simple_bus_driver;
> > +
> > +static int has_specific_simple_bus_drv(struct device_driver *drv, void=
 *dev)
> > +{
> > +       /* Skip if it's this simple bus driver */
> > +       if (drv =3D=3D &simple_bus_driver.driver)
> > +               return 0;
> > +
> > +       if (of_driver_match_device(dev, drv)) {
> > +               dev_dbg(dev, "Allowing '%s' to probe more specifically\=
n", drv->name);
> > +               return 1;
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static int simple_bus_probe(struct platform_device *pdev)
> > +{
> > +       struct device *dev =3D &pdev->dev;
> > +       const struct of_dev_auxdata *lookup =3D dev_get_platdata(dev);
> > +       struct device_node *np =3D dev->of_node;
> > +
> > +       /*
> > +        * If any other driver wants the device, leave the device to th=
e other
> > +        * driver. Only check drivers that come after this driver so th=
at if an
> > +        * earlier driver failed to probe we don't populate any devices=
, and
> > +        * only check if there's a more specific compatible.
> > +        */
> > +       if (of_property_match_string(np, "compatible", "simple-bus") !=
=3D 0 &&
> > +           bus_for_each_drv(&platform_bus_type, &simple_bus_driver.dri=
ver, dev,
> > +                            has_specific_simple_bus_drv))
> > +               return -ENODEV;
>
> If this driver is built-in and the specific driver is a module, this
> doesn't work, right?

Yes. The thinking is that if the specific driver is a module we would
make the simple bus driver be a module as well.

>
> I think we're going to have to have a list of specific compatibles
> that have or don't have a specific driver. Today, the list with
> specific drivers is short, but that could easily change if this
> becomes the way to handle things.

Are you talking about simple_pm_bus_probe()? I don't know how to make a
list of specific compatibles work because we can't know if the more
specific driver has been compiled or shipped as a module. We could get
stuck waiting forever for the specific driver to be registered, leading
to what looks like a non-working system because the simple-bus driver
refused to probe. I decided to punt on that problem by relying on
userspace to load the specific driver module before the simple-bus one.
Or if the two drivers are builtin then the specific driver would be
registered before the simple-bus driver via link ordering and it will
work.

> We should consider if new platforms
> should just avoid 'simple-bus' and use something new.

Yes, I think new platforms should entirely avoid "simple-bus" for their
SoC node.

One idea I had was to populate the devices for simple-bus and then
remove them if a more specific driver registers to allow the specific
driver to bind and do what it wants. That's not great because we would
almost always cycle through deleting devices and repopulating them,
unless we play tricks with initcall ordering. The benefit is that we
don't have to do gymnastics to avoid the probe of the simple-bus driver.

Maybe the best approach is to simply avoid all of this and drop the
"simple-bus" compatible from the soc node? It introduces an annoying
hurdle where you have to enable the new driver that does exactly the
same thing as "simple-bus" does so you continue to have a working
system, but it avoids the headaches of trying to make the fallback to
"simple-bus" work and it would match how new DTs would be written. We
could make the driver 'default ARCH_<SOC_VENDOR>' so that it gets built
for olddefconfig users too.

