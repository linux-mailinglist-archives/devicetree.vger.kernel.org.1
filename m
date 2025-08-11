Return-Path: <devicetree+bounces-203327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B15F1B20B9B
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 16:20:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C959190159A
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 14:18:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE2F62192F8;
	Mon, 11 Aug 2025 14:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="feZMA08D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1EEF222566
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 14:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754921852; cv=none; b=Mfjzm7Zrj0cJFwMW2eoV4jWtSwBmh+BB80vogZcSHk2nHJlqclAS4Kxhf3gC+c1beZMIGhJeun6liJm8U/3cZABiSwDRgA+gVkpbY2LJ4s+x2Tj4XAUmMpJS8rbnc+03ocC7FIBoAK0+DBSCeepp+g+5d3R6CG2bkj3ArhU6qAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754921852; c=relaxed/simple;
	bh=cq3eN/N8maQVg/jZ8Uvaj4tz4pvvqrdpCcOjFhtVw4M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q1m9weF01GHyNMU/1YXockYha/pLP3gIfw2nokpqRwqG1ZTJqCeUHOfPiVUFzkYL2EE479UzngrIW7Gx62Y3NtJMrFZqHzHWINd70nJTqvhH4ttrC0NXXb9UqZ8q7Jkky7cAPDIWnUTBD/4ftgi6NnUm5qKUWjEdSoB5Cs5TXvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=feZMA08D; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-71bce78e14fso45529967b3.1
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1754921850; x=1755526650; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=puwxtPHVig0pLcGPa5PtlxSBrKX59zqgWPMSUINI7LM=;
        b=feZMA08DZql9yoYx/gFWZ+Bp0wwKGVy0G35gfPBLpvMUqRKDdE3ndYxxgSn5z7Eeke
         xBmyAtz/6hz+iELm731FYbGSe05O4pvWHhRTEHNIZzyH1O1Sioi9Dy9EcQ7H/Rbq0Ro1
         vhZqQLJi1Z4M14ZCMizFJedPHUEh8cFOFO6QNqf/i+8wDq/9LmUIyq/acjWhSglzWpB3
         K2fLbo/r2le4T0klSVFmxHwEdDSu3wqQWSq5oRI0B5IWOgT6P7FFAjfExwhUNdmPuXoF
         sycCda1Y7p2rwaTojH8g7smpH6Ptf46fn4iQeio9sLT/ofLBzoRykqxqeiqOgbV9pqFB
         Rs4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754921850; x=1755526650;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=puwxtPHVig0pLcGPa5PtlxSBrKX59zqgWPMSUINI7LM=;
        b=vruhUtVpDj2sOKKOPUbOGvm1FYgzSj2jeQC/6z7WUcAvZr6R31V2U0EfULF2z2CjUR
         dpQzfGLQ3Nr+xYwa8Mk/hxsmwO97z80gTGPFtjCHoTK+R5+92TkZcJboCcVf2yTJPrNN
         YuSWofZSbZug2MaMvo3Yem5x4NrzRvJ8nGjjqBGt6A69yCf4JspKS+I3WOgzsVH6raN6
         spGZ3g7oSsT1uicEX9GEmTL+uWpEqshdXH/YbfaWhLpqFeUW7mjzz/WSV6kjEInH30su
         RnuNfJO6Y6pfIlImbz9qTQ00Yll7kqDb7Xeh2X1mk3OGYFYGJCYf7kBnn3rFeIWeqs/e
         SfzA==
X-Forwarded-Encrypted: i=1; AJvYcCVgcHEpFT89Xbl5nBliUUiMGOlBzqHuCASVP05/yDsY1Ht0hntTw/AIEhQ08CjaoeT22AJlF0XG8Ew6@vger.kernel.org
X-Gm-Message-State: AOJu0YzYHVGaM2JOVHz4tm3/TfyWA1lwg8atwzwt8ACLc6Rw8JY8cg/c
	Q3JfN8fRD7iLR/P/doLqX0sGfs70zV5gdyQ/A4tWWOKl+Ox09KPaQNHqSVZ9FvMvHrWVzObf/Am
	lAVzNjT9ZmJIfbt9Sy5NzL3olKZYoLq4ifJO6ChxdgHGOBMRYqvJpPq8=
X-Gm-Gg: ASbGncvLN/VL3ignS0p0/4MLsdSv7bCPfIL03UaOH1l+vIktzLcKa4H9p+VuZ1rH+g6
	7Rvqlzf84hj8HI1SNZ3RR41GES3IczK5RhzI/AH7NydrIf8CklU4lr1Qbr77g803uuTGqnJ4Afg
	Ykj1rHu029SFB7es0UroE+n6kowxrY9Mgf4erWTMlGrdpc74lDeodwCNrqm2SR7zVserfbTfDdO
	yGn5SDeIuUTH8X+NKz1fwPzuaFeE47EjsY97ejPe9q2rhcL7g==
