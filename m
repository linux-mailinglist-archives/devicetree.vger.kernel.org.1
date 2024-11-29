Return-Path: <devicetree+bounces-125618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE589DEC3E
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 19:55:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F281A281C41
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 18:55:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6BE41A08D7;
	Fri, 29 Nov 2024 18:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TjoxUx7v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD59156F2B
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 18:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732906506; cv=none; b=eAEn1UA2J2YmNBMrJi7JliTM0aQ50xqp9DV1v5gLYgurE5+esQMQBpzIAKiovSgzhplvevQhe143JWXZrZsLYHncYxg9C7IkC6Vbk/mO9LCStjX6ehAyeUeTDEMR/zNX8FaFlGkqKz1FKZ6boaVEB+Wq47h/TDgjQEPRDMtwx2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732906506; c=relaxed/simple;
	bh=E7RMchv4y+AntKAlNoeAS7PUC1xG4c0PvSI9uNkW/VY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GfYEvM5eZ3S60XHmg0a6sBrox5C2H67ZJf78NJh+E4eg40MLN97KBb/wyXOQHcrcpa0o31Tn4C9dGLtEzcoHhAFLyIDylteWPzegFJs9DZnch9gF+sHjOx+XG6jgzMuB1Gi6sBpX/0qL4oJhJIT6KYVlxsZ4g79JmL1VA93bBI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TjoxUx7v; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53dde5262fdso2551847e87.2
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 10:55:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732906503; x=1733511303; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wVpqKF5HDzWaD9sXJQFFkWoO/IvzFlRLrdhxrF/ucgg=;
        b=TjoxUx7vdGZuQaZGe2A78MiChrQocNyS1t5jOTf+7efCA/VNSQJVBnQYDv9HiSy7No
         2LDsU+hlcGDuFx/lnveWQ+v223wrt7+q/WqJkafXhL4Rx9mNo7MuEdM6hZrPH7bysNvr
         CqOlQt94xSHuL1D38tYHgkxwqPCl7kQUlA+uWSbh6tjr7amQGRc4/7tdyRVerCVIIY8T
         +/ZmkcjivmeiGhoWaSE38cweH2KBLDJp7rgFtk8V9v749KWym6/aXWpq2DgbKb+GsWUi
         J0mUT3r7f3j0vDuOSwdZRbRmRBLjgiAR8AlZb/RFriFP8UmKp4VY+f+eM+gg7aB2ct89
         Y8XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732906503; x=1733511303;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wVpqKF5HDzWaD9sXJQFFkWoO/IvzFlRLrdhxrF/ucgg=;
        b=fvUl9KIxNnz7oOhzSwVjgumXYSaS3hcrFYgFT9iqYwRtLUAKObWfv/oKph0KH+zsvg
         rDQlUUbq9qRuTh/cWtKSUTzNepmhCR7xYdmpUr3nx5KI8JpdhETUr10JXlnA5Ls8CeQt
         tCbjdK5Wm7nJR0SwIJ6RiaICzHdhmlk7cHmI12A7mTAWMDWSFTXp1q7KkZPFznUpZOCM
         FO63VnrT2Awk10SEsnGvjaXb50Qm6e46A6U+Q6DmweFZkvazu1H5etVlrrtHvmUGKaLW
         laZXAhEnDakGBeUA6ni7/jic79CewwOWA5LPo2ZHe/PaOPK8baBGBN3TSVPe9X7qegp7
         pX3g==
X-Forwarded-Encrypted: i=1; AJvYcCWZiCQZ/MZiA2cSa4RMx2I09eF31kUXau4y66H7+fZRT6ekRodkHzZol7R8cDlRDyITQx1qIxW/ZJWn@vger.kernel.org
X-Gm-Message-State: AOJu0YwyrtMJfUMRitAVByQKMezX2OQNuOrg97994UlZUJn3TcUXvETD
	SOsMk7TdvYK7lHD2+mbIp132dxI+nWo1U/o+BCrdir/4z8Fm7yCyKu3wJGo3nh1utBUKQzmGf5g
	F
