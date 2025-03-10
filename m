Return-Path: <devicetree+bounces-156223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BF49CA59A3D
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 16:43:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B4A71889FF7
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 15:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14C1122DF82;
	Mon, 10 Mar 2025 15:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GuPj1niY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EE022E406
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 15:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741621366; cv=none; b=hBuCnITjVsuxa42XEJUex9vnJ06oLA1zDPYO4FQZeaqANKRXQkcjKuH6v41ZuIYB1AgMadoWRr/RudNIloGaeCcsrZCq5R8F0t8WXi++ta5+lFPH8DFjw9pjbvGxHCr6G/+gA28yyTHvI+M9TO7xfFtW+3AxyV/axuS5eLyCY/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741621366; c=relaxed/simple;
	bh=CiSdzcds41wtt/vO4onxV8kRnf5RNQMUtDCtG2jDKJc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rJ5RJ/WMIBu9m1Sa1NRGi7bhvMup+RbGGsEZkcqK47OuGoQSrr4qQDjK/pa/WN+2WiVHVFw2PoVRSnquKBQQWp9aosY40J8fdF78oP7q33XhH/goOzcWeAdt9Q7yejd3OGykaJFciOyE1Qm3q9iTt/V6SLqQTurZPU6m0FWI56E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GuPj1niY; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2fa8ada6662so9267037a91.1
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 08:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741621362; x=1742226162; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=enikGLAVKD32XDQkaI8PyWJI+pkAkZngBKEbealMEZc=;
        b=GuPj1niYGULGhEvoYv+CzvtbLpj1diN0jBE/zhjs3EI+EtZGEFhyRlGEXb+xGaVOgy
         aV3D9kaVvJuqy1a5TIr9whGQLSz389hYhDsdOfTQ7OhltjhYYtmnOm7+7o2ZcGXHKrgU
         Bm6GG5+D0xBHtDxbTZi/DP2ADvg3FOzgw3HUiCv+nqmtKjMotK7isPYHDl4lFcOVL5Z5
         ScQZKbfZhBU745XaKNYZz4F8R5mf7UWI3Bt33B0CNqBD2xpOdxDTy9WKwELMgk1zCoqE
         PQ57oUbaJGXcJXRBjdswJc/e1KiMx8jY1MHx5Hj1zlcPFOiK50vYSALazO0sOxkLzZVK
         n4Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741621362; x=1742226162;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=enikGLAVKD32XDQkaI8PyWJI+pkAkZngBKEbealMEZc=;
        b=nNJjd3Qeb4DVFxOkwX1l8wXwTvr9FrYW4xMBgW3WtOfKPDSKKLD3Xx1XRpYtQuouiS
         SC0bCGwTda6mo3rO98PyAiOwuHZsCgp9WHVx/LR9rsOD1+7boI6cUwEgnV6CW2+jUZ/6
         9QetHkb6BAlWYWhKYFZrUAZ4Yqyy8N2i/q4MWJtgCbEq3/BJEkadu9uOsoYJHzzO90yV
         XMM5miCOxVVbczuD6NPbBhya6+uhN3K3V1fW58J2Ps3GBDOr7sFnmLaLUu3MZe1qKzM9
         NhTr/E4xtkF/g+mebewTv35uznP/qZFSHEts8l7UWaWn7NjxqjmonSmySDvLWkxjUx/H
         DZAw==
X-Forwarded-Encrypted: i=1; AJvYcCWH+N6UOjrwjESpFNRyhqFJPhFjdaKHVHnTf17YFK59gox5UzEs/MdIZeJWK3W6pebggk3I+7Ga3thK@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6cKTjPh1e74M+q+XHNBCyWZdGPv3apW+k1E7XKTStZf1BCW0M
	QGdSCNnX+qKPzbSB1nfNafoTcd9QQIYrtxK/tesTkh4dRw+fYUIhMO8AIaZR0HE=
