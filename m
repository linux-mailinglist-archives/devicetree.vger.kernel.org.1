Return-Path: <devicetree+bounces-149527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD5CA3FB6A
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:35:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE5F586427A
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E61DF1D5166;
	Fri, 21 Feb 2025 16:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j1PtAYMQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208DD442F
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 16:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740155230; cv=none; b=q9DenaoJgwOELqlowqV5TrIZffHJjQ3b2/ds5xLDXikSRWykjbMdkixyuOOLqiaxfFBJB57AjJ9FmC72P9ZTjv5qCGUKUO1NF+p/x24KOxDn9MKqyr7VKHBvuJLwSubwCv09dl0+DhiRf6xNPvAw+CshAMC4jSrcdKfIYfxx9ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740155230; c=relaxed/simple;
	bh=YGs1jvOkyQUxujqusT1Umrpr67kanG24i8Vx8K/iOac=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QtHrk63S94H/b79AJDdrj6GPPazHZjlPcLB7L85mCZY7i+eWB7CrwtGHoR4yDjUYQDKHI+QzcfDtszR9W7d026xZCoWGU1OH19MC9EUDaZp9FBSenf7knijCTbZfkQeNZ6DPSsXkDURabA7g/4yAMYOCLZSAxNdcFZNsYzBggEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j1PtAYMQ; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-543e47e93a3so2612543e87.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740155227; x=1740760027; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RO/xULPiLg/cqk8vEEmcPFhJpvcf/cIfAW6O8KBIGk4=;
        b=j1PtAYMQZSlYvtvX/Gv5RIDeOuS2owiReqWora3Ej6Q9NkfkSx6Jj4xL3lGRe72SR7
         2oK8Lzfrnp0tfWGZFQAYiyXmnYyWcfkRiNGTMAao4Ta/Gv1YPbdecEJj+b7/6YP1gXvK
         RoW9RQ6XX+3v+7Dzei9utn/LEl9AQoxDVflQeW2BmLVY1KKbNHCkFFtdcxz1NJ1W7skm
         vd6wJWX0bwzojTP7iqfPQ4Qf+Zd/UqsrncWdhwdvo3GLBITKNSb/KZIh3k7sY1t+jk30
         Ae3J+W2e41lSXnnsQA60m4GtGHofrv8amSfKaTZfVpTgsopHxjvq58jRdJ2Y6hjza3il
         MZQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740155227; x=1740760027;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RO/xULPiLg/cqk8vEEmcPFhJpvcf/cIfAW6O8KBIGk4=;
        b=NNfQ7LlFGXY7wM+FBXmmdLlyn3UUcUjirRb0oDtKCk3LIYqfiIU6xjbyM5YqzwR+y3
         ngzB4IT3xnW95ihFA/nCe++WBDz03gF7EeUa2bGRvlz2snSKT0khIPwkWGe9PUjlrtkI
         Fd1qrNnUIwrPKQYuD7eCRj7lDRbRX8mV/NKZonCLDOmU+Oew/Mx3IbI3oOawxLHXu0Nk
         NqE09QIZnE83GBK/RR0JFvyPACnQ4JcYeZHN9XUfZoD2Nu7IM46pgxaNpsrCOA13sJxF
         PMMLH7+d6mKcl3CQu9ARVONc68MhhL773qqO0MVVQEKCRXAWpdL9arWVVRnqUXQRsa4v
         H40Q==
X-Forwarded-Encrypted: i=1; AJvYcCWcPe9/WwLQGbbHkE0QvuNj+sXPjBfbKFbtRhX+/XQE17SV+7R4UM3AguXV32be+nIHGwnaAnH/H9cn@vger.kernel.org
X-Gm-Message-State: AOJu0YxFHmnI65WTliTqvIlND4EVazs2ja3U/DK0SjgrTvY5XvZX1sCr
	Tu4BXpYdiCtfoQrcGVO4kKs/ciqHjx/R04JH0d/mSooMeQwCKv4gMH7vim3hbVY=
X-Gm-Gg: ASbGncthZfTkc6xovhvue51nEuEZFxGACu2yr+nSaMRWZMgunzcB02Rvs6rzBUilUJ8
	BQ94qhDXr71prKwjKXyva7t/Cm6FzQwASKm5YoNJxhpBk1XYm3q8gRXkPg0uK5xaYEpU0YFdAYU
	77vVWFU4UfYfp1hjBwqDe6aHECl0eQc9c2cw8WGsfXN5dT6ZSmkh50YUc2b6xhLrzhluGZp9wjN
	omBG4V9LJ7ggy8iJlux29oY0H2pxdJinef0XynlA2Bo4FQZMEsJnRBr/6PdoGW67E9e1WXmMZ7C
	UrmWkKLkxuJEHUZe3bE86h/Yb6Boy0iuCvFBdUy5RXis3ggEEDdxAbLGCKQZGuRo5h/kMkF3Hid
	fGeeojw==
X-Google-Smtp-Source: AGHT+IEMuaPFm2VqydkoNq2irXckzsYYhwuYOiNxJjx5gnYeCmDTClKpB1kOxjoJ7uto3x+2JhCDUw==
X-Received: by 2002:a05:6512:3e1b:b0:545:8cb:218d with SMTP id 2adb3069b0e04-54839268650mr1523943e87.41.1740155227153;
        Fri, 21 Feb 2025 08:27:07 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54531afdbdcsm1984161e87.247.2025.02.21.08.27.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 08:27:06 -0800 (PST)
Date: Fri, 21 Feb 2025 18:27:05 +0200
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
	Srini Kandagatla <srinivas.kandagatla@linaro.org>, Rob Clark <robdclark@chromium.org>
Subject: Re: [PATCH v3 20/21] drm/msm/dpu: Implement LM crossbar for v12.0 DPU
Message-ID: <vdayz63gfjnm7rwaamd36i5fbgtaedvpobuvp5u76iypdrwcsq@atgj263lo5g6>
References: <20250221-b4-sm8750-display-v3-0-3ea95b1630ea@linaro.org>
 <20250221-b4-sm8750-display-v3-20-3ea95b1630ea@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250221-b4-sm8750-display-v3-20-3ea95b1630ea@linaro.org>

On Fri, Feb 21, 2025 at 04:24:30PM +0100, Krzysztof Kozlowski wrote:
> v12.0 DPU on SM8750 comes with new LM crossbar that requires each pipe
> rectangle to be programmed separately in blend stage.  Implement support
> for this along with a new CTL_LAYER_ACTIVE register and setting the
> blend stage in layer mixer code.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v3:
> 1. New patch, split from previous big DPU v12.0.
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c    |  18 +++-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c |   6 ++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c  |  27 +++++-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h  |   9 ++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c   | 126 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.h   |  18 ++++
>  6 files changed, 201 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

