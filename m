Return-Path: <devicetree+bounces-123176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2C19D39DF
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 12:49:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 055E61F2374E
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 11:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DF701A2554;
	Wed, 20 Nov 2024 11:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E6wxRlwy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C69D1A00ED
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 11:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732103252; cv=none; b=C7YfEPFRdH5EWSXrhu61+WlKohmzhlN+NSJizm2jI0yoij2heSlANnQ1oyDZ6aXlPwagwxSHPUjFIZK1QcpvfxtXW0FhAKrm3bqbHfIwW5aB9XtuGuPpRCbAN/c1fQ0CeNxCbeExK1rcDJdryWzLcyyg9yLQL8DoQSkQ+cK6I04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732103252; c=relaxed/simple;
	bh=yEUSM/5dR847K6yqcp8QTo/S+d4ASsLJSI3yC9FydoU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ElVonkcI5bf49xyDG+L+8JwGhkvq6X65w8usfbLO2oJdRl730GjGvrlhOrL+JBlRlL41mMPG1MCKNa7X0SlDc0eXHZvqaCRMMmVwEmiopUOzVUEEinhEM+e5pTN2OGetuwcDNhTGdjCwC0Pnmmam3+hvdg3f+xY8x1ySlMgG8IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E6wxRlwy; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53da3545908so4936975e87.1
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 03:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732103249; x=1732708049; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dJFtAqhp3X0R4lOdvZ2r3USdMH+eAPxUwptYBdqe3Pw=;
        b=E6wxRlwyYuIuLmx3yZQFwG4d7Qtfz4e1UiwsFhPEvIis8jI/Z745HtbUxFD8mPr6kY
         d7YsPsje1dONmJMpmHfnuUSLCuZi8vIbTSJ90/CLiILO+0BKhCEXPnbt9Likk72I5+zb
         I7B2Z8AgvA8t13eouU3+V1Tts/g4IY82vLzpo6+FmzCK7jkoJunW3IXde/xO0JYAfP9C
         zobgCGHNo7wEPafxMhNW00IqIz/uBnEsYgcYI8QEnVhbBmi4xvS9/1jnx0Vr+n1Wq6fP
         H2TSFn+q2dtaATH9RrEKmW3Xxjcs+5Lq0+uLM3AS4qZzTcmFZkoIyIiZEjoQVCr0836A
         cj3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732103249; x=1732708049;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dJFtAqhp3X0R4lOdvZ2r3USdMH+eAPxUwptYBdqe3Pw=;
        b=h/unuTUeCNfLKZIHv+cgIyDudBbQqWvh/eP/as/mLEQvRfzTP1FM5JwU/kzVDugjKx
         Rbl9fdY/glPuxjUdZWpUr9YmbMAPRGOuzfRz6rDvl4yI7KMvKRikZSj/UusxQ5BklNL8
         QxR9PAZzNz0/kdSCjP12fOasWQmQUlxueqwmCg+4Lg5T/Q6JJCqQIFv20UOnY2Rv4OLV
         4a7o9eRSG5GRsLJjvlI/YScI9s+LZ1w6IlZNLkYkPf7F8bgPyGXYUjE5Ai58Lye66aso
         lbM6Ro+hg6ymIPjtn8tJebj9uiIJJWnYJte5zpT9W6JAMlKOvM1mBLczno2KRfQBNRwC
         NHKA==
X-Forwarded-Encrypted: i=1; AJvYcCWMbPYyjEIPZYmwf+dOQ9AB8wSEjKAYBvzDo801kMB+V3Gn5Ige4UXffMdSDZS89Vy6u9H0FwfeOLQ1@vger.kernel.org
X-Gm-Message-State: AOJu0YxWj35pn9ebcjMbAmwQWP3JQdBoQezNVEaWSa/mL7XYaxMVs4EM
	IQVG1BERv+iKfKxL0o9x2l1tySNmU2DMdZSoJLI0RRu7asPjIUbq5+UvyJrooNhSmPfSj5xzBH4
	U
X-Google-Smtp-Source: AGHT+IFgN81BwuakhVNlUrbTmfV59y85qdNvK5q+7qHNHoJCOed60HrFzITC+EJaIinpJ1WPb3899A==
X-Received: by 2002:a05:6512:238b:b0:53d:a882:c2b1 with SMTP id 2adb3069b0e04-53dc1343077mr1010869e87.26.1732103248736;
        Wed, 20 Nov 2024 03:47:28 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dbd3fccd3sm612181e87.105.2024.11.20.03.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 03:47:27 -0800 (PST)
Date: Wed, 20 Nov 2024 13:47:25 +0200
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
Subject: Re: [PATCH v2 10/11] arm64: qcom: dts: sm8550: add interconnect and
 opp-peak-kBps for GPU
Message-ID: <ctx4ajfhrpu43scq7momrx6lhel6c5sk43yjtvowv25ur6swzh@igo7gofc4lpg>
References: <20241119-topic-sm8x50-gpu-bw-vote-v2-0-4deb87be2498@linaro.org>
 <20241119-topic-sm8x50-gpu-bw-vote-v2-10-4deb87be2498@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241119-topic-sm8x50-gpu-bw-vote-v2-10-4deb87be2498@linaro.org>

On Tue, Nov 19, 2024 at 06:56:45PM +0100, Neil Armstrong wrote:
> Each GPU OPP requires a specific peak DDR bandwidth, let's add
> those to each OPP and also the related interconnect path.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 9dc0ee3eb98f8711e01934e47331b99e3bb73682..808dce3a624197d38222f53fffa280e63088c1c1 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -2113,6 +2113,9 @@ gpu: gpu@3d00000 {
>  			qcom,gmu = <&gmu>;
>  			#cooling-cells = <2>;
>  
> +			interconnects = <&gem_noc MASTER_GFX3D 0 &mc_virt SLAVE_EBI1 0>;

QCOM_ICC_TAG_ALWAYS

> +			interconnect-names = "gfx-mem";
> +
>  			status = "disabled";
>  
>  			zap-shader {
> @@ -2126,41 +2129,49 @@ gpu_opp_table: opp-table {
>  				opp-680000000 {
>  					opp-hz = /bits/ 64 <680000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
> +					opp-peak-kBps = <16500000>;
>  				};
>  
>  				opp-615000000 {
>  					opp-hz = /bits/ 64 <615000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L0>;
> +					opp-peak-kBps = <16500000>;
>  				};
>  
>  				opp-550000000 {
>  					opp-hz = /bits/ 64 <550000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
> +					opp-peak-kBps = <12449218>;
>  				};
>  
>  				opp-475000000 {
>  					opp-hz = /bits/ 64 <475000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_L1>;
> +					opp-peak-kBps = <8171875>;
>  				};
>  
>  				opp-401000000 {
>  					opp-hz = /bits/ 64 <401000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
> +					opp-peak-kBps = <6671875>;
>  				};
>  
>  				opp-348000000 {
>  					opp-hz = /bits/ 64 <348000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D0>;
> +					opp-peak-kBps = <6074218>;
>  				};
>  
>  				opp-295000000 {
>  					opp-hz = /bits/ 64 <295000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
> +					opp-peak-kBps = <6074218>;
>  				};
>  
>  				opp-220000000 {
>  					opp-hz = /bits/ 64 <220000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D2>;
> +					opp-peak-kBps = <6074218>;
>  				};
>  			};
>  		};
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

