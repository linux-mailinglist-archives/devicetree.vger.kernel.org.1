Return-Path: <devicetree+bounces-22360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4F8807326
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 15:57:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5FB3A1C209C6
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 14:57:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFD933EA82;
	Wed,  6 Dec 2023 14:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="JicZTx6B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2885CD50
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 06:56:53 -0800 (PST)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-5d852ac9bb2so40162647b3.2
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 06:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1701874612; x=1702479412; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Xu1buH3lnMDqFORohFaBBuM9NJak7+lWlXXlT1N3rgM=;
        b=JicZTx6BgftLzloEUMfGwswx8WYevMO1CXChXNmiuhtXloYuEROXpW5SOD3tTM25d2
         WaMJMDH/G36zVFcmGsW7mE7BKELzPNffAOBO6ty227x4Wc0+f1qqqihk1LRYsWa7WTvU
         Yxhexg+5uwcc8U7WA3x9t7Ne4opz0acMJamCdno5Zud1DFw7w3toFcpqTMNmblfnt+VI
         elz1Dgg3gLwdNtUPYzWEAshLDDq9PvZACsBdFk53kmULyNB2jpOS1WQP5MPnkSNyAQxM
         2GBDeJiofGmKXGPPNTKHYqu+mPeLgqyVJrf/ZYjhpibXcaK3ABlDI14GUjNFdvTgFlf1
         3noQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701874612; x=1702479412;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xu1buH3lnMDqFORohFaBBuM9NJak7+lWlXXlT1N3rgM=;
        b=snRQUIl5bPEwKDbfBnKjaxtYEzL4gY76E59XBWBIuU9O+FqOjVA4AKkFM1/oQi+08f
         WbizwTqHz5SDExK75sEUBsMz1PAKb5PbeXql+fVuNNj+AAhEaSHSz/WgKFKnFKl9rNbQ
         99gUuukxrlD3kjEA9apx7puglXiCtn6Yc3IWVYpU+FsQhp1AVdHSenucoEyKLBFB4h3o
         U5s5/MwGPlUmvm7Z5prMpq+P3ap8ZdLqaOpP5l2iAlLZC47UOz2GT6mWIjHs5mwMb2ny
         MoEf9+xALUsRK12RGFIHVKU9Oj8CbWjK0NsLxxSTX6vbt2/PlNv0XBHjXkDmmBbjjrwS
         KkfQ==
X-Gm-Message-State: AOJu0YzASwsFkPOLNVNlAknfrsPMO1VfbeO7rTVtq+JbRv9aGa+qqutO
	wJsyTJp7D8uzzY7M82xHTSYgnKYMwTyxfEuO/7XXMnMbyG0F1DtdjEI=
X-Google-Smtp-Source: AGHT+IGgsA0MehNZm3oJsLVw7XM8huEyCBgfWtoBPY5VJUsD7IuHn9CYOs2fsK8acNeFNEUfQmFmB5T6hP/cgM/Al1E=
X-Received: by 2002:a81:ad48:0:b0:5d3:7c0b:9547 with SMTP id
 l8-20020a81ad48000000b005d37c0b9547mr957756ywk.12.1701874612286; Wed, 06 Dec
 2023 06:56:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231124104451.44271-1-shengyang.chen@starfivetech.com>
 <dab03c60-caa9-47e3-9dac-fa499227b67b@gmx.net> <CAPY8ntAXYVTTfXL5HX-14t-VDe63eFgRBNKA0aG3RamKepxwDQ@mail.gmail.com>
 <5b837622-3ac9-47d5-aaf1-6b1ef5144c1c@starfivetech.com>
