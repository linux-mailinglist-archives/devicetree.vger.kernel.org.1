Return-Path: <devicetree+bounces-134530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD779FDD46
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 05:42:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4D153A161F
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 04:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3FEE17583;
	Sun, 29 Dec 2024 04:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="McFD8Yeb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C32423BE
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 04:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735447367; cv=none; b=Mg0gFtoqAQE4wer6H0NsNfj92Tb6OJZPyQuGTzGjHTO/FG8gqNATegtU8s3cb87742QYxGFh+MFQexPy5Qb2/uMDld8Lg/WoyJSr667QkX4Wqa+9RLxYufjisGpoofjDMPaJ9e4knqMWmTh0R6YpicDtY0RO2xsJ1SefgJSol5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735447367; c=relaxed/simple;
	bh=1D9ku27J97UK+heKNy9Pi9J4naepyu//ORXghoBk4/M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k7Ybu51yU9Fcd/oFuaSdZKEcxiZnx4LLWLf3JG3BWMeQBGKsYuHZr8FEhUQYBte0a0SPTDeB9M+c6kwIWMpZOrC97UemAh/DGZRqjlSOVf29PXo+3+SSPdFfKMAegOQnu/529XrUWw+BbVbeCEnP39TSWY19r/7W9Rb01BC1F+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=McFD8Yeb; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54024ecc33dso10505627e87.0
        for <devicetree@vger.kernel.org>; Sat, 28 Dec 2024 20:42:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735447364; x=1736052164; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=49KnvXyqtzHNP5zpXwkwN+VDBQ2sz7fI/cBjo8ecRUM=;
        b=McFD8Yebh60tIbzjTvUDMrhmf5iEENzUeL3cA7e3edwBf/Zd5xNNaOvpLEyppFXc2C
         o3axkL2gKLTp8q0khEH+5M8OjPk8j8YqyyrJ+kQhHotXdH+rRMbKoE4DkXoYJalmPJyz
         3uaqV9U5dC/qiGYUEDBwqwDrUpvgcVWGNfjtLLYO1V1mVHft4CNRAeCw/2s+pmT7r12Q
         52dLGFU+80fg9tZcqSMkvBYBAqBiYlXdIF2lPLppFw3hfvs9UBcOlejEEKMPChu3+acO
         LqN59GxugiUM/701QSCW1Draf1om8uW28kqe3H3NRlQei1+DXkUlo0DW40wxyEq/5YI3
         PoCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735447364; x=1736052164;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=49KnvXyqtzHNP5zpXwkwN+VDBQ2sz7fI/cBjo8ecRUM=;
        b=pBVuaYD2teNDPzQcibfvCvbtbK42+qqMCcLwhiqJuE+XO+0grf5KPuPEVSdn1BZXL+
         PrAeHFNWoCNW+DHX/THQLo5YaXOyX2VW8dI4COSsr6H1LeieMUGBnph9OzSf6XqkGPuV
         uB5PM8jfqoApDW6g/7eJcFYCeFiddJ1UzbEtbuTO0XB0deBmPKKasqXQ5rKn5xp1yCZC
         TDwYnedT/aFVgnPwY3zZXkxfqvbjjvosDNX7AnDlJu29YhT8CPxEBCHA8Ciq5s7JONmc
         RMqG2FJcpmpwOs6evMyHKswrtXq7/s8C/60Pjs7CmrVPHXYjGp/37WKmXJJ20TEdX7Wl
         UfjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWejR9AiBykkfOljcfv1niIGTA6e7nnQRUzbehoTrFJsRAQ/666PMNg+Rm8NaabrGWUrxHkxESw2v6f@vger.kernel.org
X-Gm-Message-State: AOJu0Yyvf4fOodSZirt+1URiAvdGwxehbOfIT8oriVmd1xi3oHAM4/fD
	YNJa0mu1pH4bV4yTUnkr12bxSAFnHke4SWT01q72Dgr//HSJmzR9y7tlGj6hK3M=
X-Gm-Gg: ASbGncscaBWKLK8rQc6+ga2tc7EVHLTDNSvnVYMwscHcGIqQ50ux06ZMM5I1EsNY2yO
	cPz+eomv0zEpdEyCgMrRCsDrGbAfGAqJENWo3o97rqfiEJlYk6Cj8exkR8jk8N2TYZERhPq6Gp9
	+NRD+w4xwensQlgbR/yTqGHpTukNpsz6E9PrFpnh54telmdQW5E9u6E79uYwo6VfJXwWri0pJ+F
	gJmxGAXtaQaYgCumUgomMyHkIRhVRt4dwxeTLM2dwCGPJuK789mFp3Gw9Ujg+IKrJWNXk/U3fUT
	3P5vMQHErvLCX6IY8UTmMXZozrdNx4NH3Xna
X-Google-Smtp-Source: AGHT+IHofLwFYxWucuHyLIawAriYNYKQ/SrKehOlm3Ec2J5KACyiss5kzgeMpgISL832D3TRqtyLHg==
X-Received: by 2002:a05:6512:3e23:b0:53e:12dc:e805 with SMTP id 2adb3069b0e04-54229582252mr9675190e87.45.1735447364447;
        Sat, 28 Dec 2024 20:42:44 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238301e0sm2834926e87.248.2024.12.28.20.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Dec 2024 20:42:43 -0800 (PST)
Date: Sun, 29 Dec 2024 06:42:40 +0200
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
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 4/5] dt-bindings: phy: Add eDP PHY compatible for
 QCS8300
Message-ID: <kz5qakmiy7n72p5yrrkgcjrmtvwl7knnkbzmh44g6cfunpjxad@3titlwwt32ux>
References: <20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com>
 <20241226-mdssdt_qcs8300-v2-4-acba0db533ce@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241226-mdssdt_qcs8300-v2-4-acba0db533ce@quicinc.com>

On Thu, Dec 26, 2024 at 05:40:48PM +0800, Yongxing Mou wrote:
> Add compatible string for the supported eDP PHY on QCS8300 platform.
> QCS8300 have the same eDP PHY with SA8775P.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml         | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)

Everything else is display, this one is PHY. Consider separating this
one to a separate series.

> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index 293fb6a9b1c330438bceba15226c91e392c840fb..eb97181cbb9579893b4ee26a39c3559ad87b2fba 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -16,13 +16,18 @@ description:
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,sa8775p-edp-phy
> -      - qcom,sc7280-edp-phy
> -      - qcom,sc8180x-edp-phy
> -      - qcom,sc8280xp-dp-phy
> -      - qcom,sc8280xp-edp-phy
> -      - qcom,x1e80100-dp-phy
> +    oneOf:
> +      - enum:
> +          - qcom,sa8775p-edp-phy
> +          - qcom,sc7280-edp-phy
> +          - qcom,sc8180x-edp-phy
> +          - qcom,sc8280xp-dp-phy
> +          - qcom,sc8280xp-edp-phy
> +          - qcom,x1e80100-dp-phy
> +      - items:
> +          - enum:
> +              - qcom,qcs8300-edp-phy
> +          - const: qcom,sa8775p-edp-phy
>  
>    reg:
>      items:
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