X-Gm-Gg: ASbGnct7+4YnNIZfwD8+ooO500osTyGzkTXxojLn62yRDNxXYYz6hyEz3Yg/kuEjSny
	1bZDC5qQ9uWKzFYNhqQ81nuG52CiYUE68ia+Rd6FBQuWnMngkbPqmSoCs42s8HV5C34SIqWcsIm
	Dq0K8CO0/1zXVIACG9vWwV1EHq756t7xpwZaApRMvjUWBc2+tC3ePZPFszZpvLNIFr5Dymv2fMR
	e2lAbClrmcADibLRUrGphXuaBcxnU7qO5vKWqdqxLvjfxa3rB9EreqPDfQCSXDyUJSqLPqhFlrV
	ozzDCnYj70LqmWdTm0zkAHdDPCog3O/SxaaVLcHVvAZCWFGw
X-Google-Smtp-Source: AGHT+IHNf11G7DyVu/twsvugWYwlU9A3A6njxqIwYNnQaUcCkH2JVILiZmtg9HpM2KZSrY/MiuYxRw==
X-Received: by 2002:a05:6a20:c996:b0:1f5:8903:860f with SMTP id adf61e73a8af0-1f589038757mr2586991637.14.1741621362485;
        Mon, 10 Mar 2025 08:42:42 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:d163:942a:6a37:7631])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af286bb9f26sm7496813a12.25.2025.03.10.08.42.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 08:42:41 -0700 (PDT)
Date: Mon, 10 Mar 2025 09:42:39 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Daniel Baluta <daniel.baluta@nxp.com>
Cc: p.zabel@pengutronix.de, robh@kernel.org, krzk+dt@kernel.org,
	shawnguo@kernel.org, devicetree@vger.kernel.org,
	linux-remoteproc@vger.kernel.org, conor+dt@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, andersson@kernel.org,
	Frank.Li@nxp.com, peng.fan@nxp.com, laurentiu.mihalcea@nxp.com,
	iuliana.prodan@nxp.com, shengjiu.wang@nxp.com
Subject: Re: [PATCH v4 8/8] imx_dsp_rproc: Use reset controller API to
 control the DSP
Message-ID: <Z88Ib7HkbRQoiyZp@p14s>
References: <20250305100037.373782-1-daniel.baluta@nxp.com>
 <20250305100037.373782-9-daniel.baluta@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250305100037.373782-9-daniel.baluta@nxp.com>

Good day,

On Wed, Mar 05, 2025 at 12:00:36PM +0200, Daniel Baluta wrote:
> DSP on i.MX8MP doesn't have a direct reset line so according to hardware
> design team in order to handle assert/deassert/reset functionality we
> need to use a combination of control bits from two modules. Audio block
> control module for Run/Stall control of the DSP and DAP module in order
> to do software reset.
> 
> Initial design accessed RunStall bits from audio block control using the
> syscon interface but this got NACKed by community because of abusing the
> syscon interface [1].
> 
> So instead we use the reset controller API.

I am good with this patchset.  The only thing I'd like so see modified is the
above changelog.  The second paragraph doesn't belong there, i.e it is not
useful to remark on a design that was not accepted.  Instead please concentrate
on _why_ we are moving from the current design to using the reset controller
API.

This can go in the 6.15 merge window if you send me a V5 fast enough.

Thanks,
Mathieu

