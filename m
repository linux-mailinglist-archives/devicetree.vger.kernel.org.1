Return-Path: <devicetree+bounces-125028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAD59DA8D1
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:42:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CAA7428264D
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 873A61FCFE2;
	Wed, 27 Nov 2024 13:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rCekTdkt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A93F01FCFDD
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 13:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732714883; cv=none; b=gtbsFfGZse83uUywUIxg89/mXcUfGSLYh2+euMllnZxkpbugMwtoTaBqzy7n3MAceF8he7ZwgAnkEJXWpNrL/4SHu1sP3feErC8dllsZ7luPyBZOEghfFgRjBMXxRSXC4laEtwEcQgN3Q0R7V/WH5zgbGi+BArHM4rObLVnLQds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732714883; c=relaxed/simple;
	bh=ySPedvBJevYjtblSz3wodfE4A8z/KCFgNZPKngqn6RM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OCAsxciBNvQCufuHF1vEjgu8IlKw/50mH8dedmkUGDQRoEDbV01WA2fs9P4fuGWmYFr95oJjRMAK9z94cmMi9ZzSnZ0w5unbQh/lZ5A0vwnKG5F0gSzrB6CnG2cNYNAl6E7xDLZrm81Jj22vqGi4eDoXL1Vl+x5NoDjz3oamPYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rCekTdkt; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53df1d1b6e8so477629e87.1
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 05:41:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732714880; x=1733319680; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+V0B8FgWwCZYmESnMjYEXbPLdTp7ON4XeU+NCnDG0sM=;
        b=rCekTdkt8YkjJpLmPc5KUeLL+2QN43j0QjeeB7RK19/9ggR6r5wLPvhqiyCegmpgI3
         cbcGvrArgBVXCudovRvI85RIsiJs4tWzZTIi0jaI+oao0x0UhvrhtJnl9tfYitJB8hPh
         vyBMd1km8v5Ph42Rj/kdqVUaZTRHm86phwjimVM1bTfdTg19yZJ0zlDytyGjBErdViTV
         dXHwyyCvMUq0FXNOFHag/77JDdOSmc0uCpxJbuzA0A7h03qBs7AFgzMsV3yQ4pIzGk6M
         xak0IVHwW3HmnH+nwCkc0Kns5g/TwdR7izsqqMvFRhSPzdWzGSlVq9yYp3UiYAdDHQeG
         GTRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732714880; x=1733319680;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+V0B8FgWwCZYmESnMjYEXbPLdTp7ON4XeU+NCnDG0sM=;
        b=hNVph6IptgiyOv6mr1Xg+c0qc1dbVHhJaer9e1zMHZrdV3NcQwQRzZ89guWPYM2zBD
         po/2tx5evmdJvTVPs9iXAt0BuzN7LEcJkkAe19ilDcCaDCvRnBM9CUiUHy3ujl/sftUa
         uw/e+HGYTqWw54+Wu4Z2OX2dxsQvLZj79EjvrcWE7zstpBOQmfZhecLNhioSwiF4886G
         JCaJXKMKJpcbMwcRn24OOs9Xc1Gd04XdNawLdJLel6QyiDHK68mol4fe1CUl3mJ1Se3f
         2iWeNVOb7HQ6t6UC3GNfpQBy31yCZQME9KuW/Lj76kRFO6Mzc8zKZJKlIO1laPnCKzbR
         7jsg==
X-Forwarded-Encrypted: i=1; AJvYcCUXVwLg1DeQqWUK5+wd7yOIiQgp6khKI1JzZ0D6jYR7030HSlCswvDZKnJ8drd3UzKNwFPhZXUx+cng@vger.kernel.org
X-Gm-Message-State: AOJu0YwxbbzGpfGWJil1itoCvgJI71Y4YGKpGnw1V3wOiavrrXnfKhpH
	QI735slGSOjopkVvZQQXYr/3g2I4aJtNwqMJz+rzvyyjDhWcpKay8GeooI+lPvs=
X-Gm-Gg: ASbGncsFr0ag74xZm8rG0BHWcMG6Ptf7oknMZAyW1TbkBS/1P2DofxWlq7YdZHqt4PN
	CDVPCgrszq6s4Nc1hhUiZai6wYpBkHYLPvqzokZk0iHGIXO8wwbqzP13cGCw7iWbG+2PQIA6+PO
	36HM1hefrl9ORgFyQPBthN32mW19jXsZnd+0Hz2pXSXBaXM4eOG5GwNN9DHtd3dCxH64veFeigO
	XYZGwF0P969tT+cXqwY5yGxWWPxx3tx5Ty7Z1aUl8CXovuvZLInAwqZP7fbD2se3Aa2fQpvV4h7
	CjgNxf4AQLsZHfvAf2DO/fh6jBBs8Q==
X-Google-Smtp-Source: AGHT+IG9BNVyGMPhRMDkSB666seeuc69CW+Jv5lBWbNwNRZPtIr56nhPI2eE0zoLaGS7x7+3k7cyFg==
X-Received: by 2002:a05:6512:3a8f:b0:53d:a4f3:29ed with SMTP id 2adb3069b0e04-53df00dd707mr910972e87.27.1732714879617;
        Wed, 27 Nov 2024 05:41:19 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd336a530sm2263130e87.142.2024.11.27.05.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 05:41:19 -0800 (PST)
Date: Wed, 27 Nov 2024 15:41:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Ritesh Kumar <quic_riteshk@quicinc.com>
Subject: Re: [PATCH 2/4] phy: qcom: edp: Add support for eDP PHY on QCS8300
Message-ID: <new6hjxnwyuohetdprxwee3epf23uemwft2p7faym5f5zqv3og@fksrew4blk7p>
References: <20241127-qcs8300_dp-v1-0-0d30065c8c58@quicinc.com>
 <20241127-qcs8300_dp-v1-2-0d30065c8c58@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241127-qcs8300_dp-v1-2-0d30065c8c58@quicinc.com>

On Wed, Nov 27, 2024 at 04:15:49PM +0800, Yongxing Mou wrote:
> Add support for eDP PHY v5 found on the Qualcomm QCS8300 platform.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index f1b51018683d51df064f60440864c6031638670c..90e0a399c25299ad1b2fb5df8512ba3888661046 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -532,6 +532,13 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
>  	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
>  };
>  
> +static const struct qcom_edp_phy_cfg qcs8300_dp_phy_cfg = {
> +	.is_edp = false,
> +	.aux_cfg = edp_phy_aux_cfg_v5,
> +	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
> +	.ver_ops = &qcom_edp_phy_ops_v4,
> +};
> +
>  static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
>  	.is_edp = false,
>  	.aux_cfg = edp_phy_aux_cfg_v5,
> @@ -1133,6 +1140,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>  }
>  
>  static const struct of_device_id qcom_edp_phy_match_table[] = {
> +	{ .compatible = "qcom,qcs8300-edp-phy", .data = &qcs8300_dp_phy_cfg, },

If the setup is the same as SA8775p and you don't expect any
QCS8300-specific tunings, please reuse sa8775p as a fallback compat.

>  	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
>  	{ .compatible = "qcom,sc7280-edp-phy", .data = &sc7280_dp_phy_cfg, },
>  	{ .compatible = "qcom,sc8180x-edp-phy", .data = &sc7280_dp_phy_cfg, },
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

