Return-Path: <devicetree+bounces-96051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3684395C7A4
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 10:12:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1A842887E7
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 08:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA11A1448D2;
	Fri, 23 Aug 2024 08:11:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pegase2.c-s.fr (pegase2.c-s.fr [93.17.235.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262DD144D0A;
	Fri, 23 Aug 2024 08:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.17.235.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724400704; cv=none; b=l68SzlKuOXkIrn3nAmk1gG8YwtWhPcOOWiYTqgW+RLkF2ClwI1puL9QyebxaQEyZvg7oTULeaVSWTaKXaNREiQnLPny67TsQ4mhVc0MJ3DgeKp2U/ZkRqFN86TT6bVQElMrgQ9Xqhbpl6zszwlC9EzrO3Doa2wPWMLDdkL7Uyjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724400704; c=relaxed/simple;
	bh=FBJtXYtRt3j7rUvNXQPcSdPq+dGUCTDSjmBQwGIlAwA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I7AeRCmGOVg48weoFNjXqCm9XTyFEVXd/gyN0mzjawDHRUQrxxJ4L5GXrNqgmHy4T1567L3nljTdzKnxjeH0o3a8irlly/kkJeHLruDFSptjSUiMHdw19jOMZJbIKrD7yTFxC4OG4MOzGO5yV98SWAbaH/9h8GQ8Ebsg7hJRyFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=csgroup.eu; spf=pass smtp.mailfrom=csgroup.eu; arc=none smtp.client-ip=93.17.235.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=csgroup.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=csgroup.eu
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4Wqt7x32cxz9sRr;
	Fri, 23 Aug 2024 10:11:41 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JQE8GpmFdX38; Fri, 23 Aug 2024 10:11:41 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4Wqt7x1y3Fz9rvV;
	Fri, 23 Aug 2024 10:11:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 2FEDE8B77D;
	Fri, 23 Aug 2024 10:11:41 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id 8H0f3Px2PaEg; Fri, 23 Aug 2024 10:11:41 +0200 (CEST)
Received: from [192.168.233.10] (PO24418.IDSI0.si.c-s.fr [192.168.233.10])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 8C16C8B763;
	Fri, 23 Aug 2024 10:11:40 +0200 (CEST)
Message-ID: <85172a1f-b882-4448-b0f1-242e098faf9d@csgroup.eu>
Date: Fri, 23 Aug 2024 10:11:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 25/36] soc: fsl: cpm1: qmc: Re-order probe() operations
To: Herve Codina <herve.codina@bootlin.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Qiang Zhao <qiang.zhao@nxp.com>,
 Li Yang <leoyang.li@nxp.com>, Mark Brown <broonie@kernel.org>
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20240808071132.149251-1-herve.codina@bootlin.com>
 <20240808071132.149251-26-herve.codina@bootlin.com>
Content-Language: fr-FR
From: Christophe Leroy <christophe.leroy@csgroup.eu>
In-Reply-To: <20240808071132.149251-26-herve.codina@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



Le 08/08/2024 à 09:11, Herve Codina a écrit :
> Current code handles CPM1 version of QMC. In the QUICC Engine (QE)
> version, some operations done at probe() need to be done in a different
> order.
> 
> In order to prepare the support for the QE version, changed the sequence
> of operation done at probe():
> - Retrieve the tsa_serial earlier, before initializing resources.
> - Group SCC initialisation and do this initialization when it is really
>    needed in the probe() sequence.
> 
> Having the QE compatible sequence in the CPM1 version does not lead to
> any issue and works correctly without any regressions.
> 
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>

Reviewed-by: Christophe Leroy <christophe.leroy@csgroup.eu>

> ---
>   drivers/soc/fsl/qe/qmc.c | 54 +++++++++++++++++++---------------------
>   1 file changed, 26 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/soc/fsl/qe/qmc.c b/drivers/soc/fsl/qe/qmc.c
> index 85fc86f91806..8dd0f8fc7b08 100644
> --- a/drivers/soc/fsl/qe/qmc.c
> +++ b/drivers/soc/fsl/qe/qmc.c
> @@ -1614,6 +1614,12 @@ static int qmc_probe(struct platform_device *pdev)
>   	}
>   	INIT_LIST_HEAD(&qmc->chan_head);
>   
> +	qmc->tsa_serial = devm_tsa_serial_get_byphandle(qmc->dev, np, "fsl,tsa-serial");
> +	if (IS_ERR(qmc->tsa_serial)) {
> +		return dev_err_probe(qmc->dev, PTR_ERR(qmc->tsa_serial),
> +				     "Failed to get TSA serial\n");
> +	}
> +
>   	qmc->scc_regs = devm_platform_ioremap_resource_byname(pdev, "scc_regs");
>   	if (IS_ERR(qmc->scc_regs))
>   		return PTR_ERR(qmc->scc_regs);
> @@ -1630,33 +1636,13 @@ static int qmc_probe(struct platform_device *pdev)
>   	if (IS_ERR(qmc->dpram))
>   		return PTR_ERR(qmc->dpram);
>   
> -	qmc->tsa_serial = devm_tsa_serial_get_byphandle(qmc->dev, np, "fsl,tsa-serial");
> -	if (IS_ERR(qmc->tsa_serial)) {
> -		return dev_err_probe(qmc->dev, PTR_ERR(qmc->tsa_serial),
> -				     "Failed to get TSA serial\n");
> -	}
> -
> -	/* Connect the serial (SCC) to TSA */
> -	ret = tsa_serial_connect(qmc->tsa_serial);
> -	if (ret) {
> -		dev_err(qmc->dev, "Failed to connect TSA serial\n");
> -		return ret;
> -	}
> -
>   	/* Parse channels informationss */
>   	ret = qmc_of_parse_chans(qmc, np);
>   	if (ret)
> -		goto err_tsa_serial_disconnect;
> +		return ret;
>   
>   	nb_chans = qmc_nb_chans(qmc);
>   
> -	/* Init GMSR_H and GMSR_L registers */
> -	qmc_write32(qmc->scc_regs + SCC_GSMRH,
> -		    SCC_GSMRH_CDS | SCC_GSMRH_CTSS | SCC_GSMRH_CDP | SCC_GSMRH_CTSP);
> -
> -	/* enable QMC mode */
> -	qmc_write32(qmc->scc_regs + SCC_GSMRL, SCC_GSMRL_MODE_QMC);
> -
>   	/*
>   	 * Allocate the buffer descriptor table
>   	 * 8 rx and 8 tx descriptors per channel
> @@ -1666,8 +1652,7 @@ static int qmc_probe(struct platform_device *pdev)
>   					    &qmc->bd_dma_addr, GFP_KERNEL);
>   	if (!qmc->bd_table) {
>   		dev_err(qmc->dev, "Failed to allocate bd table\n");
> -		ret = -ENOMEM;
> -		goto err_tsa_serial_disconnect;
> +		return -ENOMEM;
>   	}
>   	memset(qmc->bd_table, 0, qmc->bd_size);
>   
> @@ -1679,8 +1664,7 @@ static int qmc_probe(struct platform_device *pdev)
>   					     &qmc->int_dma_addr, GFP_KERNEL);
>   	if (!qmc->int_table) {
>   		dev_err(qmc->dev, "Failed to allocate interrupt table\n");
> -		ret = -ENOMEM;
> -		goto err_tsa_serial_disconnect;
> +		return -ENOMEM;
>   	}
>   	memset(qmc->int_table, 0, qmc->int_size);
>   
> @@ -1699,18 +1683,32 @@ static int qmc_probe(struct platform_device *pdev)
>   
>   	ret = qmc_init_tsa(qmc);
>   	if (ret)
> -		goto err_tsa_serial_disconnect;
> +		return ret;
>   
>   	qmc_write16(qmc->scc_pram + QMC_GBL_QMCSTATE, 0x8000);
>   
>   	ret = qmc_setup_chans(qmc);
>   	if (ret)
> -		goto err_tsa_serial_disconnect;
> +		return ret;
>   
>   	/* Init interrupts table */
>   	ret = qmc_setup_ints(qmc);
>   	if (ret)
> -		goto err_tsa_serial_disconnect;
> +		return ret;
> +
> +	/* Connect the serial (SCC) to TSA */
> +	ret = tsa_serial_connect(qmc->tsa_serial);
> +	if (ret) {
> +		dev_err(qmc->dev, "Failed to connect TSA serial\n");
> +		return ret;
> +	}
> +
> +	/* Init GMSR_H and GMSR_L registers */
> +	qmc_write32(qmc->scc_regs + SCC_GSMRH,
> +		    SCC_GSMRH_CDS | SCC_GSMRH_CTSS | SCC_GSMRH_CDP | SCC_GSMRH_CTSP);
> +
> +	/* enable QMC mode */
> +	qmc_write32(qmc->scc_regs + SCC_GSMRL, SCC_GSMRL_MODE_QMC);
>   
>   	/* Disable and clear interrupts,  set the irq handler */
>   	qmc_write16(qmc->scc_regs + SCC_SCCM, 0x0000);

