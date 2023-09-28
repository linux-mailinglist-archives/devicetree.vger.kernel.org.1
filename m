Return-Path: <devicetree+bounces-4347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 068577B219A
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 17:45:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 153831C209A5
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 15:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 978904F142;
	Thu, 28 Sep 2023 15:45:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83AA4F143
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 15:45:24 +0000 (UTC)
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E112411F
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 08:45:21 -0700 (PDT)
Received: by mail-qk1-x72c.google.com with SMTP id af79cd13be357-77412b91c41so730939385a.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 08:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hefring-com.20230601.gappssmtp.com; s=20230601; t=1695915921; x=1696520721; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zjyiO2aerenB+L5bFFtdZmRzY+MpNJymXfUVpkxGKO4=;
        b=dwO6EE243/koFMbKulZmcycWPxT1PjywGL+koaDrv4hLiEowCLzyPBedMp7ugDDcvy
         lfRIFfgO5vf2UjKAb6LuEPisgGOMSAgfgQCvu+0B99aCduaYmaXuWCbgamV47RJnyJft
         Ppg2YcDOO3eDJ+ZV9afprcLZS5suzxQyJ8Uphz0wrt+OPrd5OuyMecgPXViEMIbvd5PM
         lADYLmx+K2DHxZtro2NtQOSZVKEsFWNQAaTiMLjohZ/4o8bFWrlf7gkG/o/ji5KwTt9s
         8DGyugOpBuvbIc6mV02fEcUmwe4nabTJyRXbL4c3bE2i63JGI1Tid5W1pe/pYalst377
         CxkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695915921; x=1696520721;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zjyiO2aerenB+L5bFFtdZmRzY+MpNJymXfUVpkxGKO4=;
        b=aI8UBdspGDCAZxYdcATTU10Wb25sQjxQldt0MZwycyNNA/tcW6T+B0J/QGPpmVogEc
         hO8/eCehGo4V1zSTbg0o5Ur96nVdO8/kVtwhp+wRX9Y0l+ZEBdG5OcMWv6e0no4C6bSa
         /6lsKpXKZ8X2bPqSKQ3hlMDnO4UYO2hB1sdadOJKZRCWKg/DKC4B0tTBGrhqh0NjBxhR
         /V6vX6pRCpelb+ui+cNq19y3W4HL/HxzcILAMZU8suEwpeAf3WWE5APYpM8O6lWgT2se
         SVa4iLMmkTaSO3I3YDyHTCuCjJnvOswyLQjpwmVD3fgp2cpdoP9S7RtejqSYTHoewB+T
         nidg==
X-Gm-Message-State: AOJu0Yy7FRSknpcwh4rTlXywfLm/pgbtJ7m06SP4795pZyzm1SXkiXvs
	byU1QZNUPY2y1WNyRbXDq8P4/A==
X-Google-Smtp-Source: AGHT+IFKFYsPa5h8pLMtcKIq+MzAXP0NgUcgCjLytQEnC2TxzCHGxJpa5mBsW/GglWjJvBke4oO7bg==
X-Received: by 2002:ac8:5885:0:b0:418:12c6:467f with SMTP id t5-20020ac85885000000b0041812c6467fmr1513741qta.3.1695915921011;
        Thu, 28 Sep 2023 08:45:21 -0700 (PDT)
Received: from dell-precision-5540 ([50.212.55.89])
        by smtp.gmail.com with ESMTPSA id r15-20020ac87eef000000b004181a3eeff4sm3076750qtc.5.2023.09.28.08.45.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 08:45:20 -0700 (PDT)
Date: Thu, 28 Sep 2023 11:45:10 -0400
From: Ben Wolsieffer <ben.wolsieffer@hefring.com>
To: Christophe Roullier <christophe.roullier@foss.st.com>
Cc: "David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 08/12] net: ethernet: stmmac: stm32: support the
 phy-supply regulator binding
Message-ID: <ZRWfhk0aEDwytGv5@dell-precision-5540>
References: <20230928151512.322016-1-christophe.roullier@foss.st.com>
 <20230928151512.322016-9-christophe.roullier@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928151512.322016-9-christophe.roullier@foss.st.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello,

On Thu, Sep 28, 2023 at 05:15:08PM +0200, Christophe Roullier wrote:
> From: Christophe Roullier <christophe.roullier@st.com>
> 
> Configure the phy regulator if defined by the "phy-supply" DT phandle.
> 
> Signed-off-by: Christophe Roullier <christophe.roullier@foss.st.com>
> ---
>  .../net/ethernet/stmicro/stmmac/dwmac-stm32.c | 51 ++++++++++++++++++-
>  1 file changed, 50 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
> index 72dda71850d75..31e3abd2caeaa 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
... snip ...
>  static int stm32mp1_suspend(struct stm32_dwmac *dwmac)
> @@ -455,12 +496,20 @@ static int stm32mp1_suspend(struct stm32_dwmac *dwmac)
>  	if (dwmac->enable_eth_ck)
>  		clk_disable_unprepare(dwmac->clk_eth_ck);
>  
> +	/* Keep the PHY up if we use Wake-on-Lan. */
> +	if (!device_may_wakeup(dwmac->dev))
> +		phy_power_on(dwmac, false);
> +
>  	return ret;
>  }
>  
>  static void stm32mp1_resume(struct stm32_dwmac *dwmac)
>  {
>  	clk_disable_unprepare(dwmac->clk_ethstp);
> +
> +	/* The PHY was up for Wake-on-Lan. */
> +	if (!device_may_wakeup(dwmac->dev))
> +		phy_power_on(dwmac, true);
>  }
>  
>  static int stm32mcu_suspend(struct stm32_dwmac *dwmac)

Why only turn off the regulator in suspend on the STM32MP1 and not STM32
MCUs? It seems like this could just go in stm32_dwmac_suspend/resume().

Selfishly, I have a use case for this on an STM32F746 platform, so I
would like to see support for it and would test an updated version.

> -- 
> 2.25.1
> 

Thanks, Ben

