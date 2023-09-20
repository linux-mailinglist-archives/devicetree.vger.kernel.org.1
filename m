Return-Path: <devicetree+bounces-1841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7577A89A1
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 18:38:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D2BB1C2093C
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 16:38:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B1023E46F;
	Wed, 20 Sep 2023 16:38:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C468347A6
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 16:38:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69B7AC433C8;
	Wed, 20 Sep 2023 16:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695227915;
	bh=AgYijWzT5fNgSzF/C7Jot8W6orxc3fFWdO1GipiPPGg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=glL6tI1vEyAqBpV3z1E7pIHhWkHpXUMz7qTblOwbDmKT/EL9u8j6yceLwut8Tgx/n
	 X81BblqXbF8R9DOUFsP0rN+mwfGH+lHUJtVgNrM4UsQuU+oXFsXWrPlL3beFHePx7c
	 juhXhwm7k8sX8Nb319nGivK40ooVpm++zuXUvf9JTkN2Kzq2aMzytAB+BqCBvdrwke
	 9t49eU6j30Yd5rh2vxTE+5iSLcdp1BDVDZmxsQ/HzVIitgQk9yv57iD/FMsWtO2yvT
	 RuxAYfedqZRldLLCPAfL2uEQngVLq78ACz+MriKO3ucwASXBxrryPbFUczLjvVLUqN
	 mGrbL8BPhCeSg==
Date: Wed, 20 Sep 2023 09:42:42 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: agross@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: pm8150l: Add wled node
Message-ID: <sofnrufl5lkxozwjq5fzqjmkkqdk4gokevylzun6isithgfhgu@nibgf2y7tx34>
References: <20230913185514.21840-1-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230913185514.21840-1-danila@jiaxyga.com>

On Wed, Sep 13, 2023 at 09:55:14PM +0300, Danila Tikhonov wrote:
> WLED is used for controlling the backlight on some boards, add the node
> for it.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

> ---
>  arch/arm64/boot/dts/qcom/pm8150l.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8150l.dtsi b/arch/arm64/boot/dts/qcom/pm8150l.dtsi
> index b1686e5777b8..ac08a09c64c2 100644
> --- a/arch/arm64/boot/dts/qcom/pm8150l.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8150l.dtsi
> @@ -132,5 +132,15 @@ pm8150l_lpg: pwm {
>  			status = "disabled";
>  		};
>  
> +		pm8150l_wled: leds@d800 {
> +			compatible = "qcom,pm8150l-wled";
> +			reg = <0xd800>, <0xd900>;
> +			interrupts = <0x5 0xd8 0x1 IRQ_TYPE_EDGE_RISING>,
> +				     <0x5 0xd8 0x2 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "ovp", "short";
> +			label = "backlight";
> +
> +			status = "disabled";
> +		};
>  	};
>  };
> -- 
> 2.41.0
> 

