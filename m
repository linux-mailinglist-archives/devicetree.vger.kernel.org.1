Return-Path: <devicetree+bounces-1576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 636F87A711A
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:45:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EE10281FF7
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:45:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0199C1FDF;
	Wed, 20 Sep 2023 03:45:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9B81FC1;
	Wed, 20 Sep 2023 03:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B905CC433C7;
	Wed, 20 Sep 2023 03:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695181509;
	bh=dGJWqegoej4rPxoaGwuYh4Ve04vulyDF+4O2d33gaY4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vNqDXkl7idWewutiGjoujhKSU/t6v3soDqhANYFRDRFCxp5LxdWGAjpk4unVBqYdC
	 Bcty+yUX43iVrdXIRUgqgD416o3wWQl5Y3XEt8EcNXtam66Dkgkx5Bg5dVTq4N5r7e
	 O2YEEJbwwO6phzJw4TxhANdaMjyl8iXnjZrM5j1ArCms1kb9917BxV2GtbsP7tMcXG
	 wwQboetFsdW00Bfm4G2BGAdhIM8duIU0QiBimQ6mc56rK8QW8fbF9FxrE35vZ5z1Iv
	 PHO0spaUgivQDjie1ZDgGx5cDpiuzKPiwf5fn1tpu2fOrYH4ehT0xo/i2EeB9r0eLs
	 zPrKgmkSlEijg==
Date: Tue, 19 Sep 2023 20:49:16 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: will@kernel.org, robin.murphy@arm.com, joro@8bytes.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	agross@kernel.org, konrad.dybcio@linaro.org, catalin.marinas@arm.com, 
	geert+renesas@glider.be, arnd@arndb.de, neil.armstrong@linaro.org, 
	nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, quic_tsoni@quicinc.com, 
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, 
	quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com, 
	Ajit Pandey <quic_ajipan@quicinc.com>
Subject: Re: [PATCH v2 5/8] arm64: dts: qcom: sm4450: Add apps_rsc and cmd_db
 node
Message-ID: <kk3xwrq6d7jpkoti2b4lg4hwqfoyqilvf7cp3tuccfmhdj57rf@hicfde4whvzm>
References: <20230915021509.25773-1-quic_tengfan@quicinc.com>
 <20230915021509.25773-7-quic_tengfan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230915021509.25773-7-quic_tengfan@quicinc.com>

On Fri, Sep 15, 2023 at 10:15:06AM +0800, Tengfei Fan wrote:
> From: Ajit Pandey <quic_ajipan@quicinc.com>
> 
> Add apps_rsc node and cmd_db memory region for sm4450.
> 
> Signed-off-by: Ajit Pandey <quic_ajipan@quicinc.com>
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm4450.dtsi | 34 ++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm4450.dtsi b/arch/arm64/boot/dts/qcom/sm4450.dtsi
> index c4e5b33f5169..0d1d39197d77 100644
> --- a/arch/arm64/boot/dts/qcom/sm4450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm4450.dtsi
> @@ -5,6 +5,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/soc/qcom,rpmh-rsc.h>
>  
>  / {
>  	interrupt-parent = <&intc>;
> @@ -328,6 +329,18 @@
>  		};
>  	};
>  
> +	reserved_memory: reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		aop_cmd_db_mem: cmd-db@80860000 {
> +			compatible = "qcom,cmd-db";
> +			reg = <0x0 0x80860000 0x0 0x20000>;
> +			no-map;
> +		};
> +	};
> +
>  	soc: soc@0 {
>  		#address-cells = <2>;
>  		#size-cells = <2>;
> @@ -335,6 +348,27 @@
>  		dma-ranges = <0 0 0 0 0x10 0>;
>  		compatible = "simple-bus";
>  
> +		apps_rsc: rsc@17a00000 {
> +			compatible = "qcom,rpmh-rsc";
> +			reg = <0 0x17a00000 0 0x10000>,

As your later patch shows, and Krzysztof pointed out, the sort order is
wrong here (sort nodes under /soc by address).

> +			      <0 0x17a10000 0 0x10000>,
> +			      <0 0x17a20000 0 0x10000>;
> +			reg-names = "drv-0", "drv-1", "drv-2";
> +			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> +			label = "apps_rsc";
> +			qcom,tcs-offset = <0xd00>;
> +			qcom,drv-id = <2>;
> +			qcom,tcs-config = <ACTIVE_TCS    2>, <SLEEP_TCS     3>,
> +					  <WAKE_TCS      3>, <CONTROL_TCS   0>;

Please confirm that you indeed want 0 CONTROL_TCSs.

Thanks,
Bjorn

> +			power-domains = <&CLUSTER_PD>;
> +
> +			apps_bcm_voter: bcm-voter {
> +				compatible = "qcom,bcm-voter";
> +			};
> +		};
> +
>  		tcsr_mutex: hwlock@1f40000 {
>  			compatible = "qcom,tcsr-mutex";
>  			reg = <0x0 0x01f40000 0x0 0x40000>;
> -- 
> 2.17.1
> 

