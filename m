Return-Path: <devicetree+bounces-56361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A63898B9A
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 17:54:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1CEC8B214B7
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 15:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E8ED12AAD4;
	Thu,  4 Apr 2024 15:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BVFVrXWG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCBE12A177
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 15:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712246026; cv=none; b=VJ4QNeEm7hR3aCcMjWyaELJ/1Rq4BQl8uGwmSq13wV3iYxHtWWPSgqWTk2D1sDcSY37VI8Cp+E44ySNT0jqNWJnpQ3KY75aDGL6qpDkzW414drFTk3axQa98fCLnpijRADFgxDV7wycNbzQ50BKVX94juv+/mpbb033ucJw/glA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712246026; c=relaxed/simple;
	bh=IOtUCFZKVp3dT19yR6jJ9GMvsH8zvq9FCQseOX3yf9o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XaN/1DrP9KYShp42cOZalh6JynSaD8qsVwR7lSm5Y9Yjqx+BZzzK/EPD2ly5mR4To21MOVuk/LlTQc4CGBojaijcvJXnAfUN7EXSg3YYbxWD14nU1768L/FhvNySKYEhmSmBMtMC0qaY2VwOAt8t0xTDqW5SjVY6ujHI8FWek8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BVFVrXWG; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1e2a7b5ef7bso8673635ad.1
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 08:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712246024; x=1712850824; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A76vBCCK1MtmEH4eG8ItKOT6t7ZQD66dj/w9DMvOXMg=;
        b=BVFVrXWGbHM8qhB83t61mMhoFmPEG/vvXxwDqH1cO4dmIBHr8/1IDsGi4qSkpI1k4n
         IFPzn/bKEHJ7xk1lTHPvtQOWx8ph68tt3qtGFBM4E0x0kIm+hoCTagL93wBnUpCxbysn
         ctKRBG/Vphb2ycZOZaC7kb6iP7BdUHqurZCihc2ZdOW7eDxQwu/h6fFMUQJITVpehpwe
         8du7xfNyX3Jkyq0Sv/YmFPiBj1gfDK/A1GGBhj+6dTEJelt5NWcRC5sa/GI2HjI0X42m
         CHhzJ5iQUHuc32nLT6KL5UqMS/n9yZ539GAoi4/VZHNF83i/5WULkZmoJ+/P6odCsZ9b
         r4Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712246024; x=1712850824;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A76vBCCK1MtmEH4eG8ItKOT6t7ZQD66dj/w9DMvOXMg=;
        b=af06cXAigZPqP3VugHQ9WuljF6pFlOR6anxEWmXH2zfa0IwZlcpv9kY6B880ChL5LM
         YN5GxbtdGEku1oulWCQOx3HTbBWk3p80zp9Y5nOh/pvHlf6Dr3X8nUuVh7yZRG3QJ/EG
         SrXSEOix72tCMHMO03JT9plMqUoyXJOcaZP53HuF84VPUB4CkS7Oq5/33y7YYpaQSEDO
         ta+cKw63aIHmAAMoA5bWR8DpaeeEk3pBWipxvrtXkH3/GsxdhoqXHKvvQHFN/fNwlBFJ
         9PXp5Ly/zsSe2aLcZkTFZfYla8hh5LJlXly0YikEXqgEIFF5ykDFxaMngA+qvmapif5B
         8fAw==
X-Forwarded-Encrypted: i=1; AJvYcCWuBVSKuBsoa017rcMr2Fq51sbFewnWpWRR60DneYjfzJPJnOAPFs3b5VYLX7XSpLvJf71PCkzZVmJ3A3ZCnrPPrWIW1kLEZigXTQ==
X-Gm-Message-State: AOJu0YwEZjbpILEzODfRuzI8Uwf2HdqTXhwCmvcfvknRkS6YOybWRUB0
	6I+HOROKnLN12JegelotP9uuaeLiv4+LJrMHYhyZ4PixA4emQHNaKguPN95C4w==
X-Google-Smtp-Source: AGHT+IHdHFRWhWuUy3OLIL8u9AasmKRgsmM+36CA87IVGIRfTrIK/xuFlhL0VT9keY1uCHdtZQz8uw==
X-Received: by 2002:a17:902:ce86:b0:1e2:5e2f:682 with SMTP id f6-20020a170902ce8600b001e25e2f0682mr3358537plg.2.1712246023633;
        Thu, 04 Apr 2024 08:53:43 -0700 (PDT)
Received: from thinkpad ([103.203.73.241])
        by smtp.gmail.com with ESMTPSA id n18-20020a170903111200b001e0bae4490fsm15599425plh.154.2024.04.04.08.53.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 08:53:43 -0700 (PDT)
Date: Thu, 4 Apr 2024 21:23:37 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, imx@lists.linux.dev,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v5 4/5] PCI: Add PCIE_MSG_CODE_PME_TURN_OFF message macro
Message-ID: <20240404155337.GB35218@thinkpad>
References: <20240319-pme_msg-v5-0-af9ffe57f432@nxp.com>
 <20240319-pme_msg-v5-4-af9ffe57f432@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240319-pme_msg-v5-4-af9ffe57f432@nxp.com>

On Tue, Mar 19, 2024 at 12:07:14PM -0400, Frank Li wrote:
> Add PCIE_MSG_CODE_PME_TURN_OFF macros to enable a PCIe host driver to send
> PME_Turn_Off messages.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/pci/pci.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> index ffd066c15f3bb..989681a0d6057 100644
> --- a/drivers/pci/pci.h
> +++ b/drivers/pci/pci.h
> @@ -40,6 +40,8 @@
>  #define PCIE_MSG_CODE_DEASSERT_INTC	0x26
>  #define PCIE_MSG_CODE_DEASSERT_INTD	0x27
>  
> +#define PCIE_MSG_CODE_PME_TURN_OFF	0x19
> +

I think this could be moved before INTx to keep the codes sorted.

- Mani

>  extern const unsigned char pcie_link_speed[];
>  extern bool pci_early_dump;
>  
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

