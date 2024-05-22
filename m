Return-Path: <devicetree+bounces-68511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A82818CC794
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 22:01:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 68C901F21E29
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 20:01:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D84453EA98;
	Wed, 22 May 2024 20:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B2ZhiIAC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B4E1CAAE
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 20:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716408097; cv=none; b=VnXUoLmHcsRTsXPMhDDFabxMDasywh+Xa05H6ukYpuUbePd5Qi6jbxcjkZhtkV2wRbCoDhVSu/xtryH7R8wvl3eHLRAz5Re84IHQzYLHeB3Po3DYLEe9UbWPQ43QoqolRfFyk4haXMAa0Ey1InQXk20jy1z0ITfwRlB4G79o40A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716408097; c=relaxed/simple;
	bh=E2MhD/impd63iY0PURt2QkGl5IEOTUJE8+cf6tDrelk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bwLgC0HcKmno1DQpN6OWUmc3u/25YXMtGG4JGDY3Pgj/uxbfIa1pBWZo1gtT33s4aq1Dii+Wy/e48+QnbGWWS+wGiVdm+YZlQ/e2YSmehGmPhu+y3cm2Wk5c0uSTpJRZpU7BmZzewwrYfzNkadi5SHdtmz7OdfNQgTRo2WQWLr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B2ZhiIAC; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-627efad69b4so7740997b3.3
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 13:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716408095; x=1717012895; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DRPkMdMiFXiHSXSHC1KGtPEPqoByQrBvux7SR1+/mUI=;
        b=B2ZhiIACCQ31nOw/wJ3VbNw1ptMfSAOyn02kzIN10U1fEO2ZI5GmqXkSavSwcdQ19n
         87+W+KdAhp7K/MQCxtEjv6b5sAy2/N3q3hBTiCEFDSN4IC0DLhBopI0L50QE9YfRYUK9
         7b6IYYW0Vh9YwxwFZ9fcZhTxJXMsUL4ddXeWj+5jXPE6aDAP+Iwnxs7RrNQHJsDVJ/hY
         lkH9ikk29lzNQi26wFFrQ/hHVYqjcgUc3gVw5c/HSjkDHoC/kOgdBU1Eg6qTpRXMRcfI
         U8w66bZazTOOEepDIGzI9UsI5CP00sAfpazXVy2Dj31aAlp+RzStEz/T0S3PbctD6RV4
         28Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716408095; x=1717012895;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DRPkMdMiFXiHSXSHC1KGtPEPqoByQrBvux7SR1+/mUI=;
        b=D7mpVJqAEC+xis3HjrDD5UBBx7UJkwkBwly/UU3Qn0WAlnifmQa+TmYvk9tpvOhNSA
         fi90cgcpoMi8hf8ateIUD9A6dJtdk5RZYgxWpkYlVgMIoCV/Vhygpli1hnMNpVTA8l0s
         QMB23+QxU1mHWaLf0ZONWEiATFkhZNrbe89Zv5UGr+c5jxa743QeAhBobYEjrGvOVAOW
         B+ui53ne1PTFYolIffvzDAHWVecW8TmJOQcExVFkE83Zt5benvn4x5YVOCgAVdv4yULA
         XjYuX82/hIoozPMWqv+ETePYVAL3vl+BRbOkHzns12vnFdYwlZ99zxGVQZSJPJweXzUE
         UWmg==
X-Forwarded-Encrypted: i=1; AJvYcCUvahXmoat5VWjbUU8sfCr7CLOYK2/Gh/W0ALfm9Dm9pJy8oBDISTBd+YmMvL+Uw8jJ9HEMDhF3VcMQaki1M5zUvf7k81ThyhaRng==
X-Gm-Message-State: AOJu0Yyn2BHewvWroxGfr8MM5tCvqdMdkxPaqBKq3nFLuvHZJ+w+IalJ
	seIewuyItnV3380/PjI453dYnGsydVERtiZ6GNeWTJeaA6kstiS3iyNm0jNeRqS9Sgeqre/4LsN
	tww7n1kGsghV0pMuaoT2C/U6+DKGinof4iXxPkw==
X-Google-Smtp-Source: AGHT+IGp6pTwvIYDaSqRLy9eyI5ICKE1WVJu990cWnLKFAuKaL+Hi52m5qOuALyhACM95iFGWGyXVZCh3VhYsES77d0=
X-Received: by 2002:a25:2c9:0:b0:dcf:bc57:cd61 with SMTP id
 3f1490d57ef6-df4e0df17bfmr3143774276.50.1716408095274; Wed, 22 May 2024
 13:01:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240520-dpu-handle-te-signal-v1-0-f273b42a089c@linaro.org>
 <20240520-dpu-handle-te-signal-v1-2-f273b42a089c@linaro.org> <a349dda7-8af5-0996-0057-9da30f39dfb1@quicinc.com>
In-Reply-To: <a349dda7-8af5-0996-0057-9da30f39dfb1@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 May 2024 23:01:24 +0300
Message-ID: <CAA8EJpo7MdFqFUS0jcs3v4bSOoi6WWnbjahqn4r045CX8CTcOg@mail.gmail.com>
Subject: Re: [PATCH 2/7] drm/msm/dpu: convert vsync source defines to the enum
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 22 May 2024 at 21:41, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
>
>
>
> On 5/20/2024 5:12 AM, Dmitry Baryshkov wrote:
> > Add enum dpu_vsync_source instead of a series of defines. Use this enum
> > to pass vsync information.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c |  2 +-
> >   drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c |  2 +-
> >   drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.h |  2 +-
> >   drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h | 26 ++++++++++++++------------
> >   drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.h  |  2 +-
> >   5 files changed, 18 insertions(+), 16 deletions(-)
> >

> > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h
> > index 66759623fc42..a2eff36a2224 100644
> > --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h
> > +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h
> > @@ -54,18 +54,20 @@
> >   #define DPU_BLEND_BG_INV_MOD_ALPHA  (1 << 12)
> >   #define DPU_BLEND_BG_TRANSP_EN              (1 << 13)
> >
> > -#define DPU_VSYNC0_SOURCE_GPIO               0
> > -#define DPU_VSYNC1_SOURCE_GPIO               1
> > -#define DPU_VSYNC2_SOURCE_GPIO               2
> > -#define DPU_VSYNC_SOURCE_INTF_0              3
> > -#define DPU_VSYNC_SOURCE_INTF_1              4
> > -#define DPU_VSYNC_SOURCE_INTF_2              5
> > -#define DPU_VSYNC_SOURCE_INTF_3              6
> > -#define DPU_VSYNC_SOURCE_WD_TIMER_4  11
> > -#define DPU_VSYNC_SOURCE_WD_TIMER_3  12
> > -#define DPU_VSYNC_SOURCE_WD_TIMER_2  13
> > -#define DPU_VSYNC_SOURCE_WD_TIMER_1  14
> > -#define DPU_VSYNC_SOURCE_WD_TIMER_0  15
> > +enum dpu_vsync_source {
> > +     DPU_VSYNC_SOURCE_GPIO_0,
> > +     DPU_VSYNC_SOURCE_GPIO_1,
> > +     DPU_VSYNC_SOURCE_GPIO_2,
> > +     DPU_VSYNC_SOURCE_INTF_0 = 3,
>
> Do we need this assignment to 3?

It is redundant, but it points out that if at some point another GPIO
is added, it should go to the end (or to some other place, having the
proper value).

>
> Rest LGTM,
>
> Reviewed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>

-- 
With best wishes
Dmitry

