Return-Path: <devicetree+bounces-19381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8237FAB00
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 21:08:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A9A9281A0D
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 20:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 987F245BE9;
	Mon, 27 Nov 2023 20:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JACWPN+4"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 485D6D64
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 12:08:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1701115702;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3O4ZRmciR+wHsAJ9W5qRG6w9TB013g8G4slV+9aIPT0=;
	b=JACWPN+4ACEM0y0YKqcNHfKoROvQAZ/1MIm7dDpPIK3ZD69hH2IV4BwoB9sk/iQxms+ucA
	BVgg5J7P2QK3uIzo7LiQ/hq8j0hIBIciET7jZc5l0Z3vnXeUVAG50+QXag1wc5oE3OCJL9
	7KK65N/e6e6B4AvGq+TsTmW3Avm0Nhc=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-267-CGboMCI7NxGsRapw4zN2nA-1; Mon, 27 Nov 2023 15:08:21 -0500
X-MC-Unique: CGboMCI7NxGsRapw4zN2nA-1
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-77d8e63b874so278639585a.0
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 12:08:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701115700; x=1701720500;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3O4ZRmciR+wHsAJ9W5qRG6w9TB013g8G4slV+9aIPT0=;
        b=Op/T747Tb2tq3JGSd0VYNwFe9fuRUpXAd0ptX/7q7zlAB+RKqaWwHp2vcIX8xVJMf1
         6jsx0L16UKC83lda39UVDCc+9Y+6RoXXeyhQ/TWzNicYBp1nW+i/6db4Y1He4s13VXXQ
         QPU432gCi8+2V9q4+YXrlnu1i+LictziL+JjUb16y5KdR8MndZDdkhrl/AUxy6+QAthY
         lqjVdZ+YcDj7/cF9Ok2K65sjKrUuD8QppcFluwu3rFh3sEuIk6mKhXcc0j1k4HIWbjDy
         MLB/2+T71iCTCUhTBDF9pdsZP6Sq7wLuoytDte+jqFNdzrmX9WDwKWrK0wgfiVb83pxr
         owrQ==
X-Gm-Message-State: AOJu0YzYEUEbMCM9N79pt0XDQjMugpAUmP63AK8ZHXMTEcBI/6Ka8JZ/
	ya2WTWXlnS9tmlgjj3syKxLS64jw3pOWc8ge43iHm3rtGum9ErZzU9gmmr8iAOdiZlN6Kt/Nb/H
	POfnH193qwu/fEq8FjKwJkw==
X-Received: by 2002:a05:620a:4547:b0:77d:98a6:6482 with SMTP id u7-20020a05620a454700b0077d98a66482mr10312275qkp.5.1701115700625;
        Mon, 27 Nov 2023 12:08:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFAOj5nW/hCUU/lQPFtlhep37vZxkbLPRtbKtgaPSf8NAsZmu5Q9f59kSPzVGwrfLyJ8/zyKQ==
X-Received: by 2002:a05:620a:4547:b0:77d:98a6:6482 with SMTP id u7-20020a05620a454700b0077d98a66482mr10312228qkp.5.1701115700263;
        Mon, 27 Nov 2023 12:08:20 -0800 (PST)
Received: from fedora ([2600:1700:1ff0:d0e0::37])
        by smtp.gmail.com with ESMTPSA id dt32-20020a05620a47a000b0077d71d46887sm3926285qkb.112.2023.11.27.12.08.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 12:08:19 -0800 (PST)
Date: Mon, 27 Nov 2023 14:08:16 -0600
From: Andrew Halaney <ahalaney@redhat.com>
To: Suraj Jaiswal <quic_jsuraj@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, Prasad Sodagudi <psodagud@quicinc.com>, kernel@quicinc.com
Subject: Re: [PATCH net-next v3 3/3] net: stmmac: Add driver support for
 DWMAC5 fault IRQ Support
Message-ID: <v45vmnfab7a2p5kikwz3stjvphddyxkxrtcnipcsptvcwohqrl@hzyz3hzddxnv>
References: <cover.1700737841.git.quic_jsuraj@quicinc.com>
 <62eaaace3713751cb1ecac3163e857737107ca0e.1700737841.git.quic_jsuraj@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <62eaaace3713751cb1ecac3163e857737107ca0e.1700737841.git.quic_jsuraj@quicinc.com>

