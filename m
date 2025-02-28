Return-Path: <devicetree+bounces-152543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FCCA496EB
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 11:20:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A1423B9EFF
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 10:18:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CDD225BAA7;
	Fri, 28 Feb 2025 10:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R5E4+iw8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3F942561DE
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 10:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740737877; cv=none; b=VDeJNnVUm5lEE/nI2q96o3DprsUy/GHaXkdqg5YRvDxL05QodVuyj6/YunOO9qwFwY52SjnzaaURu2gV+uyUQc8ih8yFbe74CqdPq12/lPBj6iCiN9FJ2XevClgRenqN/EAfvXv0p+hxJ0ufX4g8P3DtHQYWwNtoBx067RIsfy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740737877; c=relaxed/simple;
	bh=9T7yEMjBzr/dGzam8l9t6bX4kbPkvk217sHLFZacMUY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CzA7iwe5ZOMZ5TjBfJRMMBDpTai/KIFRhlaquRaTOiOjJa2Juul2yxw8QkOZoEYh0yR2OrwTsYlVwrt/hUT8QpoQEhUcezvCU/MxD7pXFofduAagXHqed4BP52f6FP6Xohsg+z92W1E4yK52zYt/nlY7O0RRQD93vIZOPGHNkdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R5E4+iw8; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54298ec925bso2895615e87.3
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 02:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740737874; x=1741342674; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CqCAMLKDFMDmg/J9XlohF5SNVValJDhS7J4k1e5y8j8=;
        b=R5E4+iw8AGO+2Hgf78SuAvuj7rVM+kFboBOjlcwOVP8MytT7bToG9Wzx2+5DkqXxMk
         q+MvKoyOWq1GItU2KSDoCW6+s9wtpziok5sOP1E5fm7mREr4TKTaAH4qZVvXjfyUinmU
         hIxPEqCsYeWvxB2Bw57bnjaWA0ESrDD+swWSNQ8lpEmNr9WstXxA1N1eYQ294Jn6QNaM
         INCEQ5PBBU8MPlXcFjQOZpKEIEZLR/dwDCPBLzOCUWhdjMdpALxpYA//XHgle0G+mhhA
         bcJOhgronqv9erOkmZAKpgfATt3D2vEgY+f/PzgUEiTR9GadKwXcBrZnFCJ2tdU4LOh2
         D6cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740737874; x=1741342674;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CqCAMLKDFMDmg/J9XlohF5SNVValJDhS7J4k1e5y8j8=;
        b=gO/JLfdXSASvjRS6j8oPX17IH/5g/IEN2F+Xbhk+otfQLH/cuy6FusF1l89kWby860
         wvXf/jyyfRHrsLidOSCEOqGuTRtMIy5RjmgK1yYfS9BLPo23LJ2iASGQMzuDLmArSm1L
         44olmx+m3/gbP1MNtXidK07j/paQGS+qg/4Dow9eegv/21cs4xRxSYsjZdbcHINcC9x4
         4TX09TrCywxpWTzqUnf9S4kwB4OfiRm6qNiGjpolanzKjZU3xmKs/Dd7SmwS5gk7zCbI
         7cUIIIe9Uj7092GgiDlIE7oqyZesH4Jg0CUYtLNbEIfyOfuJW13BZlVIoFK+XJ3JgNgN
         5tUg==
X-Forwarded-Encrypted: i=1; AJvYcCUb9zpB7zZGpF74ys3PFFCsLGb3nTU247+LjYngMhN0sy1g4BOq6BfuJuKLWEuZeni3K7PQ++ss0586@vger.kernel.org
X-Gm-Message-State: AOJu0Yz718CbCHiq+GXiZCZl3QME3TbJgRCsaMvUmjU1r3VYiwQiVKGO
	DO8YQ3qiIB20Mu+RQBd3953r8RsG8rCO+dAaR0WUlW0F3nfCM++9yPdTu2Mf9a8=
