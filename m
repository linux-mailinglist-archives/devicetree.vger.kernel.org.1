Return-Path: <devicetree+bounces-232306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D8BC165E3
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 19:02:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C309750518E
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E17F2346784;
	Tue, 28 Oct 2025 17:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AdSmRumo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2EE034B419
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761674322; cv=none; b=gZHetYzKmCtl7O5AQ1Y15Y4laRrSZpGDN2fbcVgK34NwW51LQ9by29fGAT769fkS8Tzc6AnUuhcr2llRh5yTXPlUh4FLGypWPf27FisGJpO5onsMFf63xs73mGBkXEDXnqP1F5eRddocV9GGBebJ4RNB1hdoVy21DkunNaJMDHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761674322; c=relaxed/simple;
	bh=EjYv/KMdk5hwRo5zg+2N0tGtkmyPoh/BoLUacmiYuIM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MmC92XfD//aUtGwr0b80U0tEhf+Xr4ggAI3O22iN75fH36+fIvp3xiXheTB/788yv4xAiy5wTybBD5tdgmyhQPh4WvERjBan5qcTcYYgkiHpQ1ZvOGZ+KwKZt9dCu9qNzaIHcSDi01gVy7+pO0dCz1Q1qrglW3Q/Cso8BWkoyAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AdSmRumo; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-4298b865f84so3428479f8f.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 10:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761674319; x=1762279119; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=chOqt8RmvPjENMZLrKMXMx23a0j+hi9Mh5r2D2HF49A=;
        b=AdSmRumohlsWJw6Clklh1vdrr0i1SLeTJDtmFitVb167CaNkub8top/BvG8U1I1q+I
         Nce9ywsgxNaxAEbObXIroMvI+5lJATHhH39thPXKIL59x4RHiGlh7vzf47BDmauea2Bx
         E8dLTOHQKaYO3Hh4ckVXyxbmFlQZKVwUS+fmWT9kjrxaKcPfN4cq8B/7FAxGyMWo0gZE
         vLY/CRlom7htvEmEh4HMKtTUJ9728IUb1Vfjyj4FmriLSgUmiHwlQvJ+t2xFqUGuD/gN
         FdKYmOWw4kuAnrwev+fLS3ugJNUQRWwN/IKmUaQwzSkMhKw7CWdfAzCM61qFrDZzjrjA
         c3cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761674319; x=1762279119;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=chOqt8RmvPjENMZLrKMXMx23a0j+hi9Mh5r2D2HF49A=;
        b=ZLelzS7ChOCo8SlJyX3OihdYmHpadklw9FE3va4Xy7pVcVVn/K5auBCoNdvS6/WgU4
         Psn/D5JjNta+1yjbINhiDIxmwALsqT2D9b95hLllk4qbbqvwgVaulZOrU0iiu8xPhDqV
         bfUMMjCPHT/2eotBLNVtD5gLmDIlzrj0LmV2+ADAcwKfZa9R2hmwp8ZYHXliS5G9rmAB
         GR2+wFT02a1bU7aki4mesHODOd+whxhYsKaitOcZUe2VCFyk20cmGX/m9U7QgfMlA+wT
         7WEabfL3OTnLY4t5uydgH3Y6mSKhokJNgHqaJ/wdD5Gefe7ItWqj2eJRODROyNm9bvRn
         sm3A==
X-Forwarded-Encrypted: i=1; AJvYcCUj67/VOBYQc1MFGTcySLjBBo19NGHCdtsshO7lRpRszuXC1GMB1ssFGBr1CYZqJHYwUnmkWDVTPfVR@vger.kernel.org
X-Gm-Message-State: AOJu0YzNuPygyJGH0bT1MBH2BdEOQpJ1DUrbumzGcVkbqPYvLgRLhjtr
	EsbdWwmukQOnzdwl6mNQIEhdp5q0h8Y80mDwAuo/9HMsI/UjtulEMW+YnsNptckr+PJgKvAnOrZ
	/qzLTHcvUGOBW8womngn06kmmSOzDyrU=
X-Gm-Gg: ASbGnctChpBJ4lwUavp9iF2q64QjjDpVOuliDez2AmU+weJrqKMoKpMGcfmYLJt6hEJ
	BjL5CzA8EvWLIOXmyUs6twEheI/gx516G7QQl10qgYALbC3Z0YMn3E34RkRimjIdzRxwTVHMK6g
	OoS9aA9zP3JS2Gm8om+Kta9D6m8QqH86X68Ngn3HRRdeFgWb3N6jshB372w/xBkKHGyP9HL9xIf
	WO2xii7k8cmEeWOdkgY7L9Guk61cdZ9sD+t76g12Sup3IE2ZcaFNrhiS4d3
