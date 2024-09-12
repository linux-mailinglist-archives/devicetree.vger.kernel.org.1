Return-Path: <devicetree+bounces-102488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3161B9773A6
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 23:30:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF65E2823CE
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 21:30:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD3DC18EFED;
	Thu, 12 Sep 2024 21:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="CYjH+b/B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC48A5F
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 21:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726176648; cv=none; b=ohhsN59o1KAlaPZg0eDIVLOXHaQtLyenWY7Ue5rhF1SSOazortvt8EPnQc7ggBkVm+P12avW6HJ8Q61MlRNCdf+EL6eJjM5Ejg8++02zw8xBSE7cKmD76sdBfRdGIFYpjP9/iLdU8GcVsoeTcVSeVXLS9NkwGGHjn9DPkIBjVpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726176648; c=relaxed/simple;
	bh=NUdUDtfXmxz6bqwrgpk0iyWOFljyOADqSJxLAc8iOxM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AGy0uaI7dsDOpgJ4GR9rcFxGbGkMPKjL2bwiqibhQD/2g0wBlqbNkqutjNV94JXfcK8mSrDKjqJ42dUQKhPZbQqqJ5P/Quoej98Zx7CbjI0FFTN/gQkq/zMZrQOdxKK0/Bp+CoqVfbfIiEusfu8lweXhYkwVId3HMyn/AWuQjBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=CYjH+b/B; arc=none smtp.client-ip=209.85.166.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-82ceab75c05so11491439f.0
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 14:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1726176646; x=1726781446; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UtIMN8hjt+eHm8/8igTe0EDjoiHpYlyPflzpSE1/b8c=;
        b=CYjH+b/B6JMik1bkkgUTlRIj91ZnhU8kiPpmLS+LwcfsBexBcjhxjGXoXyZL1Q1fka
         eCJkzB+Iynuaz9+9plIwHiNOAX6BUAeInhfVw7p/j50ZAWi1Wep23+UtYnETNvPKsQ0x
         DW5FtSSMJGraRXwcyC+v5+dCE4oVtitKnU9EibMcQR6NNhzHUFYMNBQRhMnD3St+nIq5
         oAk1gZAH7FGthu+rh87icbTRb7F3bqTlMWaMjBopOkyZ6v2o1r+ljKFGZZcs7OyK0D64
         GIVsgjUml2sI1G3uM8K2u0sF8URSeejvoenXmRdZnWib6Ji9OXzBvP7FQS1bywpJpq5J
         eiXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726176646; x=1726781446;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UtIMN8hjt+eHm8/8igTe0EDjoiHpYlyPflzpSE1/b8c=;
        b=BTbZ5ijAKwpjIBnAyHjJ3lcf64VDdSlMzqVgDtIUBv3JtNLctsbSLcnrVvU230i12G
         4D8TNgqGu1YjJSI04gC1ogO70pZYHU7k8WSZheMT3yhY6SBdsvCZ9mtwQmO6eGzg4Kil
         vAQz+SGa1dcb348DV75LXv64O73EJI7OGFgUK3rI3UYVO/sTUUbi8rtVHahGJMyCiiHG
         VHWEW0gBRjpC7amDi7CqWGFGgY056tkQhR+PHgmC1o7SjIZRXiqNg5W+n5HRYnC34eTk
         DrS8Qz+kbDsxkp2wNdFAVsvX4FV/rgXlHDVV7esJ4psQ+tiOKJGQyHQLWL703pt1TYWl
         yb6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXJolbP5Vs7E/RlQngmUJu6EVsjAHg/JPUE4W8SSGEpM6zE6/UHP1eYZhh4AWlc0zA24/inTjyhcWJI@vger.kernel.org
X-Gm-Message-State: AOJu0YxMN49e+c0cz3uVf0cB8YbaRC0j7xzNOas/sJMfD1+7TiLPhmbS
	2g81qfnq8oL1epLZbt4KIln7X24Z0g6XXwHpckrW9p8X+jL4DS+PX+3So8rpDV8=
X-Google-Smtp-Source: AGHT+IF0Dj116Hozge8v197MDvYjeTxK3MKp0aY5RS13PAtZvlLU8oqWjlPSuwRMds/rwKfYKaJo8g==
X-Received: by 2002:a05:6602:15ca:b0:82d:d07:daaa with SMTP id ca18e2360f4ac-82d376b01c6mr102431939f.4.1726176646337;
        Thu, 12 Sep 2024 14:30:46 -0700 (PDT)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4d35f8dac37sm807546173.133.2024.09.12.14.30.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2024 14:30:45 -0700 (PDT)
