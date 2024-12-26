Return-Path: <devicetree+bounces-134104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D799FCB76
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 15:42:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CF61A7A25EF
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 14:42:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC41729422;
	Thu, 26 Dec 2024 14:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fzBXx8qb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B02C8C5
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 14:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735224064; cv=none; b=qZa0v47j3l6BczpLjnrOz8EKuujNGXuy+EagTDHFsie/Ozej4UNgJH5rf/be2oO+zRwAZx9C17BcXo04x2PJGPEpdLn2W1f7M/KMRwO6nv6ztK5iVeAhV4l+QvNUHay5vlT3ME+J1rhFpxhOa7erC+bec62PzRXS1unApnANlt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735224064; c=relaxed/simple;
	bh=CDJo8kESXFKCvYAWUmatdZJVWIm0WawwcEFXIhXwWVQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q6rNwRZUp3oRCrViJwHyNyoGKUATfY6NWmV/NnQsVGEb+9i7GPyYEjiHpyB886a2PQX5Dp9gk5vPxDcyBFBNYt7hYFrB34uqWXK3QScc8Ddy9cBMTaFQL73IwtYEdM4OdyOoMW57c1XaCkjxFo/4CZFHib3gHbeTVcFIlynoM54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fzBXx8qb; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43624b2d453so69060775e9.2
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 06:41:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735224060; x=1735828860; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EaV50W72dcye3DySmDtBOo9K9oTUuHhi5CzxEbusJOc=;
        b=fzBXx8qb9iEDzxbpIzeNMsNukKzqysaWXUx7rtw/XVxewNWV3zQSAS7z21AJKXPluA
         Uoi74+umF70mlWuZ64wR+xHBVO4u4tWsjrYwaRGhE+UPiAsN3lVUlAmjBmXJIF+XZFBY
         EpX9XBubNc4ySkAPmmb73U7DJbOKDsmiXPwOY/03/NFUiocflPXjNjk67mJNl6xan/MU
         GQSQJdudCl8QwBrN/FRNwJYG3bKylp8lCogFwrklIFzkAdUCDejqXnQH6hHpP/AnU+TS
         +37TL4XVOvnUdWiJQ4/MuwT1rz+RZN0LEoiDPI804nJQbVXeiE0Iud2/kgAQUAtQWgUr
         jpMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735224060; x=1735828860;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EaV50W72dcye3DySmDtBOo9K9oTUuHhi5CzxEbusJOc=;
        b=BNHopkr34UL4wapDqZTSNE4mkPbpEb3hsIMBGJOqN0wo+TKqGW+lnZElJE5nvcJjQK
         GMK9PxWloE10KYqRfqwtbLdKbdMlooP+t3Prd4bm2AnIp+D8OjvozqAaiqUgKhJ4FCij
         pXLpwCZ9hJi6/8JgWBPyFCWVzYBVso8kZAWnS7tEr7wIHdnUhNX/JEd1dHQUYjS/s/q/
         ot/gh1Xa7gqdMPtMrmELm0xu6wSTjd8I8khrEuwGPpKUUCH6uPpDSMfCZwd11bRoB7Gb
         8SLVxY+fUfGTJHLURiXEtR14UtiCr7vODwrGoMIBUUU8+IYtx6DuJOd8BkZcGJhlZwBg
         OYWA==
X-Forwarded-Encrypted: i=1; AJvYcCWztZv2frp/dK95nxfsYPip9GRPfXjNQmnx6gtQyDnEl0Uu/7b3/NLUgjJ5nUejWrv6P1d1WC2BIiMG@vger.kernel.org
X-Gm-Message-State: AOJu0YwBxgBzg+hO2hpSv28Ycw4fIemGH/UTee2jVmhLSqAvGkgGzaC+
	Hw2KPYwBsc4LqbvZzCDuyMty43wr+B8eQBOHGIE/9QavOu4VTg/sEeeMLgARzLg=
