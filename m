Return-Path: <devicetree+bounces-151664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 904F8A467A0
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 18:14:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5F9937A977D
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 17:13:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E48C224AFC;
	Wed, 26 Feb 2025 17:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="sVHZxwoX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4615622423E
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 17:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740590038; cv=none; b=lz3J8fsrxs71lKNgodgm9vXN315nMcrsEsk9TuU5sSQLStpZX5GATgi7zVJa7/DK8OgBbXgj344djTq/VPJT01ZWmbhipbjwlYDVf99cjM/9CDIqFJcll2+O5FkfyDdo/fFg+O/bOfC4CzHg8xuFqwHMOueK/U1yhWnwYe6UfPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740590038; c=relaxed/simple;
	bh=HQSBEPx0iDJabo5iKQ4x317NeHWlkolsMjJAGghkvk4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V7tjtlPbGsT+bo/lTpbbnIkYTwUdKqW7zNhzHz7+Yno1jpbOlT/oQsx1zTZdiPWcOA/20Ky0/nDV78Vg1p803bsQE8hrpUg+VFzS7TwWkpXOmzKHtRgnbQg/kUmU7KtqxkoZmIaAnINflRTwVO1pSrshmt2Tr0kbrliOFRezbLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=sVHZxwoX; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e53c9035003so5480911276.2
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 09:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1740590034; x=1741194834; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=v16JSKm7NuBmPVU9q5+qcA5vKYKf3DiQ/loXOvg4m4U=;
        b=sVHZxwoX4Nvp0WVGsBrgVkBu3Rbtybza4o1tyQPrfbon6SxO0nBY23nB+2DI/mbhua
         QYc/s2Pxbp2q4/eNB4VQPvgy1zdw3IT6bksasc+zAj4ia3W8kTTskYqa+SZvNNduIHd7
         S79cVYMChCuawj1d8Mzv2RJ7Bkhmfou/8Fz6EXMPzr70UIaue9de4jPbNLoX+oIczVpQ
         33LAz/xaU4ypk1XXhOoFyr4RwIDcSq0eN3/kYrqu5nGaHKMj4hlpXuDoLpiXDF037Q+J
         NGXzh7hcO2ostF3aM2jUyc0XYpgqDIwb5MV9G/8rkRa1GeDGe4kExTXgIA5e3QeFE3k1
         TRLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740590034; x=1741194834;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v16JSKm7NuBmPVU9q5+qcA5vKYKf3DiQ/loXOvg4m4U=;
        b=u3DGUQXBFxY/j3wbs3PYivhyEBcRrPwoQdUFGf/Fzu9qslyYE1n4ZyKYSAEgb7x7oX
         LvfOhl2Mwdo6gf2/PCpGR3qGV7v+ykmsIupRHBIytHjYfyyKul3wCsljwXrCgY0zEhco
         YArorYL9ddKRLjoPsxzLE+b4vIN5XKtG1I/cLCs/EuZR5xJnjDeuaKjfVGZ7Ne52+uV6
         uGG7JYIaEaa0Ep/cXmnXU7XmKo2J98o2xogMlVQADqhu9msx74a+AUbKA+NSreNQLBSS
         Q4a4aDEOqcapxIsqjma0n6H0I7PmSMCPbqGW+IRo4QZJBX66MmaLLGFrEvvXM2oZX/yV
         Ycig==
X-Forwarded-Encrypted: i=1; AJvYcCVXcskVuVIFMMGtETZtIZP4boAOtw5iYhYTrfsvNbnSv/TRyQDGHT1wjK4suuPwBSvCUjktdQKyGZLJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwNTBCozWTmnJBB5FCL2ppcXAZ0ou5lwTUzvX2TAmysUzOD0CIg
	zTs5lCacgmQjHwm02TtALs/w1Ph3QM2XU3iATp77/dRo1vaZ+b804I7WGUQ+L/shF1AVO48RnIt
	4E/ztMabw8rL8swTZo4wqwmqGM5Pl6jxA3xyeAA==
X-Gm-Gg: ASbGncuftNO4/RZIciTlELGI+zexpobThA8k45TQ95yAeaKhPa9nBR8VFKvBtCcIlrW
	rNJKXI8DpC7nhyNxFI346aZQQ3yzqxE128IifNL+Gy7vBdPVp3ZH7hdy7JF8Fq1WhbokkwJ78vr
	hOeVF+byuW/HpekfWNRmLS3kbHdzv+14fmsxKCHt0=
