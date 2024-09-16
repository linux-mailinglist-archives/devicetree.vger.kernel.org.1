Return-Path: <devicetree+bounces-103249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0B997A3BA
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 16:09:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9273BB299FE
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 14:08:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23C0D15B137;
	Mon, 16 Sep 2024 14:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FfFGLVGX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF2D15A86D
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 14:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726495305; cv=none; b=SLd9sYNv/zDpPBIeTEgKZHQroYF1fGn34jRUdTf96pDuOV/xcfAcZKzvwKkEBQQsPOmbQ46vrAvyWkIGhVr4082Ifd927Wwcjy+V15xSbp6C2UxG1TB7CGGNZlOII6yR7v/aiRAiYASfu7DXdbYLsJohbaXOMekv7CuhbtkKjc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726495305; c=relaxed/simple;
	bh=4XZIIM24aLHamEa/bTQSWXBtB5sFrjDpG1Gb7kSqWVw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A9bqEeH90f7PUiutoQKkIqm/LCZ6cRB3DAQiwo4qZzeaAD9Xvd8c1Io4eLn0UtoMUNaHN0jr3MexP0eZ9iC0IDFyqG2Jzl1ohC5HJ8aaGCdsSs9JYthq4rRilVRZfp13cJHQ/sa1Cy3uS1Ta+OMVyzwgOUQX5lWDMgV2DIsDCBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FfFGLVGX; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53659c8d688so3553198e87.1
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 07:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726495301; x=1727100101; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cMlMT+B8deIK9qAsz5RzoKJhcSIicRL6O2d2Qw8WeUM=;
        b=FfFGLVGXUr1aW2Fj2BXBxhf8Os/w4CyHee/3cfqYRUoNvkVPE0wjx8r7iZZfihusqT
         WHfseYN2wZQDQ88NffkmrdtOQR1GsdPEBoBICA0w+faA62rJBKL/uvlNLeV6IYFnWAYK
         mxn+2Ke8o+Qr41JJmRtq6CXayeZ1F0OLdEOmaOYCBj9It892gvq0xvqrtBxTUptGzzcu
         In31o49A46iFMuo6S72BYLj2UBHJtGVn829pV3a7+rWyUx6aTWiwv1jQh8CRoTlqvcpg
         Iv5ZQDSBWcAG1rVKLcXpNtpswwydWFtvNb1CcGvNRXlfIE+sw+HWfQZ+daiIId8QVA8O
         krzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726495301; x=1727100101;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cMlMT+B8deIK9qAsz5RzoKJhcSIicRL6O2d2Qw8WeUM=;
        b=OavOP/1hRelo4ZoxvbB2/iJwg3MIMeDY4RJ/FndV2FyIrHmZJiKuEmSe7Put5e3JHk
         e66o6uAmT1TABmT2Nk9mxCEBxEWwyELpXZKTrHd8UTnTIDAO64rA5XyResbZDSxwL5yU
         sbXtTeDRFABne7CjY3FRUpvpHGt+VYhPNyILT8qcB8n6rJTaVagKiKgFl90lnakYU4tq
         vdnkub3HrqsM+z4x2+GZnLb95RKPFP21fR6gOorwLU0+IqTnPiUPpENfqr5vXzUbmgNn
         vES9acUUAflrGriIOafZC4iZ0JberFpUHvoPKKGBPml+MtVXAfrGG+kE4g8cHH5stPQV
         Fi/Q==
X-Forwarded-Encrypted: i=1; AJvYcCX4Eye3zdF4fWZzzSkybaRlmn3LYgse8kWr56SO/Csd0gJse4ANa8ppCXUE1sbGv2C1ypT9ymZNk7YE@vger.kernel.org
X-Gm-Message-State: AOJu0YxUEVxQ+r4IoKyGwXSYxAj9Q1DBJwwl6/yB+dgELW8ww2KswY0U
	oOpbtbdwuyZ2hVUY0JNpwCg1d3KSruN3NvLLyFtlfsiHGMeYTEEHH1XmPQuRqcM=
X-Google-Smtp-Source: AGHT+IEwCi4h0gOcjJ2J7PtEto/0FYri5a2pwjVMPIpg1KFvHkVKQSJnPO78DdIo2pyTdxnG3Wmhlg==
X-Received: by 2002:a05:6512:ba0:b0:52f:c281:72de with SMTP id 2adb3069b0e04-5367907b3d6mr4942303e87.15.1726495300202;
        Mon, 16 Sep 2024 07:01:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-536870c57bfsm885316e87.307.2024.09.16.07.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 07:01:39 -0700 (PDT)
Date: Mon, 16 Sep 2024 17:01:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com, quic_abhinavk@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: add DisplayPort device node
Message-ID: <ivbohyezb57mcqgfnjot3j2olgj4kvyoq2fjstgugscagsmlg7@vav3cbokzg7q>
References: <20240916091344.27607-1-quic_mukhopad@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240916091344.27607-1-quic_mukhopad@quicinc.com>

On Mon, Sep 16, 2024 at 02:43:44PM GMT, Soutrik Mukhopadhyay wrote:
> Add device tree node for the DisplayPort controller
> and eDP PHY found on the Qualcomm SA8775P SoC.

Not quite. You are also enabling it for the RIDE platforms, not just the
SA8775p SoC.

> 
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
> This patch depends on following series:
> https://lore.kernel.org/all/20240816-sa8775p-mm-v3-v1-0-77d53c3c0cef@quicinc.com/
> https://lore.kernel.org/all/20240912071437.1708969-1-quic_mahap@quicinc.com/
> https://lore.kernel.org/all/20240913103755.7290-1-quic_mukhopad@quicinc.com/

Also please provide mdss_dp1 device nodes, you have documented them in
the patch "drm/msm/dp: Add DisplayPort controller for SA8775P"

> ---
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi |  23 +++++
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi      | 114 ++++++++++++++++++++-
>  2 files changed, 136 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> index 0c1b21def4b6..728b4cda8353 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> @@ -421,6 +421,23 @@
>  	status = "okay";
>  };
>  
> +&mdss0 {
> +	status = "okay";
> +};
> +
> +&mdss0_dp0 {
> +	status = "okay";
> +};
> +
> +&mdss0_dp0_out {
> +	data-lanes = <0 1 2 3>;
> +	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> +};
> +
> +&mdss0_edp_phy0 {
> +	status = "okay";
> +};
> +
>  &pmm8654au_0_gpios {
>  	gpio-line-names = "DS_EN",
>  			  "POFF_COMPLETE",
> @@ -527,6 +544,12 @@
>  };
>  
>  &tlmm {
> +	dp_hot_plug_det: dp-hot-plug-det-state {
> +		pins = "gpio101";
> +		function = "edp0_hot";
> +		bias-disable;
> +	};
> +
>  	ethernet0_default: ethernet0-default-state {
>  		ethernet0_mdc: ethernet0-mdc-pins {
>  			pins = "gpio8";
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 7747965e7e46..a04150c29565 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -3339,6 +3339,18 @@
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
> +				};
> +
>  				mdss0_mdp_opp_table: opp-table {
>  					compatible = "operating-points-v2";
>  
> @@ -3363,6 +3375,106 @@
>  					};
>  				};
>  			};
> +
> +			mdss0_edp_phy0: phy@aec2a00 {
> +				compatible = "qcom,sa8775p-edp-phy";
> +
> +				reg = <0x0 0xaec2a00 0x0 0x200>,
> +					<0x0 0xaec2200 0x0 0xd0>,
> +					<0x0 0xaec2600 0x0 0xd0>,
> +					<0x0 0xaec2000 0x0 0x1c8>;

Please ident on the angle bracket.

> +
> +				clocks = <&rpmhcc RPMH_CXO_CLK>,

It it really CXO?

> +					 <&gcc GCC_EDP_REF_CLKREF_EN>;

And this isn't cfg_ahb.

> +				clock-names = "aux",
> +					      "cfg_ahb";
> +
> +				vdda-phy-supply = <&vreg_l1c>;
> +				vdda-pll-supply = <&vreg_l4a>;

regulators are not a part of the SoC

> +				#clock-cells = <1>;
> +				#phy-cells = <0>;
> +
> +				status = "disabled";
> +			};
> +
> +			mdss0_dp0: displayport-controller@af54000 {
> +				compatible = "qcom,sa8775p-dp";
> +
> +				pinctrl-0 = <&dp_hot_plug_det>;
> +				pinctrl-names = "default";
> +
> +				reg = <0x0 0xaf54000 0x0 0x104>,
> +					<0x0 0xaf54200 0x0 0x0c0>,
> +					<0x0 0xaf55000 0x0 0x770>,
> +					<0x0 0xaf56000 0x0 0x09c>;

Wrong indentation.

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
> +						"core_aux",
> +						"ctrl_link",
> +						"ctrl_link_iface",
> +						"stream_pixel";

And here.

> +				assigned-clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
> +						  <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>;
> +				assigned-clock-parents = <&mdss0_edp_phy0 0>, <&mdss0_edp_phy0 1>;
> +				phys = <&mdss0_edp_phy0>;
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
> +						mdss0_dp0_in: endpoint {
> +							remote-endpoint = <&dpu_intf0_out>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
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
>  		};
>  
>  		dispcc0: clock-controller@af00000 {
> @@ -3372,7 +3484,7 @@
>  				 <&rpmhcc RPMH_CXO_CLK>,
>  				 <&rpmhcc RPMH_CXO_CLK_A>,
>  				 <&sleep_clk>,
> -				 <0>, <0>, <0>, <0>,
> +				 <&mdss0_edp_phy0 0>, <&mdss0_edp_phy0 1>, <0>, <0>,
>  				 <0>, <0>, <0>, <0>;
>  			power-domains = <&rpmhpd SA8775P_MMCX>;
>  			#clock-cells = <1>;
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