X-Gm-Gg: ASbGncvrt837HboaoayYDXInute1cDtqmRykmsCOt9NzuXAAtj9sxmdThG8neeJL65U
	fJcFJtVDG2UZBKAZsQPa4+9mleg7dIk95XyGwuhJSaJtCBOmaV9OBNwLFR4z61rQnckOxKAC4G6
	eSomLuKyK9gYTduXy0m1MoUT0cp+O8R2x2dx/bsxqkhWT8CS3cTc4Fams0aVpePWYbnuqFkN2kr
	eD6+649l0RUz1MXrJ8VsVuxHnY7pN+3bv5EJQlK081FqnUo+xKLAAA=
X-Google-Smtp-Source: AGHT+IFAkeYRxenuSnMh5whe4fj3qf2FXC2/YY8gmQiLBoDE4x9299sSrv8G4XcwveZUu2qAO5Z/wA==
X-Received: by 2002:a05:600c:1c95:b0:434:a1d3:a321 with SMTP id 5b1f17b1804b1-4366835c1b0mr210961505e9.3.1735224060629;
        Thu, 26 Dec 2024 06:41:00 -0800 (PST)
Received: from linaro.org ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366127c4bbsm233695145e9.32.2024.12.26.06.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 06:41:00 -0800 (PST)
Date: Thu, 26 Dec 2024 16:40:57 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Shawn Guo <shawnguo2@yeah.net>
Cc: abelvesa@kernel.org, Shengjiu Wang <shengjiu.wang@nxp.com>,
	peng.fan@nxp.com, mturquette@baylibre.com, sboyd@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, imx@lists.linux.dev, shengjiu.wang@gmail.com,
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: imx93: Use IMX93_CLK_SPDIF_IPG as
 SPDIF IPG clock
Message-ID: <Z21q+Xyz7bQjN+yJ@linaro.org>
References: <20241119015805.3840606-1-shengjiu.wang@nxp.com>
 <20241119015805.3840606-4-shengjiu.wang@nxp.com>
 <Z1bkixjbyFhH3ZgL@dragon>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1bkixjbyFhH3ZgL@dragon>

On 24-12-09 20:37:31, Shawn Guo wrote:
> On Tue, Nov 19, 2024 at 09:58:05AM +0800, Shengjiu Wang wrote:
> > IMX93_CLK_BUS_WAKEUP is not accurate IPG clock, which
> > missed the clock gate part.
> > 
> > IMX93_CLK_SPDIF_IPG is the correct clock.
> > 
> > Fixes: 1c4a4f7362fd ("arm64: dts: imx93: Add audio device nodes")
> > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > Reviewed-by: Frank Li <Frank.Li@nxp.com>
> 
> Hi Abel,
> 

Hi Shawn,

> I guess it would be the best for you to apply the whole series through
> clock tree?  In that case:

Sure, will take this whole series through my tree.

> 
> Acked-by: Shawn Guo <shawnguo@kernel.org>
> 

Thanks,
Abel

> Thanks,
> Shawn
> 
> > ---
> >  arch/arm64/boot/dts/freescale/imx93.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
> > index 688488de8cd2..56766fdb0b1e 100644
> > --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> > @@ -925,7 +925,7 @@ xcvr: xcvr@42680000 {
> >  				reg-names = "ram", "regs", "rxfifo", "txfifo";
> >  				interrupts = <GIC_SPI 203 IRQ_TYPE_LEVEL_HIGH>,
> >  					     <GIC_SPI 204 IRQ_TYPE_LEVEL_HIGH>;
> > -				clocks = <&clk IMX93_CLK_BUS_WAKEUP>,
> > +				clocks = <&clk IMX93_CLK_SPDIF_IPG>,
> >  					 <&clk IMX93_CLK_SPDIF_GATE>,
> >  					 <&clk IMX93_CLK_DUMMY>,
> >  					 <&clk IMX93_CLK_AUD_XCVR_GATE>;
> > -- 
> > 2.34.1
> > 
> 

