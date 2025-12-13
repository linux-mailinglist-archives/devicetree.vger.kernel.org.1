Return-Path: <devicetree+bounces-246240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2FBCBA6E3
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 08:55:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 917643009F66
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 07:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3580F23A994;
	Sat, 13 Dec 2025 07:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="f72A4ZBx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7372B3FCC
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 07:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765612516; cv=none; b=ke4gz80XCt+V2ONZvgdFFifMXFbPEj5KguvEbJGiw26DhteWRb1tZrlbdwiCsK6q0oO6Yn1j10mPO6pSxhLZXUoIC4A1L8zuGB0moVH1hzJZhYgrA4M3pfqfZL55+k9XlhDS7e1uWgvx6qJ8IpRb8yYvz0HQZI3ZuGc7qOw//Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765612516; c=relaxed/simple;
	bh=/1Y7ZubKQzIS9Nn9KYozZYf4WuMV9JVNDqL7JrO650Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AkHoUQcIF9bjPcnbwJ609OQaftCBzmniokWnL3+8QCbvenF1tLel2h+smYMdFMdQI5Ht+ruMmsQ1jonulq57MJ31jXFeJ1ha/HhPgxAEKDFFt9AfcM/mWHYbrfIN6ncbPXDlidXYpR3Wg5HsrtyrIvmmr3J4YStJWvKZKgRdRTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=f72A4ZBx; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7e1651ae0d5so1671316b3a.1
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 23:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1765612513; x=1766217313; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PSg2TYT9sWOtcESEo56kzWemNLsi4EVpvVRgATHWE1A=;
        b=f72A4ZBxBYkoapuKADgCoKBW613YRAqiqEAeeMi6rqCN9XJpUoc7jW4RHwwLO4PJE6
         +wsgiqmToq17kNJRMgtqn14MJ19ih+VWKe704QMKUaFN3R2u6GAYe+x0FturEt6tSHvJ
         nkgxdVaxbBQfsvwdHvOEe3I25A1+8MSGVF9jtMgfeQJ3O9jasl881g06ErMXznqZ9VR+
         O3rNuV2KF6jN3ZRioIRQtZLcFtEjZVDtaJHx3e2xgen+PGsT/V1XLSZ8qhVt7IH9jaBs
         WylCRweAeqzuz3qksqxOMZd2yHZ/WdLCfnm96cpyX8cpT+zg7Vb0wxmhnr3gcqytDrzM
         LcNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765612513; x=1766217313;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PSg2TYT9sWOtcESEo56kzWemNLsi4EVpvVRgATHWE1A=;
        b=dFnHEHkty/LtBOGb1VTSJPujcjNBbVwdSGDATpYJ24GE6iI/0HcQjgTdmmIX61yySN
         0C06row6Sd5XfnPEKV8KAg2tgjPAVQyTW8VtQR6vc86Dsvqc7+2BOl38On0Vsn51v1RM
         XazTyriYHZEHZlip6N0zcMvaAbjEKMKiDfQtADl8UP1MUGHtM51igqOS5Joe/HHjBoss
         9KOSWbzkrxKcQ0Jxf0zy0D5gWQSWNWlF8JLwynlQ9YNenGzYlmCOgk57ywNW07HM8o1+
         6mhCgzk12NKCVnPDod1m3AlXSRoV73ZYfCmEWKPCk4qD7eVAMEUYtgxPas7bj2yTTEbR
         xF9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXRYES5zd2yfif6Au/7ICAZwjnIdsNiQc7eTyj2lRoaDldvODJxtTYgVbDU0jAo1gMcDB9E/h4o2GPV@vger.kernel.org
X-Gm-Message-State: AOJu0YwOksRApdr7DbyuWvCCiyvBnCUn/orR+/W337Ngu9DaPJR7c1sN
	1UgIeWSbg0Q3BAzS09bba+got4OD4VygAuSDWLxGlk4mUFRdpteLm9MORL8eABMyrhE=
X-Gm-Gg: AY/fxX6QuvDtDRXGBFsGKGB5/Z5AUdd541jlnTwYtwXB0rqMOfbP+9C5spCb0RgRVUq
	Mlz7qitY0yYTo/ad/XP75xlpFvjNeQJg1tCcfC0zc95alP3jPS2HfBgiEQXu+4Ia0x4OHc9PU3l
	0gfuG7sEP5tmuEmixM7IMvYw1Bgh98RGzp9Iz9lBLzOtNgkjA9wM3S72t0j1jemlbaSTZiQ7JtI
	bEDxvda+FOxU8aTXVvC8sVEdN72UsMjgJKRRq5hsqZ70MUDZfGe1u1V7raXrfIxbojK38dFEC6X
	R6ss9H2ain/sHZcJgSGt38hyU0wTBP0y05GRkh2QBA3YgM3Ux357RpyRWiHEVVIv4kR2ocV/Vot
	jA4YrVgtsI+G2Ad3cuDOW4zSVQoEfJDJPLrhlGVQKRl28RVkU6kS97B7y8ESp5dpo/wwQvc9EQN
	vQAYu3NB7OHHGR4Eg73D87w5tCfAeqog==
X-Google-Smtp-Source: AGHT+IHOWrUINqZuvftQzED4J6JEOwCF3MwpJCzvYtbDq2TpenTmo8Kz5bbfjFWruq5ev9Hib6L/8Q==
X-Received: by 2002:a05:6a00:1f13:b0:7f6:3f21:7d22 with SMTP id d2e1a72fcca58-7f6693a69e9mr3821365b3a.45.1765612512724;
        Fri, 12 Dec 2025 23:55:12 -0800 (PST)