> 
> [1] https://patchwork.kernel.org/project/imx/patch/20250212085222.107102-6-daniel.baluta@nxp.com/
> 
> Reviewed-by: Peng Fan <peng.fan@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
>  drivers/remoteproc/imx_dsp_rproc.c | 25 +++++++++++++++++--------
>  drivers/remoteproc/imx_rproc.h     |  2 ++
>  2 files changed, 19 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/remoteproc/imx_dsp_rproc.c b/drivers/remoteproc/imx_dsp_rproc.c
> index ea5024919c2f..bc60edcdd661 100644
> --- a/drivers/remoteproc/imx_dsp_rproc.c
> +++ b/drivers/remoteproc/imx_dsp_rproc.c
> @@ -19,6 +19,7 @@
>  #include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
>  #include <linux/remoteproc.h>
> +#include <linux/reset.h>
>  #include <linux/slab.h>
>  
>  #include "imx_rproc.h"
> @@ -111,6 +112,7 @@ enum imx_dsp_rp_mbox_messages {
>   */
>  struct imx_dsp_rproc {
>  	struct regmap				*regmap;
> +	struct reset_control			*run_stall;
>  	struct rproc				*rproc;
>  	const struct imx_dsp_rproc_dcfg		*dsp_dcfg;
>  	struct clk_bulk_data			clks[DSP_RPROC_CLK_MAX];
> @@ -192,9 +194,7 @@ static int imx8mp_dsp_reset(struct imx_dsp_rproc *priv)
>  	/* Keep reset asserted for 10 cycles */
>  	usleep_range(1, 2);
>  
> -	regmap_update_bits(priv->regmap, IMX8M_AudioDSP_REG2,
> -			   IMX8M_AudioDSP_REG2_RUNSTALL,
> -			   IMX8M_AudioDSP_REG2_RUNSTALL);
> +	reset_control_assert(priv->run_stall);
>  
>  	/* Take the DSP out of reset and keep stalled for FW loading */
>  	pwrctl = readl(dap + IMX8M_DAP_PWRCTL);
> @@ -231,13 +231,9 @@ static int imx8ulp_dsp_reset(struct imx_dsp_rproc *priv)
>  
>  /* Specific configuration for i.MX8MP */
>  static const struct imx_rproc_dcfg dsp_rproc_cfg_imx8mp = {
> -	.src_reg	= IMX8M_AudioDSP_REG2,
> -	.src_mask	= IMX8M_AudioDSP_REG2_RUNSTALL,
> -	.src_start	= 0,
> -	.src_stop	= IMX8M_AudioDSP_REG2_RUNSTALL,
>  	.att		= imx_dsp_rproc_att_imx8mp,
>  	.att_size	= ARRAY_SIZE(imx_dsp_rproc_att_imx8mp),
> -	.method		= IMX_RPROC_MMIO,
> +	.method		= IMX_RPROC_RESET_CONTROLLER,
>  };
>  
>  static const struct imx_dsp_rproc_dcfg imx_dsp_rproc_cfg_imx8mp = {
> @@ -329,6 +325,9 @@ static int imx_dsp_rproc_start(struct rproc *rproc)
>  					  true,
>  					  rproc->bootaddr);
>  		break;
> +	case IMX_RPROC_RESET_CONTROLLER:
> +		ret = reset_control_deassert(priv->run_stall);
> +		break;
>  	default:
>  		return -EOPNOTSUPP;
>  	}
> @@ -369,6 +368,9 @@ static int imx_dsp_rproc_stop(struct rproc *rproc)
>  					  false,
>  					  rproc->bootaddr);
>  		break;
> +	case IMX_RPROC_RESET_CONTROLLER:
> +		ret = reset_control_assert(priv->run_stall);
> +		break;
>  	default:
>  		return -EOPNOTSUPP;
>  	}
> @@ -995,6 +997,13 @@ static int imx_dsp_rproc_detect_mode(struct imx_dsp_rproc *priv)
>  
>  		priv->regmap = regmap;
>  		break;
> +	case IMX_RPROC_RESET_CONTROLLER:
> +		priv->run_stall = devm_reset_control_get_exclusive(dev, "runstall");
> +		if (IS_ERR(priv->run_stall)) {
> +			dev_err(dev, "Failed to get DSP runstall reset control\n");
> +			return PTR_ERR(priv->run_stall);
> +		}
> +		break;
>  	default:
>  		ret = -EOPNOTSUPP;
>  		break;
> diff --git a/drivers/remoteproc/imx_rproc.h b/drivers/remoteproc/imx_rproc.h
> index 17a7d051c531..cfd38d37e146 100644
> --- a/drivers/remoteproc/imx_rproc.h
> +++ b/drivers/remoteproc/imx_rproc.h
> @@ -24,6 +24,8 @@ enum imx_rproc_method {
>  	IMX_RPROC_SMC,
>  	/* Through System Control Unit API */
>  	IMX_RPROC_SCU_API,
> +	/* Through Reset Controller API */
> +	IMX_RPROC_RESET_CONTROLLER,
>  };
>  
>  /* dcfg flags */
> -- 
> 2.43.0
> 

