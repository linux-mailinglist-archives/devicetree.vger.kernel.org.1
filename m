Return-Path: <devicetree+bounces-121878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D2B9C8983
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 13:07:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86E82281B8B
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 12:07:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F4151F9ABF;
	Thu, 14 Nov 2024 12:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="neEWCY0I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BB21F8EEE
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 12:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731586050; cv=none; b=S29P4NoxGChZrGO83FUZBKfmGNxy92KeGA0Ib4V9T0j/1Sle/5VVWJrqhWLuwNQi4WMQ4Y+EfokpI3FgsS/+6Y+85qu7z0E2CTjeWG4VdxFw7C33GgvCGexI39qpZIqn2H9NffR5V9bc7ZLx4pMLkeMj7zOblQZsSnjyma3hUsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731586050; c=relaxed/simple;
	bh=ybE2Vm3Ul0YfyxoQcc0nTLxCP9A+g9Fq7ap8qIS5mp8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=owVTpn8a6BhejEeKVhv2+ZN1g9JzNGpPiWPHr2+ot0Mte2rxsT4cCflHDKEOKcrmj++qrKDhrP/uxtvWwq3lKQmTtddLZkBRTWd5gw+i8pw1joBHOvZEhm/Jjo5sOD0VtMe+XamLJlHtOs2L7Gyb12IZxkIl4OA8av6bTC05EQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=neEWCY0I; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-539fb49c64aso781998e87.0
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 04:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731586044; x=1732190844; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uY73lnBxf9AAvGyaOgeZigladmCevpD/jSTKQAcfeVU=;
        b=neEWCY0IUUnX31O/KnCvHprvt3i0igGKI2hO7CTSAX/d3SEQ30M0Gw06VDZJgLlIxg
         QMATdj5z6mmDjH81oTmjUweRMbZDK5bTnZTabrAe/AXWfkmj8V+1Ts6F0NxfzuAb1aij
         4kdkrv+cEzWdcS7ch4bZRvs+VESn1T9L78g4eyP6Aml45u0VFd7Jq5fXGgUY0PZ2LsgS
         D40ralovxcy4Zo75itMSoiDvC3Hm8fdWT6yPEEocG5cpXMpwIx0fP1cqKA0juyrPGrbR
         hblK+R0Ldx2Z6kKbNKqot0dkSHNUcegOxKcidsS+m72B28jGPKfvp2M2UG2E0IVzZHdd
         HAcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731586044; x=1732190844;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uY73lnBxf9AAvGyaOgeZigladmCevpD/jSTKQAcfeVU=;
        b=hZZTlnuXqDlj8ciy8DEBgyztK7U2A+uxKQ4BSMbLwuCAQbDZjA4TFH0OtaIMf2WYRQ
         9K3HOBHq3tDtN03WuA3CH5Rq1c3UY0FEnGOAaHnDN8TFWzaDl9e1KI8/iXTQJ6mW1/9I
         VuGS/JoN9NVEHc4gF6O5hytHe6bolFGjqzK3HAp6HEeeK+eco9hLPjgG7oufjjeB3oVm
         zlzf9uvAVpFXgWM0dOTqwr+q2UNQTMWnqFjXry7erEwC6f3fhaziiAIlK1nd2ZO2fGjK
         5KaK6jm27P0cS71VoZXBV7EFPp2CWQxXjq2Np7pbH9kRadRsXSx5YgaZRmiBc0Zom0Ms
         BlfA==
X-Forwarded-Encrypted: i=1; AJvYcCXl54L+3uHvV9CK7qDnCyyg4dHBDUEVlRDCgFQgGoLtTqIrmsWAhJ6AwsBItX5VKuwxsvqwOXjhdnRK@vger.kernel.org
X-Gm-Message-State: AOJu0Yx64eGUfWLkA3ODJUniXvBu3rNYBLSy9MCrPvY22EfN2YIHcZGw
	O/3W/xC2YRHQpIFNG8G7+PcSW9RbL+Tassod8P8cS88A3v8+JEAjKfOuEoJuoWM=
