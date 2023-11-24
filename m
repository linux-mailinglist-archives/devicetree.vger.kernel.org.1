Return-Path: <devicetree+bounces-18666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B1E7F7889
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 17:05:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 210341C20921
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 16:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B49533CC1;
	Fri, 24 Nov 2023 16:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="qVmcs9xi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD45819A5
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 08:05:04 -0800 (PST)
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-da077db5145so1900271276.0
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 08:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1700841904; x=1701446704; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FGMFcjXzbEdk+Sse8VkaimKNQr0g8bw7uTtgiPTBa4Y=;
        b=qVmcs9xiioqxNCrBHmhMK3Y9pEMN/uCvw0r/CD+fTQXAeLtKHHqGiLVQ0DWTofHlA2
         csK/pKPkcfiRPbwq50ZBZzrvMNd3BG0HPyRkVg6FaHSoEnp2GTZT0Kfp6ZkHorCPjY1I
         K914M1AL/Dizr56uVnpXYp4jxfiHJCgCeoazky8IyFHrhvog0MQCaXR3nYLzX6gk+kc7
         XGxEDVZ3FnTpLM2UTLTn2xMYZMhfekbwwSIgonrSOO4gh3ZqbRl72jzkeHS1pl52bX75
         UIATDjGesE4TAJrhvNClNKeBo3NK/HovlKuZvlH2pFRlV+gEtrMN/CLamTW6bctb5fjn
         dlMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700841904; x=1701446704;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FGMFcjXzbEdk+Sse8VkaimKNQr0g8bw7uTtgiPTBa4Y=;
        b=oM6Cqo+tCfDiXysWl1a860lO25GeCJ2jVjP4uy+MSdjN+WEANzS6kaWLXayCAWDebQ
         1fDXfOc/ef83T/L9Pgf3OpttCxUHJ38+ZUQAW3D3eAdB41uD0uhzNI/Jr1JAW3cw/5oJ
         TdhMcb3gm0cS8dl1OKnEGa/N8mCC92mDHIQ5yFD+eywgZb05fTxZRmkU2ckJRMsL7YhN
         WooPEydio8ojJUP+DPvbAgJpdpbMEym4mUSdKc43TP/mtAokQcRfT3X35G7G5S+DEk53
         UTAetbn05AEuWhPD2RMiiklSa2oqZF9CmfcDY5eDJNMaSgB4BestFZ+NZBmUipY5xNeb
         zJCg==
X-Gm-Message-State: AOJu0YzsCI45tfgazDdlGGBFTKS16U9erDrCI27hFLhdHxNSRsJw3xC4
	/LyDDE8C6TOq80/lg3hRbtV5PhlPI7Qwm7IEKn7W7Zu8jw7kWCUcxP0=
X-Google-Smtp-Source: AGHT+IHDgEc5/d/bHS+/3bhvmbDKVLXNvruKPPtv9g7wbHtBvMJ6nCQ5UHivqzqIt+ZGbt+K3E1Ap3ZKIgfp0CQUNE8=
X-Received: by 2002:a25:8e0a:0:b0:da0:5ba2:6275 with SMTP id
 p10-20020a258e0a000000b00da05ba26275mr2764586ybl.34.1700841904036; Fri, 24
 Nov 2023 08:05:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231124104451.44271-1-shengyang.chen@starfivetech.com> <dab03c60-caa9-47e3-9dac-fa499227b67b@gmx.net>
