Return-Path: <devicetree+bounces-5392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD557B6296
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:36:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6F20C280F9C
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 07:36:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15123D28A;
	Tue,  3 Oct 2023 07:36:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9E66AB4
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 07:36:33 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C0B0AC
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 00:36:30 -0700 (PDT)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A62CD3F66F
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 07:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1696318588;
	bh=lZyLBflGA1l7hiEVfFkxQiwJT+7Gv/7fvNwXxJdKogA=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=FXG/Gw1m3Tw3AThdLOQhCdv8Wt1JtPLNb71tJkwjUsAgH7KArvUQbQCWTPhE8l5zp
	 cEgUab2ER1XJuv62+hBrQkXkSzoAxa1SqR6aNlm9IZu3/XVM448Nv31HvP52R5yG+0
	 JkCPVF8DBLiD9XapHPCVM0AQ7JaelE585S8bufFW0yXX9NsE2u9HS91Z+uv8YqJejr
	 r6P/zOW8n0i667o8wgTfQzhtSwLnB/Z2VqTHcFh7NkRl7SuvVs5SnmVRkmULHR0fz6
	 Uyy6pLPwfBes3eVAwiWXJF+yIffOwJaZ5f1M8kS8MKCWko5crUXkEBKDPHTVYVGHy/
	 0l0hK5vn94bJQ==
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-774307520a2so92533085a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 00:36:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696318587; x=1696923387;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lZyLBflGA1l7hiEVfFkxQiwJT+7Gv/7fvNwXxJdKogA=;
        b=jktPKkzmJXs+ptw0Wgsq3DA5BFkAu8L2cz+DNqJzUS5+Oqxkd1vlQArq9WhJKdv5Uv
         SUPnfg1jdli6IDX9gljB9OSILnKthFn9V8aUKf2LYjMCakdBnkvSSmUfcI86BIPJ6BAb
         Njp3wZJY38aIli6LGJqBT5KXaj1MpBENtmfCdbAAJHT6d2bjP6uSlS2CdBVGmUaLPtlJ
         Uw0/TmKin8KQ4dYzOj6X2Ijmz31p0EWi3n2kAkOzrPVryXIrgaf6wv3GYvcKgDf0sm0L
         IcXSBnNh5Ht8+N51w1hjPR69gDt9K4kBpaHa35WPPZ8TmvjEEgE0LXqVVJrPLStH6n2u
         jwFg==
X-Gm-Message-State: AOJu0YzPm9akZTiYuyKQP97/31COgBA3kzLt3OdgAtongoV1foQH6KVd
	1rGqaT6CTrwWcaRSk90DZHpedqcXBgGk6+vm8/73zH+kwDCmlVOcFiNKp0bX9MUywwiBBPtYz9Y
	sKfS8yoSJBU9hSP0srxPFasH1ymUbYI+VWfPhvGAu/vlzRF63Ffy2Exo=
X-Received: by 2002:ac8:5990:0:b0:417:eb3c:494e with SMTP id e16-20020ac85990000000b00417eb3c494emr16180650qte.59.1696318587820;
        Tue, 03 Oct 2023 00:36:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEj6SIXevimzokJVJXdsT4sE7rHESw1Wq+iHG4vgfpb3Vs/mWTK4xl1+YKBWHa12KFSBQhHVO0+qIfHciWDbuM=
X-Received: by 2002:ac8:5990:0:b0:417:eb3c:494e with SMTP id
 e16-20020ac85990000000b00417eb3c494emr16180640qte.59.1696318587540; Tue, 03
 Oct 2023 00:36:27 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 3 Oct 2023 00:36:27 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231003042215.142678-2-shravan.chippa@microchip.com>
References: <20231003042215.142678-1-shravan.chippa@microchip.com> <20231003042215.142678-2-shravan.chippa@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Tue, 3 Oct 2023 00:36:27 -0700
Message-ID: <CAJM55Z9ae_W7JvOHEFPNP491cexz5MbpBSFUOzuvbQK=HiftOw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dmaengine: sf-pdma: Support of_dma_controller_register()
To: shravan chippa <shravan.chippa@microchip.com>, green.wan@sifive.com, vkoul@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com, 
	paul.walmsley@sifive.com, conor+dt@kernel.org
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	nagasuresh.relli@microchip.com, praveen.kumar@microchip.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
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

If you're respinning this series anyway, you have two spaces here.

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
> +	dev_err(dev, "No more channels available\n");
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
> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