X-Gm-Gg: ASbGncviAi0YGjKhW7aQAospAacpDMyQftCFYsCF4xQ0cMljy7WGpTgfy9v6whL9nXX
	6OAtZxiM/QXs/dSxKAvRfG+GdF7+XLTI1Sh8apcDW5ZhuKoc1pPuXTBWpaKsnp9XzV7sfVWXaBB
	nmJGy0Lz9CCYlpbpLM6FpUe5rn118uz3vKEVQUHE6CyOtUUdBbBVdr8Cvv+wQcbQJFKuQpYXz7m
	fXmNLyEePtEUmFRCetscFOSGUhqtGu1EOR4yEc6tD0k7AW62WtAclmoZ8biKGpTNRo5AxFPNdu/
	TgdLMfZ3mPUke+Pn1zvH+e42K3rUFw==
X-Google-Smtp-Source: AGHT+IHl0rMozF8fyncgtwJnZuDNJR8Pa97HnX5NDJ1ulE+L6RXtTTJfzmFUESI9fNeMlRvrFf1Ojw==
X-Received: by 2002:a05:6512:400f:b0:53d:a93c:649e with SMTP id 2adb3069b0e04-53df0109024mr9144690e87.35.1732906503152;
        Fri, 29 Nov 2024 10:55:03 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df6496a43sm552760e87.213.2024.11.29.10.55.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 10:55:01 -0800 (PST)
Date: Fri, 29 Nov 2024 20:55:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Ritesh Kumar <quic_riteshk@quicinc.com>, 
	Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] drm/msm: mdss: Add QCS8300 support
Message-ID: <wbw7ftf7ogcylxbeav3vegyfgz32sc2h5plneo2w7djsy2kaeo@enkcbukosern>
References: <20241127-mdss_qcs8300-v1-0-29b2c3ee95b8@quicinc.com>
 <20241127-mdss_qcs8300-v1-3-29b2c3ee95b8@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241127-mdss_qcs8300-v1-3-29b2c3ee95b8@quicinc.com>

On Wed, Nov 27, 2024 at 03:05:03PM +0800, Yongxing Mou wrote:
> Add Mobile Display Subsystem (MDSS) support for the QCS8300 platform.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  drivers/gpu/drm/msm/msm_mdss.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Once rebased on top of [1]:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

[1] https://lore.kernel.org/dri-devel/20241127-msm-mdss-ubwc-v3-0-9782a7c2b023@linaro.org/

> 
> diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
> index b7bd899ead44bf86998e7295bccb31a334fa6811..90d8fe469d3134ec73f386153509ac257d75930a 100644
> --- a/drivers/gpu/drm/msm/msm_mdss.c
> +++ b/drivers/gpu/drm/msm/msm_mdss.c
> @@ -568,6 +568,16 @@ static const struct msm_mdss_data qcm2290_data = {
>  	.reg_bus_bw = 76800,
>  };
>  
> +static const struct msm_mdss_data qcs8300_data = {
> +	.ubwc_enc_version = UBWC_4_0,
> +	.ubwc_dec_version = UBWC_4_0,
> +	.ubwc_swizzle = 6,
> +	.ubwc_static = 1,
> +	.highest_bank_bit = 3,
> +	.macrotile_mode = 1,
> +	.reg_bus_bw = 74000,
> +};
> +
>  static const struct msm_mdss_data sa8775p_data = {
>  	.ubwc_enc_version = UBWC_4_0,
>  	.ubwc_dec_version = UBWC_4_0,
> @@ -715,6 +725,7 @@ static const struct of_device_id mdss_dt_match[] = {
>  	{ .compatible = "qcom,mdss" },
>  	{ .compatible = "qcom,msm8998-mdss", .data = &msm8998_data },
>  	{ .compatible = "qcom,qcm2290-mdss", .data = &qcm2290_data },
> +	{ .compatible = "qcom,qcs8300-mdss", .data = &qcs8300_data },
>  	{ .compatible = "qcom,sa8775p-mdss", .data = &sa8775p_data },
>  	{ .compatible = "qcom,sdm670-mdss", .data = &sdm670_data },
>  	{ .compatible = "qcom,sdm845-mdss", .data = &sdm845_data },
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

