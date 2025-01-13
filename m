Return-Path: <devicetree+bounces-137936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1D1A0B248
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 10:04:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CEC3C1887F1F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 09:04:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 863D223DEA0;
	Mon, 13 Jan 2025 09:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y5Xxeqbj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8AFA2397A6
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 09:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736758971; cv=none; b=QMnVV/v/os/k6bW1wKcSeUqHfmX/BHw43hsJ3/DoWf4JJSOSmQBkHEMPRDkgZuU7JHnVX7IM0PJ+nUL5afVRBtfgYp3TFCcrEd6H8ZqeaIAfv7CWhuepQasG85xsqlUY5uuhLVwl2BzaloIF/Jven8H0ihNZsbYn8KtXNmCejqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736758971; c=relaxed/simple;
	bh=BkeTz5E8UCQ3jOOXNvrHG/VwprMxWxrenqNBAUuiqLY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vphl0an8ybXFnaBruLQGtARyxDhoh3r6G69n6PQz9fjAjazpwpRS70xxMIeivYSAYFTR0tJEzXggXz5X0O9jbwlMaH4rCQCmk33gN5X64pdecdIbSu6juWfuoJwxjgiCwd+9TEx+NJ6+pnLAFOWfTvTVJ7dUO7/1p98eAmRZgxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y5Xxeqbj; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53df80eeeedso3734168e87.2
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 01:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736758967; x=1737363767; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VYkQdxTA3vBXlKKUBFkrgSmL9ucWyZWWWLZyZzkAa3w=;
        b=y5Xxeqbjj8uNxGw+s9dzHDW+sz9PcBTAtEOpuCQWiMm7mTcysxy+UEISy+BlR5+P1V
         r4KGPcJ0u4CFKLyKbvZduU7V97weYHSiE2v2Ydbp/dkcdR0Tqmp9bnkkUZnIQFTAq4Jf
         7yFyzuNrPaS0KY6dqyPAKf3l5Koe+rvIYkVvmaa1qcMpRPh6T1MCcA6/j8hXFpiIQNLo
         4GL4GLiWLRaDlibKF0PefvtD7JSWLsORGCSg8JwnYSIHHMQ6wvFrsrMoH6vl2aW/CqFD
         etPcnI3/NigJPRF1CcD7uuV+d4DakcTli4lGTZq2I6KboJ2c6VA2SaBFZlKbF7wZiAEn
         Rf+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736758967; x=1737363767;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VYkQdxTA3vBXlKKUBFkrgSmL9ucWyZWWWLZyZzkAa3w=;
        b=Eihugh4juKjboCp7ST4zPDK5XTGw4DQqzLHf+O4b+duOkOY6Fb5rNybab0bdI32DZz
         97WzFchnLo0pwL+AI2dzcCV8nA/RqjuWlWCJl2zRSQH+WOCxJ0G8gRrvS2Px1LPWA7JT
         TiUOK+0dC5DCARlAvxQnxAlOjFt6zTcKi2fWBcSZtwBVunzopyjQLxnTIkbClK9D2iPI
         UYLcx4J94N1Csio+ytMaWdpNE3mt8dnadi//pFtas53cYQptusR7OT72220LGz6DbP//
         SPgGP1lz570tRTi1r+Yi0Bh/6hVpWcHdiNaUjq9bypSRC67PTGsrTkSUfcFo41PHmH5u
         JqNQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/bYPDBwh65gb5aKZj1zePEv+MH9fVrF3BkAeHRGU1h+EwxcLNdwDuGLFk2hoeCulwL1W4Bb+ZDGd/@vger.kernel.org
X-Gm-Message-State: AOJu0YxYRR1oinVvS5G9sxV5Bnm6Qwk23A1tFV7MtLUA4n4Ldu/HN4gE
	EnceL0GJ828VzJ7pXud5eAbWKiCllXGml3sjjvn9zeVzQ/wMYML3oFceYlxc/bI=
