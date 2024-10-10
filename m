Return-Path: <devicetree+bounces-109856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A6C9983D5
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 12:36:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 444521F262F9
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 10:36:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6BA1BDA91;
	Thu, 10 Oct 2024 10:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mzLg81J/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB631BF33F
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 10:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728556561; cv=none; b=sR+SPxRg2+yABy/1QCPzKAik0lEW8VWUpevZ4dik3yH94ZP65WN4ANzXx39g3mJ1keDx94lrqTuD2pt8DukPqSUX+rtarAeeM99tn/LsaJYZXisqxicsMIYAA8Gfi1DNBCs1XdfdD8gR5J0bqM9UhxOTvCQDxPlDb4DSgDcZEDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728556561; c=relaxed/simple;
	bh=CtyIT4ZNOQuxdgMNtatD9o1p8iGKg6KQy/UDY8yO1GE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gxfwt21t6yxg5/6WPr9dUSDqe8tthPUdfaCl0GMU+wuLX8JePC/mH282ay/DRMQP5fRfUyT9aWTbzaagxEadc0ioF9aieCUyBMuUPszaVb6UsdUvslJtLjNYWNjF7vb+m4k5Dw/b2M9O25afFkB0vg48j1khdd5YubXRcBmKogk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mzLg81J/; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2e2976fca23so624364a91.3
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 03:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728556558; x=1729161358; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=90kCFwX2rvFJ1EX0qVrB7V4aNyyA47t7eqFcnQ7sd14=;
        b=mzLg81J/MSzQJnb2moLOsmlnH2IxbD9JlrcIzMgVXypHQeCqO38qCSQmARgOeKVPQ8
         ORIiMKdKOuraB1SSt04Iwo3N9/F1jr7I4ZwamsSmkZmDdqG3UtsjFfEKQRgcY1+/ShJ3
         o/bkAY26u0bMtQ3eoTDz2dJgZRhWZ42vuYYd9usPzotuUezP/WYMCV6j/Z6dHzSebt9F
         6lgHqdKqdsm0j3AO+rkWXumJhWfvujnt+44g0DifFDies7yBdXdZKuJoxVqw1QASSsbt
         TSNrtxTdECMKUYshy7dTc+V53iTRwuuQkKus4I00YZ6bI9Sb+OESAbvKcEITAs3uapGj
         u9PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728556558; x=1729161358;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=90kCFwX2rvFJ1EX0qVrB7V4aNyyA47t7eqFcnQ7sd14=;
        b=ppUQtveDfYLjYYC23TLjFTMRDvXn7708Kzpa5dqsPhtvXHODdXUTrE/wbwJ/84YrU1
         URobUpJ3AGfsVlBPgItMceaeZdGV2RRp4NZGJ2lwla2JOI8dnfeZ9rwaJqavbMQIFkb/
         4nUKBi0Z+corcZ80rtUX0JbJplSNjSUo8OuROgQR5TSUrgG2MkgRQQBzY6WQKbetRSIe
         wAE8CvPcXdJmBHuugL+W0KJp4B5vBZap2UlaZsyGeHRQ9ZgJ6fWM0IZbAtTW0npGWmY3
         YpbvaLBZ6B2ggfDNc7JFB8+5k+4V0h2JeeZJqbi5XfZqg/eidZZ0zSVKwy5NHAw+rSle
         2HaA==
X-Forwarded-Encrypted: i=1; AJvYcCVVEcwDngPs0MM7L/saQF+mNygqh/DYegVB/B+6+ZVlBlrnAoYVLbGCeTow0Xi1jk/qzzHFIvIkIDYs@vger.kernel.org
X-Gm-Message-State: AOJu0YzZO40uqw41exYhpRYxl0CleU/kNlz2X3zz/BEUb+7YMqQS77DK
	ojZwjvzln2PHDVm+ooyRdavgPc6O6cNF5S1g2sbzaPcjFB3zCY73rd8z6R2uCQ==
