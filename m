Return-Path: <devicetree+bounces-254685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4A5D1AD2E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 19:23:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 87B93302E3F6
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 18:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D917B34D4F1;
	Tue, 13 Jan 2026 18:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G2t6K5ZX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f53.google.com (mail-dl1-f53.google.com [74.125.82.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3643634C123
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 18:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768328586; cv=none; b=qecepB4zUfyE73r2MRZ+aSRLfMtP37v0eMKymaG1xmV0pgON9R93Qu4AfgwYcBwcxRYZrSf5ZDC3cjaYuz87KzZkTKZ9e6NfG3huPHNOlLgu1kAhO4UDjlGUr8P/3BsemIwd1Oon+GREr7JvuPMDoMpqA6whIIyDNfulzkT3Jyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768328586; c=relaxed/simple;
	bh=pAgp1UzTbV+J+yQfckrYJ/aFVvvjjT+ZcYLLUKGP9DI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JIh472Opzup59MuQevNKZULV2YxJBk1I0FvrTONh8pMPAS/s06yVj1owbRZpRaS7O6gRArWCLBjKsB1eM5+BZWdBoH4tQX1eTsFzEzKAXt2mK7oyvowPFCeeiJtIZxteCTqMRvLWXDBtANxV2fSV5ti+DfNbWaBRRvvEnlC5YLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G2t6K5ZX; arc=none smtp.client-ip=74.125.82.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f53.google.com with SMTP id a92af1059eb24-121bf277922so9375280c88.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:23:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768328584; x=1768933384; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ktFARcL7abjEswMdxHANS1AOCLFu8aD4rHTTseQcdl0=;
        b=G2t6K5ZXd5eIfLO0G2Jh2T00KSAYR0RBmZ26CgtNO4ZXw7GH6ZbS++EjQQ4l+kEEYY
         pfROVkGC6AG9Exa1E5Efjy8PaXtPmKQJn+0WhxGenaRah/b4RzBulcsOQjt6d2Z++IpD
         2GHz4e/DWCNhMjodjZgx+3H+h4DdVPe9LdIOt/+rjnwxaOEWfb2kIJPbtUMjHvv3YNHk
         3eBOqRbh9MYrkbxGjONzmP2A5lMN03VZ8pR7CQINkkr+sNbLmtvdmajlunX3blna4tMR
         W2wInONpSD/f05hxD5egFH868WmlBu0vhXljNT+5faa9HlQLLnkwp3IrUV62La+XYfte
         i0Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768328584; x=1768933384;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ktFARcL7abjEswMdxHANS1AOCLFu8aD4rHTTseQcdl0=;
        b=PWeVTvsOddEFrB9Gd4AbpAKLBIJJE/mT1tzO+7S1YMZHhKj//Kxo/fqmzVETfCeUec
         JOEFXFJXyrIi4i2zSiavKLCOIrXOOUQhOQKMVjTEEVPHQCoqqxnvt9HZAS5uF65jlc2L
         +F2kSBaACIfgWl7Ap5YTe73MUOkaXO9phbU96SKDh0XT4CIztMkB1rKwVaOvjvQk+IrA
         L+Gl9UrWC1LOYTE7peVLeL1k2GkyutgEZU34sqINiQjYCv19A0GevtBb9EZbBGfQI13q
         5Qi14nbc1WekNkzK2k5a4VNsM8m/ajxHFLlsyt3U0/r6ORz87JVe3TKUl6bb4vuXXsZd
         xxXg==
X-Forwarded-Encrypted: i=1; AJvYcCVTPEhGtrwjC8r6cbuSgcos6rzz9+wD5/XafJniWUacZS6Gp+FJFVRqpGWAsKNSr+KTCVM2dkxLR1pH@vger.kernel.org
X-Gm-Message-State: AOJu0YzVK3ROXNIjz5GvuPLDPVASIMLHNYHmVmGBgeJHimDfzcTSWE+U
	qby5up+NpkcSL80+65X5ObzOKvivlyDPk52Hkq1AbZM0RTfsY0uz74LNWAYWYnbNKt+Dju+WBiR
	KnbhgULiUZ+sXFEXj1lADZwFN2aSOKQ8=
X-Gm-Gg: AY/fxX4FCv5Wal48V4kR3Yx4j/XxrrCCjPexBmL5FZKvfdebEeHanATFQjW5+Vx9UOg
	XsuxO2g8i+/1kRglf00FjxAhGEWJc2Csi9He3pZmTmi9yiiwYniLyDkvnOnSUrNWHcALb/P4/qG
	phXrrn7yBoA7llGjO58m+YDS6G5EJbybSdDfq7ysty0ZlOLlC+2dHvk7qvkIgYjBa/4EbeMOZ8f
	vYLPFiqiSF0M7Hx6jtmJSDmH4kLjMMnV94o4CfCl6WpOFhYzVZEkR83agK6SsAPCnQ/4vcTVHcz
	0LhDZV367Txt/WVcdrbYLwOQI8D9f+W+zrOwisDPeL+IDTU1AI2V+hZG4fN7Qve11HBCiNT9nnj
	gbFaOafwed4NPIcM=
X-Google-Smtp-Source: AGHT+IFry5mrp+qhfmaTmFowwpyilhTDV99e4+YsYHR4eczlm0CCEKca1hIFDilnVzeT/ocGVM7wlP2rRttk0FeEdcc=
X-Received: by 2002:a05:7022:613:b0:119:e569:f62e with SMTP id
 a92af1059eb24-121f8b8d73amr21681821c88.39.1768328584025; Tue, 13 Jan 2026
 10:23:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260113-thames-v1-0-99390026937c@tomeuvizoso.net> <20260113-thames-v1-2-99390026937c@tomeuvizoso.net>
In-Reply-To: <20260113-thames-v1-2-99390026937c@tomeuvizoso.net>
From: Robert Nelson <robertcnelson@gmail.com>
Date: Tue, 13 Jan 2026 12:22:37 -0600
X-Gm-Features: AZwV_QgGjFNmrIcWdIpWbLrkpdUzkEwOLFO_r4C0G38vOy1_mGAz7cr1Zzr72TQ
Message-ID: <CAOCHtYgW4Gzyed3oTofjZYzZ+Umr1Q2fxNm7uGDEUmnG-kXyOg@mail.gmail.com>
Subject: Re: [PATCH 2/5] accel/thames: Add driver for the C7x DSPs in TI SoCs
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Nishanth Menon <nm@ti.com>, "Andrew F. Davis" <afd@ti.com>, Randolph Sapp <rs@ti.com>, 
	Jonathan Humphreys <j-humphreys@ti.com>, Andrei Aldea <a-aldea@ti.com>, Chirag Shilwant <c-shilwant@ti.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-doc@vger.kernel.org, linux-media@vger.kernel.org, 
	linaro-mm-sig@lists.linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 13, 2026 at 11:45=E2=80=AFAM Tomeu Vizoso <tomeu@tomeuvizoso.ne=
t> wrote:
>
> Some SoCs from Texas Instruments contain DSPs that can be used for
> general compute tasks.
>
> This driver provides a drm/accel UABI to userspace for submitting jobs
> to the DSP cores and managing the input, output and intermediate memory.
>
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> ---
>  Documentation/accel/thames/index.rst |  28 +++++
>  MAINTAINERS                          |   9 ++
>  drivers/accel/Kconfig                |   1 +
>  drivers/accel/Makefile               |   3 +-
>  drivers/accel/thames/Kconfig         |  26 +++++
>  drivers/accel/thames/Makefile        |   9 ++
>  drivers/accel/thames/thames_core.c   | 155 ++++++++++++++++++++++++++
>  drivers/accel/thames/thames_core.h   |  53 +++++++++
>  drivers/accel/thames/thames_device.c |  93 ++++++++++++++++
>  drivers/accel/thames/thames_device.h |  46 ++++++++
>  drivers/accel/thames/thames_drv.c    | 156 +++++++++++++++++++++++++++
>  drivers/accel/thames/thames_drv.h    |  21 ++++
>  drivers/accel/thames/thames_ipc.h    | 204 +++++++++++++++++++++++++++++=
++++++
>  drivers/accel/thames/thames_rpmsg.c  | 155 ++++++++++++++++++++++++++
>  drivers/accel/thames/thames_rpmsg.h  |  27 +++++
>  15 files changed, 985 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/accel/thames/index.rst b/Documentation/accel/t=
hames/index.rst
> new file mode 100644
> index 0000000000000000000000000000000000000000..ca8391031f226f7ef1dc210a3=
56c86acbe126c6f
> --- /dev/null
> +++ b/Documentation/accel/thames/index.rst
> @@ -0,0 +1,28 @@
> +.. SPDX-License-Identifier: GPL-2.0-only
> +
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> + accel/thames Driver for the C7x DSPs from Texas Instruments
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +The accel/thames driver supports the C7x DSPs inside some Texas Instrume=
nts SoCs
> +such as the J722S. These can be used as accelerators for various workloa=
ds,
> +including machine learning inference.
> +
> +This driver controls the power state of the hardware via :doc:`remotepro=
c </staging/remoteproc>`
> +and communicates with the firmware running on the DSP via :doc:`rpmsg_vi=
rtio </staging/rpmsg_virtio>`.
> +The kernel driver itself allocates buffers, manages contexts, and submit=
s jobs
> +to the DSP firmware. Buffers are mapped by the DSP itself using its MMU,
> +providing memory isolation among different clients.
> +
> +The source code for the firmware running on the DSP is available at:
> +https://gitlab.freedesktop.org/tomeu/thames_firmware/.
> +
> +Everything else is done in userspace, as a Gallium driver (also called t=
hames)
> +that is part of the Mesa3D project: https://docs.mesa3d.org/teflon.html
> +
> +If there is more than one core that advertises the same rpmsg_virtio ser=
vice
> +name, the driver will load balance jobs between them with drm-gpu-schedu=
ler.
> +
> +Hardware currently supported:
> +
> +* J722S
> diff --git a/MAINTAINERS b/MAINTAINERS
> index dc731d37c8feeff25613c59fe9c929927dadaa7e..a3fc809c797269d0792dfe520=
2cc1b49f6ff57e9 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7731,6 +7731,15 @@ F:       Documentation/devicetree/bindings/npu/roc=
kchip,rk3588-rknn-core.yaml
>  F:     drivers/accel/rocket/
>  F:     include/uapi/drm/rocket_accel.h
>
> +DRM ACCEL DRIVER FOR TI C7x DSPS
> +M:     Tomeu Vizoso <tomeu@tomeuvizoso.net>
> +L:     dri-devel@lists.freedesktop.org
> +S:     Supported
> +T:     git https://gitlab.freedesktop.org/drm/misc/kernel.git
> +F:     Documentation/accel/thames/
> +F:     drivers/accel/thames/
> +F:     include/uapi/drm/thames_accel.h

Oh where is this "thames_accel.h" ? ;)


2026-01-13T18:16:11.881084Z 01E
drivers/accel/thames/thames_drv.c:8:10: fatal error:
drm/thames_accel.h: No such file or directory
2026-01-13T18:16:11.881086Z 01E     8 | #include <drm/thames_accel.h>
2026-01-13T18:16:11.881087Z 01E       |          ^~~~~~~~~~~~~~~~~~~~
2026-01-13T18:16:11.881115Z 01E compilation terminated.
2026-01-13T18:16:11.884552Z 01E make[8]: ***
[scripts/Makefile.build:287: drivers/accel/thames/thames_drv.o] Error
1
2026-01-13T18:16:11.884694Z 01E make[7]: ***
[scripts/Makefile.build:544: drivers/accel/thames] Error 2
2026-01-13T18:16:11.884926Z 01E make[6]: ***
[scripts/Makefile.build:544: drivers/accel] Error 2
2026-01-13T18:16:11.884976Z 01E make[6]: *** Waiting for unfinished jobs...=
.

$ find . | grep thames_accel.h
$ grep -R "thames_accel.h" ./*
./drivers/accel/thames/Kconfig:      include/uapi/drm/thames_accel.h
and is used by the Thames userspace
./drivers/accel/thames/thames_job.c:#include <drm/thames_accel.h>
./drivers/accel/thames/thames_drv.c:#include <drm/thames_accel.h>
./drivers/accel/thames/thames_gem.c:#include <drm/thames_accel.h>
./MAINTAINERS:F:    include/uapi/drm/thames_accel.h

Regards,

--=20
Robert Nelson
https://rcn-ee.com/

