Return-Path: <devicetree+bounces-105619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5569498743F
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 15:12:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4F811C21663
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 13:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFF6D27733;
	Thu, 26 Sep 2024 13:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I8ZmRUY9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E468DEAD5
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 13:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727356338; cv=none; b=YbQidNZqI90ttTcrMTeXV2/5QxBT8Gr5K80qdtN81xeP0ERJjQl/qpm4sPYe+x4SVpx20C9yKiovoLgzXq3ydstWKie1vuf0NF09bV/IrrK+/+hcX9TmJx/UPwWGA+KaIeWrcMeSS8y+oCR66sgyc+nNGKTc2hmOMibn4JesZOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727356338; c=relaxed/simple;
	bh=olYrCsbi/wSziH0EE5DB3RMwDthW3ZKLc8++5NEfxEk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pmdqinK9R3v23eoRJ941FPr2lHAxCoq3AMQ2n+wz1gzZ6mpAo5bl7j/rJnihJrFYS6652FNtdwL58w8z2UDfljhuOCbdU5X6ZMzIqZEoVD7JiV2Tu6cs9VdbpWaDXJ69cCxOg1LHg9ivMjlqlO2BLcoIL10CYv278FEHtr+gZKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I8ZmRUY9; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2f77be8ffecso10940991fa.1
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 06:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727356335; x=1727961135; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nKriAI4eZkRaHODPjuZ+jj+F+rk5iOr07UhYYqdkBLg=;
        b=I8ZmRUY9XXgrIe/hhq2E7TPAF+jMeSjLU+rLMDZX8t2hdaT/iM/D25C5roi/Dkycx8
         0GwaDjD3XoVTvmPae0dRk6Q1gsr95xpuILXBJDqchOX2gIDcBjAC4W0i4b1DamzU/xbO
         reuL9AFhacVCEKC/TEOlR3CmYE23x7S0zvLfhZVNuWPRb1Ld7Rz+S+v3UFuw4NKEMcCi
         +tUAcZ7O/HmTfiXawetPzhi/4zr0MKh0iR0A00KzXvRg/v/3Og972krkCYNTyISRLJc2
         1otuqMX9YCC3SuMttc0C5BnGIXaVJvUUQEBbHbDXnEsOuEX7ftUmYBommOzwlJIKwaRZ
         sDng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727356335; x=1727961135;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nKriAI4eZkRaHODPjuZ+jj+F+rk5iOr07UhYYqdkBLg=;
        b=cRLuaqiQ58lF4U+WOzMhy/iW9q09KDEwxDSjHbytyOzgG+EG8A3SsIYgidxdvVS8zr
         QJSLQjZkCwLwJY2bJ+Y+twKZeRsV9t/Q59Z5GS0/uazLX5ccK68B47xw+5NRnZhWtUKE
         3LFTzHhIvTMxwCnvVsJVk0TFQOZqvKLViMh7yE1iY2y2n/6TIawAaI63de6k0wazrxvI
         KKI7b0Bxro2YerpMOPwJ7W7iqAIPG+Z+XoyT7TFXgWA/ALaK46RHT4p1M5yYZ0xqcPtN
         OyoVo+0n92MwFULw7HCMFR7cf+v+toQiWeycn2kxZjO8MvhOuA3H8d6DhaXsYFBjxg9d
         b7GQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3USeMZwh1sXkUO87k8ofjM1j1nbPr6fPn+JNx6OlR+ienmRjdqJuN+sqktDraoI+a4TNjVSceDZ+j@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/WpyaRFNMse8h6NaFvGxc2AmxNHmcST5BOZyDJcG05hxEZTXU
	xT8kjn6U0BBoxReLhiZEXkkS8yiG2kNZIi8Mdmdbtq6yy13fxYZy4OvIzG0I2MA=
X-Google-Smtp-Source: AGHT+IEdvfytwo17gCgvymeEaRhz2m8Z7wR8D5FYIwCXKva9/v1xhvvhMLWRmcQBnqRRYBVmBQbL8g==
X-Received: by 2002:a05:651c:50f:b0:2f6:62c3:4e0e with SMTP id 38308e7fff4ca-2f914ac3ff9mr40894901fa.6.1727356334934;
        Thu, 26 Sep 2024 06:12:14 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f8d289b54bsm7832621fa.109.2024.09.26.06.12.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Sep 2024 06:12:13 -0700 (PDT)
Date: Thu, 26 Sep 2024 16:12:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Mahadevan <quic_mahap@quicinc.com>
Cc: robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, swboyd@chromium.org, 
	konrad.dybcio@linaro.org, danila@jiaxyga.com, bigfoot@classfun.cn, 
	neil.armstrong@linaro.org, mailingradian@gmail.com, quic_jesszhan@quicinc.com, 
	andersson@kernel.org, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_kalyant@quicinc.com, quic_jmadiset@quicinc.com, quic_vpolimer@quicinc.com
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: sa8775p: add display dt nodes
Message-ID: <hyhsyl43xurr25ws2blejxbyae47a73f77hnjmjql3jwcpocvk@565kpktxs2fi>
References: <20240926110137.2200158-1-quic_mahap@quicinc.com>
 <20240926110137.2200158-6-quic_mahap@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240926110137.2200158-6-quic_mahap@quicinc.com>

