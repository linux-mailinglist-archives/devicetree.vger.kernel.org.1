Return-Path: <devicetree+bounces-71403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B58158D6A2E
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 21:55:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3993F1F24DAA
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 19:55:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27ED017B51D;
	Fri, 31 May 2024 19:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EGRRAnyn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B5E7F7CA
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 19:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717185334; cv=none; b=hM7dwX8jkCi7t78lSYsmnM4jNu4HUFAlZWNCQrGrZS53kq4GcYVH75NB0KTlzh7APnuptX37Xvrvb3PJyPUqSuiiJjasQ4iZdmH7hzBFzQLzpp/e1c98pCbt0EgWgs357pkR7nq2JeCRdaSL2UOxaB4l6rxAgj39bYY3P0d1DgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717185334; c=relaxed/simple;
	bh=X+W2TzIrXrsijhv99v8qX9im0q8qFS0iVU1HH5EZ9Uk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W0HWdAq1l+Bf6vpmENlQZZbHplB/ESRrY+gLg0JxnrO3mAWgIL6MOIQfPZsy0ZSQDYfr4RnGpqFnJ7wGGQs20CXPVhE3DfCgAhwj7DlAWeSiR5rIHEBMPnj5Ftz1nLxqbuWM7Bz1zvJUjnDNklpWRQENJQzXG/HoGilABJVuh8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EGRRAnyn; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52b82d57963so2033523e87.2
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 12:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717185330; x=1717790130; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vDm4GFL7/RAcoZja5ASG+bsrJl52LSpMWwgkVjK9dlM=;
        b=EGRRAnynOKkNqHNuGaIXlZ2RqwvsBMz4FFULoHaXJYkcAXflVNCvgNRutYEjQyiZxB
         yDpDVSDZfOw1Fo25oWpvDHQaPaxqw52LxEueF6duovh5esxJ5Qp5lN37waX/vfCVzaoo
         trIqiKKc9aQ+p0BGAnCNwHnJeeLrdou7YQ8ZfFZdo4rBfehQFsBXp4V4PiAF7WfPaOj3
         8YANCjs/KgSUrFb/rQx65oFmNHziHXi3xn4nUam57Cz44KNFBQtpP0U6QA5lzmPWAgTg
         +3S59BNY/riJhiGrRoWN1bxJBbajcMpZoGykZD6EXp/zMFXceTmyaZxNQ0S7CZXyExBS
         IM7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717185330; x=1717790130;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vDm4GFL7/RAcoZja5ASG+bsrJl52LSpMWwgkVjK9dlM=;
        b=lmcSCkBZRzSYKg1HKPJxIb1evezHjR9SeEC6HnnhK/W9G53LBqgMjiy5Pz4Usx/VJM
         YlBn1BhRlTRY+C5Fu6gOgsvH2LBtxN7hzHlCNAFiDDI0+9c8Q5cThP+7HcsRxbPRaq/a
         qnlNawWN1ydwFU8kzdz8QA12sjruS+CqXhyzfxnkQ4ipHfZI6UUarhGnvHqm2aNprixA
         fK3ik4AdzwMRnVnQ/rJZv/lsn1zrKtXrpRDIHIQyazJ71B2/2XltTL3sF9Ju8of/h04L
         wKXSmI/yDUgMmvU9aVPPw+usLDRVwy6bMIXQMTay+MtGES3vT3sAzqqYXwG2GjurhoMm
         bC9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVInHFYap0lMx5kbHRW10HOQQ8wYUNzIWfft9zQMm7cRcaDaYoPWaBRYzpMqtucEJ7GqHj+CNhiRoXRpatavvqVsybY9pNvzboSdw==
X-Gm-Message-State: AOJu0YyMIkeMSkUdMuTwFPhqAH8YIi5i85WbfD0haqjFeniOL5ryN7MZ
	3VYBDAbfJd9LvASJZ5q8wie6QE9COsMmRimsyTjLXsrcKC7M3UORy/podG5KjbQ=
