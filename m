Return-Path: <devicetree+bounces-87159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9393C938B1D
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 10:24:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45CD12817E0
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 08:24:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 416A0166308;
	Mon, 22 Jul 2024 08:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZMVgYA/S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696F7161313
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 08:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721636679; cv=none; b=fSiXRriywv5elseBdh1JmuKbXtCpBRjLgkJXRskORKE2RURS0QKZEqwVDp36s3zLWVHYC6DQSsacfdKk1CDyXaEIA1W/YRI2/j03Dzd1HcaHmaFYy2MxVwnvohnXOsYs5CVCL36sRlHQ46whsRyPBXHdvrxgaMnCDbLiOTAWa3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721636679; c=relaxed/simple;
	bh=dOl0YE5EVmUekTPh1z3GkHps3RoYLWAbv+veTel0xyQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RtShr4ou+uxY7bsfwYinu1JUcptpU7A9J0mmQe4GGeuPhtlADBdaA60HfERIEkH3tWiFHyXy4coy05ikW6OsDPT/GPlR0F70vPHc2cxsT2holEsQzQO3F1ieiaI6rKTYMBh+VnwRTurV63qm6ssaSkE6QVX/Dt4zAFcwHi48lwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZMVgYA/S; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52f01afa11cso1461966e87.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 01:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721636675; x=1722241475; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZgzE/IxCJWBRiP2I7PFm4ei8b0N+E/ct1yB02Kh58Sw=;
        b=ZMVgYA/SKaQC5f2j9DZjl3cx19EfHbzZoFFI2Dgf89FGpjjssAdU0d9jLpGo8X5EwI
         0D0hJpljANaOdVTKKpWxS7VY6NAFDjFGC3cYvu3NsHHag5Lc6V3xoeeRH6TZMxN/1J2j
         3XyqnoBObhm+T5X9G4rDZf4fLsbACtWP+aUaN1to13U/wfMx/eoiUGyHQjBHQT19z25o
         vXQHLD3tXrnGrOxhlC2uvGv3SEUgJiluoUT56KGQGxgHjRPx9y1ZShmDLpuNXbw7xc5x
         EtjUEBOsZUanuusKaJIORj8nBzHtFlcWR2YMROUs+ivLpCodFkpgry/akJ8XcPJMyuU2
         3rDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721636675; x=1722241475;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZgzE/IxCJWBRiP2I7PFm4ei8b0N+E/ct1yB02Kh58Sw=;
        b=Nrt2w5mSQ0GNoEd8K3nBeNGf/KI4CwXGpFIXq7Juf2Zlrr9M/GQx8ylu5VvLOJ9rpT
         E4uV2vUDgwyLu/4CwDMAJgrKVwWiWba9XLD7WZLNhKpVIF2oP2WC3M8dcJTCyvQsRAl5
         0JhkZUOe2XZ6Z2dKKOZlwvsAZGhVZuelpoYB+RT9Zl7+PtsfmgZA0MVKyP+VJyv83Frn
         QkmREjVZGtOeSw2xe2qJ4jcAuRH6WBUv/jUVpKCI+HCIwmsD6jKCk3uWLN1M9b+mF1RZ
         2/ADwAI0I3cybYHCCwstdWy9zShsElntyLA/x1uyY9pQUgj2lNqV+tXzEVhayuKg5HTe
         FjdQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9E0BBW8XyytU4+sXTAN9zLXQvt0fafIUCNo+EKJCQTOkda2A7Ns/gARpxAqyjYfndClziRlLnNjFwbFC+djUBgPynh4treylgkg==
X-Gm-Message-State: AOJu0YyxEbN7ICHpCDPquu2KB4CsV5NEdJpbQ75ZHaarPRkeG7N95g2b
	4tFUBbtCyrJ67jHt3KGTaZOe2218XXMTVpi8hltttpg/pO8wos/6CfeFMs4+/8Q=
