Return-Path: <devicetree+bounces-1570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8627A708B
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 04:32:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7017281636
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 02:32:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 695F7A23;
	Wed, 20 Sep 2023 02:32:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AAF630
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 02:32:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85B06C433C8;
	Wed, 20 Sep 2023 02:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695177161;
	bh=QAx4rLvgG+w2aUwmQ646qZI9UZ3PUZjDBZgyQ3QPOgw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y8ElquWin/1W6/gst+K+zSMiCjreKw+YozMNHyehraxBXhuXMcVV+hZwskCJLqNha
	 MxnqpZRhjeD95kEld9liGXQ7dtH+RgEn4IL2NYKcc05md50yX07ns2Zoyc3X3QuAwz
	 llgw/dpXPLy2cfdJaBIDO6LsHVAzj0HuwAPVJwruDa4VfrNLkU0lS+ot+ysrRs6RXV
	 HkYYTcbhLL4Iye8RUnhQbP0sczSe7U+5up81d2UMJf3YAkqNOswz3kMTeXNKdNj3/C
	 T+Z8jeNvQ+8IWg68+Yo0nIIsw6BkzAjZNZ38dbKXtdwqb0sFbFzhO8XUfrEQkJXvaR
	 e0Rl2xBV3Q9DA==
Date: Tue, 19 Sep 2023 19:36:49 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Priyansh Jain <quic_priyjain@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Amit Kucheria <amitk@kernel.org>, 
	Thara Gopinath <thara.gopinath@gmail.com>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_manafm@quicinc.com
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: Enable tsens and thermal for
 sa8775p SoC
Message-ID: <m46dsg4zx2fg4wrccmk24nrw34eyv3ikx2omadfyyqhl6kpy77@pkleypnfma2v>
References: <20230824123001.26778-1-quic_priyjain@quicinc.com>
 <20230824123001.26778-3-quic_priyjain@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230824123001.26778-3-quic_priyjain@quicinc.com>

On Thu, Aug 24, 2023 at 06:00:01PM +0530, Priyansh Jain wrote:
> Add tsens and thermal devicetree node for sa8775p SoC.
> 
> Signed-off-by: Priyansh Jain <quic_priyjain@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 1096 +++++++++++++++++++++++++
>  1 file changed, 1096 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index b130136acffe..abba42ea5946 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -2306,6 +2306,1102 @@
>  
>  			#freq-domain-cells = <1>;

I believe this would be the tail of the cpufreq_hw node, @0x18591000.

>  		};
> +
> +		tsens0: thermal-sensor@c222000 {
> +			compatible = "qcom,sa8775p-tsens", "qcom,tsens-v2";
> +			reg = <0x0 0x0c263000 0x0 0x1ff>,

If so, then this is not inserted to maintain the sort order (by address)
of the nodes under /soc. Please update the placement of this node.

Also, the unit address above is c222000, but based on this cell it
should be c263000.

> +			      <0x0 0x0c222000 0x0 0x8>;
> +			interrupts = <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 508 IRQ_TYPE_LEVEL_HIGH>;
> +			#qcom,sensors = <12>;
> +			interrupt-names = "uplow", "critical";
> +			#thermal-sensor-cells = <1>;
> +		};
> +
> +		tsens1: thermal-sensor@c223000 {
> +			compatible = "qcom,sa8775p-tsens", "qcom,tsens-v2";
> +			reg = <0x0 0x0c265000 0x0 0x1ff>,
> +			      <0x0 0x0c223000 0x0 0x8>;
> +			interrupts = <GIC_SPI 507 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 509 IRQ_TYPE_LEVEL_HIGH>;
> +			#qcom,sensors = <12>;
> +			interrupt-names = "uplow", "critical";
> +			#thermal-sensor-cells = <1>;
> +		};
> +
> +		tsens2: thermal-sensor@c224000 {
> +			compatible = "qcom,sa8775p-tsens", "qcom,tsens-v2";
> +			reg = <0x0 0x0c251000 0x0 0x1ff>,

0x0c251000 < 0x0c265000, please order them properly.

> +			      <0x0 0x0c224000 0x0 0x8>;
> +			interrupts = <GIC_SPI 572 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 609 IRQ_TYPE_LEVEL_HIGH>;
> +			#qcom,sensors = <13>;
> +			interrupt-names = "uplow", "critical";
> +			#thermal-sensor-cells = <1>;
> +		};
> +
> +		tsens3: thermal-sensor@c225000 {
> +			compatible = "qcom,sa8775p-tsens", "qcom,tsens-v2";
> +			reg = <0x0 0x0c252000 0x0 0x1ff>,
> +			      <0x0 0x0c225000 0x0 0x8>;
> +			interrupts = <GIC_SPI 573 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 610 IRQ_TYPE_LEVEL_HIGH>;
> +			#qcom,sensors = <13>;
> +			interrupt-names = "uplow", "critical";
> +			#thermal-sensor-cells = <1>;
> +		};
> +
> +		thermal_zones: thermal-zones {

This does not belong alongside the mmio-devices under /soc, move this
out (and keep / sorted alphabetically on the node name).

> +			aoss-0-thermal {
> +				polling-delay-passive = <0>;
> +				polling-delay = <0>;
> +
> +				thermal-sensors = <&tsens0 0>;
> +
> +				trips {
> +					aoss0_alert0: trip-point0 {

Why does all these nodes have labels?

> +						temperature = <105000>;
> +						hysteresis = <5000>;
> +						type = "passive";
> +					};
> +
> +					aoss0_alert1: trip-point1 {
> +						temperature = <115000>;
> +						hysteresis = <5000>;
> +						type = "passive";
> +					};
> +				};
> +			};
> +
[..]
> +		};

/soc does not end here anymore, please remember to rebase the change on
v6.6-rc1.

Thanks,
Bjorn

>  	};
>  
>  	arch_timer: timer {
> -- 
> 2.17.1
> 

