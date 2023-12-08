Return-Path: <devicetree+bounces-23259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D7380A8D7
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 17:26:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80E581C20895
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FD2C374E2;
	Fri,  8 Dec 2023 16:26:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01679123;
	Fri,  8 Dec 2023 08:26:45 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBdgT-0000Lb-Kw; Fri, 08 Dec 2023 17:26:37 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v4 16/17] arm64: dts: rockchip: Add vop on rk3588
Date: Fri, 08 Dec 2023 17:26:36 +0100
Message-ID: <4730849.ejJDZkT8p0@diego>
In-Reply-To: <20231207080247.652780-1-andyshrk@163.com>
References:
 <20231207075906.651771-1-andyshrk@163.com>
 <20231207080247.652780-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andy,

Am Donnerstag, 7. Dezember 2023, 09:02:47 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add vop dt node for rk3588.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
> (no changes since v1)
> 
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 96 +++++++++++++++++++++++
>  1 file changed, 96 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 7064c0e9179f..a9810ca78dc4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -593,6 +608,87 @@ i2c0: i2c@fd880000 {
>  		status = "disabled";
>  	};
>  
> +	vop: vop@fdd90000 {
> +		compatible = "rockchip,rk3588-vop";
> +		reg = <0x0 0xfdd90000 0x0 0x4200>, <0x0 0xfdd95000 0x0 0x1000>;
> +		reg-names = "vop", "gamma_lut";
> +		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru ACLK_VOP>,
> +			 <&cru HCLK_VOP>,
> +			 <&cru DCLK_VOP0>,
> +			 <&cru DCLK_VOP1>,
> +			 <&cru DCLK_VOP2>,
> +			 <&cru DCLK_VOP3>,
> +			 <&cru PCLK_VOP_ROOT>;
> +		clock-names = "aclk",
> +			      "hclk",
> +			      "dclk_vp0",
> +			      "dclk_vp1",
> +			      "dclk_vp2",
> +			      "dclk_vp3",
> +			      "pclk_vop";
> +		resets = <&cru SRST_A_VOP>,
> +			 <&cru SRST_H_VOP>,
> +			 <&cru SRST_D_VOP0>,
> +			 <&cru SRST_D_VOP1>,
> +			 <&cru SRST_D_VOP2>,
> +			 <&cru SRST_D_VOP3>;
> +		reset-names = "axi",
> +			      "ahb",
> +			      "dclk_vp0",
> +			      "dclk_vp1",
> +			      "dclk_vp2",
> +			      "dclk_vp3";

resets and reset-names do not seem to be part of the binding, so
should probably be added there.


> +		iommus = <&vop_mmu>;
> +		power-domains = <&power RK3588_PD_VOP>;
> +		rockchip,grf = <&sys_grf>;
> +		rockchip,vop-grf = <&vop_grf>;
> +		rockchip,vo1-grf = <&vo1_grf>;
> +		rockchip,pmu = <&pmu>;
> +

move this blank line _below_ the status=disabled please.

> +		status = "disabled";
> +		vop_out: ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			vp0: port@0 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <0>;
> +			};
> +
> +			vp1: port@1 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <1>;
> +			};
> +
> +			vp2: port@2 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <2>;
> +			};
> +
> +			vp3: port@3 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <3>;
> +			};
> +		};
> +	};
> +
> +	vop_mmu: iommu@fdd97e00 {
> +		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
> +		reg = <0x0 0xfdd97e00 0x0 0x100>, <0x0 0xfdd97f00 0x0 0x100>;
> +		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupt-names = "vop_mmu";

interrupt-names is not part of the mainline iommu binding, so should be dropped


Thanks
Heiko