On Thu, Sep 26, 2024 at 04:31:37PM GMT, Mahadevan wrote:
> Add mdss0 and mdp devicetree nodes for sa8775p target.
> 
> Signed-off-by: Mahadevan <quic_mahap@quicinc.com>
> 
> ---
> 
> This patch depends on the clock enablement change:
> https://lore.kernel.org/all/20240816-sa8775p-mm-v3-v1-0-77d53c3c0cef@quicinc.com/
> 
> ---
> 
> [v2]
> - Update commit message mentioning enablement of mdss0 only is done. [Dmitry]

It doesn't

> - Add resets node and fix indentation. [Dmitry]
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 87 +++++++++++++++++++++++++++
>  1 file changed, 87 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 93be4683a31f..27ab1921c1f3 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -6,6 +6,7 @@
>  #include <dt-bindings/interconnect/qcom,icc.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
> +#include <dt-bindings/clock/qcom,sa8775p-dispcc.h>
>  #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
>  #include <dt-bindings/clock/qcom,sa8775p-gpucc.h>
>  #include <dt-bindings/interconnect/qcom,sa8775p-rpmh.h>
> @@ -2937,6 +2938,92 @@ camcc: clock-controller@ade0000 {
>  			#power-domain-cells = <1>;
>  		};
> 
> +		mdss0: display-subsystem@ae00000 {
> +			compatible = "qcom,sa8775p-mdss";
> +			reg = <0x0 0x0ae00000 0x0 0x1000>;
> +			reg-names = "mdss";
> +
> +			/* same path used twice */
> +			interconnects = <&mmss_noc MASTER_MDP0 0 &mc_virt SLAVE_EBI1 0>,
> +					<&mmss_noc MASTER_MDP1 0 &mc_virt SLAVE_EBI1 0>,

QCOM_ICC_TAG_ACTIVE_ONLY ?

> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
> +			interconnect-names = "mdp0-mem",
> +					     "mdp1-mem",
> +					     "cpu-cfg";
> +
> +			resets = <&dispcc0 MDSS_DISP_CC_MDSS_CORE_BCR>;
> +
> +			power-domains = <&dispcc0 MDSS_DISP_CC_MDSS_CORE_GDSC>;
> +
> +			clocks = <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +				 <&gcc GCC_DISP_HF_AXI_CLK>,
> +				 <&dispcc0 MDSS_DISP_CC_MDSS_MDP_CLK>;
> +
> +			interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-controller;
> +			#interrupt-cells = <1>;
> +
> +			iommus = <&apps_smmu 0x1000 0x402>;
> +
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
> +			status = "disabled";
> +
> +			mdss0_mdp: display-controller@ae01000 {
> +				compatible = "qcom,sa8775p-dpu";
> +				reg = <0x0 0x0ae01000 0x0 0x8f000>,
> +				      <0x0 0x0aeb0000 0x0 0x2008>;
> +				reg-names = "mdp", "vbif";
> +
> +				clocks = <&gcc GCC_DISP_HF_AXI_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_MDP_LUT_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_MDP_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_VSYNC_CLK>;
> +				clock-names = "bus",
> +					      "iface",
> +					      "lut",
> +					      "core",
> +					      "vsync";
> +
> +				assigned-clocks = <&dispcc0 MDSS_DISP_CC_MDSS_VSYNC_CLK>;
> +				assigned-clock-rates = <19200000>;
> +
> +				operating-points-v2 = <&mdss0_mdp_opp_table>;
> +				power-domains = <&rpmhpd RPMHPD_MMCX>;
> +
> +				interrupt-parent = <&mdss0>;
> +				interrupts = <0>;
> +
> +				mdss0_mdp_opp_table: opp-table {
> +					compatible = "operating-points-v2";
> +
> +					opp-375000000 {
> +						opp-hz = /bits/ 64 <375000000>;
> +						required-opps = <&rpmhpd_opp_svs_l1>;
> +					};
> +
> +					opp-500000000 {
> +						opp-hz = /bits/ 64 <500000000>;
> +						required-opps = <&rpmhpd_opp_nom>;
> +					};
> +
> +					opp-575000000 {
> +						opp-hz = /bits/ 64 <575000000>;
> +						required-opps = <&rpmhpd_opp_turbo>;
> +					};
> +
> +					opp-650000000 {
> +						opp-hz = /bits/ 64 <650000000>;
> +						required-opps = <&rpmhpd_opp_turbo_l1>;
> +					};
> +				};
> +			};
> +		};
> +
>  		dispcc0: clock-controller@af00000 {
>  			compatible = "qcom,sa8775p-dispcc0";
>  			reg = <0x0 0x0af00000 0x0 0x20000>;
> --
> 2.34.1
> 

-- 
With best wishes
Dmitry

