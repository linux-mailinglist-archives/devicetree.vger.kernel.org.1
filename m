Return-Path: <devicetree+bounces-146988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AA7A36F13
	for <lists+devicetree@lfdr.de>; Sat, 15 Feb 2025 16:23:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DAA931895065
	for <lists+devicetree@lfdr.de>; Sat, 15 Feb 2025 15:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51A331DE8A5;
	Sat, 15 Feb 2025 15:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qnJ+mmQZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5693D42AA5
	for <devicetree@vger.kernel.org>; Sat, 15 Feb 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739632976; cv=none; b=clpZ5qoV15p3JtRHF4M+7tQTWWq06fRxMWI4jlU4A2pj5aK+bGm/ywz++EcOv9wrwmLlhB6gESGipfXKp8/cy0WjT2Dikqh/wyY9RL7SevtyJnHq9+EZhZUUd1wuAr62f/6OrzpHj0PzgZnxuBxVQGGVBZl6lvxfhRIwVuu1oPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739632976; c=relaxed/simple;
	bh=ot4shzajuE90HxsFFMmVirML9i4Ru8URXgw7E2tV8lQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WJgvrQhoPxnL71kV62Wc69d2vMyzBzX9uRX9YQkgrDkoZNZvXJ+vtLczc0okD/EHOqjuE/dtrkI/BwreFo4UmSkoYBte6layM1cl2R76kRHz5lIDclUpW01dltinXyGRqj6xfFyPaqUzfAHrMCMN5pi9LMdKytey9Xqpd2excR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qnJ+mmQZ; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6efe4324f96so25457117b3.1
        for <devicetree@vger.kernel.org>; Sat, 15 Feb 2025 07:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739632972; x=1740237772; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2ya1HOp4At8o4rZdZ1CZR9DS9vtC+SlJcJNAQgmy2no=;
        b=qnJ+mmQZ19M8T8zvWmKXkLLyi10q9gXmvuOCrLbITuXvJQdFp6t5sgVXdEvgZ8ktzq
         B6V3lVv742xn5KyWmmh+I2SMuAwAT6tfyfMcDVLHxvEljRSzLH9Xjh7ENa1GA7ztuzov
         /fPPSEqNAidmHqU9XoymDhf3yNCwiM7SNmJP6P+kArmY8MobBy6WSWvDi7IBw3FK9YfT
         QMCTd9H7u7ghg76lk9QKBKXK8Z+LzLvghkTknyTm0OlGKEjKNfdXB+ggFhxteAOXtnLj
         usGmVPeQfsLy7vhj9TIY+IPUg23mdWDdjn6OLme83WZDc1RrrZriiz9+zvrQgtkqVGP/
         iLdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739632972; x=1740237772;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2ya1HOp4At8o4rZdZ1CZR9DS9vtC+SlJcJNAQgmy2no=;
        b=crxSkdxw6gCSO2Thjj6GK9ZXLyrI+c7SqvGVr+1JSIWPb25ay81mwIuBUOf2M+gSfR
         CvMuuA1uBuH8l+GyKl27JZFFC20vkHl5Kp/nKmycoJwyhcmuS9A05Gnpi5zv/nmpxWRX
         vTreQctUKZhADqTF55Z7g44BDDFuQgXtIkM+hmLAQgZvOFrom6GuOugpYtkbjdrXpvEH
         d13hG/z6mRZIgsknYzp0zAaOQ4ma+HLNWCqxzVJFAJGHgb5O/6qlex2cmrhv1XTh9cuO
         QAZrpci8PchkNHTMLYJ5QjhbQ7Olka4QElxh7lcLL5YeVWBh46EMwCjNsWwDoQCwwwbA
         QYhA==
