Return-Path: <devicetree+bounces-171603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF592A9F41D
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 17:10:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 192701655BA
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 15:10:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D54027979D;
	Mon, 28 Apr 2025 15:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V7uGju3i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E37279787
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 15:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745853020; cv=none; b=W3yHGkVuu6cqyMJ9UbRv961c3EqtnGJIczkDuJOfFl9nCxx5GEVtKdHVWO+JKb3MbJn5MRtJFfZOBarHChHumTGVOfrJBp0d+byyeJ+ddaTjFprvhtGlEobMb95q5xqmfL9SvcdUPXj5VhAMUOE3Bmbec6ODVglyyp22eGd9INA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745853020; c=relaxed/simple;
	bh=IqV5Nxk5VM45Sr0DmwdfE+y8FFviNPWnkCDiR3cFvyU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V2ncZlDVW/E5Jd5IdxG16lQypA/CIs/+TqjF52pI/ejb0apvJShlsI2RtB+HhJ0vTJPCzFPcW9vtw1eiUNKdHEsm2Is3GTVQ/2qCJwGkKCp3/KVBeCAx8zeIn8XiMxyd52tpYuPcj+QpFClJWvPBC1HAs35tDAbAI7+haH7AB3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V7uGju3i; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-702599fa7c5so46217197b3.1
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 08:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745853017; x=1746457817; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=M1qLEl8i2+MNssowlwtDc36gKvk/tS5q/yrKQaTL7cc=;
        b=V7uGju3i7iGXibBwykbfG8MDZVv+hj4xuRZye1F8eQgwaJjzS27EerLeDkn51iwYGV
         LIsJ5gxMhD2OVsmjRnANoaMx2kBypAyl7/11tG5VIvZuuFCn+B01IRDx+oKMLZJK5J5U
         QOJCPJI1/z+PJS39JaH8EeWJH5nZmBdFkRMzWKESQOYWHOohzIyqbmP08d9RvKozmOW/
         87H0fRbxm7V5rVjmNGfaCafZsG4CWHjN82ZD8pzjPJqxDXLKiwG1w3+kXOagUEIp3Gta
         mILBfXNbe06AviO/HkiQaf3XFVYnp2b3jM4s1x0t1hse3+dP5rYcV22KR+sZZQek8WUe
         32MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745853017; x=1746457817;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M1qLEl8i2+MNssowlwtDc36gKvk/tS5q/yrKQaTL7cc=;
        b=OwNvtUuSgRKZC9nRhh6wPBoMIEHIYP/rbbBZdqaPydtCagLa6JhljKevkTNYUxMhCE
         K74wb35zQJ8K5GyYgmPLEQ3YYk/KFGB1ia+S2wInGUop2ZLgboGrhBbRxZW7fAvEcLsS
         ltaikhUgdUUH7k/dUFvXZwAldjlvxyf6sIUh7/Pxn6gQdnW915b+lYXlmE31kdtKT1P0
         us6GolF9H78hZIPNDDQ36aRUzWOSibiHAoEo6qUNDtO06ITlEWVva0/q92XTcGuEGGhD
         I9z87pzc1630N5dsLkxx1TUuk2h4EyxrEaXXrIC5mC+8acIwofIpz1zLa+n1oeWgi0Ym
         DrFA==
X-Forwarded-Encrypted: i=1; AJvYcCVwxQGchXrkrwEv+C5LiZr5XfCNMpUZVjEW93ekfzf+LbydpmVWbaWYxuwvV5XQpEujKhdAPNl7GOU4@vger.kernel.org
X-Gm-Message-State: AOJu0YwRALkGZtIK+NCr178Q4Wi3kkCwh64izZ5sG4uKU11H9HA6NeKl
	1NHTQEpzRn3POqP6EuMLqgNr3MFdlaFMbHmj7A3GLvWX89h3C4rN+c9l9Eakmyth3RYNvk4Gq/J
	z3bayRaFrv7hJM8U08xnruH10mmcTuJ3XE/h2Rw==
X-Gm-Gg: ASbGncsHL8WI/mSTFLH0UO/GjWkSxHWlGcME0I2+O3XPIWMg3nMO5qo1+9F1UEnjkAM
	EudZCYeDj1nIVQUcFthPI3cocSHSSJd8/Fqrp/2Xc31q8QJ3DwDZ+cpGp5DxNJcwHmyDiVAgvgR
	R7amfCdURoyGEDBj61Y1urNEs=
X-Google-Smtp-Source: AGHT+IGHNOX0lCHKaBhgAkyCSaQvfkDOJurdh3fIEr+lGeqL18H1nLfQurUm4e+jX9zWc2VqfcLb4+sjjQCZ9/588Iw=
X-Received: by 2002:a05:690c:61c8:b0:705:6afe:4580 with SMTP id
 00721157ae682-708544de4demr154443977b3.19.1745853017168; Mon, 28 Apr 2025
 08:10:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1744273956.git.zhoubinbin@loongson.cn> <8ff74bf9e821f5734462cebcc4b3fbaa09114e6c.1744273956.git.zhoubinbin@loongson.cn>