Received: from [100.64.0.1] ([167.103.29.104])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7f4c27733edsm7218185b3a.20.2025.12.12.23.55.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Dec 2025 23:55:12 -0800 (PST)
Message-ID: <8a3d3db6-6614-42f7-a271-e6188391daf6@sifive.com>
Date: Sat, 13 Dec 2025 16:55:06 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dmaengine: dw-axi-dmac: Add support for CV1800B DMA
To: Inochi Amaoto <inochiama@gmail.com>
Cc: "Anton D . Stavinskii" <stavinsky@gmail.com>, dmaengine@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, sophgo@lists.linux.dev,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, Vinod Koul
 <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Chen Wang <unicorn_wang@outlook.com>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Longbin Li <looong.bin@gmail.com>, Yixun Lan <dlan@gentoo.org>,
 Ze Huang <huangze@whut.edu.cn>
References: <20251212020504.915616-1-inochiama@gmail.com>
 <20251212020504.915616-3-inochiama@gmail.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <20251212020504.915616-3-inochiama@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Inochi,

On 2025-12-12 11:05 AM, Inochi Amaoto wrote:
> As the DMA controller on Sophgo CV1800 series SoC only has 8 channels,
> the SoC provides a dma multiplexer to reuse the DMA channel. However,
> the dma multiplexer also controlls the DMA interrupt multiplexer, which

typo: controls

> means that the dma multiplexer needs to know the channel number.
> 
> Allow the driver to use DMA phandle args as the channel number, so the
> DMA multiplexer can route the DMA interrupt correctly.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---
>  .../dma/dw-axi-dmac/dw-axi-dmac-platform.c    | 23 ++++++++++++++++---
>  drivers/dma/dw-axi-dmac/dw-axi-dmac.h         |  1 +
>  2 files changed, 21 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c b/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c
> index b23536645ff7..62bf0d0dc354 100644
> --- a/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c
> +++ b/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c
> @@ -50,6 +50,7 @@
>  #define AXI_DMA_FLAG_HAS_APB_REGS	BIT(0)
>  #define AXI_DMA_FLAG_HAS_RESETS		BIT(1)
>  #define AXI_DMA_FLAG_USE_CFG2		BIT(2)
> +#define AXI_DMA_FLAG_HANDSHAKE_AS_CHAN	BIT(3)
> 
>  static inline void
>  axi_dma_iowrite32(struct axi_dma_chip *chip, u32 reg, u32 val)
> @@ -1361,15 +1362,26 @@ static struct dma_chan *dw_axi_dma_of_xlate(struct of_phandle_args *dma_spec,
>  					    struct of_dma *ofdma)
>  {
>  	struct dw_axi_dma *dw = ofdma->of_dma_data;
> +	unsigned int handshake = dma_spec->args[0];
>  	struct axi_dma_chan *chan;
>  	struct dma_chan *dchan;
> 
> -	dchan = dma_get_any_slave_channel(&dw->dma);
> +	if (dw->hdata->use_handshake_as_channel_number) {
> +		if (handshake >= dw->hdata->nr_channels)
> +			return NULL;
> +
> +		chan = &dw->chan[handshake];
> +		dchan = dma_get_slave_channel(&chan->vc.chan);
> +	} else {
> +		dchan = dma_get_any_slave_channel(&dw->dma);
> +	}
> +
>  	if (!dchan)
>  		return NULL;
> 
> -	chan = dchan_to_axi_dma_chan(dchan);
> -	chan->hw_handshake_num = dma_spec->args[0];
> +	if (!chan)

When use_handshake_as_channel_number is false, chan is uninitialized here.

Regards,
Samuel

> +		chan = dchan_to_axi_dma_chan(dchan);
> +	chan->hw_handshake_num = handshake;
>  	return dchan;
>  }
> 
> @@ -1508,6 +1520,8 @@ static int dw_probe(struct platform_device *pdev)
>  			return ret;
>  	}
> 
> +	chip->dw->hdata->use_handshake_as_channel_number = !!(flags & AXI_DMA_FLAG_HANDSHAKE_AS_CHAN);
> +
>  	chip->dw->hdata->use_cfg2 = !!(flags & AXI_DMA_FLAG_USE_CFG2);
> 
>  	chip->core_clk = devm_clk_get(chip->dev, "core-clk");
> @@ -1663,6 +1677,9 @@ static const struct of_device_id dw_dma_of_id_table[] = {
>  	}, {
>  		.compatible = "intel,kmb-axi-dma",
>  		.data = (void *)AXI_DMA_FLAG_HAS_APB_REGS,
> +	}, {
> +		.compatible = "sophgo,cv1800b-axi-dma",
> +		.data = (void *)AXI_DMA_FLAG_HANDSHAKE_AS_CHAN,
>  	}, {
>  		.compatible = "starfive,jh7110-axi-dma",
>  		.data = (void *)(AXI_DMA_FLAG_HAS_RESETS | AXI_DMA_FLAG_USE_CFG2),
> diff --git a/drivers/dma/dw-axi-dmac/dw-axi-dmac.h b/drivers/dma/dw-axi-dmac/dw-axi-dmac.h
> index b842e6a8d90d..67cc199e24d1 100644
> --- a/drivers/dma/dw-axi-dmac/dw-axi-dmac.h
> +++ b/drivers/dma/dw-axi-dmac/dw-axi-dmac.h
> @@ -34,6 +34,7 @@ struct dw_axi_dma_hcfg {
>  	bool	reg_map_8_channels;
>  	bool	restrict_axi_burst_len;
>  	bool	use_cfg2;
> +	bool	use_handshake_as_channel_number;
>  };
> 
>  struct axi_dma_chan {
> --
> 2.52.0
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv


