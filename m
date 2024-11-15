Return-Path: <devicetree+bounces-122057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 689549CD9A8
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 08:08:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 163291F229E7
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 07:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61610185B67;
	Fri, 15 Nov 2024 07:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hqaj3+Sa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B39A32
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 07:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731654477; cv=none; b=JFFQAs79f2iFzrL7+VEqbXOuOPqzrs78haC+rY0rGqyRr9HvHzOzi7qTQUeFBN5Nh2eWgX+VgpEH1eFkDWe9VFVj64CZBHQw4Oe90feYc2ldl/8kTZzT7kZLj7+FBE0VutwOYgoabx+n7EBza8939fqinQmjgZFP2lbhfOCkD/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731654477; c=relaxed/simple;
	bh=rPsEt4qZfwQKlO2eqOGfESlRxslv9lRvlh9ZaHQRvUY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RA+uaB4gpus/87nz7GcgKv+nbKSnD6RhkxMekcdGBCKesTalT7Znt8JXuDcrwMWAFECqIc9ToVhzbYTwxuY+ZLvIJ7sN7oLPmiEVb7QFkmuzNWoE3P4+9e6NE8YHDlHkMwpckoqKNSV6POUYtmk39IzI3jZRFbWzPQR5xueTgaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hqaj3+Sa; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2fb5fa911aaso24846111fa.2
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 23:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731654474; x=1732259274; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=v6cKMaZCVTkVV3G8XB5LiWFxAM/cEoFnUMU7GwBqpgs=;
        b=Hqaj3+Sa4TPNvwG5DtzuZybzjJQpdnrm4y3TUcU2q/p34KxXT9zJNJQ1hZbyMA8srW
         Zv3qlB0nktcOhvfTiAPDUnofC8Q6gRXScldcrQMrpll5/bumdTp2+uK2Z63tHgiKua/b
         uTLxcxEBYIqXq4wzjSQ77PNzYz9vnAJnkn3fUk0JKGndGgchwXur3mdO2bHSGzfqjG/K
         QMV1t27V3UX+OtlRs4htwdMbCOX0uZ7lIvTqNKf2kjXrqzCvD/EXkXTMGH93AyA9eLZC
         G2OSLGWZqpusCbFAdGIJ4YwSRbmLO5JWufUyVQv+Rufhdw8dcssmfHB4pmm7XezSoLEd
         89Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731654474; x=1732259274;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v6cKMaZCVTkVV3G8XB5LiWFxAM/cEoFnUMU7GwBqpgs=;
        b=md+LIF1InSesvFeDwTdZSC4YYRLLb+8Pn0fN5oscyULNXzRvXLNBEZ4DoqoGvLdeYk
         8tcJ2zZYt+AHdSvh6MQbN5QvOAxSmjG8fHj1mcTwjh0/AKv5mn2ZMr0NgoyzspYL+Fxb
         Ka/rUH+/1Z0qFPE9SOrUG5g3bkr4J0MrkRjNzaoWgwe9YejUtiWnNnCkRhHfgMML3Oal
         WspiNTj+ncUBzNMv6iWf/up1808owlY4Y3QAP62nnhzIrwTf2hukbsWfL0cfJPblDCmg
         +xQKY4wmGj4dqcc++jNNrrg6hFuAHr9PUdga2xKlCPz1yw8tOdwHEzeUHWAfIZ3+Nzkn
         FWbQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlO8ucwz21FmmFXxilF1yiKqd3+JLK0alLcEd9Sq2ZeSqdtowebXrc6Gvmb8sUczJ4AYa/sDJNz61u@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5PG810qZmxj9QKYCaBr5tBcAW+WFmX8jjucqnmHotexpj5EUb
	m78+Pf+RcojgfiZnxJtsruxJV/hezALyEF16xV3FQ9+UoRgiwQZbqskslQLYIieeaLcEkUg7+mo
	n
X-Google-Smtp-Source: AGHT+IG1JSV4aGNvAct/tUZocWSedempVZ4kzonrQKqFj01UuIlfknN42Lm94EUeAmexpvhM1Oz5bw==
X-Received: by 2002:a05:651c:4003:b0:2ff:6152:d773 with SMTP id 38308e7fff4ca-2ff6152d8f4mr6807941fa.3.1731654473778;
        Thu, 14 Nov 2024 23:07:53 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ff597a295fsm4440551fa.68.2024.11.14.23.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 23:07:52 -0800 (PST)
Date: Fri, 15 Nov 2024 09:07:49 +0200
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
Subject: Re: [PATCH RFC 2/8] drm/msm: adreno: add GMU_BW_VOTE quirk
Message-ID: <sgz4h6rlmekiwypaisjbnej326wv4vaqt3mgspp4fs4tg3mdfx@cwmdqcu6gwbf>
References: <20241113-topic-sm8x50-gpu-bw-vote-v1-0-3b8d39737a9b@linaro.org>
 <20241113-topic-sm8x50-gpu-bw-vote-v1-2-3b8d39737a9b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241113-topic-sm8x50-gpu-bw-vote-v1-2-3b8d39737a9b@linaro.org>

On Wed, Nov 13, 2024 at 04:48:28PM +0100, Neil Armstrong wrote:
> The Adreno GMU Management Unit (GNU) can also scale the DDR Bandwidth
> along the Frequency and Power Domain level, but by default we leave the
> OPP core vote for the interconnect ddr path.
> 
> While scaling via the interconnect path was sufficient, newer GPUs
> like the A750 requires specific vote paremeters and bandwidth to
> achieve full functionality.
> 
> Add a new Quirk enabling DDR Bandwidth vote via GMU.

Please describe, why this is defined as a quirk rather than a proper
platform-level property. From my experience with 6xx and 7xx, all the
platforms need to send some kind of BW data to the GMU.

> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/gpu/drm/msm/adreno/adreno_gpu.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
> index e71f420f8b3a8e6cfc52dd1c4d5a63ef3704a07f..20b6b7f49473d42751cd4fb4fc82849be42cb807 100644
> --- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
> +++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
> @@ -57,6 +57,7 @@ enum adreno_family {
>  #define ADRENO_QUIRK_HAS_HW_APRIV		BIT(3)
>  #define ADRENO_QUIRK_HAS_CACHED_COHERENT	BIT(4)
>  #define ADRENO_QUIRK_PREEMPTION			BIT(5)
> +#define ADRENO_QUIRK_GMU_BW_VOTE		BIT(6)
>  
>  /* Helper for formating the chip_id in the way that userspace tools like
>   * crashdec expect.
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