On Thu, Nov 23, 2023 at 05:08:15PM +0530, Suraj Jaiswal wrote:
> Add IRQ support to listen HW fault like ECC,DPP,FSM
> fault and print the fault information in the kernel
> log.
> 
> Signed-off-by: Suraj Jaiswal <quic_jsuraj@quicinc.com>
> ---
>  drivers/net/ethernet/stmicro/stmmac/common.h  |  1 +
>  drivers/net/ethernet/stmicro/stmmac/stmmac.h  |  2 ++
>  .../net/ethernet/stmicro/stmmac/stmmac_main.c | 18 +++++++++++++++++
>  .../ethernet/stmicro/stmmac/stmmac_platform.c | 20 +++++++++++++++++++
>  4 files changed, 41 insertions(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
> index 6b935922054d..c4821c7ab674 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/common.h
> +++ b/drivers/net/ethernet/stmicro/stmmac/common.h
> @@ -347,6 +347,7 @@ enum request_irq_err {
>  	REQ_IRQ_ERR_SFTY_UE,
>  	REQ_IRQ_ERR_SFTY_CE,
>  	REQ_IRQ_ERR_LPI,
> +	REQ_IRQ_ERR_SAFETY,
>  	REQ_IRQ_ERR_WOL,
>  	REQ_IRQ_ERR_MAC,
>  	REQ_IRQ_ERR_NO,
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac.h b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
> index cd7a9768de5f..8893d4b7fa38 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac.h
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
> @@ -33,6 +33,7 @@ struct stmmac_resources {
>  	int irq;
>  	int sfty_ce_irq;
>  	int sfty_ue_irq;
> +	int safety_common_intr;
>  	int rx_irq[MTL_MAX_RX_QUEUES];
>  	int tx_irq[MTL_MAX_TX_QUEUES];
>  };
> @@ -331,6 +332,7 @@ struct stmmac_priv {
>  	/* XDP BPF Program */
>  	unsigned long *af_xdp_zc_qps;
>  	struct bpf_prog *xdp_prog;
> +	int safety_common_intr;
>  };
>  
>  enum stmmac_state {
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index 8964fc8a955f..2ae4f34444de 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -3530,6 +3530,10 @@ static void stmmac_free_irq(struct net_device *dev,
>  		if (priv->wol_irq > 0 && priv->wol_irq != dev->irq)
>  			free_irq(priv->wol_irq, dev);
>  		fallthrough;
> +	case REQ_IRQ_ERR_SAFETY:
> +		if (priv->safety_common_intr > 0 && priv->safety_common_intr != dev->irq)
> +			free_irq(priv->safety_common_intr, dev);
> +		fallthrough;
>  	case REQ_IRQ_ERR_WOL:
>  		free_irq(dev->irq, dev);
>  		fallthrough;
> @@ -3736,6 +3740,18 @@ static int stmmac_request_irq_single(struct net_device *dev)
>  		}
>  	}
>  
> +	if (priv->safety_common_intr > 0 && priv->safety_common_intr != dev->irq) {
> +		ret = request_irq(priv->safety_common_intr, stmmac_safety_interrupt,
> +				  0, "safety", dev);
> +		if (unlikely(ret < 0)) {
> +			netdev_err(priv->dev,
> +				   "%s: alloc safety failed %d (error: %d)\n",
> +				   __func__, priv->safety_common_intr, ret);
> +			irq_err = REQ_IRQ_ERR_SAFETY;
> +			goto irq_error;
> +		}
> +	}
> +
>  	return 0;
>  
>  irq_error:
> @@ -7398,6 +7414,8 @@ int stmmac_dvr_probe(struct device *device,
>  	priv->lpi_irq = res->lpi_irq;
>  	priv->sfty_ce_irq = res->sfty_ce_irq;
>  	priv->sfty_ue_irq = res->sfty_ue_irq;
> +	priv->safety_common_intr = res->safety_common_intr;
> +
>  	for (i = 0; i < MTL_MAX_RX_QUEUES; i++)
>  		priv->rx_irq[i] = res->rx_irq[i];
>  	for (i = 0; i < MTL_MAX_TX_QUEUES; i++)
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> index 1ffde555da47..bae1704d5f4b 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> @@ -690,9 +690,25 @@ devm_stmmac_probe_config_dt(struct platform_device *pdev, u8 *mac)
>  #endif /* CONFIG_OF */
>  EXPORT_SYMBOL_GPL(devm_stmmac_probe_config_dt);
>  
> +int stmmac_get_fault_intr_config(struct platform_device *pdev, struct stmmac_resources *res)
> +{
> +	int ret = 0;
> +
> +	res->safety_common_intr = platform_get_irq_byname(pdev, "safety");
> +
> +	if (res->safety_common_intr < 0) {
> +		if (res->safety_common_intr != -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "safety IRQ configuration information not found\n");
> +		ret = 1;
> +	}
> +
> +	return ret;
> +}

I think other reviewers have covered most of what I want to say, but
I think this doesn't deserve its own function and should just be done
directly, as is done for eth_lpi for example. I think it also should be
considered an optional interrupt based on my understanding of its
purpose (just like eth_lpi).

> +
>  int stmmac_get_platform_resources(struct platform_device *pdev,
>  				  struct stmmac_resources *stmmac_res)
>  {
> +	int ret = 0;
>  	memset(stmmac_res, 0, sizeof(*stmmac_res));
>  
>  	/* Get IRQ information early to have an ability to ask for deferred
> @@ -702,6 +718,10 @@ int stmmac_get_platform_resources(struct platform_device *pdev,
>  	if (stmmac_res->irq < 0)
>  		return stmmac_res->irq;
>  
> +	ret = stmmac_get_fault_intr_config(pdev, stmmac_res);
> +	if (ret)
> +		dev_err(&pdev->dev, "Fault interrupt not present\n");
> +
>  	/* On some platforms e.g. SPEAr the wake up irq differs from the mac irq
>  	 * The external wake up irq can be passed through the platform code
>  	 * named as "eth_wake_irq"
> -- 
> 2.25.1
> 


