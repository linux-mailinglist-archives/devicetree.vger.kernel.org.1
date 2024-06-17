Return-Path: <devicetree+bounces-76530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E6A90AD8D
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 14:03:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E8231F21F8B
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 12:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEF57194C74;
	Mon, 17 Jun 2024 12:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MNnA5+AK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFDC194AF1
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 12:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718625784; cv=none; b=jK7vnVF+puXPpJzyam2/BsoFSYp5P3KzOpw0HbsDJYELnJEoVD8zjdNN3AVGWYGVIpndAXY84X2aENpkuq3WCZYELNRWMhjijOEvI4nxk+1da512T/VBp1/Usii07Fo7HWKNeAJTBu2XRC+Z500f3wcjKDg0LOAQ4EHnbQVwv8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718625784; c=relaxed/simple;
	bh=Rr5iGFqpSNRXB+KBYwcPoY3tWHo2mwxMfOhiOo09gUY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O6LqYzqHEW9LdmE+XbINwE6cnHfkhnNUCzbOxxOTjk3Kh5mTeY6zIiT9jPiWDwReoUEOrTUwbrdfO60/+0/erqySi0HvdJt0v0vSxUrG/W/jAqI/GT0mEyq0gfhqm+GTGdGlS/hRxZ0posv6jOC8aGCp98lNL1WyeWzXxRv7I1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MNnA5+AK; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4217c7eb6b4so37351225e9.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 05:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718625781; x=1719230581; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=d8Fhf4JOX+eQHmfKJgo0VL59I075x6PJI/pMFa803UQ=;
        b=MNnA5+AKVfF0Yc5vs7z38XcJoy+H/gcM0iLwf9FsH4Bp6ZWvfDmGPEDl/JSkVv5FMz
         YmdLO7VmMuJ8pjKEmeodvvN/Wwumla32IC2mtCUe4m0xFyuCZUmkYHy74+JvkLgYRm34
         tNYWV7AAUgB+0G4XqA9HWmao5o2jXuRrpaPbowrrO1r7eooNI8WZI0Sb2gr8/kS+uulw
         4ULZu+JCJBgZ6U4kM2yoUbUdpsepQa17LDEsW7ouRGVkvY9zekWjWf/Sxru9cGRu5SIo
         T06NSVM1fy7q2OQUdpqdoSqfxExegPWJO9MYHI9qYHLLcWgl8BnPb+9V0l+c4nd3A9DR
         c/+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718625781; x=1719230581;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d8Fhf4JOX+eQHmfKJgo0VL59I075x6PJI/pMFa803UQ=;
        b=LOqmfm6b9Q3tYIJA6QS0dR+c3YEoPA+KwCN4YSBf3eX12mppcvopUENOygdvYxAVrh
         VzagjCWM6Wwjcp8G5K5FPJn2+zVfiSqpNDsReFQbeV6AsiJ/Z2GrxPiR5QhHDm3sMxGF
         EvR8Hfmk+vc/bDbphKYQDap4xtwJQUb9q0Rb+G6vQw8Y+GboJVscYi3WiU84gjhvo5of
         3lmE2MyBadweHcrGpkPtuIOfEw3qvAlGLxqDIY8hNDtb0RwVZpgPHhE3pXbZr4kJnrxp
         zHJNRswQsAg9GXn5ReKMc0uxKFnn9frGvKknFtxpbqFX0Z+Lu7jHV1OzGzwa0vsN1R40
         kubA==
X-Forwarded-Encrypted: i=1; AJvYcCUE5nsZCXLbOQoP9jS+L1dahdzKv8s4oGbVCTW2F1tHdrfQjOnEpLKg5TJvaC7FVkGHmrsLsqOLKcwD9oJD/ughLEtfCeqJie564g==
X-Gm-Message-State: AOJu0YwJO2OfRGKL+5Oe8Ld0hVHUxwboYM7wF4T0FTDJmcw26kfXobP6
	ql1VpRSQ6ga2mrg1v94I0qL0Cp7HaNtj9g8IQNTJRYGvEeflKdMqyycqY/MXGEk=
X-Google-Smtp-Source: AGHT+IETqjtVw4vm/BaAXb+7+BMz4Su+YcAJ5zJwSTOWHGTDcdm9ORyc65IHd9xEKGG8oTMrigZ+jg==
X-Received: by 2002:a05:600c:1d0f:b0:423:4c2:7a43 with SMTP id 5b1f17b1804b1-42304c27b17mr80244375e9.0.1718625781238;
        Mon, 17 Jun 2024 05:03:01 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f6127c1esm156486645e9.23.2024.06.17.05.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 05:03:00 -0700 (PDT)
Date: Mon, 17 Jun 2024 15:02:56 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Alexey Charkov <alchark@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Andy Yan <andy.yan@rock-chips.com>, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Message-ID: <94b9e0fd-2f4f-4d75-ae39-7d780a4e6374@moroto.mountain>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-2-detlev.casanova@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240615015734.1612108-2-detlev.casanova@collabora.com>

On Fri, Jun 14, 2024 at 09:56:27PM -0400, Detlev Casanova wrote:
> +static int rkvdec2_start_streaming(struct vb2_queue *q, unsigned int count)
> +{
> +	struct rkvdec2_ctx *ctx = vb2_get_drv_priv(q);
> +	const struct rkvdec2_coded_fmt_desc *desc;
> +	int ret, i;
> +	u32 width, height;
> +
> +	if (V4L2_TYPE_IS_CAPTURE(q->type))
> +		return 0;
> +
> +	desc = ctx->coded_fmt_desc;
> +	if (WARN_ON(!desc))
> +		return -EINVAL;
> +
> +	width = ctx->decoded_fmt.fmt.pix_mp.width;
> +	height = ctx->decoded_fmt.fmt.pix_mp.height;
> +	for (i = 0; i < RKVDEC2_RCB_COUNT; i++) {
> +		ctx->rcb_bufs[i].cpu =
> +			dma_alloc_coherent(ctx->dev->dev,
> +					   RCB_SIZE(i),
> +					   &ctx->rcb_bufs[i].dma,
> +					   GFP_KERNEL);
> +		if (!ctx->rcb_bufs[i].cpu) {
> +			ret = -ENOMEM;
> +			goto err_rcb;
> +		}
> +	}
> +
> +	if (desc->ops->start) {
> +		ret = desc->ops->start(ctx);
> +		if (ret)
> +			goto err_ops_start;
> +	}
> +
> +	return 0;
> +
> +err_ops_start:
> +err_rcb:
> +	i--;
> +	while (i) {
> +		dma_free_coherent(ctx->dev->dev,
> +				  RCB_SIZE(i),
> +				  ctx->rcb_bufs[i].cpu,
> +				  ctx->rcb_bufs[i].dma);
> +		i--;
> +	}

This will leak the first element of the ctx->rcb_bufs[i] array.  The
traditional way to write this is either while (--i >= 0) or for unsigned
int i iterators it would be while (i--).

> +
> +	return ret;
> +}

regards,
dan carpenter