X-Google-Smtp-Source: AGHT+IH/JTUQEaNDZDc8WC1feqnb3GyvPSamQUrpsQIAYrLesWb0nl0adSLb8ahd/mCbCnLvRsGOTA==
X-Received: by 2002:a05:6512:2243:b0:53d:a025:1142 with SMTP id 2adb3069b0e04-53da5c86530mr1553420e87.54.1731586044053;
        Thu, 14 Nov 2024 04:07:24 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da6548e9bsm161597e87.262.2024.11.14.04.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 04:07:23 -0800 (PST)
Date: Thu, 14 Nov 2024 14:07:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com, quic_abhinavk@quicinc.com
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: sa8775p: add DisplayPort device
 nodes
Message-ID: <pcubmgfl2afe5qt5jkvmym5j7o2qabablaqckviu4buneph745@b3s574jztqcb>
References: <20241114095500.18616-1-quic_mukhopad@quicinc.com>
 <20241114095500.18616-2-quic_mukhopad@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241114095500.18616-2-quic_mukhopad@quicinc.com>

On Thu, Nov 14, 2024 at 03:24:59PM +0530, Soutrik Mukhopadhyay wrote:
> Add device tree nodes for the DPTX0 and DPTX1 controllers
> with their corresponding PHYs found on Qualcomm SA8775P SoC.
> 
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>

This most likely wasn't validated against DT schema. Please don't send
unvalidated DT patches.

> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 216 +++++++++++++++++++++++++-
>  1 file changed, 215 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index f7a9d1684a79..b272feae8da1 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -3343,6 +3343,25 @@
>  				interrupt-parent = <&mdss0>;
>  				interrupts = <0>;
>  
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +						dpu_intf0_out: endpoint {
> +							remote-endpoint = <&mdss0_dp0_in>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +						dpu_intf4_out: endpoint {
> +							remote-endpoint = <&mdss0_dp1_in>;
> +						};
> +					};
> +				};
> +
>  				mdss0_mdp_opp_table: opp-table {
>  					compatible = "operating-points-v2";
>  
> @@ -3367,6 +3386,200 @@
>  					};
>  				};
>  			};
> +
> +			mdss0_dp0_phy: phy@aec2a00 {
> +				compatible = "qcom,sa8775p-edp-phy";
> +
> +				reg = <0x0 0xaec2a00 0x0 0x200>,
> +				      <0x0 0xaec2200 0x0 0xd0>,
> +				      <0x0 0xaec2600 0x0 0xd0>,
> +				      <0x0 0xaec2000 0x0 0x1c8>;
> +
> +				clocks =<&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
> +					<&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>;
> +				clock-names = "aux",
> +					      "cfg_ahb";
> +
> +				#clock-cells = <1>;
> +				#phy-cells = <0>;
> +
> +				status = "disabled";
> +			};
> +
> +			mdss0_dp1_phy: phy@aec5a00 {
> +				compatible = "qcom,sa8775p-edp-phy";
> +
> +				reg = <0x0 0xaec5a00 0x0 0x200>,
> +				      <0x0 0xaec5200 0x0 0xd0>,
> +				      <0x0 0xaec5600 0x0 0xd0>,
> +				      <0x0 0xaec5000 0x0 0x1c8>;
> +
> +				clocks =<&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_AUX_CLK>,
> +					<&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>;
> +				clock-names = "aux",
> +					      "cfg_ahb";
> +
> +				#clock-cells = <1>;
> +				#phy-cells = <0>;
> +
> +				status = "disabled";
> +			};
> +
> +			mdss0_dp0: displayport-controller@af54000 {
> +				compatible = "qcom,sa8775p-dp";
> +
> +				reg = <0x0 0xaf54000 0x0 0x104>,
> +				      <0x0 0xaf54200 0x0 0x0c0>,
> +				      <0x0 0xaf55000 0x0 0x770>,
> +				      <0x0 0xaf56000 0x0 0x09c>;

No p1 region?

> +
> +				interrupt-parent = <&mdss0>;
> +				interrupts = <12>;
> +
> +				clocks = <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;
> +				clock-names = "core_iface",
> +					      "core_aux",
> +					      "ctrl_link",
> +					      "ctrl_link_iface",
> +					      "stream_pixel";
> +				assigned-clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
> +						  <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>;
> +				assigned-clock-parents = <&mdss0_dp0_phy 0>, <&mdss0_dp0_phy 1>;
> +				phys = <&mdss0_dp0_phy>;
> +				phy-names = "dp";
> +
> +				operating-points-v2 = <&dp_opp_table>;
> +				power-domains = <&rpmhpd SA8775P_MMCX>;
> +
> +				#sound-dai-cells = <0>;
> +
> +				status = "disabled";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						mdss0_dp0_in: endpoint {
> +							remote-endpoint = <&dpu_intf0_out>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +
> +						mdss0_dp0_out: endpoint { };
> +					};
> +				};
> +
> +				dp_opp_table: opp-table {
> +					compatible = "operating-points-v2";
> +
> +					opp-160000000 {
> +						opp-hz = /bits/ 64 <160000000>;
> +						required-opps = <&rpmhpd_opp_low_svs>;
> +					};
> +
> +					opp-270000000 {
> +						opp-hz = /bits/ 64 <270000000>;
> +						required-opps = <&rpmhpd_opp_svs>;
> +					};
> +
> +					opp-540000000 {
> +						opp-hz = /bits/ 64 <540000000>;
> +						required-opps = <&rpmhpd_opp_svs_l1>;
> +					};
> +
> +					opp-810000000 {
> +						opp-hz = /bits/ 64 <810000000>;
> +						required-opps = <&rpmhpd_opp_nom>;
> +					};
> +				};
> +			};
> +
> +			mdss0_dp1: displayport-controller@af5c000 {
> +				compatible = "qcom,sa8775p-dp";
> +
> +				reg = <0x0 0xaf5c000 0x0 0x104>,
> +				      <0x0 0xaf5c200 0x0 0x0c0>,
> +				      <0x0 0xaf5d000 0x0 0x770>,
> +				      <0x0 0xaf5e000 0x0 0x09c>;
> +
> +				interrupt-parent = <&mdss0>;
> +				interrupts = <13>;
> +
> +				clocks = <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_AUX_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_LINK_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_LINK_INTF_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL0_CLK>;
> +				clock-names = "core_iface",
> +					      "core_aux",
> +					      "ctrl_link",
> +					      "ctrl_link_iface",
> +					      "stream_pixel";
> +				assigned-clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_LINK_CLK_SRC>,
> +						  <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC>;
> +				assigned-clock-parents = <&mdss0_dp1_phy 0>, <&mdss0_dp1_phy 1>;
> +				phys = <&mdss0_dp1_phy>;
> +				phy-names = "dp";
> +
> +				operating-points-v2 = <&dp1_opp_table>;
> +				power-domains = <&rpmhpd SA8775P_MMCX>;
> +
> +				#sound-dai-cells = <0>;
> +
> +				status = "disabled";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						mdss0_dp1_in: endpoint {
> +							remote-endpoint = <&dpu_intf4_out>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +
> +						mdss0_dp1_out: endpoint { };
> +					};
> +				};
> +
> +				dp1_opp_table: opp-table {
> +					compatible = "operating-points-v2";
> +
> +					opp-160000000 {
> +						opp-hz = /bits/ 64 <160000000>;
> +						required-opps = <&rpmhpd_opp_low_svs>;
> +					};
> +
> +					opp-270000000 {
> +						opp-hz = /bits/ 64 <270000000>;
> +						required-opps = <&rpmhpd_opp_svs>;
> +					};
> +
> +					opp-540000000 {
> +						opp-hz = /bits/ 64 <540000000>;
> +						required-opps = <&rpmhpd_opp_svs_l1>;
> +					};
> +
> +					opp-810000000 {
> +						opp-hz = /bits/ 64 <810000000>;
> +						required-opps = <&rpmhpd_opp_nom>;
> +					};
> +				};
> +			};
>  		};
>  
>  		dispcc0: clock-controller@af00000 {
> @@ -3376,7 +3589,8 @@
>  				 <&rpmhcc RPMH_CXO_CLK>,
>  				 <&rpmhcc RPMH_CXO_CLK_A>,
>  				 <&sleep_clk>,
> -				 <0>, <0>, <0>, <0>,
> +				 <&mdss0_dp0_phy 0>, <&mdss0_dp0_phy 1>,
> +				 <&mdss0_dp1_phy 0>, <&mdss0_dp1_phy 1>,
>  				 <0>, <0>, <0>, <0>;
>  			power-domains = <&rpmhpd SA8775P_MMCX>;
>  			#clock-cells = <1>;
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