X-Google-Smtp-Source: AGHT+IHXtouAwX7+XSqiud/KH4Qt8bdHoyhHs20i1HvALR/kGNz0/Jitv9ceS0LX3AcIuCNwRck8pg==
X-Received: by 2002:ac2:46f1:0:b0:52b:7c7e:303 with SMTP id 2adb3069b0e04-52b896da828mr1585439e87.49.1717185330369;
        Fri, 31 May 2024 12:55:30 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d89743sm426201e87.263.2024.05.31.12.55.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 12:55:30 -0700 (PDT)
Date: Fri, 31 May 2024 22:55:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Sibi Sankar <quic_sibis@quicinc.com>, 
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100: Make the PCIe 6a PHY
 support 4 lanes mode
Message-ID: <myy42ljw4wz4kwxonio5lktlq52uuqmshhg7bql5raau4kh7ol@6w72pm5k2pzm>
References: <20240531-x1e80100-dts-fixes-pcie6a-v1-0-1573ebcae1e8@linaro.org>
 <20240531-x1e80100-dts-fixes-pcie6a-v1-2-1573ebcae1e8@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240531-x1e80100-dts-fixes-pcie6a-v1-2-1573ebcae1e8@linaro.org>

On Fri, May 31, 2024 at 08:00:32PM +0300, Abel Vesa wrote:
> So the PCIe 6 can be configured in 4-lane mode or 2-lane mode. For
> 4-lane mode, it fetches the lanes provided by PCIe 6b. For 2-lane mode,
> PCIe 6a uses 2 lanes and then PCIe 6b uses the other 2 lanes. Configure
> it in 4-lane mode and then each board can configure it depending on the
> design. Both the QCP and CRD boards, currently upstream, use the 6a for
> NVMe in 4-lane mode. Also, mark the controller as 4-lane as well.
> 
> Fixes: 5eb83fc10289 ("arm64: dts: qcom: x1e80100: Add PCIe nodes")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index fe7ca2a73f9d..17e4c5cda22d 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -2838,7 +2838,7 @@ pcie6a: pci@1bf8000 {
>  			dma-coherent;
>  
>  			linux,pci-domain = <7>;
> -			num-lanes = <2>;
> +			num-lanes = <4>;
>  
>  			interrupts = <GIC_SPI 773 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 774 IRQ_TYPE_LEVEL_HIGH>,
> @@ -2903,19 +2903,21 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>  		};
>  
>  		pcie6a_phy: phy@1bfc000 {
> -			compatible = "qcom,x1e80100-qmp-gen4x2-pcie-phy";
> -			reg = <0 0x01bfc000 0 0x2000>;
> +			compatible = "qcom,x1e80100-qmp-gen4x4-pcie-phy";
> +			reg = <0 0x01bfc000 0 0x2000>,
> +			      <0 0x01bfe000 0 0x2000>;
>  
>  			clocks = <&gcc GCC_PCIE_6A_PHY_AUX_CLK>,
>  				 <&gcc GCC_PCIE_6A_CFG_AHB_CLK>,
>  				 <&rpmhcc RPMH_CXO_CLK>,
>  				 <&gcc GCC_PCIE_6A_PHY_RCHNG_CLK>,
> -				 <&gcc GCC_PCIE_6A_PIPE_CLK>;
> +				 <&gcc GCC_PCIE_6A_PIPEDIV2_CLK>;
>  			clock-names = "aux",
>  				      "cfg_ahb",
>  				      "ref",
>  				      "rchng",
> -				      "pipe";
> +				      "pipe",
> +				      "pipediv2";

I see 5 clocks and 6 clock-names here.

>  
>  			resets = <&gcc GCC_PCIE_6A_PHY_BCR>,
>  				 <&gcc GCC_PCIE_6A_NOCSR_COM_PHY_BCR>;
> @@ -2927,6 +2929,8 @@ pcie6a_phy: phy@1bfc000 {
>  
>  			power-domains = <&gcc GCC_PCIE_6_PHY_GDSC>;
>  
> +			qcom,4ln-config-sel = <&tcsr 0x1a000 0>;
> +
>  			#clock-cells = <0>;
>  			clock-output-names = "pcie6a_pipe_clk";
>  
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

