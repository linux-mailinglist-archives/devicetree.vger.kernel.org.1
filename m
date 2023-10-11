Return-Path: <devicetree+bounces-7716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDA77C5262
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:45:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C92D61C20C57
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19A7E1EA64;
	Wed, 11 Oct 2023 11:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aI04VlEE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A78B15481
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:45:45 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D13FC8F;
	Wed, 11 Oct 2023 04:45:42 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5046bf37daeso8819051e87.1;
        Wed, 11 Oct 2023 04:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697024741; x=1697629541; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RNeBmhkMd48MHynaoqC7PRDCkcniAcL1N1Iilx40N2M=;
        b=aI04VlEE+0B8rugPCofaKWoSc7eUevxRiKI2jzmTY/XzvGGE9YjsE/lG5CNCNSnBlF
         YfE04gqP8ijECBmfFzE5PHcAmf1mnoHret8AnIummR8G0myJY4vEgE4vCn51HyLDLPfo
         oWoArl0F7fTBhbD1ZAf+L3RJ/2kcLlL1wSoDLMpnRBQFpRrwQ9fWmYzZVZMHg40zB9Zm
         hVcE1DX0+jM+HiBgIduR4NfHSREZWZ8Ibpq3Lc+FJi83hgZ2yMW/9ddAmwzSuV1L15gG
         DR8t47WrvKn3+MANT4bj5cIgtBlu5ouQdvle1fwIs3A6pyUZFTo3+2HXYPRVgt8hqKWx
         gJBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697024741; x=1697629541;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RNeBmhkMd48MHynaoqC7PRDCkcniAcL1N1Iilx40N2M=;
        b=T41ZUDpfo/3fzvsw3gTIjwMEQnTleMDndVaD80Wc1EawyyIZ1bRTUgzHsJSyExajlY
         U8szLUm/G45nuRmO3AC+xgUbE8lZBPv6lGMw+Ysy0aC6b2bLnL3J+u6L2hclokCgFyHN
         0szyELPS/nidFDz3d79bXjUeZyDg/Yi5wKUR1Fuh0LOIU03eTmsysbkVmLtqgiO/t+uT
         aPcexHairkJGFn3nbQ1Iy5oFjCR2cRYBOYOzjgyWPgX0NOV22SQlGPJhlGlNdEO34rvO
         hjRLpEyxkIPjmoQJhMRpVOcMxqukqc6FWGcG4aa39s308dMAYkQO7nbQPj8vb+mjkzzN
         dDIA==
X-Gm-Message-State: AOJu0YzmM39aeFa7YwnKtRnkUKy2yuvi2u2jtB8MKvb/6Cb6bwESuCe/
	LnH0aQf0noziTPaHgb5l3IM=
X-Google-Smtp-Source: AGHT+IHcZyJQ1BwYvbpjnjX3CDDrNLGCshiQ05ZPXZPM9SIGBuOnCgCFwuVwUqqtE8OZS66an5zxpQ==
X-Received: by 2002:ac2:4c46:0:b0:500:b56d:e11a with SMTP id o6-20020ac24c46000000b00500b56de11amr19873959lfk.43.1697024740738;
        Wed, 11 Oct 2023 04:45:40 -0700 (PDT)
Received: from mobilestation ([178.176.56.174])
        by smtp.gmail.com with ESMTPSA id f18-20020ac24e52000000b00502d9af34aesm2245325lfr.120.2023.10.11.04.45.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 04:45:40 -0700 (PDT)
Date: Wed, 11 Oct 2023 14:45:37 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org, 
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	jingoohan1@gmail.com, gustavo.pimentel@synopsys.com, mani@kernel.org, 
	marek.vasut+renesas@gmail.com, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v24 08/16] PCI: dwc: Disable two BARs to avoid
 unnecessary memory assignment
Message-ID: <abf65z7xxsnd7adkg523mneccudwenvdzcw7jpblafqzvhca5n@lbpsch7ztxsn>
References: <20231011071423.249458-1-yoshihiro.shimoda.uh@renesas.com>
 <20231011071423.249458-9-yoshihiro.shimoda.uh@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011071423.249458-9-yoshihiro.shimoda.uh@renesas.com>
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 11, 2023 at 04:14:15PM +0900, Yoshihiro Shimoda wrote:
> According to the section 3.5.7.2 "RC Mode" in DWC PCIe Dual Mode
> Rev.5.20a, we should disable two BARs to avoid unnecessary memory
> assignment during device enumeration. Otherwise, Renesas R-Car Gen4
> PCIe controllers cannot work correctly in host mode.
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index a7170fd0e847..56cc7ff6d508 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -737,6 +737,14 @@ int dw_pcie_setup_rc(struct dw_pcie_rp *pp)
>  	u32 val, ctrl, num_ctrls;
>  	int ret;
>  
> +	/*
> +	 * According to the section 3.5.7.2 "RC Mode" in DWC PCIe Dual Mode
> +	 * Rev.5.20a,

and 3.5.6.1 "RC mode" in DWC PCIe RC databook v5.20a.

> +      ... we should disable two BARs to avoid unnecessary memory
> +	 * assignment during device enumeration.
> +	 */
> +	dw_pcie_writel_dbi2(pci, PCI_BASE_ADDRESS_0, 0x0);
> +	dw_pcie_writel_dbi2(pci, PCI_BASE_ADDRESS_1, 0x0);
> +

What's the point in doing this
	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, 0x00000004);
	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_1, 0x00000000);
        ...
        dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, 0);
afterward?

I guess if the BARs are disabled there is no need in having them
touched. Am I wrong?

BTW I failed to understand why the BARs inits was originally needed:
first merging the BAR0 and BAR1 into a single 64-bit BAR, then
switching it back to two 32-bit BARs. Moreover here is what prior DW
PCIe RC v5.x databooks say about the BARs:

"3.5.6 BAR Details
Base Address Registers (Offset: 0x10-x14)
The Synopsys core does not implement the optional BARs for the RC
product. This is based on the assumption that the RC host probably has
registers on some other internal bus and has knowledge and setup
access to these registers already."

I am not sure I fully understand what it means, but it seems as DW
PCIe cores didn't have anything behind the RC BARs even back then. So
it seems to me that the BARs manipulation was the Exinos PCIe host
specific, from which driver they are originating - commit 340cba6092c2
("pci: Add PCIe driver for Samsung Exynos").

* BTW Yoshihiro, I am sorry to see your patchset is still under review...(

-Serge(y)

>  	/*
>  	 * Enable DBI read-only registers for writing/updating configuration.
>  	 * Write permission gets disabled towards the end of this function.
> -- 
> 2.25.1
> 

