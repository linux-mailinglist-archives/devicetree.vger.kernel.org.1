Return-Path: <devicetree+bounces-123589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 841489D5520
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 23:03:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 447E92835F3
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 22:03:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2BE21DC05D;
	Thu, 21 Nov 2024 22:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gvv1AdRv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DF71DA103
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 22:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732226578; cv=none; b=YzsKBqLI2jY5LBNMRim7MUiytZdBHZ3IHDP2r186lByiuFClnStNeVGxnUJtssOj6oUcpZRIfqCUr4CU/7PRojXVHqqTyblGTlvPJl3qrF8rmOJkRT9Csz+vtZXtZZe65qSRlcdVjf2MTBckY14ghYyKN7diroqgzZI+41j16XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732226578; c=relaxed/simple;
	bh=+q3J5+26S3qLOW3VlhEi8UKAtf0KbbS5+fxznIzyn4o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CNcwujJsGzjw0BLuBoVVgtr/OBrk29fD3ASH9plJyURPbyYPLWPvtmIsSxwuAXMXBLavM14xRq+LCnQFp33tf5jhi0CvU2HJS4sUq6w/xEGMwDkLTPjl3xKkh8xTZ6w0U5Tn9kyUtrvN3BpJc9bDFylZKDmA1H6B0MN/LtZAzwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gvv1AdRv; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53dd3584911so314409e87.3
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 14:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732226575; x=1732831375; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XyZbodUlxaaIOLbLNj0ESoIe1vXf8L/biFz6rscYqaI=;
        b=Gvv1AdRvnQ3JW7sXWmRhbnglMO6koNG6iRC7OGsVqbdSoh/sslHAeWae6trICT/VAf
         1QglIWWOHlWoIknR7uUDkSdRpprrbocnE/pL4IC8hOcUByvSDDUj2fYkUj907n4mM1IM
         Nh92/KPZCf48Cj5qokaSyFLCNNey5TLHtCnwBx582jeIUE+QVs427FKhDRVL/nP4JmJL
         FtJuNmNlkjq0QtP5lwJMKvkd7S5h18Tscw5rGirgSTPuz7IbUb4yIza9eOqdbLMuMd7x
         G6pjMDj9u99GoOM6GSMJgr9+AOYFq+WfmZeHR4jMaf3weVjgwYpe2H4Vliz7ZUFpsPFw
         5X7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732226575; x=1732831375;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XyZbodUlxaaIOLbLNj0ESoIe1vXf8L/biFz6rscYqaI=;
        b=vETuDp6mp/qEceuz/RILrZYU5NIYD2nd24Vh3f0cI+cpv9FiHKu85kUdRFGjSG+oQ2
         HAjvQU94E8e+cLimIuV+ovWVhS2pFJa0rxd0vXf/fGF6iGgphBy0+Q3cpoVlthOYkUhu
         hhH2uVHqXdhWtWp9mSJoUljwRH7wp+0+FjLy2ooXKVkBysMjQqWDYyvNs0en+yZ9VbA9
         cPOgdFegWA5JXtEzeobkitfeREsGgTT5+RU7jV2YZbZ2t625p1leZ21JqFMdL6gdH2Cp
         pl0ihfGBhGh4Y814Ez577xzn/FLppRsxGGXwE0FEFar/bwuVrwwhOSGJ3qLIR1lNE+4Q
         E0Zg==
X-Forwarded-Encrypted: i=1; AJvYcCWT0UglYha0XzXojkAWqwXWvNgkT1nLYM9Vk3GnCeTOG3mKql28excSGDdiMOEST/zFxeU91L5+jV/u@vger.kernel.org
X-Gm-Message-State: AOJu0YyWyunWkD9Z/NrA+D6dRBE1VEYPViG8vAGYR+iIKaNHKca38SiT
	za/UKEjn3n10r8HWUCa+O1b3FNjRzaIq5us/5BNiKMCyqo7REQe72KtWHGNmnL4=
X-Gm-Gg: ASbGnctOt1lGpHYVgo8F0p+JBnihdbVYeivtBBjZulR1AidIJvueF4uEE0dMJLGo51T
	BXbfsTnWGlxWwoHaA1GQSCMzwgBpF7e6iX+uMtirC8+pv+C6f+U2f30D0i+xUDrsGV/C0rzu4Xp
	AQ8pInEuUdziZ5gkw1EH0EJReiEciq5QgfNioBt4JgzUCStUOZanO5wwPmENvJLIy7R22YygF+J
	HWAbd+ZLxdiLdnwvPiCN3Z+A2ohLr/vwfpzjQ+X1eJV499vt0jmsKXk9tSz7oiq8AgFDDyjKS58
	dpdGV3TwAVs49nsz16inXxD+yD+Mtw==
