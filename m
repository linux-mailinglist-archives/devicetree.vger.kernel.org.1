Return-Path: <devicetree+bounces-109949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FDC998A46
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 16:50:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C1E43B29694
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 14:27:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 428D21CCB2D;
	Thu, 10 Oct 2024 14:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UDy+P/gm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C10B1CB510
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 14:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728570172; cv=none; b=VabHCe9ut2yoFQe9JJpRpKM8qyiO4YUlBUe1kOzwYzQiI+CE7C66bcTPIVfnXP1G0vQsduKX8KbiQD5uTaLSh9u/6yyyfkUyPus3CnkUeuA/cMJdrnPXA1KVzpZWvPT+tO5jHwgHfOYaWHRGDXJxNGXQE8RrMMliEBlbOtZzLhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728570172; c=relaxed/simple;
	bh=pc8gV4huGZDoUca8YffQfxAWHm148iLaPYTVWk1l2jA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YEh1MBCliQ6TX7ZgzwbPNDGTi9LOsOXSiXefnQD3DiT/Vcc5kdZry/htoebSHTuFJAXHLJ0IYSBVuL+cdVQvieQ24txTkLI/JuM8Yj2byO1ciNyWmp+i6TlE9IuDR9Z8wn2sZQU6lsCrW4b9/VU0PaGOpf0E8H9BUFEMOsfxGhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UDy+P/gm; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2facaa16826so9096241fa.0
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 07:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728570167; x=1729174967; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=T9AJcZVNqCADPxVrB/UoMC81RGbypBJxweSdqf11Fz4=;
        b=UDy+P/gmM3DlA9/uyy+ivLTEbKxgexXSBHV3yKb8r0nZjcOFsz0rj4jA+pAJAPskYD
         U3bOLH+N913gviSD0KOZXH9AnBISVxaKRs3daqwBRJLuZ+q4U9Dwo1sYTLkn1GMkQdtl
         B4ze5wsciOOLXMECnyNcqMBOLPHpi2+1zLPfyL7au3Dz4DOTK385WRAVPvQE34OLgizp
         Rr/LTUpUzCN5jzvPKdXgFvNAfG9y252bnc8yJYmlN10LMM69sCV+s7eBfmWoi2L4jtif
         5qmZNYK+sMvK1mFIVrGMA2FG4CzA/v/YlI/aCC51gHPy4GK7s+SBqDFIuKSLO2AxbFZN
         6nfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728570167; x=1729174967;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T9AJcZVNqCADPxVrB/UoMC81RGbypBJxweSdqf11Fz4=;
        b=sERvQU2gqXWjR9f1ZQoBtwGB9qOWje/uWKL42s5E/gyBBPtucshsTkWSJceWHQVmbL
         Di5hB/SZMB3PuHpPRga6IgNqlOOe+4JRaTHlQnM+hRSJBLB+QwigaRPyY7DjCqlP8hJi
         WauTu/KdHyJFkY4tbOy2fjeb/gj+rPph0Emdv8sP1G88gSJ9MRYLc4Ted9EPnsXRvzQH
         ifSbNjUBtf+WShvAPOtTXdv1XhcebDGmZC3p8AnMGpSuez4DvrRoyEVKJGKWMYeOu9t/
         26gqcsQgHezWZHqsf5sp6RR3cjFrFgoHEAjsbyYj04llvAIjg6ozLAfs0t6LimTIxL3r
         zq4w==
X-Forwarded-Encrypted: i=1; AJvYcCU5DrzaumG3NqEbHfREvpKhj1aEmrOOa6EgjWax6fKvQ7mGx//2/3r1DPs9zcLPjjyQbJPdxnUj4lXn@vger.kernel.org
X-Gm-Message-State: AOJu0YxbQXqQwBxd3sb81mXWn5mtTy6+EqlvePqf9/k2fxTB8ZKA3VoE
	Ts3BWngc9LICL9F6MXY7SKSXXw35u0vhscSANab3dJQ4UaqV28ZyiH06f3ZEyq4=
