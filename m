Return-Path: <devicetree+bounces-90279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24478944AA7
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 13:53:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4789284CA9
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 11:53:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DDF41953A9;
	Thu,  1 Aug 2024 11:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MuKbrDKA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2519190045
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 11:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722513217; cv=none; b=BY3dLNYF25/7gPR2gjdbjJi3bg7x8SaKJqTry6DkobdjE5KtJOubo181S32aScjcBZrMKO6eRt8RBbtsmPnkUDSXTGGxrHNKbHBSISlgft9L4lgF4oyftrQOEAYlSjBsZkCoc0VWd3dUOMcQ03O/E7hxp2X0GomJAGMHnj3xmhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722513217; c=relaxed/simple;
	bh=4T2J2s9duqZxb+9v8Ghu8wRhFvtAYX9kXersZCxQf28=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YQR3jpzRQtewEH2Zbv/3mZgZVBoQqYJyo2zoCRJAWjwPZJOqEtlLSX3Qs98bAlIkptzSv3n3SlrChlesWp8Rjp8DuljG57J+eI5NidqS+BHvxn3HYDoqFIhiLv+JS/4c3M4KNeicPgjsn2yN7jiUn6X4FdXjsZ8x+L8YlD6fvpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MuKbrDKA; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52efba36802so11341223e87.2
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 04:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722513213; x=1723118013; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2bbd6Xp4n6Vbg1uGGwVqlSUaRWaDu6ao7nozZz+TGJs=;
        b=MuKbrDKAWElOLcuRMS8SHiK13onHkupbmo/iOA6KKBIVr6hUqnTdVwRkvBeVtwoqaD
         MOolrifThTU0w/I+SrLMqygB+UTdqxxAT+vwkHNA2dNoJPINXZ+XvsFK+7fP9rWjIEn8
         L14LicZyoDLAI++PN2jwpjsbz96KS77YA1Lu2EY3lYA1jyDT+rwEE8WfkYaFRYZl0j0S
         wFuNDtczWWUG2c0yEKlby9tauVfwWOO8l4LQNCktYb1wiwqyyyZtZaH4KTnC61+rt/+W
         3yMuowGgdhz83eFBMws1AdmiHqB0DASWW4W4wiX7WJiOWfKaMvDsidQSWjVWHs5CO6JS
         5Gug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722513213; x=1723118013;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2bbd6Xp4n6Vbg1uGGwVqlSUaRWaDu6ao7nozZz+TGJs=;
        b=gtwnlJf9OHCewBO7sjFaNEhk50X25b/leh2usMVGDCkTM3MYZR39HCqGYK9kWhFZkN
         UqWXF99i3k6/gikKMMIYmOAryQQDxpZAdJsY8gaUA5IJ//zY0SBBD0oNFhiGiZvF9el8
         BXh3B8AU03sqcnxjLCioPC11tfEBmaXpoO4ImtOnyrUEWhmlRJE1uvHZ+dyufSjqlefq
         2goYKHHfJXZ5g+VzYg589rRBEWeenfxQbjc1KzccLHlAObUnEI3EMdCk2IeqcLUcGtip
         MoNomc2FkwrHHtgXBMvobENYCktPPaif2SuKg0uGfYEVKp0sSmru8+VDsnBNh4I8RtR2
         IbkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVs9X0AI1mPLxrRqqATjV22w2f4lfj++EyENNgU3zmK0TcEI2g90N2dg9rmHFRnPDInBiz83dRW4mufaIVAdoubIOb3ZhHSMAFnkQ==
X-Gm-Message-State: AOJu0YwU7j7T0nm7LnwSAosxo/2O6lkJHrVYO/vgvXcbbQAEuLR4LBMY
	JeVcg5h2vvLVeWhwSCus5r2EhnBRoV1loTxfpyDt/Ka06LzLrnhCZskDuSe5Ktu2X+l2QG/HrRh
	S
X-Google-Smtp-Source: AGHT+IEWBghCHBmUnquOCBeh7BgDWoFFzqvzlEGNdmNNkRqQNvPx7USWTdpENhwDy1e+zzUB1WQiWQ==
X-Received: by 2002:a05:6512:32ad:b0:52b:9c8a:734f with SMTP id 2adb3069b0e04-530b61f3346mr1259074e87.50.1722513212500;
        Thu, 01 Aug 2024 04:53:32 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5bd0f6fsm2592680e87.97.2024.08.01.04.53.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 04:53:32 -0700 (PDT)
Date: Thu, 1 Aug 2024 14:53:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: gregkh@linuxfoundation.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, andersson@kernel.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Subject: Re: [PATCH v2 3/3] arm64: dts: imx8mq-evk: add typec node
Message-ID: <hxqisqspywda7qqsxrkfpyuqjbbyvcexsue66hppku4souxmsa@p2nlelq7czco>
References: <20240801064907.3818939-1-xu.yang_2@nxp.com>
 <20240801064907.3818939-3-xu.yang_2@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240801064907.3818939-3-xu.yang_2@nxp.com>

On Thu, Aug 01, 2024 at 02:49:07PM GMT, Xu Yang wrote:
> The first port of USB with type-C connector, which has dual data
> role and dual power role.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---
> Changes in v2:
>  - modify endpoint label
> ---
>  arch/arm64/boot/dts/freescale/imx8mq-evk.dts | 93 ++++++++++++++++++++
>  1 file changed, 93 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> index 7507548cdb16..8169ed7c7968 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> @@ -6,6 +6,7 @@
>  
>  /dts-v1/;
>  
> +#include <dt-bindings/usb/pd.h>
>  #include "imx8mq.dtsi"
>  
>  / {
> @@ -27,6 +28,20 @@ pcie0_refclk: pcie0-refclk {
>  		clock-frequency = <100000000>;
>  	};
>  
> +	ptn36043: typec-mux {
> +		compatible = "nxp,ptn36043", "gpio-sbu-mux";

PTN36043 isn't an SBU mux.

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_typec_mux>;
> +		select-gpios =<&gpio3 15 GPIO_ACTIVE_LOW>;

space after the equal sign.

> +		orientation-switch;
> +
> +		port {
> +			usb3_data_ss: endpoint {
> +				remote-endpoint = <&typec_con_ss>;

Where do SS lines go after the mux? Please describe them in DT.

> +			};
> +		};
> +	};
> +
>  	reg_pcie1: regulator-pcie {
>  		compatible = "regulator-fixed";
>  		pinctrl-names = "default";

-- 
With best wishes
Dmitry

