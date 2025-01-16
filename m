Return-Path: <devicetree+bounces-139118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D319A141DC
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 19:52:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D56281888F1F
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 18:52:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6918E22D4E1;
	Thu, 16 Jan 2025 18:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XSnJv7+1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D552015530B;
	Thu, 16 Jan 2025 18:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737053563; cv=none; b=HOm2mdHVRjGflysM+0MFYS/3/R1Ad7/q01ygYHspQL+ZOrmCu0C3S0pr6PtVlnPYUD5LQdMMRy4hw0JVWcZpqen8eR2hTjPyxiEEd6D43g9/PU8QhFOHb4ldnOtm5hpEm6OgaFJjhbkmyx/cFO/TRTBfVpAVtbXMzLGDfbFxFxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737053563; c=relaxed/simple;
	bh=7Lj72r4CcaOQX8PHhy9Xe9ESwLBSPPds1p2rS7Lq/dM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SubrPbb6T/xQvwBb5D9fRV05mb6M/dbXYoAAhwDDUQ+nBpdTVlP8wWEFcoFmWOOiD7CJGKY1qf5k/A2oRtC8XbSw1FZpKLgHm/a7EjR9bFZ0+s6RkJ7rB9Zhc0vJfPZ80V4ypGkuojIQuSb+2vYdWXVfKxlYmWPhYYpJFvZZcTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XSnJv7+1; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e53537d8feeso2066464276.0;
        Thu, 16 Jan 2025 10:52:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737053561; x=1737658361; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=epUccpjDGRE9EuJbLES1VkaNPQIRZSalTXoKeOQ8Ry8=;
        b=XSnJv7+17PEJdKvFj3W36QpoO1o1GK4L3hi4KYc+SdSAjHAKVLcD5uKbf04glHAb8z
         d0gU/A2bubk/EnAbN5olYRYZdnHBNQKBMfU6xzsiZmyPb7WCADF4jSz71+IVO+9N8QGA
         sOJS3YaqiPwyXINVlitSdjk107ECUm+9lPN9NBVh7Uu/7lCos3nib/kNZCT3V8H51T6P
         hqfBOXn/uUPpleo/LlAPJTGqZaCdQiHLJ91fOgrU//HoVEDktbSgaskhHgXbdiornA3F
         tFVO0d3O2XQtL92YCIM/1Y6sPkIuoW5q2BIpwWx5EeeH1EI3+qRT1SJZUfOVzHJ8NEYn
         adUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737053561; x=1737658361;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=epUccpjDGRE9EuJbLES1VkaNPQIRZSalTXoKeOQ8Ry8=;
        b=TWy19LeLpEWEeZSOjCafvjxUGKBAC30ptpeVR8J4OqNUMd6NcxJ+3FrtbJBaPycNhh
         XqmyJ9semfVo02wIlAzH/U6glfc7efOiD4DXPEQvvQ9ZnJefvQk20Pmm5/NE8njTRL8u
         Ks3LnmepqgbKtdlUuOE14ZBmsOMP1KHtPERCcPrycisHo8nv8dN/c+jnKGsDmb9l4FrU
         NLd7vU+qLLb0ovfv+jAlpAlY41TVARw+hYVMiGK0aLguSLXwOtQwMLKLeQMXOvpd3Apu
         lQHrpje1Ybtm9WsqvQ2bcRygf6LTBWIXR3UH62BSfSp+uZoSPT+KvvK1rzjn5IiPZJtf
         i2CQ==
X-Forwarded-Encrypted: i=1; AJvYcCVEz4AGHsoTaeP9p2yCGmIcjMZYoEGJi/TFDkanrytdc3yDC18r4H2aV/RtzwgKnwmKCHk/nP+j0NTHVkLu@vger.kernel.org, AJvYcCXpg/ST7chOgeaBjkhIDUdsWLd7tBsOocU/ROxNQW/kopL6DRSY65HBFq0nZRoqNQY/Ft3K3f0DX/uq@vger.kernel.org
X-Gm-Message-State: AOJu0YyxUkWEa4aW8XQI6zTvO2t/JmqU1SuvdLiypghXHKqGCTXNgA3i
	XqQNKo9ys2ogFM5R4ldHFzClVHBI3TKyzTc+SDd4p70cxJmz8qBE7xocIzinlJH1Hh7M3djwdig
	VnxvVYBBmlQ9H3A+G1ENaU8ECUcU=
X-Gm-Gg: ASbGnctUHVv6GpzkL2dkDN3Tnk/JfUGlqzB5tzw8sJ7UyV/lSgLwV2LOO3IJ5WakWKN
	3mtUpUUXJM9INtdnPydgwf71JQh4iEV67g/+CKV8=
X-Google-Smtp-Source: AGHT+IG/5CjKhXh96Nk+XB/+aMWTA4imIkKzPQiupTR0gI1gGVjVyFbBQFaeqBYVq9D6f+2cUD0dR0X8JEvKu0ia5Qg=
X-Received: by 2002:a05:6902:a09:b0:e57:31f1:9722 with SMTP id
 3f1490d57ef6-e5731f1a429mr22183513276.29.1737053560928; Thu, 16 Jan 2025
 10:52:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250114-adpdrm-v4-0-e9b5260a39f1@gmail.com> <20250114-adpdrm-v4-2-e9b5260a39f1@gmail.com>
 <mu7qiybhj7tu5hauk7izfxqlookc3awpknhjk74zwpkbznei4m@kewap6vivzoa>
In-Reply-To: <mu7qiybhj7tu5hauk7izfxqlookc3awpknhjk74zwpkbznei4m@kewap6vivzoa>
From: Sasha Finkelstein <fnkl.kernel@gmail.com>
Date: Thu, 16 Jan 2025 19:52:30 +0100
X-Gm-Features: AbW1kvbipHKJwElTaiGLwN0S5Fv6wP5xVACM8b4oZ-wh_e88VZ8Pe5kxngHqc80
Message-ID: <CAMT+MTT+_ER+mFP1yUY+L-47-sZfNmtHUp09rqpPG174OKMJKA@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] drm: adp: Add Apple Display Pipe driver
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Alyssa Ross <hi@alyssa.is>, Janne Grunau <j@jannau.net>
Content-Type: text/plain; charset="UTF-8"

On Wed, 15 Jan 2025 at 11:21, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
> > +     ret = drm_simple_encoder_init(drm, &adp->encoder, DRM_MODE_ENCODER_DSI);
>
> This is being deprecated, please use drm_encoder_init() /
> drmm_encoder_init() instead.

I seem to be unable to find any documentation or a mailing list post
to this effect. If you are referring to this patchset:
https://patchwork.kernel.org/project/linux-samsung-soc/patch/20200313201744.19773-3-sam@ravnborg.org/
according to my understanding, it has not been applied.
In this case, the simple encoder api provides all functionality i need,
and a replacement would just be a simple encoder, except copied and pasted
into this driver.

> > +static void adp_remove(struct platform_device *pdev)
> > +{
> > +     struct device *dev = &pdev->dev;
> > +     struct drm_device *drm = dev_get_drvdata(dev);
> > +     struct adp_drv_private *adp = to_adp(drm);
> > +
> > +     adp_disable_vblank(adp);
>
> Isn't it being helped by the DRM itself? Anyway, I'd suggest moving it
> after DRM device unregistration and shutdown.

Not sure i follow, as this call disables generation of vblank interrupts,
shouldn't it be done before all drm structures are torn down, to prevent
the interrupt handler from potentially operating on objects that are in
an invalid state?