In-Reply-To: <5b837622-3ac9-47d5-aaf1-6b1ef5144c1c@starfivetech.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 6 Dec 2023 14:56:37 +0000
Message-ID: <CAPY8ntCw_-QG_v-KGipshq09sZ1fD3yascrHcLz3TYREmnk0sA@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] Add waveshare 7inch touchscreen panel support
To: Keith Zhao <keith.zhao@starfivetech.com>
Cc: Stefan Wahren <wahrenst@gmx.net>, Shengyang Chen <shengyang.chen@starfivetech.com>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"thierry.reding@gmail.com" <thierry.reding@gmail.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"tzimmermann@suse.de" <tzimmermann@suse.de>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "sam@ravnborg.org" <sam@ravnborg.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "mripard@kernel.org" <mripard@kernel.org>, 
	Jack Zhu <jack.zhu@starfivetech.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"bcm-kernel-feedback-list@broadcom.com" <bcm-kernel-feedback-list@broadcom.com>, 
	"linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>, 
	"florian.fainelli@broadcom.com" <florian.fainelli@broadcom.com>, 
	"quic_jesszhan@quicinc.com" <quic_jesszhan@quicinc.com>, 
	Changhuang Liang <changhuang.liang@starfivetech.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"

Hi Keith

On Wed, 6 Dec 2023 at 08:55, Keith Zhao <keith.zhao@starfivetech.com> wrote:
>
>
>
> On 2023/11/25 0:04, Dave Stevenson wrote:
> > On Fri, 24 Nov 2023 at 15:00, Stefan Wahren <wahrenst@gmx.net> wrote:
> >>
> >> Hi Shengyang,
> >>
> >> [fix address of Emma]
> >
> > Not merged to master yet, but Emma has stepped back from maintenance.
> > https://lists.freedesktop.org/archives/dri-devel/2023-October/428829.html
> > Dropped from the cc.
> >
> >> Am 24.11.23 um 11:44 schrieb Shengyang Chen:
> >> > This patchset adds waveshare 7inch touchscreen panel support
> >> > for the StarFive JH7110 SoC.
> >> >
> >> > Patch 1 add new compatible for the raspberrypi panel driver and its dt-binding.
> >> > Patch 2 add new display mode and new probing process for raspberrypi panel driver.
> >> >
> >> > Waveshare 7inch touchscreen panel is a kind of raspberrypi panel
> >> > which can be drived by raspberrypi panel driver.
> >> >
> >> > The series has been tested on the VisionFive 2 board.
> >> surprisingly i was recently working on the official Raspberry Pi
> >> touchscreen and was able to get it running the new way.
> >>
> >> What do i mean with the new way. There is almost nothing special to the
> >> Raspberry Pi touchscreen, so we should try to use/extend existing
> >> components like:
> >>
> >> CONFIG_DRM_PANEL_SIMPLE
> >> CONFIG_TOUCHSCREEN_EDT_FT5X06
> >> CONFIG_DRM_TOSHIBA_TC358762
> >>
> >> The only special part is the Attiny on the connector PCB which requires:
> >>
> >> CONFIG_REGULATOR_RASPBERRYPI_TOUCHSCREEN_ATTINY
> >>
> >> So the whole point is to avoid writing monolitic drivers for simple
> >> panel like that.
> >>
> >> There is a WIP branch based on top of Linux 6.7-rcX, which should
> >> demonstrate this approach [1]. Unfortunately it is not ready for
> >> upstreaming, but it has been tested on a Raspberry Pi 3 B Plus. Maybe
> >> this is helpful for your case.
> >>
> >> Actually i consider panel-raspberrypi-touchscreen.c as a dead end, which
> >> shouldn't be extended.
> >
> > Agreed.
> >
> > The panel control being bound in with the Atmel control has no hook
> > for the EDT5x06 touch driver to hook in and keep the power to the
> > touch controller active. When the panel disable gets called, bye bye
> > touch overlay :-(
> >
> > And I'm reading the driver change as more of a hack to get it to work
> > on your platform, not as adding support for the Waveshare panel
> > variant.
> > Waveshare deliberately cloned the behaviour of the Pi 7" panel in
> > order to make it work with the old Pi firmware drivers, so it
> > shouldn't need any significant changes. Where did the new timings come
> > from?
> >
> >   Dave
> hi Dave :
> that's means the panel driver split into 3 sub-modules:
> panel + panel_bridge + regulator.

Correct.

You'll have a fourth device in edt_ft5x06 for the touch overlay too,
which will link to the regulator driver for power control.

> I have a question: in the
> static int rpi_touchscreen_probe(struct i2c_client *i2c)
> {
>         ......
>
>         ver = rpi_touchscreen_i2c_read(ts, REG_ID);
>         if (ver < 0) {
>                 dev_err(dev, "Atmel I2C read failed: %d\n", ver);
>                 return -ENODEV;
>         }
>
>         switch (ver) {
>         case 0xde: /* ver 1 */
>         case 0xc3: /* ver 2 */
>                 break;
>         default:
>                 dev_err(dev, "Unknown Atmel firmware revision: 0x%02x\n", ver);
>                 return -ENODEV;
>         }
>
>         ......
> }
> i think this "I2C read" can use to detect whether the panel is connected to dsi controller.
>
> and when split the panel driver into 3 sub-modules, it seems the default way is connected.
> if I drop the panel , run modetest to check the connector status , result connected.
> Is there any way to detect the connection in this case?
> Thanks

I am not aware of any DSI drivers that support hotplugging, therefore
the connector state will always be connected if the device probes.

On vc4 the relevant DSI host controller has to have been enabled in
device tree and will be a required component for binding. The DSI host
controller will be waiting on the DSI peripheral driver to call
mipi_dsi_attach, which then calls component_add. If the panel or panel
regulator isn't present, then that never happens if the panel isn't
present, so vc4 won't bind.
It is a little ugly in that you lose the whole DRM card, but that is
how I understand DRM is generally set up to work for DSI or similar
display interfaces.

> -------------------------------------
>
> Where did the new timings come from?
>
> -------------------------------------
> My platform dphy tx hardware has certain limitations.
> Only supports integer multiples of 10M bitrate:
> such as 160M ,170M, 180M,190M,...1G(max)
>
> as common dphy bitrate = pixclock*bpp/lanes.
> This value cannot match successfully in most cases.
>
> so in order to match bitrate , I choose a bitrate value around pixclock*bpp/lanes,
> Prevent overflow and underflow by fine-tuning the timing parameters:-(
> that will make the new timming value.

That isn't really a function of the panel then.

All DRM bridges have the option to define a mode_fixup in
drm_bridge_funcs, and that gives you the option to adjust the timings
as required.

vc4 has a similar constraint in that the PHY only has an integer
divider from a 2 or 3GHz PLL. It implements mode_fixup to compute the
next highest pixel clock, and then adjusts the horizontal front porch
to keep the same line timing. See
https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/vc4/vc4_dsi.c#L825

  Dave

> >
> >> Btw there are already DT overlays in mainline which seems to use the
> >> Raspberry Pi 7inch panel (without touch function yet) [2].
> >>
> >> [1] - https://github.com/lategoodbye/rpi-zero/commits/v6.7-7inch-ts
> >> [2] -
> >> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rpidsi.dtso?h=v6.6.2&id=6b4da1354fd81adace0cda448c77d8f2a47d8474
> >>
> >> >
> >> > Shengyang Chen (2):
> >> >    dt-bindings: display: panel: raspberrypi: Add compatible property for
> >> >      waveshare 7inch touchscreen panel
> >> >    gpu: drm: panel: raspberrypi: add new display mode and new probing
> >> >      process
> >> >
> >> >   .../panel/raspberrypi,7inch-touchscreen.yaml  |  4 +-
> >> >   .../drm/panel/panel-raspberrypi-touchscreen.c | 99 ++++++++++++++++---
> >> >   2 files changed, 91 insertions(+), 12 deletions(-)
> >> >
> >>

