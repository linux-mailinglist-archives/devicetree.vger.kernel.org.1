Return-Path: <devicetree+bounces-134684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D749FE3A2
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 09:16:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 410AD160322
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 08:16:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F19E2198E6F;
	Mon, 30 Dec 2024 08:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="bide5F9h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D260EAD2;
	Mon, 30 Dec 2024 08:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735546597; cv=none; b=beFxDkb7V88L+uQANn0mKAe3/QSjHumc/QG0d0+54xuzylIzuybAZxxVO1yqKaCTxFIzMNrDCsNGFPsm+MAjpW89yqnxccTl2xrpLghdPGCCEmDTOh5lDHYMo50ORM9jQruRTuP9jD1aF6ASxfLDVdKW7CvmkgctSvf8S3WSPt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735546597; c=relaxed/simple;
	bh=Bn7gSUkmuvqJ/tPgCo4j3i6p3N+Um4wEE6YKqSg3meU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qIEetVLHAbFxS78HdhoV4RJL/MJhgKGHywVDzZPwJx0G+btTWgb/GdQpAXt8OTNj5Je6au8TZPUgLazHmFMg05iWYFriUifTA/3nuc5+dwEqlenN1iXC2AmQ5DrM0E6bfqnd5ax7lM8kqzpy040BpMpuwWNyRyYwEV7QumfiD6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=bide5F9h; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=1ROoiExU6XPVqMGkYBZCkW9t29udBv3vMHwaK5YOt+w=;
	b=bide5F9h5ut2iYQ8frLULQJGb2nxdL7VOJjWY1326JLLtQYeTEFyfOi5YRWc58
	WJUh07h5bco8pxskl8pj4RBe3g+L6PGzKQ9sVb2KAp7eyYSNMzQFQwb/s/zsqDL7
	4CMMtPODEUSVZVc/vvQljLoUqJyhf6zBPgA5a5QZWkJMw=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgDHQYm+VnJnSG0GBg--.61180S3;
	Mon, 30 Dec 2024 16:16:00 +0800 (CST)
Date: Mon, 30 Dec 2024 16:15:58 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Wei Fang <wei.fang@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, frank.li@nxp.com, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: imx95: add NETC related nodes
Message-ID: <Z3JWvhyK0NMiIZwc@dragon>
References: <20241219061340.1633173-1-wei.fang@nxp.com>
 <20241219061340.1633173-2-wei.fang@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241219061340.1633173-2-wei.fang@nxp.com>
X-CM-TRANSID:Mc8vCgDHQYm+VnJnSG0GBg--.61180S3
X-Coremail-Antispam: 1Uf129KBjvJXoWxuFyUCw15Kr4kZr1rtry5Jwb_yoWrGr43p3
	srG3y5Cr4vqF12kr43XFs8GF1DJ3y0kFykur129Fy8CF9aqr9rtr40kF4fXF18Xr4UXw1a
	qFn7Jr17KF4IkaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j289NUUUUU=
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCxjFZWdyEhDb4wACse

