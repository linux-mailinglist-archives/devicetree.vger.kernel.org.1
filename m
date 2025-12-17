Return-Path: <devicetree+bounces-247389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F5CCC774D
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:58:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EEB4305E212
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:54:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BAC233554E;
	Wed, 17 Dec 2025 11:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="Ob+xZdqa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C58B3126DD
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765972498; cv=none; b=Nl6kc8CnHorvIARdci/nF0yt+//YbEhB1MS5/pc+gaDU8nefeWHIJN3/AczPfGQ6UHDwaG73xURGCmv5/qJO3+cdsLUGSlaxUK+/XWEj7ibX3BYvxjXM8egRQDA4JNwNqr0UQ/uoKi3uWTPJYbYH0z6bcN+t/a5XbZFNJUdlkbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765972498; c=relaxed/simple;
	bh=70F01enocztNAr3xVFOrgGWn+2IKyhD+BDtjzDjx4nY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZguiLBZwQHPBV/+OAhVrcxyNIlaU9GMd2NJG4MBuD0eTSgtEB5KcxcXJ1UlNuCvvu+odHBf9s7tUVAMd3ppDvGbpH47LYMrDqKop9ERURg8Sx4oyLlI0Rj8I6RIamiSSlpqyjIiNx+z+p/p6zspQ8sRoTb3yT9sUJAuCyp0NSBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=Ob+xZdqa; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-78e765f9997so31309327b3.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 03:54:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1765972494; x=1766577294; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=W3dwWg2D+m7WGcXWn772LPt2UQYpGANryW0nj84dguM=;
        b=Ob+xZdqapCD8YHYlr9dKwAPBUkcKvui13tbk0dJJGRcxJaw+3TCqgzxCsNfDKHM49z
         EYUsmKjjHCr8kXHOhaUp5SRQ0pIwScew80hXCC/qHFte3kjh/aNa37wllVGwGtna5H86
         kfiw3WMBANdXKxSuvON19ZeWOd/FQ/TN/szaUg3qS0TTVanBJIn2bduRFARfRQARomPK
         FgRgBFaowUCOp7nV5Ssa4Rnl2CWUMdma/xauBvhWqBqio2XnAgwZKwAZuECxmxdIH6cO
         qzCmZuoCOiZq0k3SEpjE5ygtkCrX6m2Cq0D3l9clcbJU18Ju96GpEplCb2/7fsrK+PeO
         zptQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765972494; x=1766577294;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W3dwWg2D+m7WGcXWn772LPt2UQYpGANryW0nj84dguM=;
        b=Bq5YIA+aWhFOrOvGAkNO+tcAiCrjQFNIsi52NuF3LI7jbOpaWJR9wLcpwzjjU7UljY
         qBQo//jbtFNAvg37JX4hMgEpkkRsKyA8PYtzBYjPTWZu0NnTMEY+WZZHGMaMLzkBGvK+
         jn9nYhR0VfyGwbbqdVXI2CIKMyaK9kH6OsohUY5KDXTclDY+QlUnM5N5NrMn/ziUIsO5
         bcvetajdwh03fuBVAT30R0bKKtwqqJatkafJmEoHxXcVCNhWCMZfYSa0LYqT8SQQYXkb
         UUfWOXx2J2AoxoFKHPWTW69ewMWHtjQ8sDfo3lWT+I4JD6+pKmT6IZkOQInaR/hbnbT4
         AqPg==
X-Forwarded-Encrypted: i=1; AJvYcCVdRtXiRUzi+Nra0vdChPR5ym97dcZaAcx5dXCBtBuXYSoTtd7KYAik+lcMPIOWSFlhRQJKB9Ky1Hfk@vger.kernel.org
X-Gm-Message-State: AOJu0YxL7t6R3Ti5wf04J5FGoGMhjzmnTvOuDSGXBK4AmAOMhrps1cCw
	MBc73Qri4yn2ACc767WqFSeXAUvV5vvffVNtK9DL0CafDUX6WiMzEdSkMz1KUGezYGJTMLOnGEP
	TE4JaME3EiN3SxyI0nzC6PC+YWO6YXh01OkxRSJIp1tI51qjeTloz
X-Gm-Gg: AY/fxX7AD39O1nI05ceWqDTDFPi5KAhlbnW/gZu7Ri7/KjSx1xCxhDwrW7/b9JApnP9
	AoOv5EgVkp78Vc1qvaCFU8BmqVg0BD3QGYPNKGuVeplsBFNoOZY013unPWMRbMqdRIXN6dyCqXQ
	0e9KAdcYWQdDbxCqt9mb39dsUqELFI7dUFtpBXw2Fnr8x1HaRFwPiQGzhiPtRNkjxecaRGyWc2K
	PhK10GSXOC52osVDcWT8p07pyLhOikQpjuQZ+/Zb561iOQ0GXE5IagySYnzj2CQw7x7/0pHNomr
	meyfi05DjqnErsMkWf895GPbEWA=