X-Gm-Gg: ASbGncvg2XnrRWpoIM7MSeB/nCy1itrSy9h3tRkDM6fI5Zb5hhL6GGfqMOSkdObvmTd
	STlaSO190JFeywVfRX2owwgYA37g9/B7AvPj8qXTH8bWUauEp5UJILA+NVaPlTnKXVX00uiEpZD
	p5q/R1RZ9aYqdYI76MTUh1WOwaZYhw1yfCkmvzf0UrsW01MhMNZZ7jLPpf4Ae6fgFM6vA0cs6Pa
	VWcI4YXp8QD/YDYBMmtU3RzUIekneCjfTQxQUR9FlgFKjuD7xueVvas4HU5apphRo4/tM5xp1Pf
	etDpyJmVLRmfyh5vnASb6vOvx+VsUEohBoKohu7a6u8sPiSVGgRTQW4Z5UEZ3aBG1zaqZNhHvQ2
	4XZfAdg==
X-Google-Smtp-Source: AGHT+IF3N0HBb4ltf2zBecIFj5x7J4NwmcVlVNLZd7wW8E14jB9yl9ngbFhq5O6DA0Qg+LTZLwm3ww==
X-Received: by 2002:a05:6512:3d19:b0:545:ea9:1a19 with SMTP id 2adb3069b0e04-5494c10c72bmr1255712e87.5.1740737873802;
        Fri, 28 Feb 2025 02:17:53 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5494417b62asm441359e87.85.2025.02.28.02.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 02:17:52 -0800 (PST)
Date: Fri, 28 Feb 2025 12:17:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
Subject: Re: [PATCH v2 3/6] drm/msm/a6xx: Add support for Adreno 623
Message-ID: <fje7r73olswfx5kbkvnlyvlhv3oqnj3ki26i2brb5fbuewfc3x@jsaz73zsd6rc>
References: <20250228-a623-gpu-support-v2-0-aea654ecc1d3@quicinc.com>
 <20250228-a623-gpu-support-v2-3-aea654ecc1d3@quicinc.com>
 <67jiudy4bopd3mzoylj47stuxwc5jdt63akxwn5qqo4dov47za@xcece4v2k3m5>
 <4c81f193-a1d0-4abc-8be5-07c862de8937@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4c81f193-a1d0-4abc-8be5-07c862de8937@quicinc.com>

On Fri, Feb 28, 2025 at 01:43:12PM +0530, Akhil P Oommen wrote:
> On 2/28/2025 4:56 AM, Dmitry Baryshkov wrote:
> > On Fri, Feb 28, 2025 at 01:37:51AM +0530, Akhil P Oommen wrote:
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
> >> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> >> index 0ae29a7c8a4d3f74236a35cc919f69d5c0a384a0..1820c167fcee609deee3d49e7b5dd3736da23d99 100644
> >> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> >> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> >> @@ -616,6 +616,14 @@ static void a6xx_calc_ubwc_config(struct adreno_gpu *gpu)
> >>  		gpu->ubwc_config.uavflagprd_inv = 2;
> >>  	}
> >>  
> >> +	if (adreno_is_a623(gpu)) {
> >> +		gpu->ubwc_config.highest_bank_bit = 16;
> > 
> > Just to doublecheck, the MDSS patch for QCS8300 used HBB=2, which
> > means 15. Is 16 correct here? Or might the be a mistake in the MDSS
> > patch?
> 
> https://patchwork.freedesktop.org/patch/632957/
> I see HBB=3 here.

Indeed. Excuse me for the noise.

> 
> -Akhil
> 
> > 
> >> +		gpu->ubwc_config.amsbc = 1;
> >> +		gpu->ubwc_config.rgb565_predicator = 1;
> >> +		gpu->ubwc_config.uavflagprd_inv = 2;
> >> +		gpu->ubwc_config.macrotile_mode = 1;
> >> +	}
> >> +
> >>  	if (adreno_is_a640_family(gpu))
> >>  		gpu->ubwc_config.amsbc = 1;
> >>  
> 

-- 
With best wishes
Dmitry

