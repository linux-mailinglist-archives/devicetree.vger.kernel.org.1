Return-Path: <devicetree+bounces-123703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 017059D5BEA
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 10:27:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5C1D281CC8
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 09:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F1C1189BBA;
	Fri, 22 Nov 2024 09:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x4GONnZB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F2417BEA4
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 09:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732267654; cv=none; b=mVba6CgvxSNcccj2a7ZQxLKUQ2oYpHPwM5Jmb0G9rZqF8FCmtvw7UiL4tluehoYnBSI/oIBDNcK98SqiHAOBILdyscCU9WaOH4UOJ57VO32s4EhtOnZg+34zd4WIqYFb2TzB/znWOkAqHlNUPY93s2PtCK8eD7yrFRwbh2OA0yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732267654; c=relaxed/simple;
	bh=9/+Jgi/pv0kFY4+ddAct2Ut6BiknvHEsbDkOtH7C6j4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QrnYPxP+fXZySK0ez3x+gOJGvfWongltsjyPXeqEtaXN6vdeJBnP2RQita9pYWacZPvZ5pNYPYP+xm1qswLZ+wO8RcxAP/bKN4B3FfWjOCrGAR7Lm5IW03A9JMQXT3G3IuEroaCqK9VDrD93iUdN5ZElEfEWO15dBPVOFhQSq7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x4GONnZB; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2fc968b3545so20931831fa.2
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 01:27:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732267651; x=1732872451; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=o/KjUXRCXlsWOPqYKRfBv66hdF54Xlcb8aQ4sHoZGC8=;
        b=x4GONnZBc1oh7t001KMYnk142Ce0tAT5Un5aagRHhmbLv/omeKCLjuA5QVRYLThH78
         ufFtABnLyru13fMs0fPlX4x0Igm1S6w+KnBBSO01ug+pYafSQJ0Hz7IjbA4eYxViZ8ex
         hDqnSbA2clG/GzegBVLNHQAbtwQplMwwqhXk6fS+yDvgt8IOBYHZlCKPxtrCvUTVp7ou
         5UlpRd/BZHld59X3nZxlRWX2BKWWz8MyfRjQqtwoKUBp505jdJBlCGRxSC8l2yYUo9F4
         2rUyhsSL3rZaqiU35ol7CsBQVwYhNUGoc2t6vXyAwQCq2mq28CU0XtHRxGhO6KQ35zaO
         BNDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732267651; x=1732872451;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o/KjUXRCXlsWOPqYKRfBv66hdF54Xlcb8aQ4sHoZGC8=;
        b=qy3PUihiEz4RmIJCwdBfdaS2L4FbJL1OyyJtYSOVC3blWkkieBpzoFUDre5hMGHPhC
         PQbLwlZDamyzdqDzFiyN0bElnHP9tSHJRedS10ZLbtfbXRMhByfjkmeceTqswD7jI0fd
         I3nLaAvBs2xDc8HaxscAq1v/4GUIrYiLahQH3X6pyF1QlWfV14BB/+e9z0OAbmkQyC3u
         cjT/qhTuHZ3rIqM34Bz/sqFqXyglQz5S20goP27mf5n/zCY5gHeZu09Z8j/rWdKwXdZv
         TTHLw86E57T44BLgjeWeuwsLYni7MlptKeh7igPYMIhL3rg8rtVG2xFnpX+ktA5aZLy/
         POuw==
X-Forwarded-Encrypted: i=1; AJvYcCWKSaf5LFXGHxVkLcBvvzcV4NTpWTpcMF/f9DkTK/6nM+HGXKWAWoXi4LFcKoJVxxMseA4bZVD2zilv@vger.kernel.org
X-Gm-Message-State: AOJu0YwYFUFgEd2CTumGN/0br7V1ofHQOFCP3mOvtKp+YsYMtGrViCL3
	l/PKaH8Jcj588tbiLshoBptNK1KxLg1WEGJzkYtHOZJtM30Nk2SBPs08my6TV6WrkB1fmQI4qAN
	X