X-Google-Smtp-Source: AGHT+IGckuHShVbvxc6ufAHIWbsIO8u+LmaiNiqNwEMgNBziJtkEBwHWsEgys1TxSWooCVKNgi5iOcDUjluVG6gxmfs=
X-Received: by 2002:a05:690c:e3ee:b0:78f:916e:b583 with SMTP id
 00721157ae682-78f916ebbb7mr29455967b3.37.1765972494619; Wed, 17 Dec 2025
 03:54:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217-imx283-ext-v1-0-906a762f592d@emfend.at> <20251217-imx283-ext-v1-3-906a762f592d@emfend.at>
In-Reply-To: <20251217-imx283-ext-v1-3-906a762f592d@emfend.at>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 17 Dec 2025 11:54:38 +0000
X-Gm-Features: AQt7F2rWc2bY9eE8ucf14QiONAUNLJF3tcPeIUUR4B-rKXrFZUPkuBh_s7N1C0E
Message-ID: <CAPY8ntCiOJb9iyFDYS_wxhteoHL7vMFpEF8gVwrf2qeFd-Fssw@mail.gmail.com>
Subject: Re: [PATCH 3/3] media: i2c: imx283: implement {g,s}_register
To: Matthias Fend <matthias.fend@emfend.at>
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>, Umang Jain <uajain@igalia.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Matthias

On Wed, 17 Dec 2025 at 07:41, Matthias Fend <matthias.fend@emfend.at> wrote:
>
> Implement {g,s}_register to support advanced V4L2 debug functionality.

Is there any real benefit to providing access via {g,s}_register
rather than using i2ctransfer -f ? The I2C framework ensures that each
transfer is atomic as long as it is formed into one transaction
request.

IMHO The only place these are really needed is with devices such as
the adv7180 family which have a bank and page addressing scheme, and
the driver is caching the last accessed bank.

> Signed-off-by: Matthias Fend <matthias.fend@emfend.at>
> ---
>  drivers/media/i2c/imx283.c | 44 ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
>
> diff --git a/drivers/media/i2c/imx283.c b/drivers/media/i2c/imx283.c
> index 7a6ab2941ea985401b21d60163b58e980cf31ddc..d8ccde0a1587259f39a10984c517cc57d323b6bc 100644
> --- a/drivers/media/i2c/imx283.c
> +++ b/drivers/media/i2c/imx283.c
> @@ -1295,7 +1295,51 @@ static const struct v4l2_subdev_internal_ops imx283_internal_ops = {
>         .init_state = imx283_init_state,
>  };
>
> +#ifdef CONFIG_VIDEO_ADV_DEBUG
> +static int imx283_g_register(struct v4l2_subdev *sd,
> +                            struct v4l2_dbg_register *reg)
> +{
> +       struct imx283 *imx283 = to_imx283(sd);
> +       u64 val;
> +       int ret;
> +
> +       if (!pm_runtime_get_if_active(imx283->dev))
> +               return 0;

Returning no error if the device is powered down feels wrong. How is
the caller meant to differentiate between powered down and the
register actually containing 0?

> +
> +       ret = cci_read(imx283->cci, CCI_REG8(reg->reg), &val, NULL);
> +       reg->val = val;
> +
> +       pm_runtime_put(imx283->dev);
> +
> +       return ret;
> +}
> +
> +static int imx283_s_register(struct v4l2_subdev *sd,
> +                            const struct v4l2_dbg_register *reg)
> +{
> +       struct imx283 *imx283 = to_imx283(sd);
> +       int ret;
> +
> +       if (!pm_runtime_get_if_active(imx283->dev))
> +               return 0;

Ditto here. The caller is told the value was written, but it wasn't.

Thanks.
  Dave

> +
> +       ret = cci_write(imx283->cci, CCI_REG8(reg->reg), reg->val, NULL);
> +
> +       pm_runtime_put(imx283->dev);
> +
> +       return ret;
> +}
> +#endif
> +
> +static const struct v4l2_subdev_core_ops imx283_core_ops = {
> +#ifdef CONFIG_VIDEO_ADV_DEBUG
> +       .g_register = imx283_g_register,
> +       .s_register = imx283_s_register,
> +#endif
> +};
> +
>  static const struct v4l2_subdev_ops imx283_subdev_ops = {
> +       .core = &imx283_core_ops,
>         .video = &imx283_video_ops,
>         .pad = &imx283_pad_ops,
>  };
>
> --
> 2.34.1
>
>