X-Google-Smtp-Source: AGHT+IGvMp2P63eNMJFBM/uS4x5A1fplOGNXUhnBN8XcU6oi3MYCcRDHTuJfZMtxhHAmmCkZfdOtjw==
X-Received: by 2002:a05:6512:3e23:b0:535:82eb:21d1 with SMTP id 2adb3069b0e04-53dd3baf730mr140842e87.57.1732226574803;
        Thu, 21 Nov 2024 14:02:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24518b2sm93296e87.102.2024.11.21.14.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 14:02:53 -0800 (PST)
Date: Fri, 22 Nov 2024 00:02:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Odelu Kukatla <quic_okukatla@quicinc.com>, Mike Tipton <quic_mdtipton@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] interconnect: qcom: sdx75: Drop QP0 related
 interconnect and BCM nodes
Message-ID: <cjqy5de3kkqh7qasbyow4midimgoo3qkx5zk73hc5kqy5566ps@7ukxckx5vcz5>
References: <20241121172737.255-1-quic_rlaggysh@quicinc.com>
 <20241121172737.255-3-quic_rlaggysh@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241121172737.255-3-quic_rlaggysh@quicinc.com>

On Thu, Nov 21, 2024 at 05:27:37PM +0000, Raviteja Laggyshetty wrote:
> QP0 resource on sdx75 is managed by clk-rpmh.
> There are no interconnect clients voting for QP0, hence dropping the
> redundant nodes from topolgy to avoid the risk of overriding the vote
> placed on QP0 using clk-rpmh.
> 
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> ---
>  drivers/interconnect/qcom/sdx75.c |  25 -------
>  drivers/interconnect/qcom/sdx75.h | 118 +++++++++++++++---------------
>  2 files changed, 58 insertions(+), 85 deletions(-)
> 
> diff --git a/drivers/interconnect/qcom/sdx75.c b/drivers/interconnect/qcom/sdx75.c
> index 7ef1f17f3292..4afcdc5f25a7 100644
> --- a/drivers/interconnect/qcom/sdx75.c
> +++ b/drivers/interconnect/qcom/sdx75.c
> @@ -16,15 +16,6 @@
>  #include "icc-rpmh.h"
>  #include "sdx75.h"
>  
> -static struct qcom_icc_node qpic_core_master = {
> -	.name = "qpic_core_master",
> -	.id = SDX75_MASTER_QPIC_CORE,
> -	.channels = 1,
> -	.buswidth = 4,
> -	.num_links = 1,
> -	.links = { SDX75_SLAVE_QPIC_CORE },
> -};
> -
>  static struct qcom_icc_node qup0_core_master = {
>  	.name = "qup0_core_master",
>  	.id = SDX75_MASTER_QUP_CORE_0,
> @@ -375,14 +366,6 @@ static struct qcom_icc_node xm_usb3 = {
>  	.links = { SDX75_SLAVE_A1NOC_CFG },
>  };
>  
> -static struct qcom_icc_node qpic_core_slave = {
> -	.name = "qpic_core_slave",
> -	.id = SDX75_SLAVE_QPIC_CORE,
> -	.channels = 1,
> -	.buswidth = 4,
> -	.num_links = 0,
> -};
> -
>  static struct qcom_icc_node qup0_core_slave = {
>  	.name = "qup0_core_slave",
>  	.id = SDX75_SLAVE_QUP_CORE_0,
> @@ -831,12 +814,6 @@ static struct qcom_icc_bcm bcm_mc0 = {
>  	.nodes = { &ebi },
>  };
>  
> -static struct qcom_icc_bcm bcm_qp0 = {
> -	.name = "QP0",
> -	.num_nodes = 1,
> -	.nodes = { &qpic_core_slave },
> -};
> -
>  static struct qcom_icc_bcm bcm_qup0 = {
>  	.name = "QUP0",
>  	.keepalive = true,
> @@ -903,9 +880,7 @@ static struct qcom_icc_bcm * const clk_virt_bcms[] = {
>  };
>  
>  static struct qcom_icc_node * const clk_virt_nodes[] = {
> -	[MASTER_QPIC_CORE] = &qpic_core_master,
>  	[MASTER_QUP_CORE_0] = &qup0_core_master,
> -	[SLAVE_QPIC_CORE] = &qpic_core_slave,
>  	[SLAVE_QUP_CORE_0] = &qup0_core_slave,
>  };
>  
> diff --git a/drivers/interconnect/qcom/sdx75.h b/drivers/interconnect/qcom/sdx75.h
> index 24e887159920..3fd2bfcdce84 100644
> --- a/drivers/interconnect/qcom/sdx75.h
> +++ b/drivers/interconnect/qcom/sdx75.h
> @@ -33,65 +33,63 @@
>  #define SDX75_MASTER_QDSS_ETR			24
>  #define SDX75_MASTER_QDSS_ETR_1			25
>  #define SDX75_MASTER_QPIC			26
> -#define SDX75_MASTER_QPIC_CORE			27

What prompts renumbering of all the nodes? From my POV it's perfectly
fine to keep the indices with the holes in them.

> -#define SDX75_MASTER_QUP_0			28
> -#define SDX75_MASTER_QUP_CORE_0			29
> -#define SDX75_MASTER_SDCC_1			30
> -#define SDX75_MASTER_SDCC_4			31
> -#define SDX75_MASTER_SNOC_CFG			32
> -#define SDX75_MASTER_SNOC_SF_MEM_NOC		33
> -#define SDX75_MASTER_SYS_TCU			34
> -#define SDX75_MASTER_USB3_0			35
> -#define SDX75_SLAVE_A1NOC_CFG			36
> -#define SDX75_SLAVE_ANOC_PCIE_GEM_NOC		37
> -#define SDX75_SLAVE_AUDIO			38
> -#define SDX75_SLAVE_CLK_CTL			39
> -#define SDX75_SLAVE_CRYPTO_0_CFG		40
> -#define SDX75_SLAVE_CNOC_MSS			41
> -#define SDX75_SLAVE_DDRSS_CFG			42
> -#define SDX75_SLAVE_EBI1			43
> -#define SDX75_SLAVE_ETH0_CFG			44
> -#define SDX75_SLAVE_ETH1_CFG			45
> -#define SDX75_SLAVE_GEM_NOC_CFG			46
> -#define SDX75_SLAVE_GEM_NOC_CNOC		47
> -#define SDX75_SLAVE_ICBDI_MVMSS_CFG		48
> -#define SDX75_SLAVE_IMEM			49
> -#define SDX75_SLAVE_IMEM_CFG			50
> -#define SDX75_SLAVE_IPA_CFG			51
> -#define SDX75_SLAVE_IPC_ROUTER_CFG		52
> -#define SDX75_SLAVE_LAGG_CFG			53
> -#define SDX75_SLAVE_LLCC			54
> -#define SDX75_SLAVE_MCCC_MASTER			55
> -#define SDX75_SLAVE_MEM_NOC_PCIE_SNOC		56
> -#define SDX75_SLAVE_PCIE_0			57
> -#define SDX75_SLAVE_PCIE_1			58
> -#define SDX75_SLAVE_PCIE_2			59
> -#define SDX75_SLAVE_PCIE_0_CFG			60
> -#define SDX75_SLAVE_PCIE_1_CFG			61
> -#define SDX75_SLAVE_PCIE_2_CFG			62
> -#define SDX75_SLAVE_PCIE_ANOC_CFG		63
> -#define SDX75_SLAVE_PCIE_RSC_CFG		64
> -#define SDX75_SLAVE_PDM				65
> -#define SDX75_SLAVE_PRNG			66
> -#define SDX75_SLAVE_QDSS_CFG			67
> -#define SDX75_SLAVE_QDSS_STM			68
> -#define SDX75_SLAVE_QPIC			69
> -#define SDX75_SLAVE_QPIC_CORE			70
> -#define SDX75_SLAVE_QUP_0			71
> -#define SDX75_SLAVE_QUP_CORE_0			72
> -#define SDX75_SLAVE_SDCC_1			73
> -#define SDX75_SLAVE_SDCC_4			74
> -#define SDX75_SLAVE_SERVICE_GEM_NOC		75
> -#define SDX75_SLAVE_SERVICE_PCIE_ANOC		76
> -#define SDX75_SLAVE_SERVICE_SNOC		77
> -#define SDX75_SLAVE_SNOC_CFG			78
> -#define SDX75_SLAVE_SNOC_GEM_NOC_SF		79
> -#define SDX75_SLAVE_SNOOP_BWMON			80
> -#define SDX75_SLAVE_SPMI_VGI_COEX		81
> -#define SDX75_SLAVE_TCSR			82
> -#define SDX75_SLAVE_TCU				83
> -#define SDX75_SLAVE_TLMM			84
> -#define SDX75_SLAVE_USB3			85
> -#define SDX75_SLAVE_USB3_PHY_CFG		86
> +#define SDX75_MASTER_QUP_0			27
> +#define SDX75_MASTER_QUP_CORE_0			28
> +#define SDX75_MASTER_SDCC_1			29
> +#define SDX75_MASTER_SDCC_4			30
> +#define SDX75_MASTER_SNOC_CFG			31
> +#define SDX75_MASTER_SNOC_SF_MEM_NOC		32
> +#define SDX75_MASTER_SYS_TCU			33
> +#define SDX75_MASTER_USB3_0			34
> +#define SDX75_SLAVE_A1NOC_CFG			35
> +#define SDX75_SLAVE_ANOC_PCIE_GEM_NOC		36
> +#define SDX75_SLAVE_AUDIO			37
> +#define SDX75_SLAVE_CLK_CTL			38
> +#define SDX75_SLAVE_CRYPTO_0_CFG		39
> +#define SDX75_SLAVE_CNOC_MSS			40
> +#define SDX75_SLAVE_DDRSS_CFG			41
> +#define SDX75_SLAVE_EBI1			42
> +#define SDX75_SLAVE_ETH0_CFG			43
> +#define SDX75_SLAVE_ETH1_CFG			44
> +#define SDX75_SLAVE_GEM_NOC_CFG			45
> +#define SDX75_SLAVE_GEM_NOC_CNOC		46
> +#define SDX75_SLAVE_ICBDI_MVMSS_CFG		47
> +#define SDX75_SLAVE_IMEM			48
> +#define SDX75_SLAVE_IMEM_CFG			49
> +#define SDX75_SLAVE_IPA_CFG			50
> +#define SDX75_SLAVE_IPC_ROUTER_CFG		51
> +#define SDX75_SLAVE_LAGG_CFG			52
> +#define SDX75_SLAVE_LLCC			53
> +#define SDX75_SLAVE_MCCC_MASTER			54
> +#define SDX75_SLAVE_MEM_NOC_PCIE_SNOC		55
> +#define SDX75_SLAVE_PCIE_0			56
> +#define SDX75_SLAVE_PCIE_1			57
> +#define SDX75_SLAVE_PCIE_2			58
> +#define SDX75_SLAVE_PCIE_0_CFG			59
> +#define SDX75_SLAVE_PCIE_1_CFG			60
> +#define SDX75_SLAVE_PCIE_2_CFG			61
> +#define SDX75_SLAVE_PCIE_ANOC_CFG		62
> +#define SDX75_SLAVE_PCIE_RSC_CFG		63
> +#define SDX75_SLAVE_PDM				64
> +#define SDX75_SLAVE_PRNG			65
> +#define SDX75_SLAVE_QDSS_CFG			66
> +#define SDX75_SLAVE_QDSS_STM			67
> +#define SDX75_SLAVE_QPIC			68
> +#define SDX75_SLAVE_QUP_0			69
> +#define SDX75_SLAVE_QUP_CORE_0			70
> +#define SDX75_SLAVE_SDCC_1			71
> +#define SDX75_SLAVE_SDCC_4			72
> +#define SDX75_SLAVE_SERVICE_GEM_NOC		73
> +#define SDX75_SLAVE_SERVICE_PCIE_ANOC		74
> +#define SDX75_SLAVE_SERVICE_SNOC		75
> +#define SDX75_SLAVE_SNOC_CFG			76
> +#define SDX75_SLAVE_SNOC_GEM_NOC_SF		77
> +#define SDX75_SLAVE_SNOOP_BWMON			78
> +#define SDX75_SLAVE_SPMI_VGI_COEX		79
> +#define SDX75_SLAVE_TCSR			80
> +#define SDX75_SLAVE_TCU				81
> +#define SDX75_SLAVE_TLMM			82
> +#define SDX75_SLAVE_USB3			83
> +#define SDX75_SLAVE_USB3_PHY_CFG		84
>  
>  #endif
> -- 
> 2.39.2
> 

-- 
With best wishes
Dmitry