Message-ID: <22dd1d53-9ac5-4672-ad68-e82499038283@sifive.com>
Date: Thu, 12 Sep 2024 16:30:43 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/5] mailbox: add Microchip IPC support
To: Valentina Fernandez <valentina.fernandezalanis@microchip.com>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 peterlin@andestech.com, dminus@andestech.com, conor.dooley@microchip.com,
 conor+dt@kernel.org, ycliang@andestech.com, jassisinghbrar@gmail.com,
 robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
 mathieu.poirier@linaro.org
References: <20240912170025.455167-1-valentina.fernandezalanis@microchip.com>
 <20240912170025.455167-4-valentina.fernandezalanis@microchip.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <20240912170025.455167-4-valentina.fernandezalanis@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Valentina,

On 2024-09-12 12:00 PM, Valentina Fernandez wrote:
> +static int mchp_ipc_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct mchp_ipc_probe ipc_info;
> +	struct microchip_ipc *ipc;
> +	struct ipc_chan_info *priv;
> +	bool irq_avail = false;
> +	int ret;
> +	u32 chan_id;
> +
> +	ret = sbi_probe_extension(SBI_EXT_MICROCHIP_TECHNOLOGY);
> +	if (ret <= 0)
> +		return dev_err_probe(dev, ret, "Microchip SBI extension not detected\n");
> +
> +	ipc = devm_kzalloc(dev, sizeof(*ipc), GFP_KERNEL);
> +	if (!ipc)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, ipc);
> +
> +	ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(IPC_DMA_BIT_MASK));
> +	if (ret)
> +		return dev_err_probe(dev, ret, "dma_set_mask_and_coherent failed\n");
> +
> +	ipc->buf_base = dmam_alloc_coherent(dev, sizeof(u32), &ipc->dma_addr, GFP_KERNEL);
> +
> +	if (!ipc->buf_base)
> +		return -ENOMEM;

One drive-by comment here: you don't need to use the DMA API to get a physical
address for passing to the SBI interface. You can use __pa() on a kmalloc'd
buffer, since kmalloc() returns memory from the linear map. This has the
advantage of 1) using cacheable memory and 2) not rounding up the allocation
size to a whole page.

> +
> +	ret = mchp_ipc_sbi_send(SBI_EXT_IPC_PROBE, ipc->dma_addr);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "could not probe IPC SBI service\n");
> +
> +	memcpy(&ipc_info, ipc->buf_base, sizeof(struct mchp_ipc_probe));

Here sizeof(struct mchp_ipc_probe) > sizeof(u32), so if the DMA API wasn't
rounding up the allocation size, this would be a buffer overflow.

Regards,
Samuel

> +	ipc->num_channels = ipc_info.num_channels;
> +	ipc->hw_type = ipc_info.hw_type;
> +
> +	ipc->chans = devm_kcalloc(dev, ipc->num_channels, sizeof(*ipc->chans), GFP_KERNEL);
> +	if (!ipc->chans)
> +		return -ENOMEM;
> +
> +	ipc->dev = dev;
> +	ipc->controller.txdone_irq = true;
> +	ipc->controller.dev = ipc->dev;
> +	ipc->controller.ops = &mchp_ipc_ops;
> +	ipc->controller.chans = ipc->chans;
> +	ipc->controller.num_chans = ipc->num_channels;
> +	ipc->controller.of_xlate = mchp_ipc_mbox_xlate;
> +
> +	for (chan_id = 0; chan_id < ipc->num_channels; chan_id++) {
> +		priv = devm_kmalloc(dev, sizeof(*priv), GFP_KERNEL);
> +		if (!priv)
> +			return -ENOMEM;
> +
> +		ipc->chans[chan_id].con_priv = priv;
> +		priv->id = chan_id;
> +	}
> +
> +	if (ipc->hw_type == MIV_IHC) {
> +		ipc->cluster_cfg = devm_kcalloc(dev, num_online_cpus(),
> +						sizeof(struct mchp_ipc_cluster_cfg),
> +						GFP_KERNEL);
> +		if (!ipc->cluster_cfg)
> +			return -ENOMEM;
> +
> +		if (mchp_ipc_get_cluster_aggr_irq(ipc))
> +			irq_avail = true;
> +	}
> +
> +	if (!irq_avail)
> +		return dev_err_probe(dev, -ENODEV, "missing interrupt property\n");
> +
> +	ret = devm_mbox_controller_register(dev, &ipc->controller);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +					 "Inter-Processor communication (IPC) registration failed\n");
> +
> +	return 0;
> +}


