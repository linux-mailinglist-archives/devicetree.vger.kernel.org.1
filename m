Return-Path: <devicetree+bounces-78946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E7D913BB4
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 16:27:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67F68281666
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C70A181B84;
	Sun, 23 Jun 2024 14:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="RQq8ZIZl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06592181320
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 14:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719152839; cv=none; b=rG7EoNREx+njXqwk3MPhqtBA5U4MZVKugXuKZNEi4QEZp7iJs40hCj9iqa8dHSpNucMs6gkaPlWq/rwBRR+70jAgTuaAExnV+AiDtiLfDxbp+jAzqM64lU84JUWcabi9I3ZRwlGP9ZxSFYSbe4mcym1xS9rjUKcLuPMo+p3phD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719152839; c=relaxed/simple;
	bh=ZZ44urR2FHiAsQK8bUberKk/p5/hSJmGjtcyA6AU7go=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YQmCmMRztwCGmh+VMD9RpFdCVRxBsdmChUlDq5tUqsDkF6dRegTLf/32TYtfeh6GsMQrFYy0PGlSvyl1Aoyat92yxEMfNoN53SNKPhKEvzSB70TrwIo5BsegBYaugIKeEp4rPBcV9/002SnRfygpVgpgTI6HMuBxsF7xoAOzmjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=RQq8ZIZl; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-42108856c33so26345305e9.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 07:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1719152835; x=1719757635; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wUGNzKbqoRHYmtgg5tuG5fdtSZ4xQ9aNzIV2q90r3Iw=;
        b=RQq8ZIZlvjNwk1gDWteW8w9D/9eWblZfpQqIh+U0ALRriWDpM+FcPiSJwFIP3zMmPL
         fckLZbai/3bN7uU3g9rB6Xm+cRKUh0YpmmHel7YYLy0MUAHoIR/Dt3ySpn3zFE4ZVVBv
         0aactjsuQbX4YCL4iANgpheyB4U67FZZRRnNdpKo/6kz61YSIjGWfMS0F5gz3cnFmEVo
         CoOAJbx4LGtOZPxF9976cywqVLuKU3+LGcCt/0wPsGohc+Nj0wQLaOmgKRi2ekMBNvCE
         uHBg4roF8sAzT8cUCptxL52umO0Vl7jTDdwEMgaodTe5+vpLt+e3R9yMovUzjQUlIsn/
         NriQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719152835; x=1719757635;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wUGNzKbqoRHYmtgg5tuG5fdtSZ4xQ9aNzIV2q90r3Iw=;
        b=gUC+FXWZx3PuTwhz3EtqpUUd/3TpyaoXNkC7IPaahBMPXiPwOsenScEpxMKygGLGyA
         nrwtl/mma/AMgMN2eGt/yTHo33InBzirHbpYKctoeDQ1qSEAKYIi0GHY+46yrdw7eShV
         mTi6X0caVrgpCC7tg6hTCXBcV1GuzpEzNG79zJbjyF1FyHMjX7fQEspCex1f+0N3o+Hj
         YsVoox4qY87A8TLN31a0wWJa9+F8ZDxBPi9bzfCAqJ5X3za8h1FBZ0HcbtUrhvgvLCyj
         WhsSAEkEd7e4ErwmdkphKT0a/TWnRp8EnjgJXwPAqRY2JiD0U3HB7Lrx4K/89NRU4kB9
         BrJg==
X-Forwarded-Encrypted: i=1; AJvYcCX1iIUR4+F/ff36MMl0m0rmOw72KuHFQvZfN0tXF70WF5EZKYI7DXh8veDI6ikO8o7yTo4r/OXM/GXwjEpg7cifLvL4uh3jDUL8Ow==
X-Gm-Message-State: AOJu0YzpXWapnIGAPWEWTsuTvvvecNczDGCHICmc7tHI8tMFPXfyP2AR
	9HgP0n4qRmLAJy6HdmuxppMnQETZ05xF9EkVCHQuxD5aaSqaV9oImuuZp46Xduc=
X-Google-Smtp-Source: AGHT+IFp7T3fUP126w4AWrA15yogPBJdGyb+8rFa+dr5eP9h4GYZKkyUybOllD6Y2CfQXQKkURxY3A==
X-Received: by 2002:a05:6000:1a54:b0:362:b906:11f2 with SMTP id ffacd0b85a97d-366e3337f42mr2451380f8f.34.1719152835017;
        Sun, 23 Jun 2024 07:27:15 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d0be9fasm142958035e9.16.2024.06.23.07.27.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Jun 2024 07:27:14 -0700 (PDT)
