Return-Path: <devicetree+bounces-147608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 980E0A38BF9
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 20:08:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0743416C4C5
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 19:07:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EB9E23644D;
	Mon, 17 Feb 2025 19:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X6rpn9R4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0F10188587
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 19:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739819273; cv=none; b=R/wThgtC1l3gxMl0A//vhqiwB2XjB9V9BKZSCa5MwqLAor0eEL0NtkwYMIgS6DvVbTfmWrzZrw/S13QkECpCBUMYvUbXU76AFce5eRmH9hJxjR8JW4Zqrx/U7yYhRwdDRJ//ASQrhkOlNK7pMEXt81vjPmCnJy2fM3D/xxLgyb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739819273; c=relaxed/simple;
	bh=wDoCAtbEmJJG08E/A5bz+I3lGd68ANOK5k7c8qV1X0A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=la+cOMi9WuhPafgKB+ayk7hXPrjLmKUF1KRiXJaw6SVnDBgMY7Q3y9FTr1Gc7b7fkLITwDdSRfK5lqixeKIzhv/s8qan6ziNJEYZLs4i9o/IYyCMVjZD8vUR2z9qeJJG+SSQoBTDzZH4WmiVM9/+OIB+DapThVqfFMrZkkHvC4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X6rpn9R4; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5461dab4bfdso1852763e87.3
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 11:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739819270; x=1740424070; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9ObUne2yQMezeKiKaLoIvFCZpEHW3DUQ78CPgFXgb8A=;
        b=X6rpn9R49Vjpq0jaVvzteTRrIWYheZIL/LVbS2UfB9zQ8pi8rDFoC6JSqktjY+IFp4
         Luy71uKLqapYzFcqzFK0q7B+bxis4X4hyiWXPkcIfsflB3umIUnlU23i51mFiFRtI5vC
         pg8b17ivlV5CuxArz7DHTg+TSYdp/NXGCqvhB2gIJEmyFxVGRNHvJihkT1pDWpS8xYTq
         EuzkXE89kusFktslV+Sl04CPAgLmKxiKTq+Kbf9JYUjsWERTgQnJmoUgc8RVr1MoVX5X
         maqDs5+jjBI0BeFXL3QRG4ox1McyvqV2oryOh9ElOorijK7UOs+XSBQi0X8QeYUXbmRo
         ZnaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739819270; x=1740424070;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ObUne2yQMezeKiKaLoIvFCZpEHW3DUQ78CPgFXgb8A=;
        b=d09/trnud+AUTeJC4qe3cNdFp5kqESNNynx+r61tzf+vxat4Aq4uWbdSlPGUildq75
         lIbh9Pe9z0tJj8a9hQuMmAKFhHlXsTO7HC8t+T8EnAW/8XZAVB8myuHiGT/SsABxjBjI
         2lbqKlWiwF9acAi0xLiJJuT+W8PqJUo2/XHVY1GOLxFozAeTtD5Yrobf4OTpD+kIbcC4
         X30xCtW4ZqRQP1HDTPzWWpAqA2+pbr7bPxB2F2Nt/aNp7IjodHpzZtWgwNfSZYe9IOWV
         5MpRer2StF6m2otcsPQ4vLccrj7xUJpT/rJN8toFNxEw3hCnxdfEJJwKCPKlD51wY2cl
         Bb8A==
X-Forwarded-Encrypted: i=1; AJvYcCVL+REuUPTj2VGpqIlHXmnu7JokAH6z4c8OWHP05sYGhhbWnm6ClSyBkMCeLrtudmLXFhXRCnNakHI8@vger.kernel.org
X-Gm-Message-State: AOJu0YzioUfUnDhraQgV7jyrCemSlGNzO2iSpQgddvZ5eiQLinawaqhw
	OJgonZVQakuL40utedI6oyPo/L1McQXoojgPyIhkupsPcQSESJAhUk75JrQt6LY=
X-Gm-Gg: ASbGncvWooFPsFHpOw4kbkCT+KbGfb1FkrBrtDMUCVcf51o5iu03HGrIWuheWU3Obig
	gA6km+PF/fMDDtyH30vgkqae2P+1HVCHihv11jeq70oWfAt4tcbD+BjpWvL5t4PXRSuKLYk08W8
	9pTVUhkQkHcX915sgE4pElGR358nm0kyjWYVviH2rxVy9HcmBG5fHWVJ2k8ToaG2u1cevZTGRXc
	Jmn5gCdieFZOJkPM8DlUMtuvX4VNyYNIOJ0A32Ht3bxPPAze2xK+UAtoPGh0TnFLUL8UvJ26N7l
	zJxnhNxoX2ve/xbTLku8KGSrc/HDNqUEyfJS4VDGIrwBoJ/byzHsqR4Hta6ygUBcW42omqU=
X-Google-Smtp-Source: AGHT+IG9DynPxWNwdOmU6ii3AvcgWu++/3DPvh1LUYd7jp9CBTvIMdEBiRwbV324OAhQ4qab/et7NQ==
X-Received: by 2002:a05:6512:308b:b0:545:25c6:d6f5 with SMTP id 2adb3069b0e04-5452fe96673mr2812097e87.53.1739819269896;
        Mon, 17 Feb 2025 11:07:49 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5461ee8341fsm612141e87.133.2025.02.17.11.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 11:07:48 -0800 (PST)
Date: Mon, 17 Feb 2025 21:07:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v2 13/16] drm/msm/dpu: Add support for SM8750
Message-ID: <qfbynkd3d5uqlzcgvcsfoi3muoij4ap3kkkwug5yd3ggxbhiic@6epod27ux5ai>
References: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
 <20250217-b4-sm8750-display-v2-13-d201dcdda6a4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250217-b4-sm8750-display-v2-13-d201dcdda6a4@linaro.org>

On Mon, Feb 17, 2025 at 05:41:34PM +0100, Krzysztof Kozlowski wrote:
> Add DPU version v12.0 support for the Qualcomm SM8750 platform.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v2:
> 1. Add CDM
> ---
>  .../drm/msm/disp/dpu1/catalog/dpu_12_0_sm8750.h    | 496 +++++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |  29 ++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
>  4 files changed, 527 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

