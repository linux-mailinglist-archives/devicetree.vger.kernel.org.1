Return-Path: <devicetree+bounces-24483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B4780F4A3
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 18:33:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E31131C20AEA
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 17:33:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 024BA7D89E;
	Tue, 12 Dec 2023 17:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=z3ntu.xyz header.i=@z3ntu.xyz header.b="wnZK1R55"
X-Original-To: devicetree@vger.kernel.org
Received: from ahti.lucaweiss.eu (ahti.lucaweiss.eu [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 286D88E;
	Tue, 12 Dec 2023 09:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=s1;
	t=1702402352; bh=PONtWZTezqJblgRiScird931BKyEOB+UEj0B3pUhbmc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=wnZK1R55JMAgKEgx/WbYLZItfGPEPxblqThDBB/L78zmF8o9Ox0ThGoGvmlpeuOea
	 5JEpoiUO8Rnw6Ju2VeVEKW664wE7XyZ4UT1VL5m4P0kwgqYoyO4gTeMebHYrkzot2G
	 hFMkD2DPZ6ftZqqGuhTdvv+Mq/aDq9XxEc7GhsFE=
From: Luca Weiss <luca@z3ntu.xyz>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject:
 Re: [PATCH v6 09/11] ARM: dts: qcom: msm8974: drop 'regulator' property from
 SAW2 device
Date: Tue, 12 Dec 2023 18:32:31 +0100
Message-ID: <2708106.mvXUDI8C0e@z3ntu.xyz>
In-Reply-To: <20231208004417.3393299-10-dmitry.baryshkov@linaro.org>
References:
 <20231208004417.3393299-1-dmitry.baryshkov@linaro.org>
 <20231208004417.3393299-10-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Freitag, 8. Dezember 2023 01:44:15 CET Dmitry Baryshkov wrote:
> The SAW2 device should describe the regulator constraints rather than
> just declaring that it has the regulator.
> 
> Drop the 'regulator' property. If/when CPU voltage scaling is
> implemented for this platform, proper regulator node show be added
> instead.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8974.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
> b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi index ee202f3f161e..3e1e88d69c2e
> 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
> @@ -349,7 +349,6 @@ apcs: syscon@f9011000 {
>  		saw_l2: power-controller@f9012000 {
>  			compatible = "qcom,saw2";

Hi Dmitry,

With the patches touching the dt bindings I don't see this "qcom,saw2" 
compatible without a second one being accepted by the bindings? Do you have a 
suggestion what do to there? Also thinking about msm8226 which also has a 
saw_l2.

Thanks for working on this old stuff!

Regards
Luca

>  			reg = <0xf9012000 0x1000>;
> -			regulator;
>  		};
> 
>  		watchdog@f9017000 {