In-Reply-To: <8ff74bf9e821f5734462cebcc4b3fbaa09114e6c.1744273956.git.zhoubinbin@loongson.cn>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 28 Apr 2025 17:09:41 +0200
X-Gm-Features: ATxdqUHjTUtvuNdL6JLM2StJ5Q0auwfvIxVrtRfgnYRp_tAJ5Nl-aVKYfe94-M4
Message-ID: <CAPDyKFqqPktwrYs70o9To4OKVWss6wM5kCg0OuXY-k2ReESwig@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] mmc: loongson2: Add Loongson-2K SD/SDIO controller driver
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 10 Apr 2025 at 10:41, Binbin Zhou <zhoubinbin@loongson.cn> wrote:
>
> The MMC controllers on the Loongson-2K series CPUs are similar,
> except for the interface characteristics and the use of DMA controllers.
>
> This patch describes the MMC controllers on the Loongson-2K0500/2K1000,
> with the distinguishing feature being the use of an externally shared
> APBDMA engine.
>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>

Overall this looks good to me. A few things though, please have a look below.

> ---
>  MAINTAINERS                      |   2 +
>  drivers/mmc/host/Kconfig         |  13 +
>  drivers/mmc/host/Makefile        |   1 +
>  drivers/mmc/host/loongson2-mmc.c | 636 +++++++++++++++++++++++++++++++
>  drivers/mmc/host/loongson2-mmc.h | 177 +++++++++
>  5 files changed, 829 insertions(+)
>  create mode 100644 drivers/mmc/host/loongson2-mmc.c
>  create mode 100644 drivers/mmc/host/loongson2-mmc.h

I think we can put all code in the c-file, no need for a separate header file.

>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 32c3733a764a..e218a3e204ef 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -13940,6 +13940,8 @@ M:      Binbin Zhou <zhoubinbin@loongson.cn>
>  L:     linux-mmc@vger.kernel.org
>  S:     Supported
>  F:     Documentation/devicetree/bindings/mmc/loongson,ls2k-mmc.yaml
> +F:     drivers/mmc/host/loongson2-mmc.c
> +F:     drivers/mmc/host/loongson2-mmc.h
>

[...]

> +static irqreturn_t loongson2_mmc_irq(int irq, void *dev_id)
> +{
> +       struct loongson2_mmc_host *host = dev_id;
> +       struct mmc_command *cmd;
> +       unsigned long iflags;
> +       u32 dsts, imsk;
> +
> +       regmap_read(host->regmap, LOONGSON2_MMC_REG_INT, &imsk);
> +       regmap_read(host->regmap, LOONGSON2_MMC_REG_DSTS, &dsts);
> +
> +       if ((dsts & LOONGSON2_MMC_DSTS_IRQ) &&
> +           (imsk & LOONGSON2_MMC_INT_SDIOIRQ)) {
> +               regmap_update_bits(host->regmap, LOONGSON2_MMC_REG_INT,
> +                                  LOONGSON2_MMC_INT_SDIOIRQ,
> +                                  LOONGSON2_MMC_INT_SDIOIRQ);
> +
> +               mmc_signal_sdio_irq(host->mmc);

mmc_signal_sdio_irq() is the legacy interface for managing SDIO irqs.

Please convert to use sdio_signal_irq() instead, along with the
->ack_sdio_irq() callback.

> +               return IRQ_HANDLED;
> +       }
> +
> +       spin_lock_irqsave(&host->lock, iflags);
> +
> +       if (host->state == STATE_NONE || host->state == STATE_FINALIZE ||
> +           !host->mrq)
> +               goto irq_out;
> +
> +       cmd = host->cmd_is_stop ? host->mrq->stop : host->mrq->cmd;
> +       if (!cmd)
> +               goto irq_out;
> +
> +       cmd->error = 0;
> +
> +       if (imsk & LOONGSON2_MMC_INT_CTIMEOUT) {
> +               cmd->error = -ETIMEDOUT;
> +               goto close_transfer;
> +       }
> +
> +       if (imsk & LOONGSON2_MMC_INT_CSENT) {
> +               if (host->state == STATE_RSPFIN || host->state == STATE_CMDSENT)
> +                       goto close_transfer;
> +
> +               if (host->state == STATE_XFERFINISH_RSPFIN)
> +                       host->state = STATE_XFERFINISH;
> +       }
> +
> +       if (!cmd->data)
> +               goto irq_out;
> +
> +       if (imsk & (LOONGSON2_MMC_INT_RXCRC | LOONGSON2_MMC_INT_TXCRC)) {
> +               cmd->data->error = -EILSEQ;
> +               goto close_transfer;
> +       }
> +
> +       if (imsk & LOONGSON2_MMC_INT_DTIMEOUT) {
> +               cmd->data->error = -ETIMEDOUT;
> +               goto close_transfer;
> +       }
> +
> +       if (imsk & LOONGSON2_MMC_INT_DFIN) {
> +               if (host->state == STATE_XFERFINISH) {
> +                       host->dma_complete = 1;
> +                       goto close_transfer;
> +               }
> +
> +               if (host->state == STATE_XFERFINISH_RSPFIN)
> +                       host->state = STATE_RSPFIN;
> +       }
> +
> +irq_out:
> +       regmap_write(host->regmap, LOONGSON2_MMC_REG_INT, imsk);
> +       spin_unlock_irqrestore(&host->lock, iflags);
> +       return IRQ_HANDLED;
> +
> +close_transfer:
> +       host->state = STATE_FINALIZE;
> +       host->pdata->reorder_cmd_data(host, cmd);
> +       regmap_write(host->regmap, LOONGSON2_MMC_REG_INT, imsk);
> +       spin_unlock_irqrestore(&host->lock, iflags);
> +       return IRQ_WAKE_THREAD;
> +}

