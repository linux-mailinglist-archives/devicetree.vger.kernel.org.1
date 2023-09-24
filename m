Return-Path: <devicetree+bounces-2795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 548A27AC9F7
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 16:22:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D53B528143C
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 14:22:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AA9DD268;
	Sun, 24 Sep 2023 14:22:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ACDFD264
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 14:22:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A298BC433C7;
	Sun, 24 Sep 2023 14:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695565327;
	bh=t+7ByxdVpRuSPshK0OQaWPRe77wZ1V20TblgJZ9pT0E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pRv9SSCneAW+5eCtKUcpDHftpEXffYrE26zUXCTYzv4mw8ZShDgqF5iRWFN6Y+7sb
	 WBzYoT8fOVvF73n42m6wavtA/KD3QvXq12LK2MObes2dsd1n5ev7MdJTvTbKTfp9g/
	 w2rdCCaNHxVLtHZa/MDtSKzXk0fqHnuff9BpqzZ3JDndWgzn5Pj1Vcby795x48REXw
	 mYxLCRNjH4DMYMIGm+qv4a2QfJELEsagZlj7IC10e/t77nkzQEjGrE8PO1/XoV50XC
	 4pdxLZ4zAx2tJIbpd3MLGaSt0tLew369KUC8K72raR02V6eOVOJhtgLGPWWlJ2T/xS
	 T7I2zZH8KDMlw==
Date: Sun, 24 Sep 2023 22:21:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Describe VDD_ARM run and standby
 voltage for Data Modul i.MX8M Plus eDM SBC
Message-ID: <20230924142150.GM7231@dragon>
References: <20230831181850.154813-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230831181850.154813-1-marex@denx.de>

On Thu, Aug 31, 2023 at 08:18:50PM +0200, Marek Vasut wrote:
> Describe VDD_ARM (BUCK2) run and standby voltage in DT.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Magnus Damm <magnus.damm@gmail.com>
> Cc: Marek Vasut <marex@denx.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
> index 13674dc64be9d..d98a040860a48 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
> @@ -362,6 +362,8 @@ buck1: BUCK1 {	/* VDD_SOC (dual-phase with BUCK3) */
>  			};
>  
>  			buck2: BUCK2 {	/* VDD_ARM */
> +				nxp,dvs-run-voltage = <950000>;
> +				nxp,dvs-standby-voltage = <850000>;

Buck2 is not turned off in DSM on i.MX8MP?

Shawn

>  				regulator-min-microvolt = <850000>;
>  				regulator-max-microvolt = <1000000>;
>  				regulator-ramp-delay = <3125>;
> -- 
> 2.40.1
> 

