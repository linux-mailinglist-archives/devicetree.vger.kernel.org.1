Return-Path: <devicetree+bounces-125309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7C99DB85C
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 14:13:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FEE2280B41
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 13:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28FD11A0B04;
	Thu, 28 Nov 2024 13:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GB/h+DPv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680861A08B5
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 13:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732799579; cv=none; b=YKvsguVjLf6rcViZy18UFSzPvDIyJ+JSUeOCFQqoUBii22B8d/3bCVke2ZoZJzW4SF5rTJqUrrS7mQ19DrW9A2B8TebOxfL90//HV5MTEXvtPTLzYwmBWEejV8jyWjvxsDPdGv4L/yPV16ZnDLJBhZgg7OPxwOl5qobKP/twq3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732799579; c=relaxed/simple;
	bh=4IZu694X/bkWyo3vwZjGxQoC0E+uORLSjZwc5JCEioU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BbY0aF9xYqqFFJFcP/aOnMSLq47RhATzOxywljW3To0ew+FZyjc8fyXKilKtysmhOE2g7y42MEDmR58HFhbVclMx3Ltxr1uI/RYWyxO4zR+WRBGFpnEfnccaC27qZPxJ8byUNqmEbkbwDaWzMZASQnVqSOZSYLDXwRX/t/WArxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GB/h+DPv; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ffdd9fc913so8570131fa.3
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 05:12:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732799576; x=1733404376; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KpJV3sxc/k5d9E7bw3woxWxWCXGkw8tAeHxF+F42yss=;
        b=GB/h+DPvugG4KGj0cghRI5av52n/CuMxwJ+/CI3f+DHycUod/1nQoV7fAA5kgZX6MJ
         xEX2Kuq4qszanAHs6plrR+vQOz+h8zfbCuBftw22ayhZONspIBSg9SBmCXgxE9n1ZX7s
         C1pfQap5t6QTkr5FtchN7Cn+Dr1CdMEKEIRCEK8lg9+4N+R9N/dEKBi7VNNVcGFrglkF
         5KOEkPHrAHq5sBWsvtQfvgdS8KBE05WFJFowtLcjJODsrj64nv3JVNPGy/tEVHaw0NUw
         GTToSAWV3G1skcnlhGcRCdMTiQWOXpB3EwW9gHRjIPlkZZmqg/7BpBcOnZJwL9fdfGmM
         OsKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732799576; x=1733404376;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KpJV3sxc/k5d9E7bw3woxWxWCXGkw8tAeHxF+F42yss=;
        b=h23irMFpUu5Eti6CUig2ogdm+hPOplbOw+DzfY253bXQG0pn/ArizN8NDttyaak61/
         AjKJ9HsPB2gF1gczGg/yzuwQQ1+3/tZS4QVCBeWJnt4eU3zDb8/wsSgAavvBf8ErZlW1
         gsgeCoHgJYUPTASLRFOqufU+YmxwFc360FkjOEV7nrkj/T5BZB1yw5taKeUbuIv1YOKh
         q16z8sRRpe7okLdctxq0WTZKLnnKa8vSOF+IfIXQgBOLTzOPz3+86jC1L5F9eQ4keKHN
         vWLmS33myU/Bp9risibkJ0FVXLOajHwvK65z5xFRWhyHKbYaI0UDLpoj9OSIb6Z1Nm6Z
         XJNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHnwyIRz+jlVCl2kCTi4GcSK0m05FTQVNzVJzdN9X7TiazoX7s+AvOdcOw4l8jRkvoEBma6WQXx76D@vger.kernel.org
X-Gm-Message-State: AOJu0YzbR16Y/UQtBuRqrQACPWH6laHn+gj0EDeFegBFMC4oafKzAQWD
	rdI8JDLMumrrPV6BD211iA/qg0tE8PuuJmzkgkml1R1xF1FjmHqcWMVNrFuZbwQ=
