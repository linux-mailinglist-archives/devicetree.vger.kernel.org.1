Return-Path: <devicetree+bounces-81973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBA191E1C0
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 16:01:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC0FCB26638
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 14:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C969F15F322;
	Mon,  1 Jul 2024 14:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="ZQKaE+tq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E964C15ECED
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 14:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719842437; cv=none; b=t+2qRxdqOCYxmYtqofANgMr2BnoAQJniy2HJxNYpz9gcqRpIG5LNeyE10tuAleWuWHFYmRXuxLf+6A/4d+yOIcJWerN671AjmJAE41fP8PNId8lnKHAo0VwZkK5wE+mlY0J4XyqS2wLidnsGVPl15nCxH8aq3dpf2pRkMwauV8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719842437; c=relaxed/simple;
	bh=TlvbxZ9JbIdfsPX/FV+25GcJGzDSr4wkVnI2yY2DQeQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H1JD4cAkp75JAgpycmwwqZ9p2QI4LrEGxtAzTqYvzCp4TQWTjwofsjMDs83ReQ4sQjvQ/jOqfESSPl1ffxN155vvGbrQSbEK27smWDN1VLJh8KiVTTUIacTyHbtgOrHhJ7UdAtJ+aed/a9uQe6ggzb0dvKkqHf3JHYNu+GJdZbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=ZQKaE+tq; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dfe43dca3bfso2620432276.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 07:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1719842435; x=1720447235; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vQmQhGzXksR9nKnDEcUMRooEIa3TmT02Xr/hSLyAdds=;
        b=ZQKaE+tqnWDB9Gd3L8+0iWnxz45rXbiZ6It2++njJBTRMzEcRvBYR3Wvu2wwtsPuJ6
         sZlNF2bhH7q58Mb+AxB0dEubeBou3lMMV6tDeo4QKSY5+oPbdjZINkb85pW9En5w8j9i
         Q9DpS7D4duOowvQBv1P+tXFXqjS1r86nRl44bIVmluzMhxsybAgUBOar1KvWb5+lvcip
         SnXH8yuRyQa7LwyirKsFNNkQrRFec0urTFjQE9/hBpQPUfjInrwlarlZEoEqIdueHMw5
         MJ6Euq7FMr79xsoGLwEDjLHBS1rm0t84iSKKCuWjD8qUL7ohdWP4k9ofyjP3E1EuWPzQ
         CSeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719842435; x=1720447235;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vQmQhGzXksR9nKnDEcUMRooEIa3TmT02Xr/hSLyAdds=;
        b=NIxTLp8rSVq86MW0L7npkWVBEAw65YeCMfy9xAfqDYNSzaVFW80BB+wYMRjl3lZdoN
         /LAXkxuEFFAXhWcHLr8ilpm/Lq/uIQDAo/o5FCLhg1ANbhb7WneybbWiBh9vDGrcdQix
         /6qff1ffMKeBGbeGTWKsebQjq8GsMlvq/gSheJ4TcE9twpXVzAydjMwCa5s0OCoT1Rdr
         q1GYz6z6EZb0RiHIRbIGSRXwdtXbkLSQYWICazz02q7V2iTiJcRt4TwisUxQu6XT5mEg
         GukqbHqqe7lg7rzCqdJb5dQfkh7X8YzdWLnaxRwyJr3ueiBoD5NSZKDulZgfU2dRuHRy
         9sHw==
X-Forwarded-Encrypted: i=1; AJvYcCXn/uj+dijDWkA/WBjAA3FezUmYrBpD44+CXTypcY9BMG0QHBrcCA+sEJ7vKuNwmyFl9EhPLKwpQeTl7PcQGjcDRC/LlRNarfRn+w==
X-Gm-Message-State: AOJu0Ywns1YBDU8tfMh9BuLDpXCg2idYU/fyMOzbcjP6Dx0d36giwBdH
	U6nwfMWaMyxAyQaspYbj97FUdtCHPR8CsCXpEFWAqi8Vy+ZW8boayWBRb+8Df7zEfCToKamnfPL
	T7PKtzJYlB5V7z30wJTHVvWNUbEY331MSwjlTsQ==
