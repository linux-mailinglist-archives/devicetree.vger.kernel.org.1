Return-Path: <devicetree+bounces-161452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7803BA74308
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 05:40:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 44DE17A7D6F
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 04:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14F911A08B5;
	Fri, 28 Mar 2025 04:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xpDijQ49"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B4818787F
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 04:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743136839; cv=none; b=rcw0xU0pSK4ms5WQSrObXZvag/OcAyC2cVFnEVy/V/hWspiIBBHwibfIH8cIh3zWyOSVDjzINlr9h86HbvWisz6SbdFi0ANiju6/1tXqM1SAmisqXj07INmJhGXmEzH5USYSsGXoCTpAtvUi7Q8bPpM7GksMMOsWFDVK5txRTco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743136839; c=relaxed/simple;
	bh=p5fy0e8UnKj/6EOZNFdLxiQh/zOADi2Pftr3/8rO8do=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L5yaeDcigx+GJWWTtSKjSixx+2HWk2vEaW+kU8gnbzzpHwohr3gWmdw97eqfgsmCfaatrlEg5V/iMUkW4PRxVsp9Y108cWTN2XENmzHkNgX7G+pH5Y5hADTuh3H1UQmtqgMSil3cK0Y+gmxAsb4MLYn79ybXv7EXpEV7jclzc1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xpDijQ49; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-22401f4d35aso38997705ad.2
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 21:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743136836; x=1743741636; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BwyCKs3ffYhEw8XJUYb5si/FG4nJvu4s2NWwvaiC0iI=;
        b=xpDijQ49eIsd6ToQG3nn6SLh3lVrPhCdroAqm8nyp81x99oK79KCJhj49rAcb1khaF
         45OYAGTAXQnJ31FDJIIhqSfkDDSt3Peyf1AVVfP59pNNZxAS7HyelOzWZZoYDWltryYl
         EoWqk7DpRr2vrIuvE5m/nla2KQ4EmPwANGo4Fdmjta0p9Y4Tjid2Gdl0cpgE3wjS5bo7
         tvAi3GhsR2YYfu2eisB7pP7KWgHQy/uM2dy1g9DUEMRSK5xJbZeN5QjVhvO2TvUqlXqw
         cq5kzoPTxnqT7nUN2iWzhJlT+hrOsC3f5K+iWWpUmDZsU39+60rcIAMIjapx/Ai8Z9Nt
         2Sww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743136836; x=1743741636;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BwyCKs3ffYhEw8XJUYb5si/FG4nJvu4s2NWwvaiC0iI=;
        b=xNHPhgJKwMMDQ/MyRJ/mICXoo7KV2IsHzDiil7qLY4MqqN3LSMRJazM1GcjMBlCCl8
         FlVFC6HZFarqqeIEnzbkH2XbXiCmJBoCIeOxuN8I+O2aK6Siw2idUGaHrBzdy7DK+d1I
         4eIcTCvwBVCOKKynfs9xvM3xt9oO0xG66v9cXj0j/6OnRDkAKxzQfM3FnWqgVVIdYzr1
         oNk8h6JcXfZ+7dinvyAuLwmS5GLaASsNSUyfyxyYTKeXOk578MAhxQP5PObwiqf6CV8l
         LLhO5v3Ay1+Hh8UiAX/p2Ss0mXD1urIJ38RDL4L08v5AKzHQDePte9s9OFxe5Yu+OP6t
         Pj2w==
X-Forwarded-Encrypted: i=1; AJvYcCVfMQ/La5Pcg1QwJmyC+FHQyxS4sUZlZpSTdIKhMF4mlr8wicwRq0Yl5DIQIlfYgjVpeg0fI9NZTvH+@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8LQuMkSxYB+NtSp0QFnCn6W1pFNc145QBT6jBD2z/1J40LbMJ
	2dhBsbVAMS5cIRUlQBelQ48vIrpI/pqG6atgC2ORqGkUmzYswx+mdbvHcCIBxA==
