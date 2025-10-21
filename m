Return-Path: <devicetree+bounces-229365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F38BF6868
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 14:47:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6D38C4FCF99
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 12:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 605973314D5;
	Tue, 21 Oct 2025 12:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="aysCUjlf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1320641C63
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 12:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761050766; cv=none; b=LnoxtLg09OTb80K5I9cuAR5BIvogPyHwJEAd1ngUgQ9i8bZy6L5+DEC61dWBOwYtDtXCB5YG2joVigJEwNNmWOJr8aooRgYfBmy0cBC8mJJyVLrxRF9Xo4YA4PZvbT+IysROalyAfd1rBv3PeNI+JI8FmIiZmEJQ7hpXyEt6PGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761050766; c=relaxed/simple;
	bh=QIFsKITDeO14f22yjRcsI1tvABH66DujhBaXrZO3X1s=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FyV8SBPIvld/ZiWdBtqiJUBeIvjCW10iwVng+mktD2snuPOZNehmT3mCqft7+wbvZG64rDa6qwPvOkxJqqmb6muLMa1zSCQGX0ZPYrsf/YvDdmoWGc4QDuCOy5O419kLIqgF2zBmuVrsjnBV70I+uby8iHNECzoAykL+Nylp3gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=aysCUjlf; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b3d80891c6cso1271011266b.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 05:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1761050762; x=1761655562; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gPEA5AJ6rJJ5XwW1iyN0mjNhsPIcrDuB2VtGOFvKXMA=;
        b=aysCUjlf8yuGqOGBAkgYTutoyUmepx89wGm46yCulA5CSmPb3qMrnsChi++mfdvfO/
         8CpZfvYsPToVCpaW+U2FpGP5Nqt8jslgDryRrDKYfqUB+UQqdV2+qJzkvQuIMuQYQAzn
         wG1YSfMzHUygBs7GD4BfiO3dpZnMOiYsxulvjB3ps+jcH2ruV9++q8QvVHAXfG4D70RF
         ah50snwzx0ysqSpGFDls8bEo+O9yYpg2AElOHTR7J3mvLYNxC/OshhdxjcngF9RNTCGX
         z0QwRCq/pbhKP0zxF2Zkl/1L5sPRjdhE+4cbOSuoe+o3KMlwH8w11lRIcjDR385fFiWf
         4RTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761050762; x=1761655562;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gPEA5AJ6rJJ5XwW1iyN0mjNhsPIcrDuB2VtGOFvKXMA=;
        b=U8oHyXw4fUBLk17+45mgBOGKr3X+CkHZDovRupxRp5dD51qHiRlShImQtRt4TT68dk
         Ad6HNbPP6COIq+5ZzNR0hAG/0HSW/NQ1yzlKO5ZthO/Df5BhtWksOayqcxTLlLmzLraX
         IP+A5WpbzzZK1QW2nYLgPKDbgU/LVy02YeOhA5VRjzJEc0PYTmYfb9ASsCD6TghzU5UE
         oZu0CjemZVgNBzctO1J8ihadOywBxRfPu4NQ/1LTNhtklG8TPg9fNv/AzygwGt8lvpdS
         41btH7DBs+VWL4zOgoC2Lnu+Hb8duIiCGJgX+HLkjEfhD02ygGBNK+1tl2BFhvAH/s1O
         r+ew==
X-Forwarded-Encrypted: i=1; AJvYcCVSRvfjZNLOM6uB91MVTJVD5RxywA4BlAQQcQLsJKSiYQCgLb/f2ACFsiUM2QqR8k3t0pPW7/7nYqhF@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ7BDH282BiNn4Zw6Qec7tqZnI1JvlYezS+zsPyktWiwvmLbP0
	3pcE/4qtHCdkkL7VbTqs56WhyE9F925bmKXAHWEqJmRKsfb2zxy8v8kuPvhgrvel66s=
X-Gm-Gg: ASbGncs3jFt+mtL05PG8s1wCs5A/j+LTasW2zRJKe7fRp79l2aRaOHBiVW7We8WNs39
	vWkpttrx7zBmAfaw+2UAy2dIMbYZhKUqrYPHMhDMLC2oLfxl2JN72Ze/M5yDvW1GNDW7VRhtIDa
	PQnMzDij4QqPqhg0ZrPbUrTeA6oePMF4t2WBflfuPe/FuNX6uognm2NZsGQb2xjgaEJhiTFu16j
	qKNYbnMhUl/SlNNhDTcsc3nWbCZjGS/dSd/xSP5qViQ8+uyq3Ptii2gyYjWIlHMhVMF7Pmg0qzR
	a+BFAhFELaRTdgmaU+8ysSJQiaSC/8ZLJYgINTlMIiXgLcMJO3qVsOMlMPVF6jJ7xgEGvAvit76
	qMUjGtG8jsTGdS5UmQbuKrm/er2z+S6LVXLVvk6IH3p/9FNJHLPhHSgLKAJUbVreQCd7bHG/9Zv
	PiyKHr0l5FVeccIO1C/MaSf619w7vsVFCTOTlXmzIa