In-Reply-To: <dab03c60-caa9-47e3-9dac-fa499227b67b@gmx.net>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 24 Nov 2023 16:04:47 +0000
Message-ID: <CAPY8ntAXYVTTfXL5HX-14t-VDe63eFgRBNKA0aG3RamKepxwDQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] Add waveshare 7inch touchscreen panel support
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Shengyang Chen <shengyang.chen@starfivetech.com>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, thierry.reding@gmail.com, 
	neil.armstrong@linaro.org, conor+dt@kernel.org, keith.zhao@starfivetech.com, 
	tzimmermann@suse.de, krzysztof.kozlowski+dt@linaro.org, sam@ravnborg.org, 
	linux-kernel@vger.kernel.org, mripard@kernel.org, jack.zhu@starfivetech.com, 
	robh+dt@kernel.org, bcm-kernel-feedback-list@broadcom.com, 
	linux-rpi-kernel@lists.infradead.org, florian.fainelli@broadcom.com, 
	quic_jesszhan@quicinc.com, changhuang.liang@starfivetech.com, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 24 Nov 2023 at 15:00, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hi Shengyang,
>
> [fix address of Emma]

Not merged to master yet, but Emma has stepped back from maintenance.
https://lists.freedesktop.org/archives/dri-devel/2023-October/428829.html
Dropped from the cc.

> Am 24.11.23 um 11:44 schrieb Shengyang Chen:
> > This patchset adds waveshare 7inch touchscreen panel support
> > for the StarFive JH7110 SoC.
> >
> > Patch 1 add new compatible for the raspberrypi panel driver and its dt-binding.
> > Patch 2 add new display mode and new probing process for raspberrypi panel driver.
> >
> > Waveshare 7inch touchscreen panel is a kind of raspberrypi panel
> > which can be drived by raspberrypi panel driver.
> >
> > The series has been tested on the VisionFive 2 board.
> surprisingly i was recently working on the official Raspberry Pi
> touchscreen and was able to get it running the new way.
>
> What do i mean with the new way. There is almost nothing special to the
> Raspberry Pi touchscreen, so we should try to use/extend existing
> components like:
>
> CONFIG_DRM_PANEL_SIMPLE
> CONFIG_TOUCHSCREEN_EDT_FT5X06
> CONFIG_DRM_TOSHIBA_TC358762
>
> The only special part is the Attiny on the connector PCB which requires:
>
> CONFIG_REGULATOR_RASPBERRYPI_TOUCHSCREEN_ATTINY
>
> So the whole point is to avoid writing monolitic drivers for simple
> panel like that.
>
> There is a WIP branch based on top of Linux 6.7-rcX, which should
> demonstrate this approach [1]. Unfortunately it is not ready for
> upstreaming, but it has been tested on a Raspberry Pi 3 B Plus. Maybe
> this is helpful for your case.
>
> Actually i consider panel-raspberrypi-touchscreen.c as a dead end, which
> shouldn't be extended.

Agreed.

The panel control being bound in with the Atmel control has no hook
for the EDT5x06 touch driver to hook in and keep the power to the
touch controller active. When the panel disable gets called, bye bye
touch overlay :-(

And I'm reading the driver change as more of a hack to get it to work
on your platform, not as adding support for the Waveshare panel
variant.
Waveshare deliberately cloned the behaviour of the Pi 7" panel in
order to make it work with the old Pi firmware drivers, so it
shouldn't need any significant changes. Where did the new timings come
from?

  Dave

> Btw there are already DT overlays in mainline which seems to use the
> Raspberry Pi 7inch panel (without touch function yet) [2].
>
> [1] - https://github.com/lategoodbye/rpi-zero/commits/v6.7-7inch-ts
> [2] -
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rpidsi.dtso?h=v6.6.2&id=6b4da1354fd81adace0cda448c77d8f2a47d8474
>
> >
> > Shengyang Chen (2):
> >    dt-bindings: display: panel: raspberrypi: Add compatible property for
> >      waveshare 7inch touchscreen panel
> >    gpu: drm: panel: raspberrypi: add new display mode and new probing
> >      process
> >
> >   .../panel/raspberrypi,7inch-touchscreen.yaml  |  4 +-
> >   .../drm/panel/panel-raspberrypi-touchscreen.c | 99 ++++++++++++++++---
> >   2 files changed, 91 insertions(+), 12 deletions(-)
> >
>

