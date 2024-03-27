Return-Path: <devicetree+bounces-53884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E6488E855
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 16:18:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD7381C2D6D0
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 15:18:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E967C13F458;
	Wed, 27 Mar 2024 14:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="OmWGDzxG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7A4130497
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 14:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711551283; cv=none; b=bxICfORpV9pDz6bDDlCbEHE+rUeEZLdWOcMId6JtXnM7a2f7HzBTR2CXXa1Cq74phHOTMMau6s0hg3dBgP1x8ePUXyh3MQF6AT6hD73OJef8ap3LSRv7sLhP6PQnyI0hAfd9LgqSuJ+BxHFQ+PcuztwV4PRqS6NGED3ZsmNMsIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711551283; c=relaxed/simple;
	bh=wmchFcjRBa/WPU/ODUXJfcxOntNjYDPrqpZ0OgG8ElM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CoIcFa47dYCokF7BCvDeRDgqKqTNAZAwk0K07LpRdLzKv20WL03aE7S4L9P+2IRHgT+RyVasn8Y4H7I0X4J0X4+HjcxWuYS3nc64pDjaoQR/U1J0bVMo23kTcGkjb6zJ0u9m2jDUzHbPHrWEdqzHTd7guwXWuXc0h+0iHjI6rio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=OmWGDzxG; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dc6cbe1ac75so760748276.1
        for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 07:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1711551279; x=1712156079; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aYHH853VZIgX/VOtrKl+GbT/Y365xF7D6u6megISNGk=;
        b=OmWGDzxGJhCSsnQlR8Muv0DmKqyK51Fkxrs9zkYb2aBj2JnO7OfbZpQ84yJZe2LFN/
         NxxnvP3nQwji0f+VQj5oeMXlHTMY2p0+3fBGeQfjPJV9JkV8Os/GfamgfPc17kDdtJpt
         vOVkjzKuGfII8ZKi74SudE/DDns09+1STKXONz+20NZgivp/S+lMa20cXMkCeFLA4WVn
         J8K0H24ClebFh6w38gHCCdxXOGnEnBd5qKJTWoNYmT/xwzYqJRU7OxsHJr8egmja4/sS
         tyA23mSrP6VPlu6DIeGRpRhiB4sAIMPBrVBE587uohEQ74Df8HbrA+8ACQyZv5rVRz2U
         RwhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711551279; x=1712156079;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aYHH853VZIgX/VOtrKl+GbT/Y365xF7D6u6megISNGk=;
        b=mXiwhIdf+CzeiJwkM377RB7lKKynQkMo7yu6N5NbwePGS/WLYcDG46lwLsvmIMjx87
         L6qJ2BjiYlKZnID0vAELIV8u93A0G/A+EhMCqFSJRWKfKQPgsEP8MEtTitQVaJxTFRVU
         k5o/tLZdiwNReiqQoNlktnnnTbyRb/vTbgXlwAsJ8l9k6ZpCBhga4cU+cnG2YrKU7CDC
         GqQx9zdxfIeh/EMDkyVhnob0HLTXeMThhdVs4kbvhBzpPrwEYrhStwzBzaiOBGcbRin3
         pX7Z45+1D1/Il98pyxcVB9adhjsh0UCE/aa6EY/DLy3NddMevuFN7JcVSw3vW5ASy6+r
         Tkww==
X-Forwarded-Encrypted: i=1; AJvYcCWZWVxWrFLED3FzGJLG0UZ5hTmfIPHV5O/DZ2keR7NdkllaaHdoSUDRx5RY+ZSGuW6tbCtGxifeWfjzPa0XdVTHIgWeP33FR749Dw==
X-Gm-Message-State: AOJu0YzyPrJ82W+YYM39X81ahqWox/HQz8gRvKFD4RCCsecDr61qbdYd
	hn52xajBOV6JfqCYISTNW8VdyKWPkonTz5UkG95fSqDAmJGpx1AzudR8AsE7c7WK8K9AzfO/Yeg
	XaRs16BngrQL7ABSdQJI1S31Hz5wCeVGhSWBXvQ==
X-Google-Smtp-Source: AGHT+IGNE+8LmdFi52g5/yWimH5bSioeCBp/8mELwR7bhTSU5KnUwPz3Nm+whhvv7FJ6xq43owOdVXbkBjkbgoSP80s=
X-Received: by 2002:a25:2e06:0:b0:dc2:a46:3d29 with SMTP id
 u6-20020a252e06000000b00dc20a463d29mr134600ybu.9.1711551278849; Wed, 27 Mar
 2024 07:54:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240327000510.2541-1-laurent.pinchart@ideasonboard.com> <20240327001220.GA26859@pendragon.ideasonboard.com>
