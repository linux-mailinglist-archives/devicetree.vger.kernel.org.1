Return-Path: <devicetree+bounces-60362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 291DA8A8FB2
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 01:49:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D8FB0283958
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 23:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F323F130A6C;
	Wed, 17 Apr 2024 23:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wLiMXiYf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0684786647
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 23:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713397774; cv=none; b=sR90OZFOW8ilQNdIZhEidLc6BUYs5SmTF13DC71nOg3LABDNL37aazjRDMr5Jk3mlpmMg1XPKgX6+lnJTt7jClxP6xqrK/nk8BQ563JhGqLQjhNEKKi4cFQKgE7Ygr3ty0Cwx0QcBsixZ/84ExYRy/jyWpUp7PR7hpcu8PkBKXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713397774; c=relaxed/simple;
	bh=tlqRCKx02DY699x9+WjnG6mz6EwDvyHTPJ2Fyqrda4w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XFu27hF1B2ZmdGFtrqiY8iK1qjVaufo7zmzCldO3Wpi4p3l3vDUpI5CgA64lWbWmTQ+Q7KkrQgZoe/XYw8Kx9lqVyXuBTJhURSy36DTUROxwGMFdx/F71RMgMBnzNsLDIZ3i/RYvFGBfzMzINND2u56xfR4xUDDEsqGKl1vqyow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wLiMXiYf; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2db13ca0363so4583331fa.3
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 16:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713397770; x=1714002570; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IDyTmfUTB48zbrRJ3Ex/J4eaqhXRSOEtnoHY2dxsblE=;
        b=wLiMXiYf2b7jVK60Y4Xk80xrnrYpwkFRF0QRtTjIJNbCiiCKCis7dGA2A0n8h7nETZ
         blrDyIZY3JqybtERQzTtW0YSC9c/izXJ5D7rkDOY703lOOTW7Jz9uqnNK7WNRnuLJ5l+
         GlB4LsRojZIL4jCYaaIUHJxKPBAIJ91maa19rJRqPSl9FI45t3QUxKdJmzhLy2a0eOk0
         o0uUKEWByurYKGjpO0CsdeDeWOXrmQDSaJh75SeDX6eRFEld18hy3JNyyW/ZWKpurNx/
         w29kBDCOFmTeDu2VqWVSPbYmx0G7iVWdxR5IM1Hif93/U/tSZkHwVXvFmT2vuEEOYNho
         L/ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713397770; x=1714002570;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IDyTmfUTB48zbrRJ3Ex/J4eaqhXRSOEtnoHY2dxsblE=;
        b=DSW2puCF5nZ60K+dDHOKiSblq8f2tKf8uA7ljDMGAtsgNtxjr8OwiVuqMBAPzmSxNE
         jqd7t1b+87GrseCe/ISQ5wVwUWvwZ5IRTA9V8utg2mBn1t/PqnZNwvLMMduBkuyOZgzV
         JcJYrOX0fMLNDOUr0JMx8wVvkaFHKdUK6WyhQ+UKcb75yhFXsw9dN43WzRBVn7zs1DVL
         ghCKe7X1vmLnCDD0BkwGINaG0Pox5f2cmVWsVLHIz+6Br7tWMfipR5XtBAnZycaznFRL
         myWrIbwrkMuWvSoyT8uOJH3hEXDe5yjS19QV38uRIjvFxK1XZFwuhSGg7Mwo8v9QQFve
         69MA==
X-Forwarded-Encrypted: i=1; AJvYcCVCHnNFGewWVm4CA1Sol/htu6GuXV6uQP2eJvy5UL84ohghWzcPVP7OWiL7rZ323us0idUSubJspH0XLM8bmQSV5NtRZwPMAtrihA==
X-Gm-Message-State: AOJu0YxG7PI4snYWrWNynm3cDB5PStyBrGGgW/TePb6VCd+HEgSX8Eyz
	cOY5GdaPwMzOsYt9SEVzBDyt7wRIBDbEiS6P2/iSLcgDJfpJD7u5Q0bVwAIM62I=
X-Google-Smtp-Source: AGHT+IH/MUOBgyPCemAoyY2nfZkjc3UXoMr2/x45ATSbPEjenP4BTGIPiOlkgeZVrWhJMW0EEXYW4w==
X-Received: by 2002:a05:651c:50c:b0:2d4:6893:24e1 with SMTP id o12-20020a05651c050c00b002d4689324e1mr536858ljp.50.1713397770075;
        Wed, 17 Apr 2024 16:49:30 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id e21-20020a2ea555000000b002d70a040f21sm35241ljn.91.2024.04.17.16.49.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 16:49:29 -0700 (PDT)
Date: Thu, 18 Apr 2024 02:49:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 7/7] arm64: dts: qcom: sm8550: Wire up GPU speed bin &
 more OPPs
Message-ID: <hykql6t7xy5uajvnzbslagrki6xvg3mjuba5hpjha36ue5ra76@4s3m2vsbxjav>
References: <20240404-topic-smem_speedbin-v2-0-c84f820b7e5b@linaro.org>
 <20240404-topic-smem_speedbin-v2-7-c84f820b7e5b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240404-topic-smem_speedbin-v2-7-c84f820b7e5b@linaro.org>

On Wed, Apr 17, 2024 at 10:02:59PM +0200, Konrad Dybcio wrote:
> Add the speedbin masks to ensure only the desired OPPs are available on
> chips of a given bin.
> 
> Using this, add the binned 719 MHz OPP and the non-binned 124.8 MHz.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

