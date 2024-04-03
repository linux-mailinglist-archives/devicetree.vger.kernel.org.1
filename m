Return-Path: <devicetree+bounces-55767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E338964CB
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 08:46:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D6EF1F23241
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 06:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 962FC4EB5F;
	Wed,  3 Apr 2024 06:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fktE8wSR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A20B0548E3
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 06:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712126781; cv=none; b=HRLuDWdb+5XqGR0n19ulHIXhenaTHwDa6OZf0qRYGZMWurWEnWKEtkTMw4QoplrtvXapLV7rDlZza/4ZwZpjRX3lwG9jM8Dvp90VJXty2ndL5xADXaLe1DnSPjvjMOP4feQKmUwNFMtzzWtpd5sZgxQJvOcPmRfe4aE2UdenaI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712126781; c=relaxed/simple;
	bh=EtLzbRs1jyXC2EzWtrlyjhshVeLBDRwrWIp3gdtJp2g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bX6NepcMVt4UFrmfyoHuB2pKOba44Yeswh4CN2NO7nxr9XnPZVmikWgKLEKVv4KWdq1ph+0vSyxNAFeTeyPZNeMeEHwVjO+XBunLu2+TU37T1a+Sk/1wQEU96TJM8yT2fr+v4BWzz6eqXgEAJzgSac13mlTTa/K1uNpt6lAdYcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fktE8wSR; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-22e7444c5a0so702851fac.2
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 23:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712126778; x=1712731578; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t7PxrVKW+xziJG22nruxVobi3iX95Q/TH3TNd20dcL8=;
        b=fktE8wSRoxw/1c74LY4UcOYVWm6DBRDTpxKt5Dv4mjFdU1465t1PghL0lZJK3f36RQ
         9aVAKuDTHD9lUmXPwIjfMZLD0LWAI4XEHHXTCcDDsQw8hIWOKI7rPZNaAJU8VvxgGeKP
         kgO0VUGUFxZldXXZyDm72ZaJj1eJIqikFKU4tG4KqO0Js9unWiCAG8WswS2FvQMzECpY
         CzZQJ5Uv7CcmtyVAmAnS3U4bu6ju0Scm5KnWpYkAIJ/umNsQtovG0WcKN0teOPfCmneF
         iHGV75XbNY0m6A/w38GrVTP5yoFb1l8l7CkRVUq/DvkhRLPCiYUqGk79zBiWw/8kVTll
         /LnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712126778; x=1712731578;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t7PxrVKW+xziJG22nruxVobi3iX95Q/TH3TNd20dcL8=;
        b=Nv0Nd2wPrjHZOLdnqHmlHKEKqI115ggPReb5BD8HVoBsWUw6ObAyRC2S7jurN/bp7V
         UeuR0fcIFtkL2w+gIvSjC1CytZw6FEPXcwPEPwQyO1NaiUWf+4GAyMCnf4/GELeJo2lB
         2i7yhCdIxDVn0RqNqq1E1mSALXLYMrKTygKRoL8n5icc5c3Nagc2rSsVEIsw+KC0V0xz
         lHdistMoxUCuz9GuE1KzD4/soDLdtTCVTzVpRqDVU2NHO17f7+q35yda8J9uvDHhfXva
         EY6SFitqvpSDLQ1cpSmgwcpqYluljp2uT0LLYP0lUkQ2WAvwtmMUbgI4SswvgvgDkFeq
         7/eg==
X-Forwarded-Encrypted: i=1; AJvYcCWZPSi5/CRiq87jjn9OPPqdgWJbjVleTCtQ1AWj5yDYEtF/IWfBSG1HD98uMFA82iJnTh9jI4uWXf31aNUuHlcNLOTYqgz4K+ILCg==
X-Gm-Message-State: AOJu0Yy07KtcTBJ/kYOI+Ww1z1z+af4LCTS8LAmHhrVdyOJ4bpTUkgMn
	ABhQUSyO9OHsv3Mk72TpTTCB87Q+aUk/ByiSUN47HYpSC4tEv+jz09pD429Qvw==
X-Google-Smtp-Source: AGHT+IGpI2xtNByiryiE2cJzVu481+eI1+G8W13TvfGzP3+1XQ6iPKh97Q6OebN9sY+msv6hN6A8yg==
X-Received: by 2002:a05:6871:547:b0:22e:7c64:af74 with SMTP id t7-20020a056871054700b0022e7c64af74mr2036337oal.44.1712126777521;
        Tue, 02 Apr 2024 23:46:17 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id j15-20020aa7928f000000b006ea7d877191sm11041957pfa.2.2024.04.02.23.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 23:46:17 -0700 (PDT)
Date: Wed, 3 Apr 2024 12:16:10 +0530
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
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v2 01/18] PCI: endpoint: Introduce
 pci_epc_function_is_valid()
Message-ID: <20240403064610.GB25309@thinkpad>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-2-dlemoal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240330041928.1555578-2-dlemoal@kernel.org>

On Sat, Mar 30, 2024 at 01:19:11PM +0900, Damien Le Moal wrote:
> Introduce the epc core helper function pci_epc_function_is_valid() to
> verify that an epc pointer, a physical function number and a virtual
> function number are all valid. This avoids repeating the code pattern:
> 
> if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
> 	return err;
> 
> if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> 	return err;
> 
> in many functions of the endpoint controller core code.
> 
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>

One nit below. With that fixed,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