In-Reply-To: <20240327001220.GA26859@pendragon.ideasonboard.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 27 Mar 2024 14:54:22 +0000
Message-ID: <CAPY8ntDHvWUL3ZPu-hWT+V6iJJO7vZ794gLUqq3RFfyjZUqPNQ@mail.gmail.com>
Subject: Re: [PATCH v8 00/10] media: Add driver for the Raspberry Pi <5 CSI-2 receiver
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, linux-media@vger.kernel.org, 
	David Plowman <david.plowman@raspberrypi.com>, 
	Jean-Michel Hautbois <jeanmichel.hautbois@yoseli.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	Naushir Patuck <naush@raspberrypi.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	kernel-list@raspberrypi.com, linux-rpi-kernel@lists.infradead.org, 
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
	bcm-kernel-feedback-list@broadcom.com, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Laurent

On Wed, 27 Mar 2024 at 00:12, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Florian,
>
> I think patches 04/10 ("ARM: dts: bcm2835-rpi: Move firmware-clocks from
> bcm2711 to bcm2835"), 07/10 ("ARM: dts: bcm2711-rpi: Add pinctrl-based
> multiplexing for I2C0"a), 08/10 ("ARM: dts: bcm2711-rpi-cm4-io: Add RTC o=
n
> I2C0") and 09/10 ("ARM: dts: bcm2711-rpi-4-b: Add CAM1 regulator") are
> ready for you to merge. This would help reducing further iterations of
> this series.
>
> A review from Dave would be nice for 05/10 and 09/10 though.

Done.
Please do nudge me if there are patches you specifically want me to
review. I'm not directly involved in the camera side at present, so
only keeping a passing eye on these patchsets.

  Dave

> On Wed, Mar 27, 2024 at 02:04:58AM +0200, Laurent Pinchart wrote:
> > Hello everybody,
> >
> > This patch series adds a new driver for the BCM2835 (and derivative)
> > CCP2/CSI2 camera interface named Unicam. This IP core is found in the
> > VC4-based Raspberry Pi, namely the Pi Zero, Pi 3 and Pi 4.
> >
> > Camera support for Raspberry Pi 4 currently relies on a downstream
> > Unicam driver that live in the Raspberry Pi kernel tree ([1]). The
> > driver uses the V4L2 API, but works around the lack of features in V4L2
> > to properly support sensor embedded data. Since the Unicam driver
> > development by Raspberry Pi, some of those features have been merged in
> > the kernel (namely the V4L2 streams API) or are being developed (namely
> > generic metadata formats and subdev internal pads), with patches posted
> > for review on the linux-media mailing list ([2]).
> >
> > This new upstream driver is based on the downstream code, extensively
> > reworked to use the new V4L2 APIs.
> >
> > The series is based on a merge of
> >
> > - v8 of the generic metadata and internal pads, rebased on v6.9-rc1 ([3=
])
> > - the downstream ISP driver ported to mainline ([4])
> >
> > with a set of patches for the imx219 driver applied on top. For
> > convenience, it can be found in [5]. Note that the ISP driver is gettin=
g
> > upstreamed separately.
> >
> > Compared to v7, I have left the imx219 patches out, as they don't need
> > to be bundled with the Unicam driver for review. They will be
> > resubmitted separately.
> >
> > The series starts with four patches that add the Unicam driver (04/10),
> > with new V4L2 pixel formats (01/10 and 02/10) and DT bindings (03/10).
> > The remaining patches cover DT integration (05/10 to 09/10) with a
> > sample DT overlay for the IMX219 camera module (10/10).
> >
> > The patches have been tested on a Raspberry Pi 4 using an IMX219 camera
> > module (the Raspberry Pi camera v2), with libcamera. Updates are needed
> > to libcamera to use the new V4L2 APIs, patches have been posted to [6].
> > For manual testing with media-ctl, corresponding API updates to
> > v4l-utils are available at [7].
> >
> > While more work is needed to be able to merge the generic metadata API
> > (namely implementing support for the latest API version in media-ctl an=
d
> > v4l2-compliance), I'm happy with the unicam implementation, and I
> > believe we're really nearing completion. This series, along with the
> > libcamera support, help validating the new kernel APIs. We have reached
> > a point where we can start converting other sensor drivers from the
> > downstream Raspberry Pi kernel to the standard APIs for embedded data,
> > as well as integrating the APIs in the Raspberry Pi 5 CFE driver.
> >
> > [1] https://github.com/raspberrypi/linux/tree/rpi-6.1.y/drivers/media/p=
latform/bcm2835
> > [2] https://lore.kernel.org/linux-media/20240313072516.241106-1-sakari.=
ailus@linux.intel.com/
> > [3] https://git.kernel.org/pub/scm/linux/kernel/git/pinchartl/linux.git=
/log/?h=3Drpi/v6.9/metadata/v8
> > [4] https://git.kernel.org/pub/scm/linux/kernel/git/pinchartl/linux.git=
/log/?h=3Drpi/v6.9/isp/v2
> > [5] https://git.kernel.org/pub/scm/linux/kernel/git/pinchartl/linux.git=
/log/?h=3Drpi/v6.9/unicam/next
> > [6] https://lists.libcamera.org/pipermail/libcamera-devel/2024-March/04=
0711.html
> > [7] https://git.linuxtv.org/pinchartl/v4l-utils.git/log/?h=3Dmetadata
> >
> > Dave Stevenson (2):
> >   dt-bindings: media: Add bindings for bcm2835-unicam
> >   media: bcm2835-unicam: Add support for CCP2/CSI2 camera interface
> >
> > Jean-Michel Hautbois (3):
> >   media: v4l: Add V4L2-PIX-FMT-Y12P format
> >   media: v4l: Add V4L2-PIX-FMT-Y14P format
> >   ARM: dts: bcm2835: Add Unicam CSI nodes
> >
> > Laurent Pinchart (3):
> >   ARM: dts: bcm2835-rpi: Move firmware-clocks from bcm2711 to bcm2835
> >   ARM: dts: bcm2711-rpi-4-b: Add CAM1 regulator
> >   [DNI] arm64: dts: broadcom: Add overlay for Raspberry Pi 4B IMX219
> >     camera
> >
> > Uwe Kleine-K=C3=B6nig (2):
> >   ARM: dts: bcm2711-rpi: Add pinctrl-based multiplexing for I2C0
> >   ARM: dts: bcm2711-rpi-cm4-io: Add RTC on I2C0
> >
> >  .../bindings/media/brcm,bcm2835-unicam.yaml   |  127 +
> >  .../media/v4l/pixfmt-yuv-luma.rst             |   48 +
> >  MAINTAINERS                                   |    7 +
> >  .../arm/boot/dts/broadcom/bcm2711-rpi-4-b.dts |    7 +
> >  .../boot/dts/broadcom/bcm2711-rpi-cm4-io.dts  |    9 +
> >  arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi   |   34 +-
> >  arch/arm/boot/dts/broadcom/bcm2711.dtsi       |    8 +
> >  arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi   |   19 +
> >  arch/arm/boot/dts/broadcom/bcm283x.dtsi       |   24 +
> >  arch/arm64/boot/dts/broadcom/Makefile         |    4 +
> >  .../dts/broadcom/bcm2711-rpi-4-b-imx219.dtso  |   65 +
> >  drivers/media/platform/Kconfig                |    1 +
> >  drivers/media/platform/Makefile               |    1 +
> >  drivers/media/platform/broadcom/Kconfig       |   23 +
> >  drivers/media/platform/broadcom/Makefile      |    3 +
> >  .../platform/broadcom/bcm2835-unicam-regs.h   |  246 ++
> >  .../media/platform/broadcom/bcm2835-unicam.c  | 2671 +++++++++++++++++
> >  drivers/media/v4l2-core/v4l2-ioctl.c          |    2 +
> >  include/uapi/linux/videodev2.h                |    2 +
> >  19 files changed, 3296 insertions(+), 5 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/media/brcm,bcm283=
5-unicam.yaml
> >  create mode 100644 arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b-imx219=
.dtso
> >  create mode 100644 drivers/media/platform/broadcom/Kconfig
> >  create mode 100644 drivers/media/platform/broadcom/Makefile
> >  create mode 100644 drivers/media/platform/broadcom/bcm2835-unicam-regs=
.h
> >  create mode 100644 drivers/media/platform/broadcom/bcm2835-unicam.c
> >
> >
> > base-commit: 37a950b8e140e3bd97d22943ba860542111d64fe
>
> --
> Regards,
>
> Laurent Pinchart