X-Google-Smtp-Source: AGHT+IF6rZ3MD8nH2vuXY8H2os5uX0/oGgjx49wYPUe6Dm++/RdT24HNnJYcg/TCT0rhnTNfVYjUEg==
X-Received: by 2002:a2e:b8c1:0:b0:2fa:fe0c:4967 with SMTP id 38308e7fff4ca-2fb1873e465mr41125211fa.20.1728570167037;
        Thu, 10 Oct 2024 07:22:47 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb2474c85esm2097331fa.115.2024.10.10.07.22.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 07:22:45 -0700 (PDT)
Date: Thu, 10 Oct 2024 17:22:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, quic_ppratap@quicinc.com, 
	quic_jackp@quicinc.com
Subject: Re: [PATCH 1/2] arm64: dts: qcom: Add support for usb nodes on
 QCS8300
Message-ID: <xwidjnw3fqc2slwl3vftw7yi4j7juiw6rwszjhtxepqd6zz33s@ncoi4aikbb4e>
References: <20241009195636.2649952-1-quic_kriskura@quicinc.com>
 <20241009195636.2649952-2-quic_kriskura@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241009195636.2649952-2-quic_kriskura@quicinc.com>

On Thu, Oct 10, 2024 at 01:26:35AM GMT, Krishna Kurapati wrote:
> Add support for USB controllers on QCS8300. The second
> controller is only High Speed capable.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 165 ++++++++++++++++++++++++++
>  1 file changed, 165 insertions(+)

[...]

> +
> +		usb_2: usb@a4f8800 {
> +			compatible = "qcom,qcs8300-dwc3", "qcom,dwc3";
> +			reg = <0x0 0x0a4f8800 0x0 0x400>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
> +			clocks = <&gcc GCC_CFG_NOC_USB2_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB20_MASTER_CLK>,
> +				 <&gcc GCC_AGGRE_USB2_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB20_SLEEP_CLK>,
> +				 <&gcc GCC_USB20_MOCK_UTMI_CLK>;
> +			clock-names = "cfg_noc",
> +				      "core",
> +				      "iface",
> +				      "sleep",
> +				      "mock_utmi";
> +
> +			assigned-clocks = <&gcc GCC_USB20_MOCK_UTMI_CLK>,
> +					  <&gcc GCC_USB20_MASTER_CLK>;
> +			assigned-clock-rates = <19200000>, <120000000>;
> +
> +			interrupts-extended = <&intc GIC_SPI 444 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&intc GIC_SPI 443 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&pdc 10 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 9 IRQ_TYPE_EDGE_BOTH>;
> +			interrupt-names = "pwr_event",
> +					  "hs_phy_irq",
> +					  "dp_hs_phy_irq",
> +					  "dm_hs_phy_irq";
> +
> +			power-domains = <&gcc GCC_USB20_PRIM_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;
> +
> +			resets = <&gcc GCC_USB20_PRIM_BCR>;
> +
> +			interconnects = <&aggre1_noc MASTER_USB2 0 &mc_virt SLAVE_EBI1 0>,
> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_USB2 0>;
> +			interconnect-names = "usb-ddr", "apps-usb";

As this is a USB2-only host, shouldn't it also have qcom,select-utmi-as-pipe-clk ?

> +
> +			status = "disabled";
> +
> +			usb_2_dwc3: usb@a400000 {
> +				compatible = "snps,dwc3";
> +				reg = <0x0 0x0a400000 0x0 0xe000>;
> +				interrupts = <GIC_SPI 442 IRQ_TYPE_LEVEL_HIGH>;
> +				iommus = <&apps_smmu 0x20 0x0>;
> +				phys = <&usb_2_hsphy>;
> +				phy-names = "usb2-phy";
> +				snps,dis_u2_susphy_quirk;
> +				snps,dis_enblslpm_quirk;
> +			};
> +		};
>  	};
>  
>  	arch_timer: timer {
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