> ---
>  drivers/pci/endpoint/pci-epc-core.c | 79 +++++++++++------------------
>  1 file changed, 31 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
> index da3fc0795b0b..754afd115bbd 100644
> --- a/drivers/pci/endpoint/pci-epc-core.c
> +++ b/drivers/pci/endpoint/pci-epc-core.c
> @@ -126,6 +126,18 @@ enum pci_barno pci_epc_get_next_free_bar(const struct pci_epc_features
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_get_next_free_bar);
>  
> +static inline bool pci_epc_function_is_valid(struct pci_epc *epc,
> +					     u8 func_no, u8 vfunc_no)

No need to add 'inline' keyword to function definitions in a .c file. Compiler
will handle that.

- Mani

> +{
> +	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
> +		return false;
> +
> +	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> +		return false;
> +
> +	return true;
> +}
> +
>  /**
>   * pci_epc_get_features() - get the features supported by EPC
>   * @epc: the features supported by *this* EPC device will be returned
> @@ -143,10 +155,7 @@ const struct pci_epc_features *pci_epc_get_features(struct pci_epc *epc,
>  {
>  	const struct pci_epc_features *epc_features;
>  
> -	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
> -		return NULL;
> -
> -	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
>  		return NULL;
>  
>  	if (!epc->ops->get_features)
> @@ -216,10 +225,7 @@ int pci_epc_raise_irq(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  {
>  	int ret;
>  
> -	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
> -		return -EINVAL;
> -
> -	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
>  		return -EINVAL;
>  
>  	if (!epc->ops->raise_irq)
> @@ -260,10 +266,7 @@ int pci_epc_map_msi_irq(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  {
>  	int ret;
>  
> -	if (IS_ERR_OR_NULL(epc))
> -		return -EINVAL;
> -
> -	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
>  		return -EINVAL;
>  
>  	if (!epc->ops->map_msi_irq)
> @@ -291,10 +294,7 @@ int pci_epc_get_msi(struct pci_epc *epc, u8 func_no, u8 vfunc_no)
>  {
>  	int interrupt;
>  
> -	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
> -		return 0;
> -
> -	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
>  		return 0;
>  
>  	if (!epc->ops->get_msi)
> @@ -327,11 +327,10 @@ int pci_epc_set_msi(struct pci_epc *epc, u8 func_no, u8 vfunc_no, u8 interrupts)
>  	int ret;
>  	u8 encode_int;
>  
> -	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions ||
> -	    interrupts < 1 || interrupts > 32)
> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
>  		return -EINVAL;
>  
> -	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> +	if (interrupts < 1 || interrupts > 32)
>  		return -EINVAL;
>  
>  	if (!epc->ops->set_msi)
> @@ -359,10 +358,7 @@ int pci_epc_get_msix(struct pci_epc *epc, u8 func_no, u8 vfunc_no)
>  {
>  	int interrupt;
>  
> -	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
> -		return 0;
> -
> -	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
>  		return 0;
>  
>  	if (!epc->ops->get_msix)
> @@ -395,11 +391,10 @@ int pci_epc_set_msix(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  {
>  	int ret;
>  
> -	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions ||
> -	    interrupts < 1 || interrupts > 2048)
> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
>  		return -EINVAL;
>  
> -	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> +	if (interrupts < 1 || interrupts > 2048)
>  		return -EINVAL;
>  
>  	if (!epc->ops->set_msix)
> @@ -426,10 +421,7 @@ EXPORT_SYMBOL_GPL(pci_epc_set_msix);
>  void pci_epc_unmap_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  			phys_addr_t phys_addr)
>  {
> -	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
> -		return;
> -
> -	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
>  		return;
>  
>  	if (!epc->ops->unmap_addr)
> @@ -457,10 +449,7 @@ int pci_epc_map_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  {
>  	int ret;
>  
> -	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
> -		return -EINVAL;
> -
> -	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
>  		return -EINVAL;
>  
>  	if (!epc->ops->map_addr)
> @@ -487,12 +476,11 @@ EXPORT_SYMBOL_GPL(pci_epc_map_addr);
>  void pci_epc_clear_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  		       struct pci_epf_bar *epf_bar)
>  {
> -	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions ||
> -	    (epf_bar->barno == BAR_5 &&
> -	     epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64))
> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
>  		return;
>  
> -	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> +	if (epf_bar->barno == BAR_5 &&
> +	    epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64)
>  		return;
>  
>  	if (!epc->ops->clear_bar)
> @@ -519,18 +507,16 @@ int pci_epc_set_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  	int ret;
>  	int flags = epf_bar->flags;
>  
> -	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions ||
> -	    (epf_bar->barno == BAR_5 &&
> -	     flags & PCI_BASE_ADDRESS_MEM_TYPE_64) ||
> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
> +		return -EINVAL;
> +
> +	if ((epf_bar->barno == BAR_5 && flags & PCI_BASE_ADDRESS_MEM_TYPE_64) ||
>  	    (flags & PCI_BASE_ADDRESS_SPACE_IO &&
>  	     flags & PCI_BASE_ADDRESS_IO_MASK) ||
>  	    (upper_32_bits(epf_bar->size) &&
>  	     !(flags & PCI_BASE_ADDRESS_MEM_TYPE_64)))
>  		return -EINVAL;
>  
> -	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> -		return -EINVAL;
> -
>  	if (!epc->ops->set_bar)
>  		return 0;
>  
> @@ -559,10 +545,7 @@ int pci_epc_write_header(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  {
>  	int ret;
>  
> -	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
> -		return -EINVAL;
> -
> -	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
>  		return -EINVAL;
>  
>  	/* Only Virtual Function #1 has deviceID */
> -- 
> 2.44.0
> 

-- 
மணிவண்ணன் சதாசிவம்

