Return-Path: <devicetree+bounces-149514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DE4A3FB6C
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:35:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28ED93A84D0
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:17:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A18852135BE;
	Fri, 21 Feb 2025 16:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tCQCdmlZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2259211A29
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 16:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740154334; cv=none; b=FeL0+1K4DSK0IFBloc98a1r5uzgFCU3k2Hyq9KG3F7QAVPZ6Kf2n0nUi7QVqipXSXjwtp4gCyxV6qpduZFXkkIyHkqmpbkg9Z2OI3ldC5Eg/8FMnNHlliJkQPOC5vl3WhgxmMQXF1dlXE9S8jFR/80RTs3ZuFU7OfM9bLF247eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740154334; c=relaxed/simple;
	bh=5H4PEf9E9yk8XT2swQY06hLeXngmDP4x4LJ+LIwvvO0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eo5oK593LATnypgJzWcJLgV3C6RwPOKFB/FVWPCKLWOAtL3M2q8w/a5xD/rjMWi4PWz8IAowP5OiZ1obj4e9pQmwMRQwCUomkTomYtH+B03vQO3BbzNXT7IrQyIDb3NiuXC8ULAvLEGPUjMuVooF5vioVUsBL1tjBz2Zg71OAxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tCQCdmlZ; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-30a2f240156so22196301fa.3
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:12:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740154331; x=1740759131; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IbnhtJEa4SquPfm19GzdxAOTsJ3ZtzFT/hW1Tsd7YMA=;
        b=tCQCdmlZrK5safywGUkkygQaJbsKc+gaZcMtb/4y4lvzf1VJ08M8p32AL72hYKTjkw
         8rMvO23OXJTmrrMeaaoNmxMuhhPG1iMt6nMY2DZU9k4Ar2tmCwc2F2d9NTWzwD8hHtnL
         fMDvcRFqpobj05moA5HNa0yVPLaaxeeasy4SZMagewU0sswpK4zYYMVxjvwTFMmnpG6x
         gC5qjo1SZSIpW1A0w4Pn2Sl+/xx0A0iCYalSyKMaUlJKTXNDZeKsUNf7o+Z3rqK25/bD
         6x8U/IyC4hqDFGpkzKL46bGspjsmNjFV1i2JrMJFJK0MJRkIr0y8tPwF5LTxpcdN0S+G
         RvAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740154331; x=1740759131;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IbnhtJEa4SquPfm19GzdxAOTsJ3ZtzFT/hW1Tsd7YMA=;
        b=btIiLDKvDCUAHV5HbazcnjAKaZWele0QpoR43SH3BPYred82abHXPumAvtzCm/G2kA
         JUUpv7zpkuFcWQ1oJjU34g3H3/ufnVwbPli4ieapkGoXdtbINM5IAxiiabbqV90IL4rD
         R7A4mjB2z7iUTJ1qmDzU42KSeDlpi7dZEA29lGZYo0pK2HGy5IcYbai8+eDcUySS5I2y
         QTyHESl59LvZVTo+38WrSinHzM7Ldsa+Ra/qTpKTs1vjokNqmrR0Xwiv7gjWtNFJDf8H
         6VO1QO3nKVBWByhC7WafyZJ4kAQlxScFKqBBJEEhXtIpUrOUxZVHR06/rdlkuy5cmYeo
         S6yQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxe3PQpRBj1E9WKHKYQKn5YlwFylcwG4+Y5aSexzATyWQ+crIAxeqAIyuqbNSZlt4hN+lwos6aQ95X@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5Byz0DaQO+nDeHDzZMymXgSun5aN/1eUby0TEpfOwHfjH8HlO
	ka1WwMl69aRxjjlGvRxOEKtMrW86CoJIR4ODkeAIQ7Fg3+IteIqGYKg+phqHk2Y=
X-Gm-Gg: ASbGncveIW6eBENI2Ai90VL1vwcXZWnT/nXmguN8f19JcyYTQqOe1Yc5qf8RRbmXoPs
	D1aI/3er+OsR7Jegrl5L/xKEh0jmmVSE/5EJAzfoDgFOjYnOJvqQfRw3DUmG/CllUBceKze8G69
	xxhzBAlZt+6uLsN5V7imelvkkB4jszQLCVdQJpOFyttHRty+hEOauvDI6kI2sh/N47w5WC17L1L
	R7/VoyNuGHopbbon2AyJw26sX2IUTvVDqs1DWP67cagL9UYJpvACLo5RcD03sJK4CU5w+XlWZqc
	rRdT77sEozg1WA4acOxntDVcU+sbfNzcZM9IjWy6/vRgNL1XIbVVqmbNteAMfXQxzzKogktA65p
	jsyCiFg==
X-Google-Smtp-Source: AGHT+IEKm09ffSc5M3frvvgU3E9J1EUpouTHSwPL5rhTUfv0oqJAypzPAMmviTh4qLAjGZjUYSJxPQ==
X-Received: by 2002:a2e:7d07:0:b0:308:ec6f:7022 with SMTP id 38308e7fff4ca-30a598e29c8mr15100431fa.17.1740154330646;
        Fri, 21 Feb 2025 08:12:10 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a25195701sm20109501fa.4.2025.02.21.08.12.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 08:12:10 -0800 (PST)
Date: Fri, 21 Feb 2025 18:12:08 +0200
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
Subject: Re: [PATCH v3 11/21] drm/msm/dpu: Clear CTL_FETCH_PIPE_ACTIVE before
 blend setup
Message-ID: <7nd7j7wslq5fclik6trs2egwj7kx5wy246ljaqmwbkvnutu547@qgxcx66kjsw2>
References: <20250221-b4-sm8750-display-v3-0-3ea95b1630ea@linaro.org>
 <20250221-b4-sm8750-display-v3-11-3ea95b1630ea@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250221-b4-sm8750-display-v3-11-3ea95b1630ea@linaro.org>

On Fri, Feb 21, 2025 at 04:24:21PM +0100, Krzysztof Kozlowski wrote:
> Before blend setup, all existing blend stages are cleared, so shall be
> active fetch pipes.
> 
> Fixes: b3652e87c03c ("drm/msm/disp/dpu1: add support to program fetch active in ctl path")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

