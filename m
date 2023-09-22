Return-Path: <devicetree+bounces-2488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA557AAFDE
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 12:46:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0A119282438
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 10:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26C8E182DC;
	Fri, 22 Sep 2023 10:46:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F6F9CA64
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 10:46:07 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE68599
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 03:46:05 -0700 (PDT)
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D99B73F67E
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 10:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1695379563;
	bh=t+yfri1GJX2TAqcf+QwODASIE2sxjrbU+UlJZ8d2HDM=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=WxJHwSCTyN6EQ2zwOIabZmYr7s5odH0iUgTLqc8N3E4/IsfFya2Upo/R7XJ9KApa+
	 PLVvhJ7Zgtemgw495/OKdqoW5Ii62qLar1oYldRu0HOnfPnrJBgXmS2vQVzwpzsAAI
	 5HFZR+B0+ZS91ssNNVDyR+vcd/3n3Zc80xQClptradm2OdPxLBoVQFRwvCTpLogSa9
	 75Ni2fBfVggtXcE6r/yXMK2xrW3TdjIoSrqEs3XjGH1CsrBpzxrcYrWAKg/tkA2UB9
	 rV+YmBAa93qqSWy4TrhtwCB5+eZ2A0g5OIlP6CLR7m5vp5TUNeSsgQF2oUFabEndfz
	 pAmujtgkg2rgg==
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-77409676d7dso196842885a.1
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 03:46:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695379562; x=1695984362;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t+yfri1GJX2TAqcf+QwODASIE2sxjrbU+UlJZ8d2HDM=;
        b=XKwAsoUSiIBNCylo37zpf9nZhlVXip7dCM87vXGnflQY+SM0WSUd0EV6Sj99JozghJ
         LddQmvIgp8YEl2x0UwU8jh1jrV44mDjG/MTMNgi7HhcMu1pCbpmQt83pdU2Ar/8aLF8l
         xZdIaSDJYm/3Auh46lqW1+8dfWMOJE7mgQ9GbRxLRcjJhLRO9eMUHrmb+Tk4+KnPom7F
         3StyEjKV0U8ftzKNlVdwWqDfHev5UsbJjiLiwHlNH5NsswITK7bA+T4KvwYD+QYb/2wO
         rrFzFCiWqRSNcsxgdkimksQ/TENeFnTrKkK8GiDNxY0fj1cwqhqgrldkrViF8VD8QlqF
         rOpw==
X-Gm-Message-State: AOJu0YxKE/mXrFXGraOM++VI6uC77ir06e4MLXbFp+QaDQZZ9PMlbMuq
	2wucrzAu66o6CBCxULNSgJSQJ610lJasOQLAaudND8kGMbKiiGcLroXMtbl4hn1LyGK391ERzlQ
	/ZrXQt3R77eyrYhEQpdd2HiuKXcXVoNRGlRZ3KrwMaHbumvQFy5hMCHY=
X-Received: by 2002:a05:620a:2ac7:b0:76c:ad46:2683 with SMTP id bn7-20020a05620a2ac700b0076cad462683mr6971759qkb.16.1695379562235;
        Fri, 22 Sep 2023 03:46:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsox++PPWys6ngzHVyCF3Eihkl1gwpI0tFPIgNbTUyaezen3cYl9nj+cZZ23a8Pw9GmdY7EyJwq7TGifvy6yc=
X-Received: by 2002:a05:620a:2ac7:b0:76c:ad46:2683 with SMTP id
 bn7-20020a05620a2ac700b0076cad462683mr6971744qkb.16.1695379561942; Fri, 22
 Sep 2023 03:46:01 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 22 Sep 2023 03:46:01 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20230922095039.74878-2-shravan.chippa@microchip.com>
References: <20230922095039.74878-1-shravan.chippa@microchip.com> <20230922095039.74878-2-shravan.chippa@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 22 Sep 2023 03:46:01 -0700
Message-ID: <CAJM55Z-NUwzo9SKtmV_5OegznDjSQEG9DVK7=5x4qnxUkk399A@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] dmaengine: sf-pdma: Support of_dma_controller_register()
To: shravan chippa <shravan.chippa@microchip.com>, green.wan@sifive.com, vkoul@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com, 
	paul.walmsley@sifive.com, conor+dt@kernel.org, palmer@sifive.com
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	nagasuresh.relli@microchip.com, praveen.kumar@microchip.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

shravan chippa wrote:
> From: Shravan Chippa <shravan.chippa@microchip.com>
>
> Update sf-pdma driver to adopt generic DMA device tree bindings.
> It calls of_dma_controller_register() with sf-pdma specific
> of_dma_xlate to get the generic DMA device tree helper support
> and the DMA clients can look up the sf-pdma controller using
> standard APIs.
>
> Signed-off-by: Shravan Chippa <shravan.chippa@microchip.com>
> ---
>  drivers/dma/sf-pdma/sf-pdma.c | 41 +++++++++++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
>
> diff --git a/drivers/dma/sf-pdma/sf-pdma.c b/drivers/dma/sf-pdma/sf-pdma.c
> index d1c6956af452..c7558c9f9ac3 100644
> --- a/drivers/dma/sf-pdma/sf-pdma.c
> +++ b/drivers/dma/sf-pdma/sf-pdma.c
> @@ -20,6 +20,7 @@
>  #include <linux/mod_devicetable.h>
>  #include <linux/dma-mapping.h>
>  #include <linux/of.h>
> +#include <linux/of_dma.h>
>  #include <linux/slab.h>
>
>  #include "sf-pdma.h"
> @@ -490,6 +491,33 @@ static void sf_pdma_setup_chans(struct sf_pdma *pdma)
>  	}
>  }
>
> +static struct dma_chan *sf_pdma_of_xlate(struct of_phandle_args *dma_spec,
> +					 struct of_dma *ofdma)
> +{
> +	struct sf_pdma *pdma = ofdma->of_dma_data;
> +	struct device *dev = pdma->dma_dev.dev;
> +	struct sf_pdma_chan  *chan;
> +	struct dma_chan *c;
> +	u32 channel_id;
> +
> +	if (dma_spec->args_count != 1) {
> +		dev_err(dev, "Bad number of cells\n");
> +		return NULL;
> +	}
> +
> +	channel_id = dma_spec->args[0];
> +
> +	chan = &pdma->chans[channel_id];
> +
> +	c = dma_get_slave_channel(&chan->vchan.chan);
> +	if (!c) {
> +		dev_err(dev, "No more channels available\n");
> +		return NULL;
> +	}
> +
> +	return c;
> +}
> +
>  static int sf_pdma_probe(struct platform_device *pdev)
>  {
>  	struct sf_pdma *pdma;
> @@ -563,7 +591,20 @@ static int sf_pdma_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>
> +	ret = of_dma_controller_register(pdev->dev.of_node,
> +					 sf_pdma_of_xlate, pdma);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev,
> +			"Can't register SiFive Platform OF_DMA. (%d)\n", ret);
> +		goto err_unregister;
> +	}
> +

Hi Shrivan,

Doesn't this need a matching unregister/free call in the
sf_pdma_remove function?

/Emil

>  	return 0;
> +
> +err_unregister:
> +	dma_async_device_unregister(&pdma->dma_dev);
> +
> +	return ret;
>  }
>
>  static int sf_pdma_remove(struct platform_device *pdev)
> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

