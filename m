Return-Path: <devicetree+bounces-78828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F8F913812
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 07:59:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C68841F2202B
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 05:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1830F1B7E4;
	Sun, 23 Jun 2024 05:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wjjK8Hst"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C992C95
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 05:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719122368; cv=none; b=arEaVOI33SZzMXOrENY0MjjIS7TOOv9Ruha8gqcQ9tv6j3y53y74iMx1l14jsT7kWKcVYSOf+79JZwx7z18jMfyuHzpNeWH2NEaHKBWQgIKZ6FSPaY56h/tMvpvBJ5f/4XjQOFPuiZ4tlq5pIL9QuNrecCYcXJNMxOSeC5zW83I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719122368; c=relaxed/simple;
	bh=YjxfZqe0EZANRqjml3+wYXxJUqgsw3jOPlTubWLT1AM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ki9ZoDkJR+mFtbD1VbOdGmpxzKq893FW8uICrDG338t5jwEiaYM5zoVXUstwSuCZu6RMAKHSwOsm0lylHs5GU4aGybmAIwBhLBmN7nfxLpAfpGzoqS+e+Rl23xb/rS60PLNCLi21ZchmmvdY3Y9dj1s0SIX/WiXAtsB7H5S8m6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wjjK8Hst; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ec52fbb50bso12803801fa.2
        for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 22:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719122364; x=1719727164; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uV6ZdsyWs/0K8RTllxKQAwLax2534ZjABCMu7Optue0=;
        b=wjjK8HsthXgxVtnhgAO1JK+6cOBifSFYmV+zi6uXfudHKd28C8BQGwqurqX9EX5jb+
         K3Ri3mdm1Wmchq7kbraTt5NAGTuH5rTTXTD+/mD+aGkJ1clThXon+DIB5x1SWOW4WlaI
         pMJ2QRLLDN1rsQGDBOHSHFDiaX0ag836manWVi9TpwHna+G+7rKxchu6t4SGEFP/SkbW
         PA7z3XcgA6eAtQaGlk6d6diRAdEoyMvm6J/y8TQ85oL/xecyJ59pjhJUhbP2XoallK8J
         fOVLAoPTcNgO2UKj215tw5q7kxwLkNoZEcNN7Stn7OMpNbwaOAgzIk56qv64EsnC1Fiv
         xmqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719122364; x=1719727164;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uV6ZdsyWs/0K8RTllxKQAwLax2534ZjABCMu7Optue0=;
        b=GmurSLfz9lXN8sq5dRAAfsUWJJpnfjxbE4x7/pb9vLG6zfxQhU9s1FGFd8nCIJjjrn
         oQYfG6PEtfCTZ8YMPshJaxrSw2/WmJWSObW6BuZzyByLF8SFpVPkNSP8KfmWSyPHESGU
         70E2Ym6uFErzwF3R8wLZRIWoVfMUhIV7+51huw4XZ3z1zK881u72+VU1a3oTIQ3ftwt0
         fpsfckusbCWGZIxj4vNNFCUvlTAc0qFabthtCwmtHgJCpBl22b7tL+Tusl1stD9OR52y
         /KLpR2xiJ3Z6TLI16Z59XDt8oJjuHcH8Qi8n/1e6UaylIXVQ2n7/ZzDce2fYCfXL4yZg
         rxOA==
X-Forwarded-Encrypted: i=1; AJvYcCWoHhdVLzeYeTsPsEuRxhvns3ZumAldTcrKaJlJUe+MKLKqqa8x6+IPyuUDEFWL6jUOBd1CkipzTBsbzyyXwMWZgs0qSpIDXzFbIQ==
X-Gm-Message-State: AOJu0YyXxpgPH5o2nmeWFDRZvvJZcYW0eciWMw2jH2NGEN7VbaPj1A/u
	9FblqP+c5Bv/1nkMYvCtJVOKJTSHtIu3UoRFDwka+vFR0uuoIizb2/doDPwWLjE=
X-Google-Smtp-Source: AGHT+IGcHezaqPv4f6l+aRS6cpymyT8QWqnho+MGi0nRzclFQouvXc2Vz5OXXDqk0xU0di91OghoDA==
X-Received: by 2002:a2e:9f05:0:b0:2ec:fa4:e310 with SMTP id 38308e7fff4ca-2ec5b3d48ccmr7355091fa.34.1719122363747;
        Sat, 22 Jun 2024 22:59:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec4d60130csm6301061fa.13.2024.06.22.22.59.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Jun 2024 22:59:23 -0700 (PDT)
Date: Sun, 23 Jun 2024 08:59:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <trabarni@gmail.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Daniil Titov <daniilt971@gmail.com>
Subject: Re: [PATCH 2/4] drm/msm/mdp5: Add MDP5 configuration for MSM8937
Message-ID: <hzslz54iq5sjmfhcbuj3my7cbjsu73acxeelih3jekr6rznz44@qie4c4w5lt2d>
References: <20240623-dsi-v1-0-4ab560eb5bd9@gmail.com>
 <20240623-dsi-v1-2-4ab560eb5bd9@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240623-dsi-v1-2-4ab560eb5bd9@gmail.com>

On Sun, Jun 23, 2024 at 01:25:52AM GMT, Barnabás Czémán wrote:
> From: Daniil Titov <daniilt971@gmail.com>
> 
> Add the mdp5_cfg_hw entry for MDP5 version v1.14 found on msm8937.
> 
> Signed-off-by: Daniil Titov <daniilt971@gmail.com>
> Signed-off-by: Barnabás Czémán <trabarni@gmail.com>
> ---
>  drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c | 89 ++++++++++++++++++++++++++++++++
>  1 file changed, 89 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c b/drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c
> index c5179e4c393c..6413c0d3e237 100644
> --- a/drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c
> +++ b/drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c
> @@ -1011,6 +1011,94 @@ static const struct mdp5_cfg_hw msm8917_config = {
>  	.max_clk = 320000000,
>  };
>  
> +static const struct mdp5_cfg_hw msm8937_config = {
> +	.name = "msm8937",
> +	.mdp = {
> +		.count = 1,
> +		.caps = MDP_CAP_CDM |
> +			MDP_CAP_SRC_SPLIT,

Could you please point out the SRC_SPLIT reference?

Other than that LGTM

-- 
With best wishes
Dmitry

