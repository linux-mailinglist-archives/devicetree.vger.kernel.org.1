Return-Path: <devicetree+bounces-186933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E25ADE2E3
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 07:08:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 328DD1704F2
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 05:08:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A1E81DE2D7;
	Wed, 18 Jun 2025 05:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="R6IReRDK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C0A613E02D
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 05:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750223302; cv=none; b=nO1eu+sIcwAyRLIqM66hjhxp3bA+7KKpavbG8UptFyKFR/Xq9O5CCGCmwRfIt63D3Q4UffuZztmvT+LyuDIvZL+esuauVm842Rh3anvM46dexorq8hs7u7a0YLU0cw+dfR805106MMDGrvvTZRNUCwmR3PHi+SA+UChMmHB90O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750223302; c=relaxed/simple;
	bh=MzlWFzxk1qDJ/5xEzQ4YhLlPSbZkMC8YmJv1GemlOe0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZBsOHncE1Tj/TI1tncPoxeJufkv17bOws0d0Ox2x9JXYEUPSYOx7Pf0hYAPCEUWAZtuSg98Wt3qq0z2ELynp1AmE8yESfMYknn9FssH/RIYM83sytBgPKzULd1F1Ag9KbcHscTYkO8iY7+XP200zPTGuFAqtHGiM4cUbCQcIBpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=R6IReRDK; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-234b440afa7so65178025ad.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 22:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1750223300; x=1750828100; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0piupPu8V/gl6O7trlkzEQzKsY2tqiYS+DKkqKrrgIw=;
        b=R6IReRDKPO8V6G+5cplMVZyDczIAJveJYxN5f4AYotF7R3iQKA5BNLamnM1uduQhSc
         7gE4ru0iOQJj83ZF6X0xqeNTy3PxeQSEvPbgoTHrqr/Z7mgUj4jYvFYO4XgLNMAZN3b8
         FrerMdvXuj2uwksGNFEIVgzBGAm0MGIowZsENt8dvb8E8iMebRH6+ioTvOhiU+avP10m
         eDw1Sh4Hk84M8WCRg+P0tyjyPmzO6NJ7Q6LuteBfcNyelkFCVlkEQxlDu6q6K309sJl9
         sPOuC4xzpFrCAAPUGQC9+GGkB/FXmyQGhD7cNKROJYgImlMcW7ehkm8tdyu96CFu1PmI
         ix6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750223300; x=1750828100;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0piupPu8V/gl6O7trlkzEQzKsY2tqiYS+DKkqKrrgIw=;
        b=Ah/dtxYC1tDVu28KmFbPMjKGmV++6SoNIj7ba4lj2LEde8WRKz5MByPyLgCEGsBi1g
         R41lpco3JFzGkOQIjvU8dzvjV3754+pCa6txt0ITpVil5OKiTQsZDFN4SWSe8tAN+6PI
         jvgcW5w7lcrFVHUnJxx/WNOiBCIaApC/P5P0OLfUnDuyTBv6mtLElqTl0bGkuJrryehU
         Qkf2WsmlCpYBAK9GVcw3yTpDZlBjFSvCZDd87LPCeFWYeOQwMt8ilL0Rmm/ndmXVWzPL
         9djFToFkS+aSl2GIH7/dWzqEGgb+95IifwhEekLCC/oqyKnT3wEoZFWSgTQ7J+CU0n2p
         4LgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWl/ELsau/9twpe6/Mv5vPhsryiEGbg30NJvodTfffjTc3l1nbJG5jEv/99EBoJOC97TlV5li2gTneJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc9kQve6B++Y6f+ap6+8jhRFasUxQOYiE03/aXKUaoNbFLpcgl
	DiSZV8CgQY5Q+PRkE5E950mORjhvhBXnWqGTAXkLSauqRQjrbAQN4ls/2JUTJAmbTHg=
