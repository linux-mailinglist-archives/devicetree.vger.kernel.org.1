Return-Path: <devicetree+bounces-129208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AE49EAEF2
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 12:02:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6DBB1880399
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 11:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44E8F19DF60;
	Tue, 10 Dec 2024 11:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l6PspFLi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E561E515
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 11:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733828545; cv=none; b=nOEXQ33lxt12kSsyqMEoP7k2fm6JA6JN0O3RJzYl094+fb2CtjigTG0l+SIJB3Q1qI2+OfbJU4oslrplGoQM0Pi3y85NQUtXlJtLANd7Wx34Yzkkyl9DokkURih7+FrkmnEc3E6tWVQd0PIwrijQqaOXWYpGfqAk2CCvlEeD+hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733828545; c=relaxed/simple;
	bh=DNo6FDFuEfWbaNhgVAj/2RWAC5OMfkXtgieNFFRPoWc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GQNe2RuAnjFgV6Qxs+y8yMCnKl8bsVeN+g4f3x2Dpq653hev/kn/n6ISlSzir4OWe4yJq6R9Yad+VreS5au23D5NTxTKW2cd/chzjaQLDmHFNxp9R0GSYB3Z96bCoENUzuPZzgV/FI+gBwKPESCkZsAlcEtrXh0Dwofu5kSSYGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l6PspFLi; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5401c52000fso2057702e87.2
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 03:02:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733828541; x=1734433341; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NLSLnG5Y+Q5zBa0vxq3CyVrMI+PkK9k80FsG1LPecs4=;
        b=l6PspFLi8+2zMzKIuQ6gfct3OyHyQEOSn200eQxnzVnaR/Cd5EiQCwpy1esOW8DLaV
         PW7V3AA8OBtCVChzlWZSc6RzqLNqiU2tAN5ZGF66bnxIBlVF5E56l0zbVJ2eajjylJ0k
         naEZRj2FKwegmA/MS+/YEkzrE9W5lJgJ3+Qn+OSaj3wpCdw0f7OQk7QjMB+Vd4tfxpHC
         nVny+4nkyXFS6KLwoAnVl8WV8dqaRDaU+qtSA3KzhlEhwScDeMtW9RW8Kan5BKjpkp/7
         znbkj9/ct+thhq7u3blvFz9IXF7de9Yy6gKv89uy8Pz7GGdCo1zd7rGaYLtVYO6iqSwm
         b0Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733828541; x=1734433341;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NLSLnG5Y+Q5zBa0vxq3CyVrMI+PkK9k80FsG1LPecs4=;
        b=u+TyIHIL4aRjfYnpqI3Hl7R7s+h9x2hbsC2UuiRb6LvpeA010upettTZZlUbJvp1+S
         a4TC2hOywkO+W2PYFtPZmecQCHQG6jqojiNGdX9reSOwcjaTCkW3dt8OfCnqPn+H6UiC
         sSn3CGoimOIpePCgpE301OG+lABdqsPI9M48OqBUGIVssKvRea43PYArgwnqs2OhO798
         u2Us/dcULpm0UmTBCbDqQBoyJ/uyoEyG4N9z1QqgwsStDmlJPsm2A9gZcHRlUKTBuTdS
         arLESC3e3OLbe/yucoiLp5Yv4Cw63fgeae6W2DqVpKdjzVjmLhQDJMTmrG12TGjUqviC
         E2TQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbgpkrGLYBWwkdXU1v4gKc2w8UulcBO0iec8aFFcsNJ4+OYqlc+Z0Q85OjZCPOkQHwyc1HmNvvCqOz@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx8jxNg9QN4BB/SUDGzEAiRU0AmVLHU8HrjCEaeFqDjlomw630
	TylvbFElP+xoQ+V91SUKJDLc9n/1FBDU5yAt283BHlxw95ihUusBpIK5J0zalno=
X-Gm-Gg: ASbGncvdaOtRqjpkIp9Yb65fG5ivNSnPRXgPM1tnzOermmwrlbRN3Nqd5M/M4c6vXjD
	4lKarZ+tqetgg+IEasfLC8r8mWHUdFkjkQeAUBrY92UF+/xgaSFv1ZZRn39h9biDE5OBpmbz73l
	8OfKS4udFPcvLTS+p3NZT3kYJeEg34VjmIJ1S1g8eC6apcRLgdCLsz6uK/pmIhtkNI/M5XazIQF
	SA/Sv8+F+L/0wMuoxgIeUVlEZ0WKxFgUis5QxAGM3VwEOEfZBAWq4CkrUl+9GFrIL03F4w1/MhE
	hBh299FCpuCuu3Qk/11ZuiRRz6Tl9Bmq+Q==