X-Gm-Gg: ASbGncuuujOiRaqVr5Sfc6Exw+2xWV2nuBdUhonK0n9DBNx+rEKlSObyerr5nRNM+SB
	Jg8gLXMMy/vCHXidgIOFugcQxNxIAA1yFruQCkRUt3Pwhm8HFxgoh+EnQdjqDDLnOgtJDHnsfHG
	PDCgHBJcpgGJDhVNWYOX71reSDFErVI7vLzMFOCMAFFRkBs3B2cwBbClcDm6e61FeixrzpgABQv
	PB9JB88DAiR/B3x1X0JWSGQ0YOModGNIUpDuDph6bwu+gmdSGbCy6XZZCjt0BxDeHWAXvE/f7OL
	4PGT9u9PoJxj3ZF5P+k8H8ahPM8VZ6ZTDIav
X-Google-Smtp-Source: AGHT+IHowqb7rFqBBDpRnlzRpSHyTMrFA26GRZ+fcN9JLnlQvPTm5oxedl6vvT+6rf1rsSPJNSIUoA==
X-Received: by 2002:a05:6512:3e17:b0:53d:ed69:a593 with SMTP id 2adb3069b0e04-542845282a5mr6463480e87.22.1736758965311;
        Mon, 13 Jan 2025 01:02:45 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be5483bsm1300830e87.105.2025.01.13.01.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 01:02:44 -0800 (PST)
Date: Mon, 13 Jan 2025 11:02:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 0/4] Display enablement changes for Qualcomm QCS8300
 platform
Message-ID: <qsq5so5i7fy3r7xcjtcr7aq2vtbywh57j3b3e7ddbsmmeu5qwy@pgcntgxknuul>
References: <20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com>

On Mon, Jan 13, 2025 at 04:03:07PM +0800, Yongxing Mou wrote:
> This series introduces support to enable the Mobile Display Subsystem (MDSS)
> , Display Processing Unit (DPU), DisplayPort controller for the Qualcomm 
> QCS8300 target. It includes the addition of the hardware catalog, compatible
> string, and their YAML bindings.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
> Changes in v3:Fixed review comments from Krzysztof, Dmitry.
> - Fix the missing space issue in commit message.[Krzysztof]
> - Separate the patch for the phy from this series.[Dmitry]
> - Remove unused dependencies and update in the cover letter.[Dmitry][Krzysztof]
> - Link to v2: https://lore.kernel.org/r/20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com
> 
> Changes in v2:Fixed review comments from Krzysztof, Dmitry, Rob.
> - Decouple the devicetree changes from this series.[Dmitry][Krzysztof]
> - Drop the dpu driver changes and reuse SA8775P DPU driver.[Dmitry]
> - Fix compilation issues in MDSS bindings.[Rob][Krzysztof]
> - Correct formatting errors and remove unnecessary status in MDSS
>   bindings.[Krzysztof]
> - Add the the necessary information in MDSS changes commit msg.[Dmitry]
> - Rebase MDSS driver changes to https://lore.kernel.org/dri-devel/
>   20241127-msm-mdss-ubwc-v3-0-9782a7c2b023@linaro.org/.[Dmitry]
> - Package the DisplayPort controller and eDP PHY bindings document to
>   this patch series.
> - Collecting MDSS changes reviewd-by Dmitry.
> - Reuse the sa8775p eDP PHY as a fallback compat.[Dmitry]
> - Reuse the sm8650 DP controller as a fallback compat.[Dmitry]
> - Link to v1: https://lore.kernel.org/r/20241127-mdss_qcs8300-v1-0-29b2c3ee95b8@quicinc.com
> ~
> 
> ---
> Yongxing Mou (4):
>       dt-bindings: display/msm: Document the DPU for QCS8300
>       dt-bindings: display: msm: dp-controller: document QCS8300 compatible
>       dt-bindings: display/msm: Document MDSS on QCS8300

Is there any reason for not using a common style for these three
commits?

>       drm/msm: mdss: Add QCS8300 support
> 
>  .../bindings/display/msm/dp-controller.yaml        |   4 +
>  .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 244 +++++++++++++++++++++
>  .../bindings/display/msm/qcom,sm8650-dpu.yaml      |  13 +-
>  drivers/gpu/drm/msm/msm_mdss.c                     |  11 +
>  4 files changed, 268 insertions(+), 4 deletions(-)
> ---
> base-commit: 2b88851f583d3c4e40bcd40cfe1965241ec229dd
> change-id: 20241224-mdssdt_qcs8300-11b7883dc60b
> 
> Best regards,
> -- 
> Yongxing Mou <quic_yongmou@quicinc.com>
> 

-- 
With best wishes
Dmitry