X-Google-Smtp-Source: AGHT+IHh8T3ykEJ2k+SqnqUv99coirZbdgdMUPaGxgoPsKTmKd/b9zWs5bZFLuATTAQlif0eT61G09zLSddJRKJYc3M=
X-Received: by 2002:a05:6000:2905:b0:427:854:773 with SMTP id
 ffacd0b85a97d-429a7e76c0bmr3243802f8f.37.1761674319174; Tue, 28 Oct 2025
 10:58:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251002-c55-v12-0-3eda2dba9554@ideasonboard.com> <20251002-c55-v12-1-3eda2dba9554@ideasonboard.com>
In-Reply-To: <20251002-c55-v12-1-3eda2dba9554@ideasonboard.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 28 Oct 2025 17:58:12 +0000
X-Gm-Features: AWmQ_bkHVf79naQHjwnfJ41qc93yuL_ZI4xCKXD8yt892ICcC21tOdZ_3oQLbqc
Message-ID: <CA+V-a8suSo-dFNBs=VzwXpJ3XkQjZAMHx71y5ozhZQX1ui=3qw@mail.gmail.com>
Subject: Re: [PATCH v12 01/15] media: uapi: Add MEDIA_BUS_FMT_RGB202020_1X60
 format code
To: Daniel Scally <dan.scally@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Anthony.McGivern@arm.com, 
	jacopo.mondi@ideasonboard.com, nayden.kanchev@arm.com, robh+dt@kernel.org, 
	mchehab@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	jerome.forissier@linaro.org, kieran.bingham@ideasonboard.com, 
	laurent.pinchart@ideasonboard.com, 
	Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 2, 2025 at 11:18=E2=80=AFAM Daniel Scally
<dan.scally@ideasonboard.com> wrote:
>
> The Mali-C55 ISP by ARM requires 20-bits per colour channel input on
> the bus. Add a new media bus format code to represent it.
>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Acked-by: Nayden Kanchev <nayden.kanchev@arm.com>
> Co-developed-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
> ---
> Changes in v10:
>
>         - None
>
> Changes in v9:
>
>         - None
>
> Changes in v8:
>
>         - None
>
> Changes in v7:
>
>         - None
>
> Changes in v6:
>
>         - Fixed the table formatting
>
> Changes in v5:
>
>         - none
>
> Changes in v4:
>
>         - None
>
> Changes in v3:
>
>         - None
>
> Changes in v2:
>
>         - none
> ---
>  .../userspace-api/media/v4l/subdev-formats.rst     | 168 +++++++++++++++=
++++++
>  include/uapi/linux/media-bus-format.h              |   3 +-
>  2 files changed, 170 insertions(+), 1 deletion(-)
>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Cheers,
Prabhakar

> diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/D=
ocumentation/userspace-api/media/v4l/subdev-formats.rst
> index 2a94371448dc07e5c7097421bd82f42dcd7e21aa..57194180fe42f31f88aa0aeb4=
a4650bf4fb32bcc 100644
> --- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
> +++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> @@ -2224,6 +2224,174 @@ The following table list existing packed 48bit wi=
de RGB formats.
>
>      \endgroup
>
> +The following table list existing packed 60bit wide RGB formats.
> +
> +.. tabularcolumns:: |p{4.0cm}|p{0.7cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0=
.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm=
}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0=
.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm=
}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|p{0.22cm}|
> +
> +.. _v4l2-mbus-pixelcode-rgb-60:
> +
> +.. raw:: latex
> +
> +    \begingroup
> +    \tiny
> +    \setlength{\tabcolsep}{2pt}
> +
> +.. flat-table:: 60bit RGB formats
> +    :header-rows:  3
> +    :stub-columns: 0
> +    :widths: 36 7 3 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 =
2 2 2 2 2 2
> +
> +    * - Identifier
> +      - Code
> +      -
> +      - :cspan:`31` Data organization
> +    * -
> +      -
> +      - Bit
> +      -
> +      -
> +      -
> +      -
> +      - 59
> +      - 58
> +      - 57
> +      - 56
> +      - 55
> +      - 54
> +      - 53
> +      - 52
> +      - 51
> +      - 50
> +      - 49
> +      - 48
> +      - 47
> +      - 46
> +      - 45
> +      - 44
> +      - 43
> +      - 42
> +      - 41
> +      - 40
> +      - 39
> +      - 38
> +      - 37
> +      - 36
> +      - 35
> +      - 34
> +      - 33
> +      - 32
> +    * -
> +      -
> +      -
> +      - 31
> +      - 30
> +      - 29
> +      - 28
> +      - 27
> +      - 26
> +      - 25
> +      - 24
> +      - 23
> +      - 22
> +      - 21
> +      - 20
> +      - 19
> +      - 18
> +      - 17
> +      - 16
> +      - 15
> +      - 14
> +      - 13
> +      - 12
> +      - 11
> +      - 10
> +      - 9
> +      - 8
> +      - 7
> +      - 6
> +      - 5
> +      - 4
> +      - 3
> +      - 2
> +      - 1
> +      - 0
> +    * .. _MEDIA-BUS-FMT-RGB202020-1X60:
> +
> +      - MEDIA_BUS_FMT_RGB202020_1X60
> +      - 0x1026
> +      -
> +      -
> +      -
> +      -
> +      -
> +      - r\ :sub:`19`
> +      - r\ :sub:`18`
> +      - r\ :sub:`17`
> +      - r\ :sub:`16`
> +      - r\ :sub:`15`
> +      - r\ :sub:`14`
> +      - r\ :sub:`13`
> +      - r\ :sub:`12`
> +      - r\ :sub:`11`
> +      - r\ :sub:`10`
> +      - r\ :sub:`9`
> +      - r\ :sub:`8`
> +      - r\ :sub:`7`
> +      - r\ :sub:`6`
> +      - r\ :sub:`5`
> +      - r\ :sub:`4`
> +      - r\ :sub:`3`
> +      - r\ :sub:`2`
> +      - r\ :sub:`1`
> +      - r\ :sub:`0`
> +      - g\ :sub:`19`
> +      - g\ :sub:`18`
> +      - g\ :sub:`17`
> +      - g\ :sub:`16`
> +      - g\ :sub:`15`
> +      - g\ :sub:`14`
> +      - g\ :sub:`13`
> +      - g\ :sub:`12`
> +    * -
> +      -
> +      -
> +      - g\ :sub:`11`
> +      - g\ :sub:`10`
> +      - g\ :sub:`9`
> +      - g\ :sub:`8`
> +      - g\ :sub:`7`
> +      - g\ :sub:`6`
> +      - g\ :sub:`5`
> +      - g\ :sub:`4`
> +      - g\ :sub:`3`
> +      - g\ :sub:`2`
> +      - g\ :sub:`1`
> +      - g\ :sub:`0`
> +      - b\ :sub:`19`
> +      - b\ :sub:`18`
> +      - b\ :sub:`17`
> +      - b\ :sub:`16`
> +      - b\ :sub:`15`
> +      - b\ :sub:`14`
> +      - b\ :sub:`13`
> +      - b\ :sub:`12`
> +      - b\ :sub:`11`
> +      - b\ :sub:`10`
> +      - b\ :sub:`9`
> +      - b\ :sub:`8`
> +      - b\ :sub:`7`
> +      - b\ :sub:`6`
> +      - b\ :sub:`5`
> +      - b\ :sub:`4`
> +      - b\ :sub:`3`
> +      - b\ :sub:`2`
> +      - b\ :sub:`1`
> +      - b\ :sub:`0`
> +
> +.. raw:: latex
> +
> +    \endgroup
> +
>  On LVDS buses, usually each sample is transferred serialized in seven
>  time slots per pixel clock, on three (18-bit) or four (24-bit) or five (=
30-bit)
>  differential data pairs at the same time. The remaining bits are used
> diff --git a/include/uapi/linux/media-bus-format.h b/include/uapi/linux/m=
edia-bus-format.h
> index ff62056feed5b6588bfcfdff178f5b68eecd3a26..62ad82fd285a8ce24bd16c207=
c51c0e75ea95070 100644
> --- a/include/uapi/linux/media-bus-format.h
> +++ b/include/uapi/linux/media-bus-format.h
> @@ -34,7 +34,7 @@
>
>  #define MEDIA_BUS_FMT_FIXED                    0x0001
>
> -/* RGB - next is       0x1028 */
> +/* RGB - next is       0x1029 */
>  #define MEDIA_BUS_FMT_RGB444_1X12              0x1016
>  #define MEDIA_BUS_FMT_RGB444_2X8_PADHI_BE      0x1001
>  #define MEDIA_BUS_FMT_RGB444_2X8_PADHI_LE      0x1002
> @@ -74,6 +74,7 @@
>  #define MEDIA_BUS_FMT_RGB888_1X36_CPADLO       0x1021
>  #define MEDIA_BUS_FMT_RGB121212_1X36           0x1019
>  #define MEDIA_BUS_FMT_RGB161616_1X48           0x101a
> +#define MEDIA_BUS_FMT_RGB202020_1X60           0x1028
>
>  /* YUV (including grey) - next is      0x202f */
>  #define MEDIA_BUS_FMT_Y8_1X8                   0x2001
>
> --
> 2.43.0
>
>