X-Gm-Gg: ASbGncsWfWZpEFLhMmI0GG6IFg07+QUulpCEf+53nUEyU7dTYMLhYaumBnrGfDOn2dY
	a1/MIOkfMmLIvQfxgJ/bZ/qEwMh9Wa0IAVj1tKIiEntemLfONlKj0RV1wdt969TozbMrcLFcgD2
	iyG7PL2EWQYWOrKGhp7WauiwaXAkHdtF/BVB0iBc9GhbNGTXAOYzF8S+6txLARub2FJiYjDFacm
	9PiONSxBZSyAn7wIHJ2rflFdKp9Ksf6HM0IyBhy1VtbLOSr9dMcZNi/nsCFv4ykRJf7Q1Ijmd5V
	oR1CTwZB4zDMS2zK4b/gWHSlBt3qPWQIsTQH8ppDsW+KSdkpGICUW4M=
X-Google-Smtp-Source: AGHT+IHLrH4hU9KBbLe34G/CtIab3OeOyeA8IEERFB9C2/MoUYF2i6YlkrlpKLD9/6Z8JDvvgK8ZSA==
X-Received: by 2002:a05:6a21:158f:b0:1f5:6c94:2cd7 with SMTP id adf61e73a8af0-1fea300d25bmr10714712637.42.1743136836491;
        Thu, 27 Mar 2025 21:40:36 -0700 (PDT)
Received: from thinkpad ([120.60.68.219])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af93b69b127sm736704a12.17.2025.03.27.21.40.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 21:40:36 -0700 (PDT)
Date: Fri, 28 Mar 2025 10:10:29 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, quic_mrana@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v8 3/4] PCI: dwc: Update pci->num_lanes to maximum
 supported link width
Message-ID: <meczqjvdwfietottcw756lhk2cg4f6szqppknnkbdtqd3hmafp@7cgg7kjnnw76>
References: <20250316-preset_v6-v8-0-0703a78cb355@oss.qualcomm.com>
 <20250316-preset_v6-v8-3-0703a78cb355@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250316-preset_v6-v8-3-0703a78cb355@oss.qualcomm.com>

On Sun, Mar 16, 2025 at 09:39:03AM +0530, Krishna Chaitanya Chundru wrote:
> If the num-lanes property is not present in the devicetree update the
> pci->num_lanes with the hardware supported maximum link width using
> the newly introduced dw_pcie_link_get_max_link_width() API.
> 
> Introduce dw_pcie_link_get_max_link_width() to get the maximum lane
> width the hardware supports.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c | 3 +++
>  drivers/pci/controller/dwc/pcie-designware.c      | 8 ++++++++
>  drivers/pci/controller/dwc/pcie-designware.h      | 1 +
>  3 files changed, 12 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index ffaded8f2df7..dd56cc02f4ef 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -504,6 +504,9 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  
>  	dw_pcie_iatu_detect(pci);
>  
> +	if (pci->num_lanes < 1)
> +		pci->num_lanes = dw_pcie_link_get_max_link_width(pci);
> +
>  	/*
>  	 * Allocate the resource for MSG TLP before programming the iATU
>  	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
> diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
> index 145e7f579072..f39e6f5732a9 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.c
> +++ b/drivers/pci/controller/dwc/pcie-designware.c
> @@ -737,6 +737,14 @@ static void dw_pcie_link_set_max_speed(struct dw_pcie *pci)
>  
>  }
>  
> +int dw_pcie_link_get_max_link_width(struct dw_pcie *pci)
> +{
> +	u8 cap = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
> +	u32 lnkcap = dw_pcie_readl_dbi(pci, cap + PCI_EXP_LNKCAP);
> +
> +	return FIELD_GET(PCI_EXP_LNKCAP_MLW, lnkcap);
> +}
> +
>  static void dw_pcie_link_set_max_link_width(struct dw_pcie *pci, u32 num_lanes)
>  {
>  	u32 lnkcap, lwsc, plc;
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index 501d9ddfea16..61d1fb6b437b 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -488,6 +488,7 @@ void dw_pcie_write_dbi2(struct dw_pcie *pci, u32 reg, size_t size, u32 val);
>  int dw_pcie_link_up(struct dw_pcie *pci);
>  void dw_pcie_upconfig_setup(struct dw_pcie *pci);
>  int dw_pcie_wait_for_link(struct dw_pcie *pci);
> +int dw_pcie_link_get_max_link_width(struct dw_pcie *pci);
>  int dw_pcie_prog_outbound_atu(struct dw_pcie *pci,
>  			      const struct dw_pcie_ob_atu_cfg *atu);
>  int dw_pcie_prog_inbound_atu(struct dw_pcie *pci, int index, int type,
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

