Return-Path: <devicetree+bounces-182120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBA6ACA924
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 07:58:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE966179D69
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 05:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 960EE13AA53;
	Mon,  2 Jun 2025 05:58:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCCA82C3251
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 05:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748843903; cv=none; b=uiVetqnERcboAMh55ew/n5j4bDe2aWY7zt33E5WFrtnZdxSZ8BR7vVFF5mZbOI0j4E8juuShyEQBy5cl8R7yIGK5N7YkUZDOxiEbcoKb5L7gIlXc1NyDLDwvQikPGWNRmtOfQh9OcqzNKTL0LtX9AqkMKQQiye70wzmOqbd9AQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748843903; c=relaxed/simple;
	bh=BlAccEP7azyMG34bgH8C4z4l7+9bBb4IqMdJOIlkm+I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rKg1Brr4JZEy3N9LP5Bd4SlaQOTLiTlfv65GC5P0AbXaYf6UCGnKPe8vAOuqqghEbd0zQuabyrHqz/lzobRSuHhMdy87tiSJ8Fhk714PjCqL0cqg42JVIcpm5abdJmNNYUxH9CSxBIhU/1RjscAMb/CfGDasYO57BrIpsrv7BJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uLyBT-0004cf-Q8; Mon, 02 Jun 2025 07:58:07 +0200
Message-ID: <1214db7b-dc79-4a3a-a1cc-0b09b3216d30@pengutronix.de>
Date: Mon, 2 Jun 2025 07:58:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: imx8mp-nominal: Explicitly configure
 nominal VPU clocks
To: Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 aford@beaconembedded.com, m.felsch@pengutronix.de, imx@lists.linux.dev,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org
References: <20250530221713.54804-1-aford173@gmail.com>
 <20250530221713.54804-4-aford173@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250530221713.54804-4-aford173@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello Adam,

On 31.05.25 00:17, Adam Ford wrote:
> In preparation for increasing the default VPU clocks to overdrive,
> configure the nominal values first to avoid running the nominal
> devices out of spec when imx8mp.dtsi is changed.

Thanks for keeping imx8mp-nominal.dtsi users in mind.

> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
>  .../boot/dts/freescale/imx8mp-nominal.dtsi     | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-nominal.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-nominal.dtsi
> index 2ce1860b244d..f269f7a004fc 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-nominal.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-nominal.dtsi
> @@ -89,4 +89,22 @@ &media_blk_ctrl {
>  			       <1039500000>;
>  };
>  
> +&vpu_g1 {
> +	assigned-clocks = <&clk IMX8MP_CLK_VPU_G1>;
> +	assigned-clock-parents = <&clk IMX8MP_VPU_PLL_OUT>;
> +	assigned-clock-rates = <600000000>;
> +};
> +
> +&vpu_g2 {
> +	assigned-clocks = <&clk IMX8MP_CLK_VPU_G2>;
> +	assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>;
> +	assigned-clock-rates = <500000000>;
> +};
> +
> +&vpumix_blk_ctrl {
> +	assigned-clocks = <&clk IMX8MP_VPU_PLL>, <&clk IMX8MP_CLK_VPU_BUS>;
> +	assigned-clock-parents = <0>, <&clk IMX8MP_VPU_PLL_OUT>;
> +	assigned-clock-rates = <600000000>, <600000000>;
> +};
> +
>  /delete-node/ &{noc_opp_table/opp-1000000000};


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