Message-ID: <8a4c36d5-3ed7-429f-9cde-d90f0029b16a@tuxon.dev>
Date: Sun, 23 Jun 2024 17:27:12 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v7 1/4] net: macb: queue tie-off or disable
 during WOL suspend
Content-Language: en-US
To: Vineeth Karumanchi <vineeth.karumanchi@amd.com>,
 nicolas.ferre@microchip.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux@armlinux.org.uk, vadim.fedorenko@linux.dev, andrew@lunn.ch
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, git@amd.com
References: <20240621045735.3031357-1-vineeth.karumanchi@amd.com>
 <20240621045735.3031357-2-vineeth.karumanchi@amd.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240621045735.3031357-2-vineeth.karumanchi@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21.06.2024 07:57, Vineeth Karumanchi wrote:
> When GEM is used as a wake device, it is not mandatory for the RX DMA
> to be active. The RX engine in IP only needs to receive and identify
> a wake packet through an interrupt. The wake packet is of no further
> significance; hence, it is not required to be copied into memory.
> By disabling RX DMA during suspend, we can avoid unnecessary DMA
> processing of any incoming traffic.
> 
> During suspend, perform either of the below operations:
> 
> - tie-off/dummy descriptor: Disable unused queues by connecting
>   them to a looped descriptor chain without free slots.
> 
> - queue disable: The newer IP version allows disabling individual queues.
> 
> Co-developed-by: Harini Katakam <harini.katakam@amd.com>
> Signed-off-by: Harini Katakam <harini.katakam@amd.com>
> Signed-off-by: Vineeth Karumanchi <vineeth.karumanchi@amd.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Tested-by: Claudiu Beznea <claudiu.beznea@tuxon.dev> # on SAMA7G5