[...]

> +
> +static int loongson2_mmc_resource_request(struct platform_device *pdev,
> +                                         struct loongson2_mmc_host *host)
> +{
> +       struct device *dev = &pdev->dev;
> +       void __iomem *base;
> +       int ret, irq;
> +
> +       base = devm_platform_get_and_ioremap_resource(pdev, 0, &host->res);
> +       if (IS_ERR(base))
> +               return PTR_ERR(base);
> +
> +       host->regmap = devm_regmap_init_mmio(dev, base, &host->pdata->regmap_config);
> +       if (IS_ERR(host->regmap))
> +               return PTR_ERR(host->regmap);
> +
> +       host->clk = devm_clk_get_optional_enabled(dev, NULL);
> +       if (IS_ERR(host->clk))
> +               return PTR_ERR(host->clk);
> +
> +       if (host->clk) {
> +               ret = devm_clk_rate_exclusive_get(dev, host->clk);
> +               if (ret)
> +                       return PTR_ERR(host->clk);
> +
> +               host->rate = clk_get_rate(host->clk);
> +       } else {
> +               /* For ACPI, we get rate through clock-frequency attribute */
> +               device_property_read_u64(dev, "clock-frequency", &host->rate);

Is ACPI supported too?

> +       }
> +
> +       irq = platform_get_irq(pdev, 0);
> +       if (irq < 0)
> +               return irq;
> +
> +       ret = devm_request_threaded_irq(dev, irq, loongson2_mmc_irq,
> +                                       loongson2_mmc_irq_worker,
> +                                       IRQF_ONESHOT, "loongson2-mmc", host);
> +       if (ret)
> +               return ret;
> +
> +       ret = host->pdata->setting_dma(host, pdev);
> +       if (ret)
> +               return ret;
> +
> +       return dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
> +}
> +
> +static int loongson2_mmc_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct loongson2_mmc_host *host;
> +       struct mmc_host *mmc;
> +       int ret;
> +
> +       mmc = mmc_alloc_host(sizeof(*host), dev);

We have devm_mmc_alloc_host() too, perhaps worth to use it to simplify
the code a bit.

> +       if (!mmc) {
> +               dev_err(dev, "Failed to alloc mmc host\n");
> +               return -ENOMEM;
> +       }
> +
> +       platform_set_drvdata(pdev, mmc);
> +
> +       host = mmc_priv(mmc);
> +       host->mmc = mmc;
> +       host->state = STATE_NONE;
> +       spin_lock_init(&host->lock);
> +
> +       host->pdata = device_get_match_data(dev);
> +       if (!host->pdata) {
> +               dev_err(dev, "Failed to get match data\n");
> +               ret = -EINVAL;
> +               goto free_host;
> +       }
> +
> +       ret = loongson2_mmc_resource_request(pdev, host);
> +       if (ret) {
> +               dev_err(dev, "Failed to request resource\n");
> +               goto free_host;
> +       }
> +
> +       mmc->ops = &loongson2_mmc_ops;
> +       mmc->ocr_avail = MMC_VDD_32_33 | MMC_VDD_33_34;

How is power to the card controlled for these platforms?

The preferred way is to use the regulator API to manage this - and the
mmc core also provides a couple of helper functions for this, like
mmc_regulator_get_supply(), for example.

> +       mmc->f_min = DIV_ROUND_UP(host->rate, 256);
> +       mmc->f_max = host->rate;
> +       mmc->max_blk_count = 4095;
> +       mmc->max_blk_size = 4095;
> +       mmc->max_req_size = mmc->max_blk_count * mmc->max_blk_size;
> +       mmc->max_segs = 1;
> +       mmc->max_seg_size = mmc->max_req_size;
> +
> +       ret = mmc_of_parse(mmc);
> +       if (ret) {
> +               dev_err(dev, "Failed to parse device node\n");
> +               goto free_dma;
> +       }
> +
> +       ret = mmc_add_host(mmc);
> +       if (ret) {
> +               dev_err(dev, "Failed to add mmc host.\n");
> +               goto free_dma;
> +       }
> +
> +       return 0;
> +
> +free_dma:
> +       host->pdata->release_dma(host, dev);
> +free_host:
> +       mmc_free_host(mmc);
> +       return ret;
> +}
> +

[...]

Kind regards
Uffe