X-Gm-Gg: ASbGncuv9g/UEjV9/KMJ6/fYo2TnM1cG7F+P2k0gFKTPq88XEGgDHGNxxWHrGPedK21
	yIPgRZCmrUUA1giXpp4zExR2EIaYrwdZ8g5htYRzGYIr1a745a0+NEBbCL4MyvJ7lvEky3i5MxF
	gTf1w8qs5niQnm44L1sqevROFJ4LHIdT9c6u03HyBPxWwA8EhP0TyV63f7SCAZWEmrOz1M3sy1j
	hrVGUFXR3liQsRdpBYYzktebIPSxcKseTgJUVnZw+S7BJ7AyF8VjEdjNXTlsJ8V9IHW52hJNPgT
	T3YP2m+pZS/3k25bKr/dPClonvHXgw==
X-Google-Smtp-Source: AGHT+IFEsWiYySQlUxeUCEhDU9UTuc/5MMtH5h2wIuS5BWZsJk6+mrBkFYDCQpE23ITXxkYf+O5fdw==
X-Received: by 2002:a2e:a816:0:b0:2ff:c242:29cc with SMTP id 38308e7fff4ca-2ffd60231a0mr39764271fa.20.1732799575587;
        Thu, 28 Nov 2024 05:12:55 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffe1daba82sm1273441fa.0.2024.11.28.05.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 05:12:55 -0800 (PST)
Date: Thu, 28 Nov 2024 15:12:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jingyi Wang <quic_jingyw@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, quic_tengfan@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 2/4] arm64: defconfig: enable clock controller,
 interconnect and pinctrl for QCS8300
Message-ID: <evzdrhzrr242ynfv6p4qhtjpgd4allzgw3osxalmtyfxzsjj2h@vingsirpf5su>
References: <20241128-qcs8300_initial_dtsi-v3-0-26aa8a164914@quicinc.com>
 <20241128-qcs8300_initial_dtsi-v3-2-26aa8a164914@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241128-qcs8300_initial_dtsi-v3-2-26aa8a164914@quicinc.com>

On Thu, Nov 28, 2024 at 04:44:44PM +0800, Jingyi Wang wrote:
> Enable clock controller, interconnect and pinctrl for Qualcomm
> QCS8300 platform to boot to UART console.

... which is used on the ABC DEF board. The defconfig is being enabled
for everybody, so at least let them know which board increases the size
of the default kernel build.

> 
> The serial engine depends on gcc, interconnect and pinctrl. Since
> the serial console driver is only available as built-in, so these
> configs needs be built-in for the UART device to probe and register
> the console.
> 
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
> ---
>  arch/arm64/configs/defconfig | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index d13218d0c30f..3d9e48940c96 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -608,6 +608,7 @@ CONFIG_PINCTRL_MSM8996=y
>  CONFIG_PINCTRL_MSM8998=y
>  CONFIG_PINCTRL_QCM2290=y
>  CONFIG_PINCTRL_QCS404=y
> +CONFIG_PINCTRL_QCS8300=y
>  CONFIG_PINCTRL_QDF2XXX=y
>  CONFIG_PINCTRL_QDU1000=y
>  CONFIG_PINCTRL_SA8775P=y
> @@ -1327,6 +1328,7 @@ CONFIG_MSM_MMCC_8998=m
>  CONFIG_QCM_GCC_2290=y
>  CONFIG_QCM_DISPCC_2290=m
>  CONFIG_QCS_GCC_404=y
> +CONFIG_QCS_GCC_8300=y
>  CONFIG_SC_CAMCC_7280=m
>  CONFIG_QDU_GCC_1000=y
>  CONFIG_SC_CAMCC_8280XP=m
> @@ -1634,6 +1636,7 @@ CONFIG_INTERCONNECT_QCOM_MSM8996=y
>  CONFIG_INTERCONNECT_QCOM_OSM_L3=m
>  CONFIG_INTERCONNECT_QCOM_QCM2290=y
>  CONFIG_INTERCONNECT_QCOM_QCS404=m
> +CONFIG_INTERCONNECT_QCOM_QCS8300=y
>  CONFIG_INTERCONNECT_QCOM_QDU1000=y
>  CONFIG_INTERCONNECT_QCOM_SA8775P=y
>  CONFIG_INTERCONNECT_QCOM_SC7180=y
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