> ---
>  drivers/net/ethernet/cadence/macb.h      |  7 +++
>  drivers/net/ethernet/cadence/macb_main.c | 60 ++++++++++++++++++++++--
>  2 files changed, 64 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/cadence/macb.h b/drivers/net/ethernet/cadence/macb.h
> index aa5700ac9c00..50cd35ef21ad 100644
> --- a/drivers/net/ethernet/cadence/macb.h
> +++ b/drivers/net/ethernet/cadence/macb.h
> @@ -645,6 +645,10 @@
>  #define GEM_T2OFST_OFFSET			0 /* offset value */
>  #define GEM_T2OFST_SIZE				7
>  
> +/* Bitfields in queue pointer registers */
> +#define MACB_QUEUE_DISABLE_OFFSET		0 /* disable queue */
> +#define MACB_QUEUE_DISABLE_SIZE			1
> +
>  /* Offset for screener type 2 compare values (T2CMPOFST).
>   * Note the offset is applied after the specified point,
>   * e.g. GEM_T2COMPOFST_ETYPE denotes the EtherType field, so an offset
> @@ -733,6 +737,7 @@
>  #define MACB_CAPS_NEEDS_RSTONUBR		0x00000100
>  #define MACB_CAPS_MIIONRGMII			0x00000200
>  #define MACB_CAPS_NEED_TSUCLK			0x00000400
> +#define MACB_CAPS_QUEUE_DISABLE			0x00000800
>  #define MACB_CAPS_PCS				0x01000000
>  #define MACB_CAPS_HIGH_SPEED			0x02000000
>  #define MACB_CAPS_CLK_HW_CHG			0x04000000
> @@ -1254,6 +1259,8 @@ struct macb {
>  	u32	(*macb_reg_readl)(struct macb *bp, int offset);
>  	void	(*macb_reg_writel)(struct macb *bp, int offset, u32 value);
>  
> +	struct macb_dma_desc	*rx_ring_tieoff;
> +	dma_addr_t		rx_ring_tieoff_dma;
>  	size_t			rx_buffer_size;
>  
>  	unsigned int		rx_ring_size;
> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
> index 241ce9a2fa99..9fc8c5a82bf8 100644
> --- a/drivers/net/ethernet/cadence/macb_main.c
> +++ b/drivers/net/ethernet/cadence/macb_main.c
> @@ -2477,6 +2477,12 @@ static void macb_free_consistent(struct macb *bp)
>  	unsigned int q;
>  	int size;
>  
> +	if (bp->rx_ring_tieoff) {
> +		dma_free_coherent(&bp->pdev->dev, macb_dma_desc_get_size(bp),
> +				  bp->rx_ring_tieoff, bp->rx_ring_tieoff_dma);
> +		bp->rx_ring_tieoff = NULL;
> +	}
> +
>  	bp->macbgem_ops.mog_free_rx_buffers(bp);
>  
>  	for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
> @@ -2568,6 +2574,16 @@ static int macb_alloc_consistent(struct macb *bp)
>  	if (bp->macbgem_ops.mog_alloc_rx_buffers(bp))
>  		goto out_err;
>  
> +	/* Required for tie off descriptor for PM cases */
> +	if (!(bp->caps & MACB_CAPS_QUEUE_DISABLE)) {
> +		bp->rx_ring_tieoff = dma_alloc_coherent(&bp->pdev->dev,
> +							macb_dma_desc_get_size(bp),
> +							&bp->rx_ring_tieoff_dma,
> +							GFP_KERNEL);
> +		if (!bp->rx_ring_tieoff)
> +			goto out_err;
> +	}
> +
>  	return 0;
>  
>  out_err:
> @@ -2575,6 +2591,19 @@ static int macb_alloc_consistent(struct macb *bp)
>  	return -ENOMEM;
>  }
>  
> +static void macb_init_tieoff(struct macb *bp)
> +{
> +	struct macb_dma_desc *desc = bp->rx_ring_tieoff;
> +
> +	if (bp->caps & MACB_CAPS_QUEUE_DISABLE)
> +		return;
> +	/* Setup a wrapping descriptor with no free slots
> +	 * (WRAP and USED) to tie off/disable unused RX queues.
> +	 */
> +	macb_set_addr(bp, desc, MACB_BIT(RX_WRAP) | MACB_BIT(RX_USED));
> +	desc->ctrl = 0;
> +}
> +
>  static void gem_init_rings(struct macb *bp)
>  {
>  	struct macb_queue *queue;
> @@ -2598,6 +2627,7 @@ static void gem_init_rings(struct macb *bp)
>  		gem_rx_refill(queue);
>  	}
>  
> +	macb_init_tieoff(bp);
>  }
>  
>  static void macb_init_rings(struct macb *bp)
> @@ -2615,6 +2645,8 @@ static void macb_init_rings(struct macb *bp)
>  	bp->queues[0].tx_head = 0;
>  	bp->queues[0].tx_tail = 0;
>  	desc->ctrl |= MACB_BIT(TX_WRAP);
> +
> +	macb_init_tieoff(bp);
>  }
>  
>  static void macb_reset_hw(struct macb *bp)
> @@ -5215,6 +5247,7 @@ static int __maybe_unused macb_suspend(struct device *dev)
>  	unsigned long flags;
>  	unsigned int q;
>  	int err;
> +	u32 tmp;
>  
>  	if (!device_may_wakeup(&bp->dev->dev))
>  		phy_exit(bp->sgmii_phy);
> @@ -5224,17 +5257,38 @@ static int __maybe_unused macb_suspend(struct device *dev)
>  
>  	if (bp->wol & MACB_WOL_ENABLED) {
>  		spin_lock_irqsave(&bp->lock, flags);
> -		/* Flush all status bits */
> -		macb_writel(bp, TSR, -1);
> -		macb_writel(bp, RSR, -1);
> +
> +		/* Disable Tx and Rx engines before  disabling the queues,
> +		 * this is mandatory as per the IP spec sheet
> +		 */
> +		tmp = macb_readl(bp, NCR);
> +		macb_writel(bp, NCR, tmp & ~(MACB_BIT(TE) | MACB_BIT(RE)));
>  		for (q = 0, queue = bp->queues; q < bp->num_queues;
>  		     ++q, ++queue) {
> +			/* Disable RX queues */
> +			if (bp->caps & MACB_CAPS_QUEUE_DISABLE) {
> +				queue_writel(queue, RBQP, MACB_BIT(QUEUE_DISABLE));
> +			} else {
> +				/* Tie off RX queues */
> +				queue_writel(queue, RBQP,
> +					     lower_32_bits(bp->rx_ring_tieoff_dma));
> +#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
> +				queue_writel(queue, RBQPH,
> +					     upper_32_bits(bp->rx_ring_tieoff_dma));
> +#endif
> +			}
>  			/* Disable all interrupts */
>  			queue_writel(queue, IDR, -1);
>  			queue_readl(queue, ISR);
>  			if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
>  				queue_writel(queue, ISR, -1);
>  		}
> +		/* Enable Receive engine */
> +		macb_writel(bp, NCR, tmp | MACB_BIT(RE));
> +		/* Flush all status bits */
> +		macb_writel(bp, TSR, -1);
> +		macb_writel(bp, RSR, -1);
> +
>  		/* Change interrupt handler and
>  		 * Enable WoL IRQ on queue 0
>  		 */

