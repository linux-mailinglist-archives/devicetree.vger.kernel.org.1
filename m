Return-Path: <devicetree+bounces-116583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5080A9B3518
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 16:39:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D45D11F219FC
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 15:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C45D01DE4C8;
	Mon, 28 Oct 2024 15:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X+mzZXHc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BB51DE3C7
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 15:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730129978; cv=none; b=rvCTWyAGg/8fI/9alYeRtay+P60h3c0Iw1ozBmq8SuzwjCwM/OEgVEIPa3wBirJBO/ypi/HmgGaJFXInxceZLhPPUNVoQ14q5c3JajkIwfm6ES0RZrmOC961iZIV8mj7hLWhr04OAerF1LVTw9PfBuW34jxCoS4ifOt+JFd4zf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730129978; c=relaxed/simple;
	bh=5Zl9G4AszNflo7us4pbB6lyR2ecBGbMh9TGpu/QHrCU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nq5mSXtmIM06fE/Oa2NloFSa0c/Z0+xsmf4htSKofU4wueO8429SxLkDRmO4YMoEgIwcBnZ01WUdG3zFDW8AMCo/MLOVah5KpJi64qYiQ+YFqRonOngV/a88TNirc/5fVUmJwq5f52JJugLHXiEg/MAw17IED6n/HgSDGV48qxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X+mzZXHc; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539f2b95775so5166020e87.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 08:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730129973; x=1730734773; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=W1txbax2anf/FU/2wUye/OvBFVJa+xv11X9TALtaA18=;
        b=X+mzZXHc8QcgLWRuP8j6ouMCxaCeIPPwqbAjsBCj4XxuWqRClRHXJZW7F8MSp6Drxa
         w8OFdxnrEhL3uWtug/n1cyVhQ/8QB+r5476UkLd9np2wyThqdS/7eAP06mA/FFZrqNEl
         Fp6XRnOYYT7vhBsUmp8U9j1/uB5pXenhRy9bN9pnALgRy6z3/YCxdqC7upg0odVQT6NZ
         FMGDeU+Y+Q/h29Tn7qoA4RorltpbKOiXDU+rzlYqmCXr7PV8jipKrCPXX24bi5n681uB
         xL3luonI1LDbCTX0UotQZrC07HHo0pGIwqyMB2cW5KXsqo8bhvSojuNvaonQ8xEh/pwE
         B+yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730129973; x=1730734773;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W1txbax2anf/FU/2wUye/OvBFVJa+xv11X9TALtaA18=;
        b=HfqhuvdWwWVp/AeC9/Z1FbWTlGuIQiqWKc8NR8eUdc+SS4jaaLQtOhdjxqtLqgQDIi
         q5MtkQHJSECQVA+kmp6vAI7Y+hIdr3u5r3L7N2FZQlykLDrtmQBd6pH4wB0MupMPLP8Z
         sarhLIKL+URolmWCbXAV4UozI1hgQ1U8xmUbpoBnrZdVRBgP3Wqqr9nXaWVNMQ5tUaFz
         mXQ7vBZTfdzyV7AztYRdflrxemMF9NP7wUcZwonsiX1F0uJYvE8h88e79EPH2vCwqXIF
         eKhlgJjYU2F60A4XN9fhVMnjpKa7Y4WlLxIrbOQGBPDZ/qsvW+RCM7UKgFuN1gl7VFm5
         djAw==
X-Forwarded-Encrypted: i=1; AJvYcCXvPlibCx6dm5JeKZzqPy2tlmlU2GCMi4XhLVmvTNdpvP/anY3O+LeWrbCfyR4Q8G74iYf2zEkoCiLl@vger.kernel.org
X-Gm-Message-State: AOJu0YyMPh3CpjSls/1kzXjfs9k4b6HCUuo3xNv/lDNnaW30nnpBa5eZ
	wGvmeG88qy2qvnjSDvGgfnM+Q/+WIojTlp967EbgR4Mdp4M4icIE4y3Rc7JEJVs=
X-Google-Smtp-Source: AGHT+IHyyRIHr8OLjFlezCBWy1i7uaYCwcnuB6xG6+YWBdjYuluL2KW9ciORdLVKXl6EVMW5IHAxGA==
X-Received: by 2002:a05:6512:3049:b0:53b:1fc6:3d18 with SMTP id 2adb3069b0e04-53b348da845mr5494533e87.26.1730129972972;
        Mon, 28 Oct 2024 08:39:32 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e10a52fsm1092723e87.27.2024.10.28.08.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 08:39:31 -0700 (PDT)
