Return-Path: <devicetree+bounces-80418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EF252918E06
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 20:13:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B66D1F24554
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 18:13:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5570190480;
	Wed, 26 Jun 2024 18:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LO6etVeU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E12190477
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 18:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719425610; cv=none; b=XxbsYU9/j59j5Y6DbubQdDfeArhYprSzjGthimyYpSmqPK+INA3U722bjKQH7FRgVAm+8c+WmotcPOWRHHYQxgDEqw6ZqBC3anEVTsBSPFd83VgHvYjJ4GJaJQ5Y8u9rZAPZmsNVLPpdCQPg5CJK5oZxK7GllA56oV/P2vkzvrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719425610; c=relaxed/simple;
	bh=OmD93Q25ADpMFRu+xE36H+6K7ZcseHViUUMx1qwfFjE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e4o2OhxLmIGI8s3Lkfjy12qaqUpKTf5KrcgXh7DZo2oMQaiBgUOVRzX580txQsU+nZU4FqTlrrv5/2mj8Cmnt8dZ+L4+zN9rCUTi0w2hdKseklB0HMZtLpEun4ancynR+uUDol9YJKzLu7J7ZYtMN9QymIZPxxIohFl3AKR1PbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LO6etVeU; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52cd6784aa4so6473574e87.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 11:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719425607; x=1720030407; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=98WqR+TIhgNWb50xP723naTMSf8HssIbDDAOYEhWpZA=;
        b=LO6etVeUT7kyZnKY5RwPsbRe4LIgl/Rg/F1tC2Yo7x+0oF7ZeFZXqHyeWqTB2JDCkk
         wvIK83QojDSOulwXbD2pSEKfIweIG/HruEeGD6fTjPnGKBms9hB1wRd4ts50Xf0Il5uU
         W6AOWwneCjLSwXklpeGMU+ROOkWzggEcV8Bz9ghbsLQxwqAJ47lqr17RRzzDG3FH4eV1
         6NdfgJtOSjF04cQzQGfceovRHPy3J5kg72Uoh05rtqoNoFgDJFxOQLxRZpuK56ezRbW5
         xpStS7seYecOnWAy50BrzYF2ldkngWqUoSIXeMl/hsHxzzg0m/6OMN8bVCMPzFso6u9f
         ipvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719425607; x=1720030407;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=98WqR+TIhgNWb50xP723naTMSf8HssIbDDAOYEhWpZA=;
        b=mCll7FfglWe3H+0AEvcz6RjCyhz5RflUhohytg2gaIlPT/5rPpasoymyqM/0drQ8k4
         n9/tFCLSEeyWE7KRjbwQ7q/zaJaAiQQDsSxLrE51IzJnW2wK127PwdQ7X/YbS8q8Oh6y
         iPyvc5gvvASFiEsaQdyh7reJn9996Nhc2V6BkyaFJsk4xZhnij4vPPjtfUe5tzldsmSN
         +zuI/f6EjYT2apSOlJXKviEbUqWZJbk+a/IsIbUEDepznE+wwJMaESvr9adflUiwErf2
         k9x/wszRB7jPViIIqyqZRxcE6GLiBZRbsBrs39WDSyEqf1jc6jJMC8QqnWQxKFk9rRpz
         dzYg==
X-Forwarded-Encrypted: i=1; AJvYcCV/amoSU99oi2I2/GJ+MpV/MMbc4ISjHySldjD4xDRqJJgpIkb/JsSS2sio6CeqJA+/5bwqs3XcQnP9p5f0zu0SNuTSc+1HbkeAYw==
X-Gm-Message-State: AOJu0YxJysR/gj2s+lSzZ7k6KmtxdlIQS3CV8TmX/c51o38iD6+YST6e
	WZJqSQ4jfAtfVjOQUDqqNtcdR4dZlXNVlCbhCLnpIcs0fIfatCmg84OtYaODzsw=
X-Google-Smtp-Source: AGHT+IHb4sBoQRn1fFcD1XojJf4lKn8EBbJIOhFkvUcsAWULMwiAUT7Lh4FrjhFG7Z2wX/StRwYc0Q==
X-Received: by 2002:a05:6512:3b91:b0:52d:141:153c with SMTP id 2adb3069b0e04-52d014118a1mr3551111e87.59.1719425606462;
        Wed, 26 Jun 2024 11:13:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cd63b47b2sm1657580e87.50.2024.06.26.11.13.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 11:13:25 -0700 (PDT)
Date: Wed, 26 Jun 2024 21:13:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Devi Priya <quic_devipriy@quicinc.com>
Cc: andersson@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	konrad.dybcio@linaro.org, catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, geert+renesas@glider.be, neil.armstrong@linaro.org, 
	arnd@arndb.de, m.szyprowski@samsung.com, nfraprado@collabora.com, 
	u-kumar1@ti.com, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org
Subject: Re: [PATCH V5 6/7] arm64: dts: qcom: ipq9574: Add support for nsscc
 node
Message-ID: <imkcmkqocsyrykaetnl4arxzn5q3x6zavs3ivyaf7mtdai2czz@yplf3jjjpex5>
References: <20240626143302.810632-1-quic_devipriy@quicinc.com>
 <20240626143302.810632-7-quic_devipriy@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240626143302.810632-7-quic_devipriy@quicinc.com>

On Wed, Jun 26, 2024 at 08:03:01PM GMT, Devi Priya wrote:
> Add a node for the nss clock controller found on ipq9574 based devices.
> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  Changes in V5:
> 	- Dropped interconnects from nsscc node and added 
> 	  interconnect-cells to NSS clock provider so that it can be used
> 	  as icc provider.
> 
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 41 +++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 48dfafea46a7..b6f8800bf63c 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -11,6 +11,8 @@
>  #include <dt-bindings/interconnect/qcom,ipq9574.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/reset/qcom,ipq9574-gcc.h>
> +#include <dt-bindings/clock/qcom,ipq9574-nsscc.h>
> +#include <dt-bindings/reset/qcom,ipq9574-nsscc.h>
>  #include <dt-bindings/thermal/thermal.h>
>  
>  / {
> @@ -19,6 +21,24 @@ / {
>  	#size-cells = <2>;
>  
>  	clocks {
> +		bias_pll_cc_clk: bias-pll-cc-clk {
> +			compatible = "fixed-clock";
> +			clock-frequency = <1200000000>;
> +			#clock-cells = <0>;
> +		};
> +
> +		bias_pll_nss_noc_clk: bias-pll-nss-noc-clk {
> +			compatible = "fixed-clock";
> +			clock-frequency = <461500000>;
> +			#clock-cells = <0>;
> +		};
> +
> +		bias_pll_ubi_nc_clk: bias-pll-ubi-nc-clk {
> +			compatible = "fixed-clock";
> +			clock-frequency = <353000000>;
> +			#clock-cells = <0>;
> +		};

What is the source for these clocks? Is it really an on-board crystal?

> +
>  		sleep_clk: sleep-clk {
>  			compatible = "fixed-clock";
>  			#clock-cells = <0>;
d

-- 
With best wishes
Dmitry

