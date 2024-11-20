Return-Path: <devicetree+bounces-123173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 381509D39BF
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 12:44:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0F06282581
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 11:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DEB11A00ED;
	Wed, 20 Nov 2024 11:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qD1ptUYi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6595A19F105
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 11:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732103063; cv=none; b=reEO3D/Q5ZOTSZ0KyBxu9/MzX+kA7P7ASzfK12yPxp6ilS2IF01TWfWzqxOUOo5OUgQH0g8OeYEYs16dVS5PFSt3nk3K80SU0VcEx0TsYOceUrBlNJ4eVDE7/mjlsMvNO0ZKROD9NvcTvtHfPRwZrHtdLrlKR+S+aja/ZT8p9kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732103063; c=relaxed/simple;
	bh=MBY1tocOleXSubrnmqvjhWAnctlm34fJboe09gcAvUY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fzqslKWzI290iBkiZ6y9suEt5pN0178NFWhnRHJ/TQm1JHorezopQU450Hq4oe0JutECLB8nyc/xbBGqc7YsK0GJcQpqUNIa5AFf3XT5XPVLuS7qY0Czlds8b5ev2cRZLmDeA+T9ypXKinloGTXZQhjKBU5vzQ8JLPyh/4Wt/Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qD1ptUYi; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-539e63c8678so4780382e87.0
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 03:44:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732103059; x=1732707859; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9DRvXARQ1UdTvlDiFS+YRmTlgOqmMlEKwZDmn4BjfP0=;
        b=qD1ptUYiHUivPQZ6A7SShnaZZFwfLl1WJuEzAN76hTAEn6Op8yKKTQ8I/XGvCN2Apr
         bcbpWNOi1/sPWALTio/b6m0V6fKxj4btHa3VkoZU1lBGvvy+p8A3YWGOe/u6XDEbiEaa
         +efLHGEt7YjTfbol66haK5LTHh3Uck0OYKwLJ9uuM5Gb4ApfKR4a1AxFWDQKE2Pg66w7
         A/NzmAyYmpgiDXbHt+WFwMGV/6zDwvWqGMZQfDmhhUSSQiQEek6YQbgBnSWPL5QSQFcn
         gxt87gfvCrojtVtHgiJX99ihyCdS/BUsA+ozALim55VQaL4t7+NzBw/D9mUbruvdG1Ew
         9SBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732103059; x=1732707859;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9DRvXARQ1UdTvlDiFS+YRmTlgOqmMlEKwZDmn4BjfP0=;
        b=AdHSVB/cf+Q3NWctA9h3gbcvuEMvNeXHD+W2vkmRleUmTYuaVG0pS7vKBA1bc8QAHw
         NKVOzOTsjKn1NN1IJuBrvI3qZauE6m0aESTVfPMT5rMBh1dPEMblLQ1g5TOq6GTsijNZ
         zwOrMBID53jEQrmf3ICG5KFZpeh7rM2ZQYw3fg3Gdw9OqJE3LIu9YG7Or5m/IUXlwi+I
         f5zh1i57Xw3QjcQN8BtUpNJpXLgEfsSYHVkSXhQnvsEnEr/Tgwg+RuCQaFXScWRRWyQV
         n8xVeOxDPvb52y/8HbpmOQMz6OxTOIeM1hqkvbaHTu15Z3eYVzz/igMU5Zajs4FZ+e/V
         FuIg==
X-Forwarded-Encrypted: i=1; AJvYcCWyWXzEbT6Bx5Wn1SgYZZJxcxSQjc+uNA2RBIl/YjbJq5o/f7tkpZ6jU8R+URl/GV5Rxz9B8BaQ26O0@vger.kernel.org
X-Gm-Message-State: AOJu0YwH+fdY0pV8eABDGXmnwmZeCDiwLusFv+adPJ7PRsHi0bgQ1t3D
	MElPTMcnHoYSxyMwMGuQaHD8qzmwvDUanaCZe5OQXb6urjrJh8A9K9f/3oFQDe8=
X-Google-Smtp-Source: AGHT+IENehDPBicxK9JfxLgvExZQ3j1PXy75ftMbSZQj8HtpOt2sSHv8gorwetAxqzmU4d1aWMiGlA==
X-Received: by 2002:ac2:4551:0:b0:539:8bc6:694a with SMTP id 2adb3069b0e04-53dc136aa08mr913736e87.43.1732103058604;
        Wed, 20 Nov 2024 03:44:18 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dbd47285fsm604802e87.225.2024.11.20.03.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 03:44:17 -0800 (PST)
Date: Wed, 20 Nov 2024 13:44:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Connor Abbott <cwabbott0@gmail.com>, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 07/11] drm/msm: adreno: find bandwidth index of OPP
 and set it along freq index
Message-ID: <xm2pic3yixhlsktaqnux7uvoxbxpvcmkcurylydifbqpx24x4i@lj65uktyscdq>
References: <20241119-topic-sm8x50-gpu-bw-vote-v2-0-4deb87be2498@linaro.org>
 <20241119-topic-sm8x50-gpu-bw-vote-v2-7-4deb87be2498@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241119-topic-sm8x50-gpu-bw-vote-v2-7-4deb87be2498@linaro.org>

On Tue, Nov 19, 2024 at 06:56:42PM +0100, Neil Armstrong wrote:
> The Adreno GMU Management Unit (GMU) can also scale the DDR Bandwidth
> along the Frequency and Power Domain level, until now we left the OPP
> core scale the OPP bandwidth via the interconnect path.
> 
> In order to enable bandwidth voting via the GPU Management
> Unit (GMU), when an opp is set by devfreq we also look for
> the corresponding bandwidth index in the previously generated
> bw_table and pass this value along the frequency index to the GMU.
> 
> Since we now vote for all resources via the GMU, setting the OPP
> is no more needed, so we can completely skip calling
> dev_pm_opp_set_opp() in this situation.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 17 +++++++++++++++--
>  drivers/gpu/drm/msm/adreno/a6xx_gmu.h |  2 +-
>  drivers/gpu/drm/msm/adreno/a6xx_hfi.c |  6 +++---
>  3 files changed, 19 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

