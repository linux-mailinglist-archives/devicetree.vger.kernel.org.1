Return-Path: <devicetree+bounces-146369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9BBA34AC7
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 17:52:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75101177509
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 16:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CED4728A2CD;
	Thu, 13 Feb 2025 16:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N728a3Y3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01CF28A2B2
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 16:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739464933; cv=none; b=rzUkUQ3BMxSAAcGZiutpk+eDeihaWHObzYQWAcrLINxznosC2sRKQHUJ6wr2cbFeGtognmuOe8XgeOygQl8kdhJOOYoWajVJZLWRYpFvFphNtjtvD3/kne7nm1csC+z0E8ws/cl4xhMgjuzCceqSaFbn7vhn16zK3WdkB2Qp+Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739464933; c=relaxed/simple;
	bh=NQGhOKxdr0VFUgwzEQPeEJr3Wopll3rPHlH9KoZwD78=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WTQpren8QbrGFgAzr1g+vtcXEpBYTOS0LTRk8Ds2f3irsYxtQPjGMt7LHHSNct7iBY7KKCIOUlG/rRkUUFak31uRus/Y1ilocdeAixONUW/+5djYsDXA+VD4ndP/HTy4ZxElFaVNL9Fxtn3awvNtNv0iZcqqiwI4g4r8UMKWHl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N728a3Y3; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5450cf0cb07so984930e87.0
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 08:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739464930; x=1740069730; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1RWxYWTxZAj0F+vDqmj/VMNxzXDPmkoI5uZXNhq06BA=;
        b=N728a3Y3iqiyKsZ4/85aF6f5Uxoga5Z4xt6jfpsPsQSrdTkiZWN3DT932ujiYK9cvO
         3tX1fN+ZxCKq7nMqUl7qyXSdOMU2ulE3uXybuio2EeZBjKsG6oejIjV4ks/eAmR35N2J
         uDMyRvAr1j63i2EX+lQaoNI6gMH2JUQ5uDP9DozoHFQ/pKg6QZtNuTKfTa+muolhSFvt
         EH1Q6TJJ9G8v5pt9qyww+75AYJWQFyopwjHpkMUXEFeTWvYKZMWr6F5a8tJsXGFY1nLv
         L3ipVYbyN9oBeJ95tXCLfCIfORsJ508pCtxlklsSZsN6jzlalegRcW+k/OERH5A6s5gG
         +7/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739464930; x=1740069730;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1RWxYWTxZAj0F+vDqmj/VMNxzXDPmkoI5uZXNhq06BA=;
        b=k+p5qcvlQ9cIDPnS4vSWeuR960sfidzKQ7GqmtRn6/hpV511P66mQIW9DP57r2N53H
         RKoyAlr7qmZFkTC3HYMKiknh1xCVMVFn2MEUj55Z50zLgsBpohg8EmlCpnJduupMMemt
         qDWtS5Le4HE+SxSjeEcwf+KHzD6FnAjwkOtbE3WiRJmZAZsU8vzInMUfh6YZxUNHziU9
         IUDMdcMws378HeP/WO+5TLJS679Gk6h2UGBZLRW3akJizLPhgp8gNk5NroiWPXr+o0DG
         T9PElhdsck8WQSda4SjjGefBbULNqmRmY8iEvYuKtRwEm6lVXp6VipmU3w0/Q4ENXseA
         da/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVWVccvXYD9CtUBg1yD+sZWoIemNS0Sj6HugXFzc61extfaqCpHQZx5/PrkvCSyzElkYdjg7jfZRoEd@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3IIWgHHjJUqWyXFTQt+CMsJb8g93enqTtQa73oIGqUa5fCir7
	VoGEVMW6CvizyhG/yFL1ojki4hRCq38k72Z+EBPtKINIslPjkTlaknI7oVl6u7A=