X-Forwarded-Encrypted: i=1; AJvYcCU4kTm9HyMC1heTD7paUEsWo46QwC4PsIHNtuDDKiYVVb616JCUC14YBXedXg7aa+aXfq8gK38IgLga@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6sJ8wO3NYibY9fdF2gpaSt9TnC8N8jIsemOIc8kKnWV5w5eYl
	26PJZu2ty3kb5fQ16IbTmKo6BsnMgC5fXbI/bnBSsTLVBw336l0sPWXV/obYW8gzD0mB8Ll/jeK
	/+JpU3QCIGgUsZnMFN6hHbr3saDmU9m0PsqOnNg==
X-Gm-Gg: ASbGncs8AgwkyWaLcAHjMZ7lXc+IOLebKdGmgbZ+jAoWeLIGBFz+ADfYlwlD/BqxfiH
	2/tAnhf1k5fcnEPwgBpIS8rCn2tCcD2VafgdvjM+Rkd4qDzIhiYmpT1C5yMfQKXLMKjkYZ5ZXGw
	PPkipq94jaQVvW8t0YUPaVkJHzWQ==
X-Google-Smtp-Source: AGHT+IHCM9nGvMBLMHM0urprzaVEMr1E9JJGwJN2aU4oCsO5lmJSn8L5sb5ABAdmNNdEk78PHDTei2/liPwZS3V/suk=
X-Received: by 2002:a05:690c:6405:b0:6ef:6f24:d093 with SMTP id
 00721157ae682-6fb58260edamr32798287b3.6.1739632972228; Sat, 15 Feb 2025
 07:22:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250213-a623-gpu-support-v1-0-993c65c39fd2@quicinc.com>
 <20250213-a623-gpu-support-v1-2-993c65c39fd2@quicinc.com> <ttipuo56z76svx3womcrrqurglvovkqehsx2orgnegjj2z7uxn@d3cov6qmmalm>
 <182b7896-9cfc-4f94-b9d4-759fd85fd997@quicinc.com>