X-Google-Smtp-Source: AGHT+IGd9pUHyOFytE8kKcuQvQX5JanFuKXTkqWjRgdaLSxeotjVnnczl7OXF6dV39l7CqIuih4Vog==
X-Received: by 2002:a05:6512:104b:b0:53e:362e:ed6 with SMTP id 2adb3069b0e04-5402410d24emr1565097e87.50.1733828541548;
        Tue, 10 Dec 2024 03:02:21 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e39ce0551sm1148049e87.29.2024.12.10.03.02.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 03:02:20 -0800 (PST)
Date: Tue, 10 Dec 2024 13:02:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Fange Zhang <quic_fangez@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Liu Li <quic_lliu6@quicinc.com>, 
	Xiangxu Yin <quic_xiangxuy@quicinc.com>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 9/9] arm64: dts: qcom: Add display support for QCS615
 RIDE board
Message-ID: <cfdyvcxdkmf4sv5f75koflayyx74wd3tuscdl7byp5peaag5ty@yhr3275jhftn>
References: <20241210-add-display-support-for-qcs615-platform-v4-0-2d875a67602d@quicinc.com>
 <20241210-add-display-support-for-qcs615-platform-v4-9-2d875a67602d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241210-add-display-support-for-qcs615-platform-v4-9-2d875a67602d@quicinc.com>

On Tue, Dec 10, 2024 at 02:54:00PM +0800, Fange Zhang wrote:
> From: Li Liu <quic_lliu6@quicinc.com>
> 
> Add display MDSS and DSI configuration for QCS615 RIDE board.
> QCS615 has a DP port, and DP support will be added in a later patch.
> 
> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> Signed-off-by: Fange Zhang <quic_fangez@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 89 ++++++++++++++++++++++++++++++++
>  1 file changed, 89 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index a25928933e2b66241258e418c6e5bc36c306101e..694719a09ac46bfa2fe34f1883c0970b9d0902be 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -32,6 +32,18 @@ xo_board_clk: xo-board-clk {
>  			#clock-cells = <0>;
>  		};
>  	};
> +
> +	dp-connector {
> +		compatible = "dp-connector";
> +		label = "DP";
> +		type = "mini";
> +
> +		port {
> +			dp_connector_out: endpoint {
> +				remote-endpoint = <&anx_7625_out>;
> +			};
> +		};
> +	};
>  };
>  
>  &apps_rsc {
> @@ -202,6 +214,83 @@ &gcc {
>  		 <&sleep_clk>;
>  };
>  
> +&i2c2 {
> +	clock-frequency = <400000>;
> +	status = "okay";
> +
> +	ioexp: gpio@3e {
> +		compatible = "semtech,sx1509q";
> +		reg = <0x3e>;
> +		interrupt-parent = <&tlmm>;
> +		interrupts = <58 0>;

Use IRQ flags instead of just 0 (here and further on). Also it might be
better to use interrupts-extended instead.

> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		semtech,probe-reset;
> +	};
> +
> +	i2c-mux@77 {
> +		compatible = "nxp,pca9542";
> +		reg = <0x77>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;

Add empty line before device nodes (here and furher on).

> +		i2c@0 {
> +			reg = <0>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			anx7625@58 {
> +				compatible = "analogix,anx7625";
> +				reg = <0x58>;
> +				interrupt-parent = <&ioexp>;
> +				interrupts = <0 0>;
> +				enable-gpios = <&tlmm 4 GPIO_ACTIVE_HIGH>;
> +				reset-gpios = <&tlmm 5 GPIO_ACTIVE_HIGH>;
> +				wakeup-source;
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +						anx_7625_in: endpoint {
> +							remote-endpoint = <&mdss_dsi0_out>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +						anx_7625_out: endpoint {
> +							remote-endpoint = <&dp_connector_out>;
> +						};
> +					};
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&mdss {
> +	status = "okay";
> +};
> +
> +&mdss_dsi0 {
> +	vdda-supply = <&vreg_l11a>;
> +	status = "okay";
> +};
> +
> +&mdss_dsi0_out {
> +	remote-endpoint = <&anx_7625_in>;
> +	data-lanes = <0 1 2 3>;
> +};
> +
> +&mdss_dsi0_phy {
> +	vdds-supply = <&vreg_l5a>;
> +	status = "okay";
> +};
> +
>  &qupv3_id_0 {
>  	status = "okay";
>  };
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