X-Google-Smtp-Source: AGHT+IFrF/v3D/EbEYt4Vwr1M6wYuXzOKRe+7Qed7iAdA18QZ/SGcjYDjEKN1Yi8ZAK82iRriZoPWw==
X-Received: by 2002:a05:6512:a86:b0:52c:b008:3db8 with SMTP id 2adb3069b0e04-52efb77a765mr3360812e87.38.1721636675345;
        Mon, 22 Jul 2024 01:24:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ef5571de0sm1114612e87.202.2024.07.22.01.24.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 01:24:34 -0700 (PDT)
Date: Mon, 22 Jul 2024 11:24:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, konrad.dybcio@linaro.org, djakov@kernel.org, 
	quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 3/5] clk: qcom: ipq5332: Register
 gcc_qdss_tsctr_clk_src
Message-ID: <bgu4ii2lumk2afgendf2hrcj57gavqd7k3essblcqnhue2auy3@bkmfy4zjv3xs>
References: <20240722055539.2594434-1-quic_varada@quicinc.com>
 <20240722055539.2594434-4-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240722055539.2594434-4-quic_varada@quicinc.com>

On Mon, Jul 22, 2024 at 11:25:37AM GMT, Varadarajan Narayanan wrote:
> gcc_qdss_tsctr_clk_src (enabled in the boot loaders and dependent
> on gpll4_main) was not registered as one of the ipq5332 clocks.
> Hence clk_disable_unused() disabled 'gpll4_main' assuming there
> were no consumers for 'gpll4_main' resulting in system freeze or
> reboots.
> 
> After registering gcc_qdss_tsctr_clk_src, CLK_IGNORE_UNUSED can
> be removed from gpll4_main.

Commented below.

> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

Fixes?

> ---
>  drivers/clk/qcom/gcc-ipq5332.c | 12 +-----------
>  1 file changed, 1 insertion(+), 11 deletions(-)
> 
> diff --git a/drivers/clk/qcom/gcc-ipq5332.c b/drivers/clk/qcom/gcc-ipq5332.c
> index f98591148a97..237b6a766179 100644
> --- a/drivers/clk/qcom/gcc-ipq5332.c
> +++ b/drivers/clk/qcom/gcc-ipq5332.c
> @@ -126,17 +126,6 @@ static struct clk_alpha_pll gpll4_main = {
>  			.parent_data = &gcc_parent_data_xo,
>  			.num_parents = 1,
>  			.ops = &clk_alpha_pll_stromer_ops,
> -			/*
> -			 * There are no consumers for this GPLL in kernel yet,
> -			 * (will be added soon), so the clock framework
> -			 * disables this source. But some of the clocks
> -			 * initialized by boot loaders uses this source. So we
> -			 * need to keep this clock ON. Add the
> -			 * CLK_IGNORE_UNUSED flag so the clock will not be
> -			 * disabled. Once the consumer in kernel is added, we
> -			 * can get rid of this flag.
> -			 */
> -			.flags = CLK_IGNORE_UNUSED,

You can't drop it in this patch, since GPLL4 still can get disabled if
GCC_QDSS_TSCTR_CLK_SRC gets disabled. This chunk should go to the next
patch (or you should reorder the patches).

>  		},
>  	},
>  };
> @@ -3388,6 +3377,7 @@ static struct clk_regmap *gcc_ipq5332_clocks[] = {
>  	[GCC_QDSS_DAP_DIV_CLK_SRC] = &gcc_qdss_dap_div_clk_src.clkr,
>  	[GCC_QDSS_ETR_USB_CLK] = &gcc_qdss_etr_usb_clk.clkr,
>  	[GCC_QDSS_EUD_AT_CLK] = &gcc_qdss_eud_at_clk.clkr,
> +	[GCC_QDSS_TSCTR_CLK_SRC] = &gcc_qdss_tsctr_clk_src.clkr,
>  	[GCC_QPIC_AHB_CLK] = &gcc_qpic_ahb_clk.clkr,
>  	[GCC_QPIC_CLK] = &gcc_qpic_clk.clkr,
>  	[GCC_QPIC_IO_MACRO_CLK] = &gcc_qpic_io_macro_clk.clkr,
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