X-Gm-Gg: ASbGnctuxQDNo5O9zDFnq6kyGGYl1TtCPUpkqDWCbuMmACboEFpILqJ8ICOAHencoxi
	iiKt/QH0Ae4t5Isp7WwJhOWS1/JZlKZXcn26X7yjPCeEVmTusM13xK0pJj/Dn17GhQklmMcp64T
	MEgrNEkb1wShwWrO5jLUwlfz++VY+AhaDyh4WONKpPX3UsvWh0qxnDrU3/PuyiJyOkvLWtg8KKk
	e6fREQtU+a8v4hbX+ulf5YlToR9atHzmA4iWReRYm82aVlcpVeXEdx1Uu3ANEoJzdiFCEPl2Z5F
	xfd+/Ca8K4ti28flvYv5j4yCG4vLKg==
X-Google-Smtp-Source: AGHT+IHz5X7WuQYcFRz/g4VX8x8yQgJsaI2Y2adSrullGcRsmNHhxorXWq5F5q45k9j4fbqgs7YKpQ==
X-Received: by 2002:a05:651c:546:b0:2ff:4ce0:d233 with SMTP id 38308e7fff4ca-2ffa71853dcmr12506621fa.28.1732267651258;
        Fri, 22 Nov 2024 01:27:31 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffa735717bsm2283061fa.90.2024.11.22.01.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 01:27:30 -0800 (PST)
Date: Fri, 22 Nov 2024 11:27:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: x1e80100-romulus: Set up PCIe3 /
 SDCard reader
Message-ID: <n2iw57ngqjsyawatqjpw2kpls3hlnx62ryrihnk2t4xfojuevp@svndllaqa4zt>
References: <20241122-topic-sl7_feat2-v1-0-33e616be879b@oss.qualcomm.com>
 <20241122-topic-sl7_feat2-v1-2-33e616be879b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241122-topic-sl7_feat2-v1-2-33e616be879b@oss.qualcomm.com>

On Fri, Nov 22, 2024 at 03:14:11AM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The Surface Laptops have a Realtek RTS5261 SD Card reader connected
> over a Gen1x1 link to the PCIe3 host. Set up the necessary bits to
> make it functional.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  .../boot/dts/qcom/x1e80100-microsoft-romulus.dtsi  | 63 ++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi b/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
> index 6aea8f3573e834273d56448da772edd27855efec..66a12b20b096baa7d5cf8c5fb65927b765aa18ff 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
> @@ -767,6 +767,27 @@ &mdss_dp3_phy {
>  	status = "okay";
>  };
>  
> +&pcie3 {
> +	perst-gpios = <&tlmm 143 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 145 GPIO_ACTIVE_HIGH>;
> +
> +	/* The power supply enable GPIOs are reserved by the secure firmware */
> +
> +	pinctrl-0 = <&pcie3_default>;
> +	pinctrl-names = "default";
> +
> +	/* The RTS5261 chip on the other side only does Gen1x1 anyway */
> +	max-link-speed = <1>;
> +	status = "okay";
> +};
> +
> +&pcie3_phy {
> +	vdda-phy-supply = <&vreg_l3c>;
> +	vdda-pll-supply = <&vreg_l3e>;
> +
> +	status = "okay";
> +};
> +
>  &pcie4 {
>  	status = "okay";
>  };
> @@ -797,6 +818,25 @@ &pcie6a_phy {
>  	status = "okay";
>  };
>  
> +&pm8550ve_2_gpios {
> +	sde7_main_reg_en: sde7-main-reg-en-state {
> +		pins = "gpio6";
> +		function = "normal";
> +	};
> +
> +	sde7_aux_reg_en: sde7-aux-reg-en-state {
> +		pins = "gpio8";
> +		function = "normal";
> +	};
> +};
> +
> +&pm8550ve_8_gpios {
> +	vreg_12v_x8_en: 12v-x8-reg-en-state {
> +		pins = "gpio8";
> +		function = "normal";
> +	};
> +};

These pinctrls don't seem to be used.

> +
>  &pmc8380_3_gpios {
>  	edp_bl_en: edp-bl-en-state {
>  		pins = "gpio4";
> @@ -946,6 +986,29 @@ ssam_state: ssam-state-state {
>  		bias-disable;
>  	};
>  
> +	pcie3_default: pcie3-default-state {
> +		perst-n-pins {
> +			pins = "gpio143";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +
> +		clkreq-n-pins {
> +			pins = "gpio144";
> +			function = "pcie3_clk";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		wake-n-pins {
> +			pins = "gpio145";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +
>  	pcie6a_default: pcie6a-default-state {
>  		perst-n-pins {
>  			pins = "gpio152";
> 
> -- 
> 2.47.0
> 

-- 
With best wishes
Dmitry