X-Gm-Gg: ASbGnct8mr2ASSAqrx24qUVEZ+el1eQX8FHRaxuIo2cWO4FljUClvRUfr14GdjZx04Z
	Dv+9i3YeCEX9ynQaI/dHFsGuu5hKkv1GS8bli5sHavmhlKg9h02+DnWLM7LtBs42x9X2kPWuqLU
	bbEeTDMbqTw+0Tk5cP7htOdwM7svYAUyVRT2L1lpT2BWxEVg1/JgUa/vxx3b0RXYBOUKTNxZ6Sm
	nXT6yo0syXeh6W5NFX+u+vGQ+mGUerN5UKhl7xsCkIkb+mJA+VsDCytsTrnR5BWFHlbLtdrpIcJ
	jb6dYe8gS7H7rAZeWlW9/e4kj9jiC0EPqWlo7yhWUSCaGpqk9R3BhTp7ul+UctRCcWregw==
X-Google-Smtp-Source: AGHT+IFQmeYov3M4TJeicSZPxmrAUyfFLdsmh1502m8UPHV9igXkcxtyc+FtIrcqYue77oYSTt8fUA==
X-Received: by 2002:a17:903:348f:b0:235:88b:2d06 with SMTP id d9443c01a7336-2366b337f3cmr135541935ad.6.1750223299794;
        Tue, 17 Jun 2025 22:08:19 -0700 (PDT)
Received: from sunil-laptop ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365deb54desm90646085ad.179.2025.06.17.22.08.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 22:08:19 -0700 (PDT)
Date: Wed, 18 Jun 2025 10:38:05 +0530
From: Sunil V L <sunilvl@ventanamicro.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Anup Patel <apatel@ventanamicro.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Len Brown <lenb@kernel.org>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 21/23] irqchip/riscv-rpmi-sysmsi: Add ACPI support
Message-ID: <aFJJternIoBDAxrz@sunil-laptop>
References: <20250611062238.636753-1-apatel@ventanamicro.com>
 <20250611062238.636753-22-apatel@ventanamicro.com>
 <87frg3irgq.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87frg3irgq.ffs@tglx>

On Fri, Jun 13, 2025 at 05:36:21PM +0200, Thomas Gleixner wrote:
> On Wed, Jun 11 2025 at 11:52, Anup Patel wrote:
> > @@ -211,6 +213,9 @@ static int rpmi_sysmsi_probe(struct platform_device *pdev)
> >  {
> >  	struct device *dev = &pdev->dev;
> >  	struct rpmi_sysmsi_priv *priv;
> > +	struct irq_domain *msi_domain;
> > +	struct fwnode_handle *fwnode;
> > +	u32 id;
> >  	int rc;
> >  
> >  	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> > @@ -241,6 +246,22 @@ static int rpmi_sysmsi_probe(struct platform_device *pdev)
> >  	}
> >  	priv->nr_irqs = rc;
> >  
> > +	fwnode = dev_fwnode(dev);
> > +	if (is_acpi_node(fwnode)) {
> > +		u32 nr_irqs;
> > +
> > +		rc = riscv_acpi_get_gsi_info(fwnode, &priv->gsi_base, &id,
> > +					     &nr_irqs, NULL);
> > +		if (rc) {
> > +			dev_err(dev, "failed to find GSI mapping\n");
> > +			return rc;
> > +		}
> > +
> > +		/* Update with actual GSI range */
> > +		if (nr_irqs != priv->nr_irqs)
> > +			riscv_acpi_update_gsi_range(priv->gsi_base, priv->nr_irqs);
> > +	}
> > +
> >  	/* Set the device MSI domain if not available */
> >  	if (!dev_get_msi_domain(dev)) {
> >  		/*
> > @@ -250,8 +271,13 @@ static int rpmi_sysmsi_probe(struct platform_device *pdev)
> >  		 * then we need to set it explicitly before using any platform
> >  		 * MSI functions.
> >  		 */
> > -		if (dev_of_node(dev))
> > +		if (is_of_node(fwnode)) {
> >  			of_msi_configure(dev, dev_of_node(dev));
> > +		} else if (is_acpi_device_node(fwnode)) {
> > +			msi_domain = irq_find_matching_fwnode(imsic_acpi_get_fwnode(dev),
> > +							      DOMAIN_BUS_PLATFORM_MSI);
> 
> msi_domain is only used here and so it should be declared in this scope
> and not at the top of the function.
> 
Yes, let me change in the next revision. Thanks!

> > +			dev_set_msi_domain(dev, msi_domain);
> > +		}
> 
> Other than that:
> 
> Reviewed-by: Thomas Gleixner <tglx@linutronix.de>

Thank you!
Sunil

