Return-Path: <devicetree+bounces-111941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3FE9A05A4
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 11:37:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1997128A1EC
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:36:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A66A5205E1B;
	Wed, 16 Oct 2024 09:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EAx/kyrR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEED7205158
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 09:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729071414; cv=none; b=sY20qJzo4ux+2W569pVdVVdZtwiC4F7uyBQfVKH8ls2bxllYBx4s5G0yxHcupjIpw4RM9pa0U92YXKo3d8fIfokVjlyylwHQ7XdFmjvgA3aoh4/Z4no0gmOduu4aQSwCXrG5G+sfhKfIXZjFygBeiFy7yt+YgOfKdDdXEtgRhEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729071414; c=relaxed/simple;
	bh=AF2PqunK1k+XUN3mW+Re5acyYvzfPCvF2Hb4iVv5SHM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LhSjzSm5UcOW8TTiea3kVuaclyg4JZE3dWPCrRcwjDsJsdGwDPu5scnZLnSLTVjbq2+6W+EER3BEQsV9U0yA7iE9cg8OJKXe9sD1IVKrv/Y0ZrDELuD2OGjVEa6NXTkGZ8EUQU6QxfptSrrF4sQD75Yw/vtYqJHeW/iEBfvmfaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EAx/kyrR; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43118c9a955so53790785e9.3
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 02:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729071411; x=1729676211; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fxIP+503HmacKr52hF4cwN6vKpq9JVczVJoJF+op9ME=;
        b=EAx/kyrR+Av9RHjIel0Zk3ZKOguBI9KYZ6RbiPrEEYx2C+2zc6dvaNTdxpell8VDdl
         pFWF6ADVL/tlDRE0jIXOH13tDqy1cuRUBvFHCz8CO2eYbGL/fzcsV09s2MFr2WsLupHw
         QPOtADxtEgWUH9Cm2o2t1deJokwjiFGtcHPkW4sodffi+UGP2kqJGZDv1Jh6vl/y8Cem
         EgO/ALORlGfXAx6ttwtVpSkyfIqvIp2zmOdSf2cdjLYAbBjIJCSRUGKeMYX7uw96pGAI
         416T0+sobZRvZrop9E/MCsxs+SGCpjwsdoyK8kN4iSgvvCjO8ZUijJ/vJv40a+nFcISu
         c2tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729071411; x=1729676211;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fxIP+503HmacKr52hF4cwN6vKpq9JVczVJoJF+op9ME=;
        b=QxJfKxaxvMgybcQkU2AL9qjMS4TMFEFphOvTuyFtfZVfZJ3TrZUTnzhNwA9xO6Q6qg
         ze6eSufny46LuRkn+dwNCY/fs6lrU63MswYqnyQVBF86yQVfK4ia81bftdsnb4PTvbOn
         eMXJgAQCL2mzbIx57IEbynAv3QnvmxI9BDc0BUB1Zc5bxjQbv5aRMCaZIcuBxDs6ZTS7
         xM0JOTcaNESrkIG1w985q7c8wk5Ec00LIat2Jhv0Qv35CmgfarDohYH5aDZrQDD9xiYz
         HWCn9BXJJAtiSb/qgB3KOJo145K1v7XZJbysY6EH6Ep+qxz8WUc3iaEUbLvSdangKhdc
         IxxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUl9kfGoi+MlkBrdSYFjAXzh4cYBFMJCtepEwISWHW0jK7NwME18NBYpd3Ol2+kBUgUW/EpR+J1MBQs@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3GLnjcy/bnz/7YcWpG5fK6GJrgxWj++s9+gRIp7uJB2d7Zsbv
	mrb8ivMkN1/4Sg2Zb2jsw7ssCnEhK/C+D9VcfvptjfXBQga69AviXyhUAh+AIzg=
X-Google-Smtp-Source: AGHT+IG6fNHMCd9wfwMroBHIryaVFXQVYfqJpieR0jsQIFDOAiMSqq1/ES6dB3VtdNGRUPAFimGMVw==
X-Received: by 2002:a05:600c:3555:b0:42c:bb96:340e with SMTP id 5b1f17b1804b1-4311df56158mr144236185e9.31.1729071411221;
        Wed, 16 Oct 2024 02:36:51 -0700 (PDT)
Received: from linaro.org ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fc123dasm3798064f8f.94.2024.10.16.02.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 02:36:50 -0700 (PDT)
Date: Wed, 16 Oct 2024 12:36:48 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Pengfei Li <pengfei.li_1@nxp.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, abelvesa@kernel.org,
	mturquette@baylibre.com, sboyd@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, ping.bai@nxp.com,
	ye.li@nxp.com, peng.fan@nxp.com, aisheng.dong@nxp.com,
	frank.li@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
	linux-clk@vger.kernel.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/4] clk: imx93: Move IMX93_CLK_END macro to clk driver
Message-ID: <Zw+JMMUOErRKqEH1@linaro.org>
References: <20241014182438.732444-1-pengfei.li_1@nxp.com>
 <20241014182438.732444-2-pengfei.li_1@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241014182438.732444-2-pengfei.li_1@nxp.com>

On 24-10-14 11:24:35, Pengfei Li wrote:
> IMX93_CLK_END was previously defined in imx93-clock.h to indicate
> the number of clocks. However, it is not part of the ABI. For starters
> it does no really appear in DTS. But what's more important - new clocks
> are described later, which contradicts this define in binding header.
> So move this macro to clock driver.
> 
> Signed-off-by: Pengfei Li <pengfei.li_1@nxp.com>
> ---
>  drivers/clk/imx/clk-imx93.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk-imx93.c b/drivers/clk/imx/clk-imx93.c
> index c6a9bc8ecc1f..c8b65146e76e 100644
> --- a/drivers/clk/imx/clk-imx93.c
> +++ b/drivers/clk/imx/clk-imx93.c
> @@ -15,6 +15,8 @@
>  
>  #include "clk.h"
>  
> +#define IMX93_CLK_END 202
> +

Sorry for this back and forth.

I've been discussing this off-list with Krzysztof and others and
now I think this is actually not wrong.

So:

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

>  enum clk_sel {
>  	LOW_SPEED_IO_SEL,
>  	NON_IO_SEL,
> -- 
> 2.34.1
> 