X-Google-Smtp-Source: AGHT+IErY7EU44w5k9OeH3Q13um8hP0cnU0hb65JCssR27vMTstr7rVqdpDS7r8Zy3EePCbIn+wClw==
X-Received: by 2002:a17:907:6d0d:b0:b40:bdc3:ca04 with SMTP id a640c23a62f3a-b6459d3039bmr2269518066b.0.1761050762288;
        Tue, 21 Oct 2025 05:46:02 -0700 (PDT)
Received: from localhost (host-87-9-62-200.retail.telecomitalia.it. [87.9.62.200])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e83914d0sm1052945566b.21.2025.10.21.05.46.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 05:46:01 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 21 Oct 2025 14:48:14 +0200
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] misc: rp1: Fix some error handling paths
Message-ID: <aPeBDmeBGWDEKp05@apocalypse>
References: <4e92a271fdb98560c4e659556a1f3e99e7d0d38e.1760987458.git.christophe.jaillet@wanadoo.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4e92a271fdb98560c4e659556a1f3e99e7d0d38e.1760987458.git.christophe.jaillet@wanadoo.fr>

Hi Christophe,

On 21:11 Mon 20 Oct     , Christophe JAILLET wrote:
> Error handling in the probe and the clean-up path in the remove function
> should be adjusted depending on if data is taken from DT or from overlay at
> runtime.
> 
> of_overlay_remove() should not be called when of_overlay_remove() was not
> called.

on the second occurence:
s/of_overlay_remove/of_overlay_fdt_apply/

> 
> of_node_put() should be called in the remove function to avoid a potential
> reference leak.
> 
> Fixes: 49d63971f963 ("misc: rp1: RaspberryPi RP1 misc driver")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> This patch is compile tested only.
> 
> I think (hope...) that a cleaner solution is possible. So feel free to
> improve it or completely change it if needed.
> ---
>  drivers/misc/rp1/rp1_pci.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/misc/rp1/rp1_pci.c b/drivers/misc/rp1/rp1_pci.c
> index 803832006ec8..9105269488a9 100644
> --- a/drivers/misc/rp1/rp1_pci.c
> +++ b/drivers/misc/rp1/rp1_pci.c
> @@ -44,6 +44,8 @@ struct rp1_dev {
>  	struct irq_data *pcie_irqds[64];
>  	void __iomem *bar1;
>  	int ovcs_id;	/* overlay changeset id */
> +	struct device_node *rp1_node;	/* useful only if skip_ovl == true */
> +	bool skip_ovl;

can we initialize ovcs_id and use that instead of skip_ovl? This
would save one flag.

Many thanks,
Andrea

>  	bool level_triggered_irq[RP1_INT_END];
>  };
>  
> @@ -289,10 +291,14 @@ static int rp1_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>  		goto err_unload_overlay;
>  	}
>  
> +	rp1->skip_ovl = skip_ovl;
> +	rp1->rp1_node = rp1_node;
> +
>  	return 0;
>  
>  err_unload_overlay:
> -	of_overlay_remove(&rp1->ovcs_id);
> +	if (!skip_ovl)
> +		of_overlay_remove(&rp1->ovcs_id);
>  err_unregister_interrupts:
>  	rp1_unregister_interrupts(pdev);
>  err_put_node:
> @@ -308,8 +314,12 @@ static void rp1_remove(struct pci_dev *pdev)
>  	struct device *dev = &pdev->dev;
>  
>  	of_platform_depopulate(dev);
> -	of_overlay_remove(&rp1->ovcs_id);
> +	if (!rp1->skip_ovl)
> +		of_overlay_remove(&rp1->ovcs_id);
>  	rp1_unregister_interrupts(pdev);
> +
> +	if (rp1->skip_ovl)
> +		of_node_put(rp1->rp1_node);
>  }
>  
>  static const struct pci_device_id dev_id_table[] = {
> -- 
> 2.51.0
> 