X-Google-Smtp-Source: AGHT+IED2bSUu+lVDaGy2RN4aKt78OaxV4xRcBnWCUkQllV8/en+YZ3X+i9YU8U4s95jGGviZKDKwQ==
X-Received: by 2002:a17:90a:e395:b0:2e2:cf5c:8edf with SMTP id 98e67ed59e1d1-2e2cf5c8fe4mr2286223a91.9.1728556558052;
        Thu, 10 Oct 2024 03:35:58 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e2b41f8377sm1503510a91.1.2024.10.10.03.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 03:35:57 -0700 (PDT)
Date: Thu, 10 Oct 2024 16:05:50 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 10/12] PCI: rockchip-ep: Improve link training
Message-ID: <20241010103550.elwd2k35t4k4cypu@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-11-dlemoal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241007041218.157516-11-dlemoal@kernel.org>

On Mon, Oct 07, 2024 at 01:12:16PM +0900, Damien Le Moal wrote:
> The Rockchip rk339 technical reference manual describe the endpoint mode

RK3399

Please include the full reference: TRM name followed by the section.

> link training process clearly and states that:
>   Insure link training completion and success by observing link_st field
>   in PCIe Client BASIC_STATUS1 register change to 2'b11. If both side
>   support PCIe Gen2 speed, re-train can be Initiated by asserting the
>   Retrain Link field in Link Control and Status Register. The software
>   should insure the BASIC_STATUS0[negotiated_speed] changes to "1", that
>   indicates re-train to Gen2 successfully.
> This procedure is very similar to what is done for the root-port mode in
> rockchip_pcie_host_init_port().
> 
> Implement this link training procedure for the endpoint mode as well.
> Given that the rk3399 SoC does not have an interrupt signaling link
> status changes, training is implemented as a delayed work which is
> rescheduled until the link training completes or the endpoint controller
> is stopped. The link training work is first scheduled in
> rockchip_pcie_ep_start() when the endpoint function is started. Link
> training completion is signaled to the function using pci_epc_linkup().
> Accordingly, the linkup_notifier field of the rockchip pci_epc_features
> structure is changed to true.
> 
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 79 ++++++++++++++++++++++-
>  drivers/pci/controller/pcie-rockchip.h    | 11 ++++
>  2 files changed, 89 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index a801e040bcad..af50432525b4 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -16,6 +16,8 @@
>  #include <linux/platform_device.h>
>  #include <linux/pci-epf.h>
>  #include <linux/sizes.h>
> +#include <linux/workqueue.h>
> +#include <linux/iopoll.h>

Please keep the includes sorted.

