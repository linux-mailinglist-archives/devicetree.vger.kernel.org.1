Return-Path: <devicetree+bounces-102288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B1E9763C5
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 10:00:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 183F12868BD
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 08:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86AEC18E37B;
	Thu, 12 Sep 2024 08:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uur9dmxa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B142F3E
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 08:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726128043; cv=none; b=jFqTDdY65smCypqpImDqwetkukbVCXet8qzocIJCNmClyGWL4wMlyzI1W/4sXnsgDeQUgZ10/3/gVos3xE1So9Y0AQNJAUu4IPNQ7kkc65PA02f1+4xneTi+sGFBdMBR0oWjfqH+kyTsk8DlmEbSmzO2xjwaOX0mJ86wODN4KPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726128043; c=relaxed/simple;
	bh=Q5Q4yukVQCdw40/7wDBQrcY2I6g4IYljJ4ajwKiCGUI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cwLIwEhwvO29PWMkPAv5DhNVJtUTpn4cF2Cp7nmIVOnHzowDJg6Ee+IHGY1+tuUY910NfGNkffRalz1B12efLvf8ihXxe1lOTJ57WAZE0A+Jpb/to9ou/iXxp6a6jcG5oI3LPGmFRrZSli/gD35x+JYTSgzBsgEyQD9URWtWlMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uur9dmxa; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5365a9574b6so957171e87.1
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 01:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726128039; x=1726732839; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5modn5x5ktb92R2/Sf1154fPo8VvDbqrTciHNWoobzQ=;
        b=uur9dmxaVg0gRv/o+ymERQqYV5YOmrNYWE1en4I2+1T1iv3CQeuci0jzJFh/4V1R7l
         DYn7c15uiTlQTgbqggYDu9k/g6hWrcqHul5fzg7i1kAIpxyfIlpm1g+g1tSkW/6aid87
         QGSU4n0reQDqf8w5rLKEt4HVyXi+VLf5ZjmHJpZfzIEYUjRvnQFgf/1JFPdFRWFds5u+
         qYsm8G83pePM/LWLEb92f6lYgYn6x5/TgXn9MW+LI1qzLOxOSN92MP5KWApl+P5oar8n
         epxYVedC2Kv+iuUV5a9QvAYs2B0cMKJTXwRgR80cUDk4h9EehuEZN1ICaKONfe0meBAT
         BuPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726128039; x=1726732839;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5modn5x5ktb92R2/Sf1154fPo8VvDbqrTciHNWoobzQ=;
        b=euIJ3Nl3t7TFp1RmH2F9YIPada2bdf0/GgMHCQSkl4sgTIGPfwTbwU5S46E6/id0ho
         nVhaIY21d+HGGjaIQ5CtiVBDMl/bEeHdSkrGu7YqB1CoohCWDmxh9ahPcw9HJUQoWn/4
         2Af+DP4Ar8hMbA+i6xlvzD1X3GjfLtlnSBI77LjC6evwdykG4UQ0HtO4Y1SVu6h76bF9
         wYUcswE0lfMMqD3NH0Ki4Vfd8Z+3M8Oyj3wW4SlKn3poWl+KePrp/FKyyKX8UQHQmRDS
         jW/ZVzZ8nHujplFlrrwpHWgXtghRrMsBdLtDFRyPdsRyvPnG3TKutxJB6V9kQACigkjB
         iK3w==
X-Forwarded-Encrypted: i=1; AJvYcCUS0mUblgdTdYuXFLOWEALlCGzp+jlPwQ9uTeW6fvSgvhU0vzJgF2Rkk1pl8cbuCJmipckE4Y6d8SQ8@vger.kernel.org
X-Gm-Message-State: AOJu0YxwC44bCl5kZQSw5LI3fbfLp6AAwsVsJt3fPK09/+0Gu4TEgL+T
	fbPy8z9SaOixIYULwvOoHw8CE6ktggRC8HK9mxhPF/tVFvueGaStohnEt7Tk9ek=
X-Google-Smtp-Source: AGHT+IHahBSHVXIeldwwf3pO17r+LD9jwU2Se1YwQ3QQIuNHAGAmDpStfbv4s0gMC389h59Yw6vybA==
X-Received: by 2002:a05:6512:3b22:b0:536:741a:6bc5 with SMTP id 2adb3069b0e04-53678fab49dmr1746967e87.12.1726128037823;
        Thu, 12 Sep 2024 01:00:37 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5365f8cb73esm1831653e87.174.2024.09.12.01.00.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 01:00:37 -0700 (PDT)
Date: Thu, 12 Sep 2024 11:00:35 +0300
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
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sa8775p: add display dt nodes
Message-ID: <kxxcjrqndc2qzmexn4mm4vmfugfo23y63aa6oyia3uiwpe3arr@sbvdni2f2hq2>
References: <20240912071437.1708969-1-quic_mahap@quicinc.com>
 <20240912071437.1708969-6-quic_mahap@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240912071437.1708969-6-quic_mahap@quicinc.com>

On Thu, Sep 12, 2024 at 12:44:37PM GMT, Mahadevan wrote:
> Add mdss and mdp DT nodes for SA8775P.
> 
> Signed-off-by: Mahadevan <quic_mahap@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 85 +++++++++++++++++++++++++++
>  1 file changed, 85 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 67ba124d20f8..d5d8e02fdb29 100644
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
> @@ -2937,6 +2938,90 @@ camcc: clock-controller@ade0000 {
>  			#power-domain-cells = <1>;
>  		};
>  
> +		mdss0: display-subsystem@ae00000 {

Is there going to be mdss1?

> +			compatible = "qcom,sa8775p-mdss";
> +			reg = <0x0 0x0ae00000 0x0 0x1000>;
> +			reg-names = "mdss";
> +
> +			/* same path used twice */
> +			interconnects = <&mmss_noc MASTER_MDP0 0 &mc_virt SLAVE_EBI1 0>,
> +					<&mmss_noc MASTER_MDP1 0 &mc_virt SLAVE_EBI1 0>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
> +			interconnect-names = "mdp0-mem",
> +					     "mdp1-mem",
> +					     "cpu-cfg";
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
> +					<&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					<&dispcc0 MDSS_DISP_CC_MDSS_MDP_LUT_CLK>,
> +					<&dispcc0 MDSS_DISP_CC_MDSS_MDP_CLK>,
> +					<&dispcc0 MDSS_DISP_CC_MDSS_VSYNC_CLK>;

Wrong indentation

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

