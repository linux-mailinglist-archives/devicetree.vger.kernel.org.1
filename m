Return-Path: <devicetree+bounces-109507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AED54996943
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:52:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 13F99B23BBC
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 11:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C87D1922EB;
	Wed,  9 Oct 2024 11:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bconrrnh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6291B192585
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 11:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728474707; cv=none; b=AbVbmabUPs3JExel4wmzyoVfyfsP2i2XyWLuHFNg9XmaAFghezQDg9lRyoL+3lALv75Hj9KCaT2CxWf0ylo7ZCGAUR99CC+rpH/OeiMkzdLTYbGBAjdd4rpIQCA185hhof0+xOThmp4nXiD+P2xnycnK08TACuD0a70kcQ8Crkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728474707; c=relaxed/simple;
	bh=7+eISHNu4uiQ47pDt/DSf8ldSBnlnXKbXyoRYwTIlV4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KeRytNuWMnpz072IEi1EdZcZXdM0w5aWJ15W5uFWsALDZXwsrEj/ZSYFXItigzVkj0baRL8cuQLx+UnZWvyEgWq7y3pRNxCKwmmUIZLqfUii0nEuwU0Z2Br7sh78rd1WZF/pvfvnpHtmBIHLGyVN3tiw6Qtl/YK950816POhMp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bconrrnh; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5c42f406e29so8679173a12.2
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 04:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728474704; x=1729079504; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Q6jKWjRvRRcJdMU7TrSrOqImZ9Mn58A79NvUZszvi6E=;
        b=bconrrnh5UBET17mgUpmkSN1m5qgRjh8eCY5G/Naz8I2SL39LdYZ5Bf64LNbSaPkld
         P/10x2VoSwFA4xiPciX/BNBSh5TuiHrTbeGU9DJqf1BhrmYtfRirvtbodKDu+svDloKu
         O3vhd4hmbPZ4LTx0o7PUe2Y6ikDymaKnW5glnhfpDtOCv6o4OM1mDl6CDGPb1AFbCbYc
         8/zYqR4SuYiNr+tNx1UPGhQzI1oxRVxt9lxpyOqYrfRh86AcfAqSFPnGEj3PFlge6byP
         2OZu7GY6q0OsjFzYup4QZiFAGx7+zEBR+cUV5YdIk8McceVI6DxE+5c4VSmpTtqGHbcU
         AH2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728474704; x=1729079504;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q6jKWjRvRRcJdMU7TrSrOqImZ9Mn58A79NvUZszvi6E=;
        b=fV9LWCp3uaZ1cdN6sklxi9b7U37oQn405W3ONKW3Wl3suH1FCgOMOa3wayE7Y/4EGU
         Cjl2dN/phIxxF1nNssGiYnzHSRERZsc5wJsGY15/Hk7ju9N8RMhLGMFIhTImaY9Y9DKd
         heLmNRdMHAVColUTapRNOpLFWCOa/EE6xbdQMYpSsUPSiiJsYav5+4lFR3CTNtWHOa0a
         V+OZOP5Z15Ebr8ZVdNaEwMiZ+JsAaHV+aHUAriikNKsu7Lh50Emi8JfLpn1rvfomoIix
         FbhJURBgs5ThvpS19oJBgtPWbnAC4vLDz12cL7JBbOmpiyoG9N0tl4xQrhLcV/ei6YIL
         Vd3A==
X-Forwarded-Encrypted: i=1; AJvYcCWfJ7yyVkL/oXwVzJqN80IubB/16FyrSt8GY42CbzZrkIzU6yZs9Bp6bBim/ls8n3001WbSb7ODfCat@vger.kernel.org
X-Gm-Message-State: AOJu0YyO3T3k+i7zKkH/Ajg1RsytX6x6V7o9qYDaNWTvj4slXX6tU1iz
	6LU6MSUajdNm7PU76Kv9KOplH9NaoLqcOVvia7N4WGtFY6pj1bWgmrhX/Zb0KS8=
X-Google-Smtp-Source: AGHT+IGKpe5RJdRvKaNKGeWlJU8yuhUR86qwyFDbVPAhlwFfcx+fGtxwpK017I4wKqBnPOdRSWgB4w==
X-Received: by 2002:a17:907:3da7:b0:a99:451b:38fe with SMTP id a640c23a62f3a-a998d174df2mr179992766b.26.1728474703666;
        Wed, 09 Oct 2024 04:51:43 -0700 (PDT)
Received: from linaro.org ([82.77.84.93])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a995668f4b6sm396323966b.48.2024.10.09.04.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 04:51:43 -0700 (PDT)
Date: Wed, 9 Oct 2024 14:51:41 +0300
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
Subject: Re: [PATCH v2 1/2] clk: imx93: Move IMX93_CLK_END macro to clk driver
Message-ID: <ZwZuTWspV54Pn0GN@linaro.org>
References: <20240627082426.394937-1-pengfei.li_1@nxp.com>
 <20240627082426.394937-2-pengfei.li_1@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240627082426.394937-2-pengfei.li_1@nxp.com>

On 24-06-27 16:24:25, Pengfei Li wrote:
> IMX93_CLK_END was previously defined in imx93-clock.h to indicate
> the number of clocks, but it is not part of the ABI, so it should
> be moved to clk driver.
> 
> Signed-off-by: Pengfei Li <pengfei.li_1@nxp.com>
> ---
> 
> Notes:
>     Change for v2:
>     - Use pre-processor define to simplify code.
> 
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

TBH, I don't like this. And I still don't understand the reason.

Where are the clocks you want to add ?

And why wouldn't it be OK to just keep this in the bindings header even
if you need to add more clocks ?

For the moment, I don't see the value of this change.

Sorry, but NACK.

>  enum clk_sel {
>  	LOW_SPEED_IO_SEL,
>  	NON_IO_SEL,
> -- 
> 2.34.1
> 