X-Google-Smtp-Source: AGHT+IG7BRekJ/GUeFxp0m+34WDEKrlHgNOI7qMTkO3ePczj09HZOi8iTSNdWu/DGb+qqAztFE0yKyE/JxzmnQCW8Pg=
X-Received: by 2002:a05:6902:2e0a:b0:e5d:dda6:d1d with SMTP id
 3f1490d57ef6-e607a565902mr6860903276.42.1740590034172; Wed, 26 Feb 2025
 09:13:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250226153929.274562-1-mathis.foerst@mt.com> <20250226153929.274562-4-mathis.foerst@mt.com>
In-Reply-To: <20250226153929.274562-4-mathis.foerst@mt.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 26 Feb 2025 17:13:38 +0000
X-Gm-Features: AQ5f1Jo78Bz7szki1OPhZNCoefOi0V3LvTbHL1brFYJAZbXIFOnLIMAl10k6kG0
Message-ID: <CAPY8ntA2eedTY-0hY5ThkiKiKYKpSAij+bbeBWvWAgSeMEzvsQ@mail.gmail.com>
Subject: Re: [PATCH v1 3/8] MT9M114: Add get_mbus_config
To: Mathis Foerst <mathis.foerst@mt.com>
Cc: linux-kernel@vger.kernel.org, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, manuel.traut@mt.com
Content-Type: text/plain; charset="UTF-8"

Hi Mathis

On Wed, 26 Feb 2025 at 15:45, Mathis Foerst <mathis.foerst@mt.com> wrote:
>
> The i.MX6 camera frameworks requires get_mbus_config to be implemented.
> See [0].
>
> [0] drivers/staging/media/imx/imx-media-csi.c - line 211..216

The docs for get_mbus_config say
 * @get_mbus_config: get the media bus configuration of a remote sub-device.
 *             The media bus configuration is usually retrieved from the
 *             firmware interface at sub-device probe time, immediately
 *             applied to the hardware and eventually adjusted by the
 *             driver.
https://github.com/torvalds/linux/blob/master/include/media/v4l2-subdev.h#L814

All other receiver drivers (including imx6-mipi-csi2.c) that call
get_mbus_config handle it returning -ENOIOCTLCMD by reverting to the
static configuration or the receiver node from device tree / ACPI.

I may be missing something, but as imx-media-csi.c appears to be the
exception, isn't it better to fix that up rather than having to fix up
all the sensor drivers that ever might get attached to it?

> Signed-off-by: Mathis Foerst <mathis.foerst@mt.com>
> ---
>  drivers/media/i2c/mt9m114.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/drivers/media/i2c/mt9m114.c b/drivers/media/i2c/mt9m114.c
> index 5f0b0ad8f885..fa64d6d315a1 100644
> --- a/drivers/media/i2c/mt9m114.c
> +++ b/drivers/media/i2c/mt9m114.c
> @@ -1977,6 +1977,24 @@ static int mt9m114_ifp_registered(struct v4l2_subdev *sd)
>                 v4l2_device_unregister_subdev(&sensor->pa.sd);
>                 return ret;
>         }
> +       return 0;
> +}
> +
> +static int mt9m114_ifp_get_mbus_config(struct v4l2_subdev *sd,
> +                                  unsigned int pad,
> +                                  struct v4l2_mbus_config *cfg)
> +{
> +       struct mt9m114 *sensor = ifp_to_mt9m114(sd);
> +
> +       if (sensor->bus_cfg.bus_type == V4L2_MBUS_CSI2_DPHY) {
> +               cfg->type = V4L2_MBUS_CSI2_DPHY;

Not setting cfg->bus.mipi_csi2.num_data_lanes is going to cause some
confusion. What does an assumed 0 data lanes mean?

Likewise it would be sensible to set cfg->bus.mipi_csi2.flags so as to
avoid any ambiguities (did the caller memset all fields before
calling?)

  Dave

> +       } else {
> +               cfg->type = V4L2_MBUS_PARALLEL;
> +               cfg->bus.parallel.flags = V4L2_MBUS_MASTER |
> +                                         V4L2_MBUS_PCLK_SAMPLE_RISING |
> +                                         V4L2_MBUS_DATA_ACTIVE_HIGH;
> +               cfg->bus.parallel.bus_width = 8;
> +       }
>
>         return 0;
>  }
> @@ -1993,6 +2011,7 @@ static const struct v4l2_subdev_pad_ops mt9m114_ifp_pad_ops = {
>         .set_fmt = mt9m114_ifp_set_fmt,
>         .get_selection = mt9m114_ifp_get_selection,
>         .set_selection = mt9m114_ifp_set_selection,
> +       .get_mbus_config = mt9m114_ifp_get_mbus_config,
>         .get_frame_interval = mt9m114_ifp_get_frame_interval,
>         .set_frame_interval = mt9m114_ifp_set_frame_interval,
>  };
> --
> 2.34.1
>
>