>  
>  #include "pcie-rockchip.h"
>  
> @@ -48,6 +50,7 @@ struct rockchip_pcie_ep {
>  	u64			irq_pci_addr;
>  	u8			irq_pci_fn;
>  	u8			irq_pending;
> +	struct delayed_work	link_training;
>  };
>  
>  static void rockchip_pcie_clear_ep_ob_atu(struct rockchip_pcie *rockchip,
> @@ -465,6 +468,8 @@ static int rockchip_pcie_ep_start(struct pci_epc *epc)
>  			    PCIE_CLIENT_CONF_ENABLE,
>  			    PCIE_CLIENT_CONFIG);
>  
> +	schedule_delayed_work(&ep->link_training, 0);
> +
>  	return 0;
>  }
>  
> @@ -473,6 +478,8 @@ static void rockchip_pcie_ep_stop(struct pci_epc *epc)
>  	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
>  	struct rockchip_pcie *rockchip = &ep->rockchip;
>  
> +	cancel_delayed_work_sync(&ep->link_training);
> +
>  	/* Stop link training and disable configuration */
>  	rockchip_pcie_write(rockchip,
>  			    PCIE_CLIENT_CONF_DISABLE |
> @@ -480,8 +487,77 @@ static void rockchip_pcie_ep_stop(struct pci_epc *epc)
>  			    PCIE_CLIENT_CONFIG);
>  }
>  
> +static void rockchip_pcie_ep_retrain_link(struct rockchip_pcie *rockchip)
> +{
> +	u32 status;
> +
> +	status = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_LCS);
> +	status |= PCI_EXP_LNKCTL_RL;
> +	rockchip_pcie_write(rockchip, status, PCIE_EP_CONFIG_LCS);
> +}
> +
> +static bool rockchip_pcie_ep_link_up(struct rockchip_pcie *rockchip)
> +{
> +	u32 val = rockchip_pcie_read(rockchip, PCIE_CLIENT_BASIC_STATUS1);
> +
> +	return PCIE_LINK_UP(val);
> +}
> +
> +static void rockchip_pcie_ep_link_training(struct work_struct *work)
> +{
> +	struct rockchip_pcie_ep *ep =
> +		container_of(work, struct rockchip_pcie_ep, link_training.work);
> +	struct rockchip_pcie *rockchip = &ep->rockchip;
> +	struct device *dev = rockchip->dev;
> +	u32 val;
> +	int ret;
> +
> +	/* Enable Gen1 training and wait for its completion */
> +	ret = readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
> +				 val, PCIE_LINK_TRAINING_DONE(val), 50,
> +				 LINK_TRAIN_TIMEOUT);
> +	if (ret)
> +		goto again;
> +
> +	/* Make sure that the link is up */
> +	ret = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_BASIC_STATUS1,
> +				 val, PCIE_LINK_UP(val), 50,
> +				 LINK_TRAIN_TIMEOUT);
> +	if (ret)
> +		goto again;
> +
> +	/* Check the current speed */
> +	val = rockchip_pcie_read(rockchip, PCIE_CORE_CTRL);
> +	if (!PCIE_LINK_IS_GEN2(val) && rockchip->link_gen == 2) {

PCIE_LINK_IS_GEN2()?

> +		/* Enable retrain for gen2 */
> +		rockchip_pcie_ep_retrain_link(rockchip);
> +		readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
> +				   val, PCIE_LINK_IS_GEN2(val), 50,
> +				   LINK_TRAIN_TIMEOUT);
> +	}
> +
> +	/* Check again that the link is up */
> +	if (!rockchip_pcie_ep_link_up(rockchip))
> +		goto again;

TRM doesn't mention this check. Is this really necessary?

> +
> +	val = rockchip_pcie_read(rockchip, PCIE_CLIENT_BASIC_STATUS0);
> +	dev_info(dev,
> +		 "Link UP (Negociated speed: %sGT/s, width: x%lu)\n",


Negotiated

> +		 (val & PCIE_CLIENT_NEG_LINK_SPEED) ? "5" : "2.5",
> +		 ((val & PCIE_CLIENT_NEG_LINK_WIDTH_MASK) >>
> +		  PCIE_CLIENT_NEG_LINK_WIDTH_SHIFT) << 1);
> +
> +	/* Notify the function */
> +	pci_epc_linkup(ep->epc);
> +
> +	return;
> +
> +again:
> +	schedule_delayed_work(&ep->link_training, msecs_to_jiffies(5));
> +}
> +
>  static const struct pci_epc_features rockchip_pcie_epc_features = {
> -	.linkup_notifier = false,
> +	.linkup_notifier = true,
>  	.msi_capable = true,
>  	.msix_capable = false,
>  	.align = ROCKCHIP_PCIE_AT_SIZE_ALIGN,
> @@ -642,6 +718,7 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
>  	rockchip = &ep->rockchip;
>  	rockchip->is_rc = false;
>  	rockchip->dev = dev;
> +	INIT_DELAYED_WORK(&ep->link_training, rockchip_pcie_ep_link_training);
>  
>  	epc = devm_pci_epc_create(dev, &rockchip_pcie_epc_ops);
>  	if (IS_ERR(epc)) {
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> index 0263f158ee8d..3963b7097a91 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -26,6 +26,7 @@
>  #define MAX_LANE_NUM			4
>  #define MAX_REGION_LIMIT		32
>  #define MIN_EP_APERTURE			28
> +#define LINK_TRAIN_TIMEOUT		(5000 * USEC_PER_MSEC)

pcie-rockchip-host has only 500ms timeout.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