On Thu, Dec 19, 2024 at 02:13:39PM +0800, Wei Fang wrote:
> Add NETC related nodes for i.MX95.
> 
> Signed-off-by: Wei Fang <wei.fang@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx95.dtsi | 94 ++++++++++++++++++++++++
>  1 file changed, 94 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
> index e9c7a8265d71..8b0eb1d835e8 100644
> --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
> @@ -1697,10 +1697,104 @@ sai2: sai@4c880000 {
>  			status = "disabled";
>  		};
>  
> +		netc_blk_ctrl: system-controller@4cde0000 {
> +			compatible = "nxp,imx95-netc-blk-ctrl";
> +			reg = <0x0 0x4cde0000 0x0 0x10000>,
> +			      <0x0 0x4cdf0000 0x0 0x10000>,
> +			      <0x0 0x4c81000c 0x0 0x18>;
> +			reg-names = "ierb", "prb", "netcmix";
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +			power-domains = <&scmi_devpd IMX95_PD_NETC>;
> +			assigned-clocks = <&scmi_clk IMX95_CLK_ENET>,
> +					  <&scmi_clk IMX95_CLK_ENETREF>;
> +			assigned-clock-parents = <&scmi_clk IMX95_CLK_SYSPLL1_PFD2>,
> +						 <&scmi_clk IMX95_CLK_SYSPLL1_PFD0>;
> +			assigned-clock-rates = <666666666>, <250000000>;
> +			clocks = <&scmi_clk IMX95_CLK_ENET>;
> +			clock-names = "ipg";
> +			status = "disabled";
> +
> +			netc_bus0: pcie@4ca00000 {
> +				compatible = "pci-host-ecam-generic";
> +				reg = <0x0 0x4ca00000 0x0 0x100000>;
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				device_type = "pci";
> +				bus-range = <0x0 0x0>;
> +				msi-map = <0x0 &its 0x60 0x1>,	//ENETC0 PF
> +					  <0x10 &its 0x61 0x1>, //ENETC0 VF0
> +					  <0x20 &its 0x62 0x1>, //ENETC0 VF1
> +					  <0x40 &its 0x63 0x1>, //ENETC1 PF
> +					  <0x80 &its 0x64 0x1>, //ENETC2 PF
> +					  <0x90 &its 0x65 0x1>, //ENETC2 VF0
> +					  <0xa0 &its 0x66 0x1>, //ENETC2 VF1
> +					  <0xc0 &its 0x67 0x1>; //NETC Timer
> +					 /* ENETC0~2 and Timer BAR0 - non-prefetchable memory */
> +				ranges = <0x82000000 0x0 0x4cc00000  0x0 0x4cc00000  0x0 0xe0000
> +					 /* Timer BAR2 - prefetchable memory */
> +					 0xc2000000 0x0 0x4cd00000  0x0 0x4cd00000  0x0 0x10000
> +					 /* ENETC0~2: VF0-1 BAR0 - non-prefetchable memory */
> +					 0x82000000 0x0 0x4cd20000  0x0 0x4cd20000  0x0 0x60000
> +					 /* ENETC0~2: VF0-1 BAR2 - prefetchable memory */
> +					 0xc2000000 0x0 0x4cd80000  0x0 0x4cd80000  0x0 0x60000>;
> +
> +				enetc_port0: ethernet@0,0 {
> +					compatible = "pci1131,e101";
> +					reg = <0x000000 0 0 0 0>;
> +					clocks = <&scmi_clk IMX95_CLK_ENETREF>;
> +					clock-names = "ref";
> +					status = "disabled";
> +				};
> +
> +				enetc_port1: ethernet@8,0 {
> +					compatible = "pci1131,e101";
> +					reg = <0x004000 0 0 0 0>;
> +					clocks = <&scmi_clk IMX95_CLK_ENETREF>;
> +					clock-names = "ref";
> +					status = "disabled";
> +				};
> +
> +				enetc_port2: ethernet@10,0 {
> +					compatible = "pci1131,e101";
> +					reg = <0x008000 0 0 0 0>;
> +					status = "disabled";
> +				};
> +
> +				netc_timer: ethernet@18,0 {
> +					reg = <0x00c000 0 0 0 0>;
> +					status = "disabled";
> +				};
> +			};
> +
> +			netc_bus1: pcie@4cb00000 {
> +				compatible = "pci-host-ecam-generic";
> +				reg = <0x0 0x4cb00000 0x0 0x100000>;
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				device_type = "pci";
> +				bus-range = <0x1 0x1>;
> +					 /* EMDIO BAR0 - non-prefetchable memory */
> +				ranges = <0x82000000 0x0 0x4cce0000  0x0 0x4cce0000  0x0 0x20000
> +					 /* EMDIO BAR2 - prefetchable memory */
> +					 0xc2000000 0x0 0x4cd10000  0x0 0x4cd10000  0x0 0x10000>;
> +
> +				netc_emdio: mdio@0,0 {
> +					compatible = "pci1131,ee00";
> +					reg = <0x010000 0 0 0 0>;
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +					status = "disabled";
> +				};
> +			};
> +		};
> +
>  		ddr-pmu@4e090dc0 {
>  			compatible = "fsl,imx95-ddr-pmu", "fsl,imx93-ddr-pmu";
>  			reg = <0x0 0x4e090dc0 0x0 0x200>;
>  			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
>  		};
> +

Unrelated change.  Dropped it and applied both patches.

Shawn

>  	};
>  };
> -- 
> 2.34.1
> 


