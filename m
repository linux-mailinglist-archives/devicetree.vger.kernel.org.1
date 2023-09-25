Return-Path: <devicetree+bounces-2919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 875607ACE23
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 04:31:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B504D1C204FA
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:31:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A25D8643;
	Mon, 25 Sep 2023 02:31:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9243E7F
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:31:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 295EBC433C8;
	Mon, 25 Sep 2023 02:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695609092;
	bh=wZEBT6XR8mvPnx5In5pdpKcEzvWvq0vEkyU3ibd2N9Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Lm3KUnQSLCYOLn46cVbAGsWrtYsQkYQMsydgtF5jmTkjpLn26/dDKi8kM+LjCn7xV
	 rsS6VbFWXE3YYRmXmRdSn2dzYR2DRTuJgvB55r9tCLaQaxOYD6Sow+JIheO0I7SYx+
	 /WuA5dlklOmD76AJwlFdFlyCWaQVLhg1yBJeACRrawDqoZWH0rcaqjP50h7TOtjyjF
	 VIgn6TAvTFOYFQUsI06yF472MfQUegB7fOrxLG94LCFpX1FdhNUEZ2tTD5hJXIwACF
	 MOICHpzQMyO5J4xyYxf0huU7/41JnbHy08M6vuGUfdg4nFHbYEs44YbsduKSPqYPXI
	 JwSt4ZTjW5eiQ==
Date: Mon, 25 Sep 2023 10:31:17 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: "Iuliana Prodan (OSS)" <iuliana.prodan@oss.nxp.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	"S.J. Wang" <shengjiu.wang@nxp.com>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Mpuaudiosw <Mpuaudiosw@nxp.com>,
	Iuliana Prodan <iuliana.prodan@nxp.com>,
	linux-imx <linux-imx@nxp.com>, linux-remoteproc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	LnxRevLi <LnxRevLi@nxp.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: imx8mp: add reserve-memory nodes for
 DSP
Message-ID: <20230925023117.GZ7231@dragon>
References: <20230912153021.21786-1-iuliana.prodan@oss.nxp.com>
 <20230912153021.21786-3-iuliana.prodan@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230912153021.21786-3-iuliana.prodan@oss.nxp.com>

On Tue, Sep 12, 2023 at 06:30:21PM +0300, Iuliana Prodan (OSS) wrote:
> From: Iuliana Prodan <iuliana.prodan@nxp.com>
> 
> Add the reserve-memory nodes used by DSP when the rpmsg
> feature is enabled.
> 
> Signed-off-by: Iuliana Prodan <iuliana.prodan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index cc406bb338fe..59e672382b07 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -211,6 +211,19 @@
>  			reg = <0 0x92400000 0 0x2000000>;
>  			no-map;
>  		};
> +		dsp_vdev0vring0: vdev0vring0@942f0000 {
> +			reg = <0 0x942f0000 0 0x8000>;
> +			no-map;
> +		};

Please have a newline between nodes.

Shawn

> +		dsp_vdev0vring1: vdev0vring1@942f8000 {
> +			reg = <0 0x942f8000 0 0x8000>;
> +			no-map;
> +		};
> +		dsp_vdev0buffer: vdev0buffer@94300000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0 0x94300000 0 0x100000>;
> +			no-map;
> +		};
>  	};
>  
>  	pmu {
> -- 
> 2.17.1
> 