X-Google-Smtp-Source: AGHT+IFVaCpRCBxFG1bqxCNzdUSGe+eBkPCYYYPh+0MTbmkvki7WMFlCxRN6Cm4uIxlvBCrJrXYceQw4QvoWX2/rRPw=
X-Received: by 2002:a05:690c:4512:b0:71a:2093:3558 with SMTP id
 00721157ae682-71bf0d40397mr149493517b3.10.1754921845142; Mon, 11 Aug 2025
 07:17:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250810220921.14307-1-will@willwhang.com> <20250810220921.14307-5-will@willwhang.com>
In-Reply-To: <20250810220921.14307-5-will@willwhang.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Mon, 11 Aug 2025 15:17:08 +0100
X-Gm-Features: Ac12FXyDoyByiEv3fe1CZgzKXSdSvgFu4Jp68WuY3Fc0Vbm1z6eeV1MD3juzIy8
Message-ID: <CAPY8ntATfq=yqoYkpuD5Ga-7yUb8C-_k=wSZJBpz0p9PLjVk0w@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] media: docs: Add userspace-API guide for the
 IMX585 driver
To: Will Whang <will@willwhang.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Will

Thanks for the patches.

On Sun, 10 Aug 2025 at 23:11, Will Whang <will@willwhang.com> wrote:
>
> The new IMX585 V4L2 sub-device driver introduces several
> driver-specific controls for configuring Clear-HDR blending,
> gradation compression thresholds, and HCG enabling.  This patch adds
> an rst document under Documentation/userspace-api/media/drivers/
> that details each control, allowed values, and their effects.
>
> Signed-off-by: Will Whang <will@willwhang.com>
> ---
>  .../userspace-api/media/drivers/imx585.rst    | 122 ++++++++++++++++++
>  .../userspace-api/media/drivers/index.rst     |   1 +
>  MAINTAINERS                                   |   1 +
>  3 files changed, 124 insertions(+)
>  create mode 100644 Documentation/userspace-api/media/drivers/imx585.rst
>
> diff --git a/Documentation/userspace-api/media/drivers/imx585.rst b/Docum=
entation/userspace-api/media/drivers/imx585.rst
> new file mode 100644
> index 000000000..9f7c16f30
> --- /dev/null
> +++ b/Documentation/userspace-api/media/drivers/imx585.rst
> @@ -0,0 +1,122 @@
> +.. SPDX-License-Identifier: GPL-2.0-only
> +
> +Sony IMX585 driver
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +The IMX585 image-sensor driver provides the following *driver-specific*
> +V4L2 controls.  They are visible only when the IMX585 driver is loaded
> +and sit in the sensor-private control class.
> +
> +HDR data blending
> +-----------------
> +
> +``V4L2_CID_IMX585_HDR_DATASEL_TH``  (``U16[2]``)
> +    Lower/upper **thresholds** (0 =E2=80=93 4095) that decide which expo=
sure is
> +    chosen=E2=80=94or blended=E2=80=94for each pixel in Clear-HDR mode.
> +
> +``V4L2_CID_IMX585_HDR_DATASEL_BK``  (menu)
> +    **Blending ratio** between the long-gain (LG) and
> +    high-gain (HG) read-outs.
> +
> +    .. flat-table::
> +       :stub-columns: 0
> +       :widths: 1 5
> +
> +       * - ``0``
> +         - HG =C2=BD, LG =C2=BD
> +       * - ``1``
> +         - HG =C2=BE, LG =C2=BC
> +       * - ``2``     # duplicate ratio present in the datasheet
> +         - HG =C2=BD, LG =C2=BD
> +       * - ``3``
> +         - HG =E2=85=9E, LG =E2=85=9B
> +       * - ``4``
> +         - HG 15=E2=81=8416, LG 1=E2=81=8416
> +       * - ``5``     # second 50/50 entry as documented
> +         - **2=E2=81=BF=E1=B5=88** HG =C2=BD, LG =C2=BD
> +       * - ``6``
> +         - HG 1=E2=81=8416, LG 15=E2=81=8416
> +       * - ``7``
> +         - HG =E2=85=9B, LG =E2=85=9E
> +       * - ``8``
> +         - HG =C2=BC, LG =C2=BE
> +
> +Gradation compression
> +---------------------
> +
> +``V4L2_CID_IMX585_HDR_GRAD_TH``  (``U32[2]``)
> +    17-bit **break-points** (0 =E2=80=93 0x1ffff) that shape the 16-bit
> +    gradation-compression curve.
> +
> +``V4L2_CID_IMX585_HDR_GRAD_COMP_L``  (menu)
> +    See V4L2_CID_IMX585_HDR_GRAD_COMP_H
> +
> +``V4L2_CID_IMX585_HDR_GRAD_COMP_H``  (menu)
> +    **Compression ratios** below the first break-point and between the
> +    two break-points, respectively.
> +
> +    .. flat-table::
> +        :stub-columns: 0
> +        :widths: 1 4
> +
> +        * - ``0``
> +          - 1 : 1
> +        * - ``1``
> +          - 1 : 2
> +        * - ``2``
> +          - 1 : 4   *(default for COMP_L)*
> +        * - ``3``
> +          - 1 : 8
> +        * - ``4``
> +          - 1 : 16
> +        * - ``5``
> +          - 1 : 32
> +        * - ``6``
> +          - 1 : 64  *(default for COMP_H)*
> +        * - ``7``
> +          - 1 : 128
> +        * - ``8``
> +          - 1 : 256
> +        * - ``9``
> +          - 1 : 512
> +        * - ``10``
> +          - 1 : 1024
> +        * - ``11``
> +          - 1 : 2048
> +
> +Gain settings
> +-------------
> +
> +``V4L2_CID_IMX585_HDR_GAIN``  (menu)
> +    **Additional gain** (in dB) applied to the high-gain path when
> +    Clear-HDR is active.
> +
> +    .. flat-table::
> +        :stub-columns: 0
> +        :widths: 1 3
> +
> +        * - ``0``
> +          - +0 dB
> +        * - ``1``
> +          - +6 dB
> +        * - ``2``
> +          - +12 dB *(default)*
> +        * - ``3``
> +          - +18 dB
> +        * - ``4``
> +          - +24 dB
> +        * - ``5``
> +          - +29.1 dB
> +
> +``V4L2_CID_IMX585_HCG_GAIN``  (boolean)

