Return-Path: <devicetree+bounces-136076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23898A03BCE
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 11:07:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5E65F7A2A53
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 10:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FBDC1E47AE;
	Tue,  7 Jan 2025 10:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="alvwVcp6"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A161E3DDE;
	Tue,  7 Jan 2025 10:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736244415; cv=none; b=DsiyiGj/oYHabxpJ6Q23/rx91xg62B7pXNef80uNd/JB0g9dU/RB0kGzxlygbDqhllf8cDOkPPdSPgcisqTAELuljMhIbniFIcgor9Z1gpHsrAEooBq2Zm11k349k1PDijMp2gMvGCJ/PJqOUowhcPtrz7MDA4ALg+n9L7xw2U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736244415; c=relaxed/simple;
	bh=QqSkUATka6qZ3THnYQjNaS1tgXdFm8leweOVniajL38=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U+rohiXAS4KAxaDGyt1OBqNCyH2i4X5SYHDhk1juUCXkeKJYJ5JSUHkOfSPNprneEaU9dOf967sQBX5X8mL2/4gT9cnGIhIbWiTzBJWb9PEkarC5DUiqxH07MPg6yU94jj6Nas/r4NIyt8Z8jUFjZZhW/t4dMtC7EuBKW5ynf7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=alvwVcp6; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id EA182675;
	Tue,  7 Jan 2025 11:05:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1736244350;
	bh=QqSkUATka6qZ3THnYQjNaS1tgXdFm8leweOVniajL38=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=alvwVcp6Sbwkq7axwKYZthiZVcon5np0R/z5lZcgVhz9slp/SfgJmBP5GfkU3iT6e
	 QrPFeMVqqBASNCvH+xBDdtM2WyFfeyidvwhDnqpoLAVHN8g6n4jqWRIN6GWic/HVMV
	 IAnfg3vsUy5mS3npiaaclMLnlTym/1D0Yf/Fyzf8=
Date: Tue, 7 Jan 2025 12:06:39 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Inki Dae <inki.dae@samsung.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM: dts: imx7s: Move csi-mux to below root
Message-ID: <20250107100639.GC23309@pendragon.ideasonboard.com>
References: <20250107094943.518474-1-alexander.stein@ew.tq-group.com>
 <20250107094943.518474-2-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250107094943.518474-2-alexander.stein@ew.tq-group.com>

Hi Alexander,

Thank you for the patch.

On Tue, Jan 07, 2025 at 10:49:41AM +0100, Alexander Stein wrote:
> fsl,imx-iomuxc-gpr.yaml only contains the mux-controller but the actual
> video-mux is not part of it. So move it below root node.
> Fixes the dtbs_check warning:
> arch/arm/boot/dts/nxp/imx/imx7s-mba7.dtb: iomuxc-gpr@30340000: 'csi-mux' does not match any of the regexes: 'pinctrl-[0-9]+'
>   from schema $id: http://devicetree.org/schemas/soc/imx/fsl,imx-iomuxc-gpr.yaml#
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  arch/arm/boot/dts/nxp/imx/imx7s.dtsi | 56 ++++++++++++++--------------
>  1 file changed, 28 insertions(+), 28 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/nxp/imx/imx7s.dtsi b/arch/arm/boot/dts/nxp/imx/imx7s.dtsi
> index 22dd72499ef27..2629968001a74 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx7s.dtsi
> +++ b/arch/arm/boot/dts/nxp/imx/imx7s.dtsi
> @@ -176,6 +176,34 @@ timer {
>  			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>;
>  	};
>  
> +	video_mux: csi-mux {
> +		compatible = "video-mux";
> +		mux-controls = <&mux 0>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		status = "disabled";
> +
> +		port@0 {
> +			reg = <0>;
> +		};
> +
> +		port@1 {
> +			reg = <1>;
> +
> +			csi_mux_from_mipi_vc0: endpoint {
> +				remote-endpoint = <&mipi_vc0_to_csi_mux>;
> +			};
> +		};
> +
> +		port@2 {
> +			reg = <2>;
> +
> +			csi_mux_to_csi: endpoint {
> +				remote-endpoint = <&csi_from_csi_mux>;
> +			};
> +		};
> +	};
> +
>  	soc: soc {
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> @@ -529,34 +557,6 @@ mux: mux-controller {
>  					#mux-control-cells = <1>;
>  					mux-reg-masks = <0x14 0x00000010>;
>  				};
> -
> -				video_mux: csi-mux {
> -					compatible = "video-mux";
> -					mux-controls = <&mux 0>;
> -					#address-cells = <1>;
> -					#size-cells = <0>;
> -					status = "disabled";
> -
> -					port@0 {
> -						reg = <0>;
> -					};
> -
> -					port@1 {
> -						reg = <1>;
> -
> -						csi_mux_from_mipi_vc0: endpoint {
> -							remote-endpoint = <&mipi_vc0_to_csi_mux>;
> -						};
> -					};
> -
> -					port@2 {
> -						reg = <2>;
> -
> -						csi_mux_to_csi: endpoint {
> -							remote-endpoint = <&csi_from_csi_mux>;
> -						};
> -					};
> -				};
>  			};
>  
>  			ocotp: efuse@30350000 {

-- 
Regards,

Laurent Pinchart