X-Google-Smtp-Source: AGHT+IGuOCjZc1h86QjIqKAEJQJHMLC6Fum29438lWdBlbcNmDsNzjPr4JOvu0g45BKOpIOEuzSwn6JY1/6xuhjs2z4=
X-Received: by 2002:a25:f44e:0:b0:e03:562c:7e92 with SMTP id
 3f1490d57ef6-e036eb54999mr4457628276.24.1719842434688; Mon, 01 Jul 2024
 07:00:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240628-imx728-driver-v2-0-80efa6774286@d3engineering.com>
 <20240628-imx728-driver-v2-2-80efa6774286@d3engineering.com> <5802879.DvuYhMxLoT@steina-w>
In-Reply-To: <5802879.DvuYhMxLoT@steina-w>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Mon, 1 Jul 2024 15:00:16 +0100
Message-ID: <CAPY8ntDbtL_+aRr9WaBjc103Qqt8FHKWZ-oRYNwA24WR-cWGLg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] media: i2c: Add driver for Sony IMX728
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Spencer Hill <shill@d3engineering.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexander

On Mon, 1 Jul 2024 at 10:25, Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> Hi,
>
> Am Freitag, 28. Juni 2024, 23:17:01 CEST schrieb Spencer Hill:
> > Add a driver for the Sony IMX728 image sensor.
> >
> > Signed-off-by: Spencer Hill <shill@d3engineering.com>
> > ---
> >  drivers/media/i2c/Kconfig  |   11 +
> >  drivers/media/i2c/Makefile |    1 +
> >  drivers/media/i2c/imx728.c | 4660 ++++++++++++++++++++++++++++++++++++=
++++++++
> >  3 files changed, 4672 insertions(+)
> >
> > diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
> > index c6d3ee472d81..46b6463c558a 100644
> > --- a/drivers/media/i2c/Kconfig
> > +++ b/drivers/media/i2c/Kconfig
> > @@ -233,6 +233,17 @@ config VIDEO_IMX415
> >           To compile this driver as a module, choose M here: the
> >           module will be called imx415.
> >
> > +config VIDEO_IMX728
> > +       tristate "Sony IMX728 sensor support"
> > +       depends on OF_GPIO
> > +       select V4L2_CCI_I2C
> > +       help
> > +         This is a Video4Linux2 sensor driver for the Sony
> > +         IMX728 camera.
> > +
> > +         To compile this driver as a module, choose M here: the
> > +         module will be called imx728.
> > +
> >  config VIDEO_MAX9271_LIB
> >         tristate
> >
> > diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
> > index dfbe6448b549..1188420ee1b4 100644
> > --- a/drivers/media/i2c/Makefile
> > +++ b/drivers/media/i2c/Makefile
> > @@ -56,6 +56,7 @@ obj-$(CONFIG_VIDEO_IMX335) +=3D imx335.o
> >  obj-$(CONFIG_VIDEO_IMX355) +=3D imx355.o
> >  obj-$(CONFIG_VIDEO_IMX412) +=3D imx412.o
> >  obj-$(CONFIG_VIDEO_IMX415) +=3D imx415.o
> > +obj-$(CONFIG_VIDEO_IMX728) +=3D imx728.o
> >  obj-$(CONFIG_VIDEO_IR_I2C) +=3D ir-kbd-i2c.o
> >  obj-$(CONFIG_VIDEO_ISL7998X) +=3D isl7998x.o
> >  obj-$(CONFIG_VIDEO_KS0127) +=3D ks0127.o
> > diff --git a/drivers/media/i2c/imx728.c b/drivers/media/i2c/imx728.c
> > new file mode 100644
> > index 000000000000..190f54aaf4e9
> > --- /dev/null
> > +++ b/drivers/media/i2c/imx728.c
> > @@ -0,0 +1,4660 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Sony IMX728 CMOS Image Sensor Driver
> > + *
> > + * Copyright (c) 2024 Define Design Deploy Corp
> > + */
> > +
> > +#include <linux/delay.h>
> > +#include <linux/clk.h>
> > +#include <linux/gpio/consumer.h>
> > +#include <linux/i2c.h>
> > +#include <linux/types.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/pm_runtime.h>
> > +#include <linux/v4l2-mediabus.h>
> > +#include <linux/videodev2.h>
> > +#include <media/v4l2-subdev.h>
> > +#include <media/v4l2-ctrls.h>
> > +#include <media/v4l2-event.h>
> > +#include <media/v4l2-cci.h>
> > +
> > +#define IMX728_FRAMERATE_MAX           30
>
> Bindings state the framerate is up to 45 fps, to this should be
> set accordingly.