HCG stands for High Conversion Gain, so we've got Gain repeated in the name=
.

Spell it out as V4L2_CID_IMX585_HIGH_CONV_GAIN, or call it
CONVERSION_GAIN and use an enum control?

> +    Toggle **High-Conversion-Gain** mode.
> +
> +    *0 =3D LCG (default), 1 =3D HCG.*

An HCG / LCG control would also be applicable for IMX290 [1], so it
would be nice if this could be a generic control instead of imx585
specific.

I never got a good description as to the benefit HCG was meant to
give. The datasheet for IMX290 says the conversion efficiency ratio
between HCG and LCG is 2, but not why that is any better than adding
6dB of analog gain.

Sony's website [2] states
"Sony=E2=80=99s Super High Conversion Gain technology is designed to amplif=
y
electrical signals immediately after the conversion from photons, when
the noise levels are relatively low. In this way, it reduces the
overall noise after amplification. As a result, lower-noise images,
compared to conventional technology, can be captured even in a
low-illuminance environment. Lower noise levels in images also help to
enhance the accuracy in visual or AI-assisted image recognition."
From that one would presume you'd always want it on (lower noise =3D
good), unless needing the minimum exposure time and the image was
already over-exposed.
I'm guessing you have no additional information based on your description t=
ext.

  Dave

[1] Also IMX327, IMX462, and IMX662 which are in the same family,
IMX678 (ratio of 2.6), and quite probably most of the Sony Starvis or
Starvis 2 ranges.
[2] https://www.sony-semicon.com/en/technology/security/index.html

> +
> +Notes
> +-----
> +
> +* Controls are writable while streaming; changes take effect from the
> +  next frame.
> +* HDR-specific controls are hidden when HDR is disabled.
> +* Inter-control dependencies are enforced by the driver.
> diff --git a/Documentation/userspace-api/media/drivers/index.rst b/Docume=
ntation/userspace-api/media/drivers/index.rst
> index d706cb47b..87912acfb 100644
> --- a/Documentation/userspace-api/media/drivers/index.rst
> +++ b/Documentation/userspace-api/media/drivers/index.rst
> @@ -32,6 +32,7 @@ For more details see the file COPYING in the source dis=
tribution of Linux.
>         cx2341x-uapi
>         dw100
>         imx-uapi
> +       imx585
>         max2175
>         npcm-video
>         omap3isp-uapi
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 175f5236a..42e32b6ba 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -23183,6 +23183,7 @@ M:      Will Whang <will@willwhang.com>
>  L:     linux-media@vger.kernel.org
>  S:     Maintained
>  F:     Documentation/devicetree/bindings/media/i2c/sony,imx585.yaml
> +F:     Documentation/userspace-api/media/drivers/imx585.rst
>  F:     drivers/media/i2c/imx585.c
>  F:     include/uapi/linux/imx585.h
>
> --
> 2.39.5
>
>

