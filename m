Return-Path: <devicetree+bounces-75558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DB542907B60
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 20:31:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B768285445
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 18:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08B5814A0AD;
	Thu, 13 Jun 2024 18:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cfiC3cRg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A7714B075
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 18:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718303493; cv=none; b=LhCBolSj+lf2xpNE4Ge9wT4q5jDeMsFLLnveUbLDp4ribeNWIFaTQTEkD5tmXkSWb75NgmfKiAUOarMOhu2jpGC8MpzpTUhIAA0r6EdBw2SlGOqkwsZFINzYce9tac3FVE1MFr1qd2qQ9hCqbQYwlaLRRp8xmAqQGeOkMRrHoEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718303493; c=relaxed/simple;
	bh=9nV7hLmfDx/7B3Dty2P3cncxZUHN74Qo/BKpf3QRBuc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Vn8VPrhLJepGYQwqon0NXeNO27CBAupbERfb7jCWY+fu9vITnTJKhLYymxr/+IrUN1mQ/JqfOkvQCVYmUgkVjCOsZxsXkXlswG5r5SpCm2lOLp0zSkm44T0GjaOWG5b6p2fzlqL1LIuKXnOhAqbQQIERICnSn+jCEbzazD4SjNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cfiC3cRg; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-62f86abc8abso14937647b3.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 11:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718303491; x=1718908291; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JXQvrLMUU/ZNamWgnYQjVMOCkiOypt0RodDQ76i6a1I=;
        b=cfiC3cRgRuDtWqlOIxDIJgmmevpmwzE5hDlegP1hAjKyJYibWcO0iqppTGLOsD3KgV
         eQ22PEPiFYaeGeOR3oXj7QJYKKTMZeDDso4ysOTnYxFX79aMobfArGeZ6yUaGlhrSCaW
         U7qAmP7j0EI0LRvbCGhi17LHCB7cEkFdF5birnuKIuiJfaWkleoYzDLPtzx1/MJx21eN
         6RXQLBHOByZOoze/Hp+M8s8sZIXB9WqqVnjkbxBN1PltolECGUBlRTVsu3c8rnva5W0I
         X442eqmQNdMesy7mlMGHKyQ1P+1pEmO8Swy74VsKI200QFFAiREiuFH63l4GUww2BZN0
         8QbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718303491; x=1718908291;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JXQvrLMUU/ZNamWgnYQjVMOCkiOypt0RodDQ76i6a1I=;
        b=i4IkTZndebonPkjlJkQtQi5pqIltKgwYBDF1KGLzOeffLWP0GcEfv2dlwL1iIysIZb
         IvqaVgvukkj2GZccbxZPv03WaCrIFB5qiLIh/qA00Up534MDsXQRXrkD8ZhvLGM69Ndl
         EdYeok8nDsoYzHO49kX/nCmRuhMxm+bgl2GLhgD0Sskcnzh1dKqYLFgfCfISThfvh1KO
         W4uJ1MfW71VFVeLNKpZTLGnzhdfQp7ukPcsWU5GSuTRn29WTjhr4z6f1Kr/ov/yPOIlJ
         W8aJvqqtRzbhwOW608FsGtg96ywP1C1moIkHGZUsoZnExPkI4Hmc8wr/k0+7vMAwRaKo
         /PBg==
X-Forwarded-Encrypted: i=1; AJvYcCU60hwT0QvNHbs8Jxx+VxCq3P5ZR31YpgimJqz5pqpSVDvKDaKK9nLVs3mYwCgWcXVyjmqV/WtUYJc0auUFHvBzIRyMOMqCKZdNvA==
X-Gm-Message-State: AOJu0YyWBkl7IwjwnFrBadOpuFcS+AqhipYGZKibB+NQmHlNzGjMtxCi
	VCJxvqxbK+9EkkrdZCMfFlCKejM+F0BliAEAJZhC0wYd+ONI5/75+pRoVjuruCRjddg1BZDUolA
	53YNcQP2oTF7UO2uFJguUGM4eSvRIro3CCT6W4A==
X-Google-Smtp-Source: AGHT+IGb8ds/chiqYcRHUQd63D995+EL6FV0xR8Fey/wJufK/UDYuEQFsfDNaMSulhpxOJVOwD9VdNJPzFLEFqHCWh8=
X-Received: by 2002:a0d:f983:0:b0:620:4018:7c67 with SMTP id
 00721157ae682-6322305171emr2754787b3.27.1718303491189; Thu, 13 Jun 2024
 11:31:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240613-dpu-handle-te-signal-v2-0-67a0116b5366@linaro.org>
 <20240613-dpu-handle-te-signal-v2-2-67a0116b5366@linaro.org> <l3esy4ciy4envu35edg35sip5od6ltxpazpddo2w6vwmqomjky@azgqxi4la3hy>
