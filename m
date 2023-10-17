Return-Path: <devicetree+bounces-9322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDDA7CCAB1
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 20:33:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EEE141C20BAB
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 18:33:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AF6C2D028;
	Tue, 17 Oct 2023 18:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="htptCsKq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B86739CA58
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 18:33:31 +0000 (UTC)
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B39BF9E
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 11:33:29 -0700 (PDT)
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-775751c35d4so394254685a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 11:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1697567609; x=1698172409; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AcBNvDPm+5lurRZbHk0V2IeK1x1A6vL27sfb3JeZGgA=;
        b=htptCsKqExIqBn7UboDsXmhXZjDi4kbkTB8Mqkbk3HHeEgQPSdrql5rBR0n35IkrbH
         tYuouYgaaeRI5i5oi1iocSykHEXE04BX2zcOG2frTPHEIkwtCUGQEd85JiXwiFyQlhov
         IldEqSGJBtcT/FNWhsab59VzV8/R2r9zzaqyuP7ZkmbTbCWMuOUwKsx9pXDFb8l8YwKi
         183gLWSFCuiYhtUeS++gmuPRJsbcmxskQY8S7l7ohGaWlPkWB+oxw68oTiKg3QoF2akf
         LdIFpBml7LINw1SCFmBcgs/l53eZ3wEaybuMd2HaaVNBMVO0ZmfchK8+ZUProIUaQrCI
         v3jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697567609; x=1698172409;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AcBNvDPm+5lurRZbHk0V2IeK1x1A6vL27sfb3JeZGgA=;
        b=Lo48A2JUVaYoOYzl8gyvO60mUg18KjYv1K3u6PSxnfMKXy/5tqdto2oMZvNqe4nr6g
         8whNhWcod9e5VX6Zl3BCDNVxDtuYQJ4R5czIyDXCxHwyb/LgEh0ZYlciLzP/2TwCQPax
         80CRZlrLpDtWNEPgyNMO/U+e4JvmwkJcy5ctaforwdHu8UCtdnR8LpWWce+Zqdzl/zOO
         1Ni+2fI2vt/beALIEuMlZMKPZH8W+OtJoyZybPofT/r/tMSXuthlUHTYNwC/rZOKhyt6
         BsVhuHBMJaDYsY3uMHuBzV2p5SlZ8eigWfgVQ5LWxRV2FoppL1Wt+wsGFXlWmaCI4Vtf
         pIFQ==
X-Gm-Message-State: AOJu0Yz7xHNcMgIorljMYvdvzMDVtnP7tzP236tUpW367Z1PWzQ5PfzF
	iHKpWfVWrSBD2oFaXrAXNjRsnw==
X-Google-Smtp-Source: AGHT+IEhq81kqSuzy5uDqP7PO49OdWiRqBLX172oxXpXHG/RYxZodn51GvnKH+ECpR7nbBAhO+94Bg==
X-Received: by 2002:a05:620a:1229:b0:76d:ada0:4c0 with SMTP id v9-20020a05620a122900b0076dada004c0mr2765787qkj.76.1697567608779;
        Tue, 17 Oct 2023 11:33:28 -0700 (PDT)
Received: from ?IPV6:2600:1700:2000:b002:95cc:ccc5:95bc:7d2c? ([2600:1700:2000:b002:95cc:ccc5:95bc:7d2c])
        by smtp.gmail.com with ESMTPSA id f22-20020a05620a12f600b00765aa3ffa07sm866623qkl.98.2023.10.17.11.33.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Oct 2023 11:33:28 -0700 (PDT)
Message-ID: <e5d2e96b-9b16-4aaf-9291-76d1d2222c44@sifive.com>
Date: Tue, 17 Oct 2023 13:33:27 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dmaengine: sf-pdma: Support
 of_dma_controller_register()
Content-Language: en-US
To: shravan chippa <shravan.chippa@microchip.com>, green.wan@sifive.com,
 vkoul@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, conor+dt@kernel.org
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 nagasuresh.relli@microchip.com, praveen.kumar@microchip.com
References: <20231003042215.142678-1-shravan.chippa@microchip.com>
 <20231003042215.142678-2-shravan.chippa@microchip.com>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <20231003042215.142678-2-shravan.chippa@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On 2023-10-02 11:22 PM, shravan chippa wrote:
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
>  drivers/dma/sf-pdma/sf-pdma.c | 44 +++++++++++++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
> 
> diff --git a/drivers/dma/sf-pdma/sf-pdma.c b/drivers/dma/sf-pdma/sf-pdma.c
> index d1c6956af452..06a0912a12a1 100644
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

This does not look right to me. All of the channels in the controller are
identical and support arbitrary addresses, so there is no need to use a specific
physical channel. And unless Microchip has added something on top, the only way
to trigger a transfer is through the MMIO interface, so there is no request ID
to differentiate virtual channels either.

So it seems to me that #dma-cells should really be 0, and this function should
just call dma_get_any_slave_channel().

Regards,
Samuel

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
>  	return 0;
> +
> +err_unregister:
> +	dma_async_device_unregister(&pdma->dma_dev);
> +
> +	return ret;
>  }
>  
>  static int sf_pdma_remove(struct platform_device *pdev)
> @@ -583,6 +624,9 @@ static int sf_pdma_remove(struct platform_device *pdev)
>  		tasklet_kill(&ch->err_tasklet);
>  	}
>  
> +	if (pdev->dev.of_node)
> +		of_dma_controller_free(pdev->dev.of_node);
> +
>  	dma_async_device_unregister(&pdma->dma_dev);
>  
>  	return 0;