Not necessarily. The binding describes the hardware, not the
functionality implemented by the driver.

The link frequency defined may not be sufficient to support 45fps -
perfectly valid.
The binding also lists that it can produce RAW24/20/16/12 and 10, but
the driver only currently implements RAW10. Hopefully the others get
added at a later date.

The bindings for many sensors advertise a wide range of potential
input clock frequencies, but most only implement a 1 or 2. (I'm
slightly surprised this sensor appears to be able to configure all
PLLs just by being told the frequency of the clock, but it's
possible).
Many sensors could support using a different number of CSI2 data lanes
and reference it in their bindings, but currently don't.

AIUI All of those are acceptable to be stated in the bindings but not
currently implemented in the drivers.


What does appear to be an issue here is that setting the frame
interval appears to never be programmed into the sensor, so you have
no frame rate control (imx728->fps is never read other than in
imx728_get_frame_interval). There's no point in advertising the
capability if it isn't connected up.
If frame rate/interval control was hooked up, it'd be nice if that
also set the maximum exposure time based on the frame interval.

  Dave

> > +#define IMX728_FRAMERATE_DEFAULT       30
> > +#define IMX728_FRAMERATE_MIN           10
> > +
> > +#define IMX728_PIXEL_ARRAY_WIDTH       3857
> > +#define IMX728_PIXEL_ARRAY_HEIGHT      2177
> > +#define IMX728_PIXEL_ARRAY_MARGIN_TOP  9
> > +#define IMX728_PIXEL_ARRAY_MARGIN_LEFT 8
> > +#define IMX728_PIXEL_ARRAY_RECORDING_WIDTH     3840
> > +#define IMX728_PIXEL_ARRAY_RECORDING_HEIGHT    2160
> > +
> > +#define IMX728_PIXEL_RATE              248832000
> > +#define IMX728_LINK_FREQ               800000000
> > +
> > +#define IMX728_EXPOSURE_DEFAULT                10000
> > +
> > +#define IMX728_PM_IDLE_TIMEOUT         1000
> > +
> > +#define IMX728_REG_STATE       CCI_REG8(0x2CAC)
> > +#define IMX728_REG_PG_00       CCI_REG16_LE(0x1A2A)
> > +#define IMX728_REG_PG_01       CCI_REG24_LE(0x1A30)
> > +#define IMX728_REG_PG_02       CCI_REG24_LE(0x1A38)
> > +#define IMX728_REG_PG_03       CCI_REG8(0xB58F)
> > +#define IMX728_REG_PG_04       CCI_REG8(0xB6C5)
> > +#define IMX728_REG_PG_05       CCI_REG16_LE(0x1A2C)
> > +#define IMX728_REG_PG_06       CCI_REG8(0xB58E)
> > +#define IMX728_REG_PG_07       CCI_REG8(0xB6C4)
> > +#define IMX728_REG_EXPOSURE_00 CCI_REG32_LE(0x98DC)
> > +#define IMX728_REG_EXPOSURE_01 CCI_REG32_LE(0x98E4)
> > +#define IMX728_REG_EXPOSURE_02 CCI_REG32_LE(0x98EC)
> > +#define IMX728_REG_AGAIN_00    CCI_REG32_LE(0x98F8)
> > +#define IMX728_REG_AGAIN_01    CCI_REG32_LE(0x98FC)
> > +#define IMX728_REG_AGAIN_02    CCI_REG32_LE(0x9900)
> > +#define IMX728_REG_AGAIN_03    CCI_REG32_LE(0x9904)
> > +#define IMX728_REG_AGAIN_04    CCI_REG32_LE(0x9908)
> > +#define IMX728_REG_FLIP                CCI_REG8(0x9651)
> > +#define IMX728_REG_HFLIP       CCI_REG8(0xB67C)
> > +#define IMX728_REG_VFLIP       CCI_REG8(0xB67D)
> > +#define IMX728_REG_VMINOR      CCI_REG8(0x6000)
> > +#define IMX728_REG_VMAJOR      CCI_REG8(0x6002)
> > +#define IMX728_REG_RESET_0     CCI_REG8(0xB661)
> > +#define IMX728_REG_RESET_1     CCI_REG8(0x95C5)
> > +#define IMX728_REG_INCK_0      CCI_REG8(0x1B20)
> > +#define IMX728_REG_INCK_1      CCI_REG8(0x1B1C)
> > +#define IMX728_REG_SLEEP       CCI_REG8(0x1B05)
> > +#define IMX728_REG_REGMAP      CCI_REG8(0xFFFF)
> > +#define IMX728_REG_HDR_00      CCI_REG32_LE(0x9C60)
> > +#define IMX728_REG_HDR_01      CCI_REG32_LE(0x9C6C)
> > +#define IMX728_REG_HDR_02      CCI_REG32_LE(0x9C64)
> > +#define IMX728_REG_HDR_03      CCI_REG32_LE(0x9C70)
> > +#define IMX728_REG_HDR_04      CCI_REG16_LE(0x9C68)
> > +#define IMX728_REG_HDR_05      CCI_REG16_LE(0x9C74)
> > +#define IMX728_REG_HDR_06      CCI_REG16_LE(0x9C6A)
> > +#define IMX728_REG_HDR_07      CCI_REG16_LE(0x9C76)
> > +#define IMX728_REG_AE_MODE     CCI_REG8(0x98AC)
> > +#define IMX728_REG_AWBMODE     CCI_REG8(0xA248)
> > +#define IMX728_REG_AWB_EN      CCI_REG8(0x1808)
> > +#define IMX728_REG_UNIT_00     CCI_REG8(0x98E0)
> > +#define IMX728_REG_UNIT_01     CCI_REG8(0x98E8)
> > +#define IMX728_REG_UNIT_02     CCI_REG8(0x98F0)
> > +#define IMX728_REG_MD_00       CCI_REG8(0x1708)
> > +#define IMX728_REG_MD_01       CCI_REG8(0x1709)
> > +#define IMX728_REG_MD_02       CCI_REG8(0x170A)
> > +#define IMX728_REG_MD_03       CCI_REG8(0x1B40)
> > +#define IMX728_REG_MODE_SEL    CCI_REG16_LE(0x9728)
> > +#define IMX728_REG_OUT_MODE    CCI_REG8(0xEC7E)
> > +#define IMX728_REG_OB_0                CCI_REG16_LE(0xEC12)
> > +#define IMX728_REG_OB_1                CCI_REG8(0xEC14)
> > +#define IMX728_REG_SKEW                CCI_REG8(0x1761)
> > +#define IMX728_REG_SUBP_0      CCI_REG8(0x9714)
> > +#define IMX728_REG_SUBP_1      CCI_REG8(0xB684)
> > +#define IMX728_REG_STREAM_00   CCI_REG8(0x9789)
> > +#define IMX728_REG_STREAM_01   CCI_REG8(0x95C1)
> > +#define IMX728_REG_STREAM_02   CCI_REG8(0x1B04)
>
> Can you sort them by register address?
>
> > +#define IMX728_REG_CTRL_POINT_X(i) CCI_REG32(0xA198 + (i) * 8)
> > +#define IMX728_REG_CTRL_POINT_Y(i) (IMX728_REG_CTRL_POINT_X(i) + 4)
>
> >[snip]
>
> Best regards,
> Alexander
>
> > --
> > 2.43.0
> >
> > Please be aware that this email includes email addresses outside of the=
 organization.
> >
>
>
> --
> TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Ge=
rmany
> Amtsgericht M=C3=BCnchen, HRB 105018
> Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan S=
chneider
> http://www.tq-group.com/
>
>