In-Reply-To: <l3esy4ciy4envu35edg35sip5od6ltxpazpddo2w6vwmqomjky@azgqxi4la3hy>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 13 Jun 2024 21:31:20 +0300
Message-ID: <CAA8EJpqpBkJZmyhQA6b3Fg1cmY35yptt385weQQvDsq9rGazrA@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] drm/msm/dpu: convert vsync source defines to the enum
To: Marijn Suijten <marijn.suijten@somainline.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 13 Jun 2024 at 21:17, Marijn Suijten
<marijn.suijten@somainline.org> wrote:
>
> On 2024-06-13 20:05:05, Dmitry Baryshkov wrote:
> > Add enum dpu_vsync_source instead of a series of defines. Use this enum
> > to pass vsync information.
> >
> > Reviewed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c |  2 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c |  2 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.h |  2 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h | 26 ++++++++++++++------------
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.h  |  2 +-
> >  5 files changed, 18 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> > index 119f3ea50a7c..4988a1029431 100644
> > --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> > +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> > @@ -747,7 +747,7 @@ static void _dpu_encoder_update_vsync_source(struct dpu_encoder_virt *dpu_enc,
> >               if (disp_info->is_te_using_watchdog_timer)
> >                       vsync_cfg.vsync_source = DPU_VSYNC_SOURCE_WD_TIMER_0;
> >               else
> > -                     vsync_cfg.vsync_source = DPU_VSYNC0_SOURCE_GPIO;
> > +                     vsync_cfg.vsync_source = DPU_VSYNC_SOURCE_GPIO_0;
> >
> >               hw_mdptop->ops.setup_vsync_source(hw_mdptop, &vsync_cfg);
> >
> > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c
> > index 225c1c7768ff..96f6160cf607 100644
> > --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c
> > +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c
> > @@ -462,7 +462,7 @@ static int dpu_hw_intf_get_vsync_info(struct dpu_hw_intf *intf,
> >  }
> >
> >  static void dpu_hw_intf_vsync_sel(struct dpu_hw_intf *intf,
> > -             u32 vsync_source)
> > +                               enum dpu_vsync_source vsync_source)
> >  {
> >       struct dpu_hw_blk_reg_map *c;
> >
> > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.h
> > index f9015c67a574..ac244f0b33fb 100644
> > --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.h
> > +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.h
> > @@ -107,7 +107,7 @@ struct dpu_hw_intf_ops {
> >
> >       int (*connect_external_te)(struct dpu_hw_intf *intf, bool enable_external_te);
> >
> > -     void (*vsync_sel)(struct dpu_hw_intf *intf, u32 vsync_source);
> > +     void (*vsync_sel)(struct dpu_hw_intf *intf, enum dpu_vsync_source vsync_source);
> >
> >       /**
> >        * Disable autorefresh if enabled
> > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h
> > index 66759623fc42..a2eff36a2224 100644
> > --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h
> > +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h
> > @@ -54,18 +54,20 @@
> >  #define DPU_BLEND_BG_INV_MOD_ALPHA   (1 << 12)
> >  #define DPU_BLEND_BG_TRANSP_EN               (1 << 13)
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
>
> While at it, rename this to _P / _S / _E to match the other patches/code?

I thought about it, but Abhinav pointed out that DPU docs use this
kind of naming.

>
> - Marijn
>
> > +     DPU_VSYNC_SOURCE_INTF_0 = 3,
> > +     DPU_VSYNC_SOURCE_INTF_1,
> > +     DPU_VSYNC_SOURCE_INTF_2,
> > +     DPU_VSYNC_SOURCE_INTF_3,
> > +     DPU_VSYNC_SOURCE_WD_TIMER_4 = 11,
> > +     DPU_VSYNC_SOURCE_WD_TIMER_3,
> > +     DPU_VSYNC_SOURCE_WD_TIMER_2,
> > +     DPU_VSYNC_SOURCE_WD_TIMER_1,
> > +     DPU_VSYNC_SOURCE_WD_TIMER_0,
> > +};
> >
> >  enum dpu_hw_blk_type {
> >       DPU_HW_BLK_TOP = 0,
> > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.h
> > index 6f3dc98087df..5c9a7ede991e 100644
> > --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.h
> > +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.h
> > @@ -64,7 +64,7 @@ struct dpu_vsync_source_cfg {
> >       u32 pp_count;
> >       u32 frame_rate;
> >       u32 ppnumber[PINGPONG_MAX];
> > -     u32 vsync_source;
> > +     enum dpu_vsync_source vsync_source;
> >  };
> >
> >  /**
> >
> > --
> > 2.39.2
> >



-- 
With best wishes
Dmitry