In-Reply-To: <182b7896-9cfc-4f94-b9d4-759fd85fd997@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 15 Feb 2025 17:22:40 +0200
X-Gm-Features: AWEUYZkkpka5cr642Meq7bthCAe5gt3dTkRMkIvHVkAt9bN0FOufwH7vzAGO4cA
Message-ID: <CAA8EJppO6ob+oQTzPkx1D6Fmq7bfyNquEyXwFXhmiiTKtXrOAA@mail.gmail.com>
Subject: Re: [PATCH 2/5] drm/msm/a6xx: Add support for Adreno 623
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Jie Zhang <quic_jiezh@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, 15 Feb 2025 at 13:49, Akhil P Oommen <quic_akhilpo@quicinc.com> wrote:
>
> On 2/13/2025 10:24 PM, Dmitry Baryshkov wrote:
> > On Thu, Feb 13, 2025 at 09:40:07PM +0530, Akhil P Oommen wrote:
> >> From: Jie Zhang <quic_jiezh@quicinc.com>
> >>
> >> Add support for Adreno 623 GPU found in QCS8300 chipsets.
> >>
> >> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> >> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> >> ---
> >>  drivers/gpu/drm/msm/adreno/a6xx_catalog.c   | 29 +++++++++++++++++++++++++++++
> >>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c       |  8 ++++++++
> >>  drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c |  2 +-
> >>  drivers/gpu/drm/msm/adreno/adreno_gpu.h     |  5 +++++
> >>  4 files changed, 43 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> >> index edffb7737a97..ac156c8b5af9 100644
> >> --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> >> +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> >> @@ -879,6 +879,35 @@ static const struct adreno_info a6xx_gpus[] = {
> >>                      { 0, 0 },
> >>                      { 137, 1 },
> >>              ),
> >> +    }, {
> >> +            .chip_ids = ADRENO_CHIP_IDS(0x06020300),
> >> +            .family = ADRENO_6XX_GEN3,
> >> +            .fw = {
> >> +                    [ADRENO_FW_SQE] = "a650_sqe.fw",
> >> +                    [ADRENO_FW_GMU] = "a623_gmu.bin",
> >> +            },
> >> +            .gmem = SZ_512K,
> >> +            .inactive_period = DRM_MSM_INACTIVE_PERIOD,
> >> +            .quirks = ADRENO_QUIRK_HAS_CACHED_COHERENT |
> >> +                    ADRENO_QUIRK_HAS_HW_APRIV,
> >> +            .init = a6xx_gpu_init,
> >> +            .a6xx = &(const struct a6xx_info) {
> >> +                    .hwcg = a620_hwcg,
> >> +                    .protect = &a650_protect,
> >> +                    .gmu_cgc_mode = 0x00020200,
> >> +                    .prim_fifo_threshold = 0x00010000,
> >> +                    .bcms = (const struct a6xx_bcm[]) {
> >> +                            { .name = "SH0", .buswidth = 16 },
> >> +                            { .name = "MC0", .buswidth = 4 },
> >> +                            {
> >> +                                    .name = "ACV",
> >> +                                    .fixed = true,
> >> +                                    .perfmode = BIT(3),
> >> +                            },
> >> +                            { /* sentinel */ },
> >> +                    },
> >> +            },
> >> +            .address_space_size = SZ_16G,
> >>      }, {
> >>              .chip_ids = ADRENO_CHIP_IDS(
> >>                      0x06030001,
> >> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> >> index 0ae29a7c8a4d..1820c167fcee 100644
> >> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> >> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> >> @@ -616,6 +616,14 @@ static void a6xx_calc_ubwc_config(struct adreno_gpu *gpu)
> >>              gpu->ubwc_config.uavflagprd_inv = 2;
> >>      }
> >>
> >> +    if (adreno_is_a623(gpu)) {
> >> +            gpu->ubwc_config.highest_bank_bit = 16;
> >> +            gpu->ubwc_config.amsbc = 1;
> >
> > This bit causes my question: the patch for msm_mdss states that on the
> > display side both UBWC encoder and decoder are 4.0, which means that the
> > UBWC_AMSBC bit won't be set in the UBWC_STATIC register.
>
> Not sure, but my guess is that AMSBC encoding is probably implicitly
> enabled by MDSS HW when UBWC v4 is configured.

Ack.

>
> -Akhil
>
> >
> >> +            gpu->ubwc_config.rgb565_predicator = 1;
> >> +            gpu->ubwc_config.uavflagprd_inv = 2;
> >> +            gpu->ubwc_config.macrotile_mode = 1;
> >> +    }
> >> +
> >>      if (adreno_is_a640_family(gpu))
> >>              gpu->ubwc_config.amsbc = 1;
> >>
> >> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c
> >> index 2c10474ccc95..3222a406d089 100644
> >> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c
> >> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c
> >> @@ -1227,7 +1227,7 @@ static void a6xx_get_gmu_registers(struct msm_gpu *gpu,
> >>      _a6xx_get_gmu_registers(gpu, a6xx_state, &a6xx_gmu_reglist[1],
> >>              &a6xx_state->gmu_registers[1], true);
> >>
> >> -    if (adreno_is_a621(adreno_gpu))
> >> +    if (adreno_is_a621(adreno_gpu) || adreno_is_a623(adreno_gpu))
> >>              _a6xx_get_gmu_registers(gpu, a6xx_state, &a621_gpucc_reg,
> >>                      &a6xx_state->gmu_registers[2], false);
> >>      else
> >> diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
> >> index dcf454629ce0..92caba3584da 100644
> >> --- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
> >> +++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
> >> @@ -442,6 +442,11 @@ static inline int adreno_is_a621(const struct adreno_gpu *gpu)
> >>      return gpu->info->chip_ids[0] == 0x06020100;
> >>  }
> >>
> >> +static inline int adreno_is_a623(const struct adreno_gpu *gpu)
> >> +{
> >> +    return gpu->info->chip_ids[0] == 0x06020300;
> >> +}
> >> +
> >>  static inline int adreno_is_a630(const struct adreno_gpu *gpu)
> >>  {
> >>      return adreno_is_revn(gpu, 630);
> >>
> >> --
> >> 2.45.2
> >>
> >
>


-- 
With best wishes
Dmitry