Date: Mon, 28 Oct 2024 17:39:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luo Jie <quic_luoj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, quic_kkumarcs@quicinc.com, quic_suruchia@quicinc.com, 
	quic_pavir@quicinc.com, quic_linchen@quicinc.com, quic_leiwei@quicinc.com, 
	bartosz.golaszewski@linaro.org, srinivas.kandagatla@linaro.org
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: Add CMN PLL node for IPQ9574 SoC
Message-ID: <crcbzpxjnbceilqccbwr7uyak6z6zdwr7mhfcyaw6vvpcce6ko@zrojbtqi4st4>
References: <20241028-qcom_ipq_cmnpll-v5-0-339994b0388d@quicinc.com>
 <20241028-qcom_ipq_cmnpll-v5-4-339994b0388d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241028-qcom_ipq_cmnpll-v5-4-339994b0388d@quicinc.com>

On Mon, Oct 28, 2024 at 10:04:11PM +0800, Luo Jie wrote:
> The CMN PLL clock controller allows selection of an input clock rate
> from a defined set of input clock rates. It in-turn supplies fixed
> rate output clocks to the hardware blocks that provide the ethernet
> functions such as PPE (Packet Process Engine) and connected switch or
> PHY, and to GCC.
> 
> The reference clock of CMN PLL is routed from XO to the CMN PLL through
> the internal WiFi block.
> .XO (48 MHZ or 96 MHZ)-->WiFi (multiplier/divider)-->48 MHZ to CMN PLL.
> 
> The reference input clock from WiFi to CMN PLL is fully controlled by
> the bootstrap pins which select the XO frequency (48 MHZ or 96 MHZ).
> Based on this frequency, the divider in the internal Wi-Fi block is
> automatically configured by hardware (1 for 48 MHZ, 2 for 96 MHZ), to
> ensure output clock to CMN PLL is 48 MHZ.
> 
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi | 16 ++++++++++++++-
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi            | 26 +++++++++++++++++++++++-
>  2 files changed, 40 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> index 91e104b0f865..f026c2a9d0c0 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> @@ -3,7 +3,7 @@
>   * IPQ9574 RDP board common device tree source
>   *
>   * Copyright (c) 2020-2021 The Linux Foundation. All rights reserved.
> - * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) 2023-2024, Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>  
>  /dts-v1/;
> @@ -164,6 +164,20 @@ &usb3 {
>  	status = "okay";
>  };
>  
> +/*
> + * The bootstrap pins for the board select the XO clock frequency,
> + * which automatically enables the right dividers to ensure the
> + * reference clock output to CMNPLL is 48 MHZ.
> + */
> +&cmn_pll_ref_clk {
> +	clock-div = <1>;
> +	clock-mult = <1>;
> +};
> +
>  &xo_board_clk {
>  	clock-frequency = <24000000>;
>  };
> +
> +&xo_clk {
> +	clock-frequency = <48000000>;
> +};
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 14c7b3a78442..ad9cdb1f76db 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -3,10 +3,11 @@
>   * IPQ9574 SoC device tree source
>   *
>   * Copyright (c) 2020-2021 The Linux Foundation. All rights reserved.
> - * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) 2023-2024, Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>  
>  #include <dt-bindings/clock/qcom,apss-ipq.h>
> +#include <dt-bindings/clock/qcom,ipq-cmn-pll.h>
>  #include <dt-bindings/clock/qcom,ipq9574-gcc.h>
>  #include <dt-bindings/interconnect/qcom,ipq9574.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> @@ -19,6 +20,12 @@ / {
>  	#size-cells = <2>;
>  
>  	clocks {
> +		cmn_pll_ref_clk: cmn-pll-ref-clk {
> +			compatible = "fixed-factor-clock";
> +			clocks = <&xo_clk>;
> +			#clock-cells = <0>;
> +		};
> +
>  		sleep_clk: sleep-clk {
>  			compatible = "fixed-clock";
>  			#clock-cells = <0>;
> @@ -28,6 +35,11 @@ xo_board_clk: xo-board-clk {
>  			compatible = "fixed-clock";
>  			#clock-cells = <0>;
>  		};
> +
> +		xo_clk: xo-clk {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +		};

What is the difference between xo_clk and xo_board_clk? Are there two
different crystals?

>  	};
>  
>  	cpus {

-- 
With best wishes
Dmitry

