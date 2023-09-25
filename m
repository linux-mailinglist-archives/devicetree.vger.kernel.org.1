Return-Path: <devicetree+bounces-2923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AD57D7ACE75
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 04:51:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 3DD651F24226
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7467539D;
	Mon, 25 Sep 2023 02:51:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C65C67F
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:51:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37CF8C433C7;
	Mon, 25 Sep 2023 02:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695610267;
	bh=eEnE+E+YbvrX1hAE7s8/RxswnX8+mLTgwcg7qFx1qME=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DdcSpMEQ5grzOpBF7pzMISDNt7KfswBtnME75jG3pbGTc4gm7zSWL+lsqu+H+Bq6x
	 778Nn0Cfsnd2vH6WZe3peINmlt4AHVYuouem5zkWP2E6fJZjdbXxrgc6tzxrs/YtRI
	 d0yQCK1eXa3UvPujgcdII3Z8zzIdDNgwZLLMsV89Vv/8Pfn8FJeoC+TOFvL+pZVyVl
	 eS9PZFXbksnVDxKrQDj69rO61FzyvdaGvdXOz51he97HQaOkc+5ecnRtTR9+mZbXEE
	 HqssQQqbzZhAsTQUblyFNT/QX1v9XcYUSp9MDltwv22p3H1V0aSgq8PSrHI1fiamLM
	 hg6Y5L5Gh+jGw==
Date: Mon, 25 Sep 2023 10:50:58 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Cc: leoyang.li@nxp.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: ls208xa: use a pseudo-bus to constrain
 usb dma size
Message-ID: <20230925025058.GE7231@dragon>
References: <20230914155935.6042-1-laurentiu.tudor@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914155935.6042-1-laurentiu.tudor@nxp.com>

On Thu, Sep 14, 2023 at 06:59:35PM +0300, Laurentiu Tudor wrote:
> Wrap the usb controllers in an intermediate simple-bus and use it to
> constrain the dma address size of these usb controllers to the 40b
> that they generate toward the interconnect. This is required because
> the SoC uses 48b address sizes and this mismatch would lead to smmu
> context faults [1] because the usb generates 40b addresses while the
> smmu page tables are populated with 48b wide addresses.
> 
> [1]
> xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
> xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 1
> xhci-hcd xhci-hcd.0.auto: hcc params 0x0220f66d hci version 0x100 quirks 0x0000000002000010
> xhci-hcd xhci-hcd.0.auto: irq 108, io mem 0x03100000
> xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
> xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 2
> xhci-hcd xhci-hcd.0.auto: Host supports USB 3.0 SuperSpeed
> arm-smmu 5000000.iommu: Unhandled context fault: fsr=0x402, iova=0xffffffb000, fsynr=0x0, cbfrsynra=0xc01, cb=3
> 
> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> ---
> Changes in v2:
>  - renamed pseudo-bus from 'aux_bus' to just 'bus'
> 
>  .../arm64/boot/dts/freescale/fsl-ls208xa.dtsi | 46 +++++++++++--------
>  1 file changed, 27 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
> index d2f5345d0560..6c311c61c5bc 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
> @@ -1186,26 +1186,34 @@
>  			dma-coherent;
>  		};
>  
> -		usb0: usb@3100000 {
> -			status = "disabled";
> -			compatible = "snps,dwc3";
> -			reg = <0x0 0x3100000 0x0 0x10000>;
> -			interrupts = <0 80 0x4>; /* Level high type */
> -			dr_mode = "host";
> -			snps,quirk-frame-length-adjustment = <0x20>;
> -			snps,dis_rxdet_inp3_quirk;
> -			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
> -		};
> +		bus: bus {
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			compatible = "simple-bus";
> +			ranges;
> +			dma-ranges = <0x0 0x0 0x0 0x0 0x100 0x00000000>;
> +
> +			usb0: usb@3100000 {
> +				status = "disabled";

While you are at it, could you move 'status' to end of the property
list?

Shawn

> +				compatible = "snps,dwc3";
> +				reg = <0x0 0x3100000 0x0 0x10000>;
> +				interrupts = <0 80 0x4>; /* Level high type */
> +				dr_mode = "host";
> +				snps,quirk-frame-length-adjustment = <0x20>;
> +				snps,dis_rxdet_inp3_quirk;
> +				snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
> +			};
>  
> -		usb1: usb@3110000 {
> -			status = "disabled";
> -			compatible = "snps,dwc3";
> -			reg = <0x0 0x3110000 0x0 0x10000>;
> -			interrupts = <0 81 0x4>; /* Level high type */
> -			dr_mode = "host";
> -			snps,quirk-frame-length-adjustment = <0x20>;
> -			snps,dis_rxdet_inp3_quirk;
> -			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
> +			usb1: usb@3110000 {
> +				status = "disabled";
> +				compatible = "snps,dwc3";
> +				reg = <0x0 0x3110000 0x0 0x10000>;
> +				interrupts = <0 81 0x4>; /* Level high type */
> +				dr_mode = "host";
> +				snps,quirk-frame-length-adjustment = <0x20>;
> +				snps,dis_rxdet_inp3_quirk;
> +				snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
> +			};
>  		};
>  
>  		ccn@4000000 {
> -- 
> 2.17.1
> 