X-Gm-Gg: ASbGncsUITWJJ2ZfTC5MgIds1XO+1WozBh+ciEKveIHhB12pR/OAawZG5dDVVJ1dlwK
	d7y/iAhXl1P1lHG+E7lLcG1QxzPG38iEoPO/K22L8OvhibLwTehGp+Lndm/IS0rV2Tjd/QFKjK1
	bZB0lGoTItqxjZPDyXot0WNRO99Panx6r2OgsCu7Ts2dpleq7tJztSYExLXciUzwBN8E5EuWOiW
	F2jiRizIaRXNqbqgGdQsw/833WGY/MLovOt/ds3hiGgzCeciUpsEFqChrF+LbT4g1FF1PseUVpo
	eTSWjV1XPCsPlWINnRvjzYAHYTxBzIOq3q+NhsBZPkUFc+KCI+JNBL2+O0KNZJ1olq2LgyQ=
X-Google-Smtp-Source: AGHT+IEK8JK5DtZLaAkJMolAlSlboIjYitOyjK3vekr4hRL/4+W/nuknTnupS56IhVxnTVQaQLo3jw==
X-Received: by 2002:ac2:4e04:0:b0:542:2e09:639a with SMTP id 2adb3069b0e04-545180ea26dmr2471042e87.10.1739464929907;
        Thu, 13 Feb 2025 08:42:09 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5451f09d0d4sm218066e87.100.2025.02.13.08.42.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 08:42:08 -0800 (PST)
Date: Thu, 13 Feb 2025 18:42:06 +0200
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
Subject: Re: [PATCH 0/5] EDITME: Support for Adreno 623 GPU
Message-ID: <wdeqpz7ckpzw5sx7pigcp7fjx7nf4irz23kvj6xwamv34vfyba@rwzavxd5o6o3>
References: <20250213-a623-gpu-support-v1-0-993c65c39fd2@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250213-a623-gpu-support-v1-0-993c65c39fd2@quicinc.com>

On Thu, Feb 13, 2025 at 09:40:05PM +0530, Akhil P Oommen wrote:

Nit: subject needs to be fixed

> This series adds support for A623 GPU found in QCS8300 chipsets. This
> GPU IP is very similar to A621 GPU, except for the UBWC configuration
> and the GMU firmware.
> 
> Both DT patches are for Bjorn and rest of the patches for Rob Clark to
> pick up.
> 
> ---
> Jie Zhang (5):
>       drm/msm/a6xx: Fix gpucc register block for A621
>       drm/msm/a6xx: Add support for Adreno 623
>       dt-bindings: display/msm/gmu: Add Adreno 623 GMU
>       arm64: dts: qcom: qcs8300: Add gpu and gmu nodes
>       arm64: dts: qcom: qcs8300-ride: Enable Adreno 623 GPU
> 
>  .../devicetree/bindings/display/msm/gmu.yaml       |  1 +
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts          |  8 ++
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi              | 93 ++++++++++++++++++++++
>  drivers/gpu/drm/msm/adreno/a6xx_catalog.c          | 29 +++++++
>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c              |  8 ++
>  drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c        | 13 ++-
>  drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h        | 17 ++++
>  drivers/gpu/drm/msm/adreno/adreno_gpu.h            |  5 ++
>  8 files changed, 171 insertions(+), 3 deletions(-)
> ---
> base-commit: 6a25088d268ce4c2163142ead7fe1975bb687cb7
> change-id: 20250213-a623-gpu-support-f6698603fb85
> prerequisite-change-id: 20250131-b4-branch-gfx-smmu-b03261963064:v5
> prerequisite-patch-id: f8fd1a2020c940e595e58a8bd3c55d00d3d87271
> prerequisite-patch-id: 08a0540f75b0f95fd2018b38c9ed5c6f96433b4d
> 
> Best regards,
> -- 
> Akhil P Oommen <quic_akhilpo@quicinc.com>
> 

-- 
With best wishes
Dmitry

