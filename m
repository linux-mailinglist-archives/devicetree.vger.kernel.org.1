Return-Path: <devicetree+bounces-142831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB402A26AF7
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 05:18:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E925164B39
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 04:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 072EE171E43;
	Tue,  4 Feb 2025 04:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ckHZ8DZ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C0A14A095
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 04:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738642721; cv=none; b=vAKfyGWHB0SpO1Wbiq4lJPxDI0nnddQgL2uYrPyCk4Nl6pSwg87X2sxR1bBP5ItnJ9Yr4NbgeJ1/5WwvPKMxHWXaAKhRMkXMRk9sSsh+r4kX1ulCSj69isUrl/no++q7NC5I6nu4MXNsQ6i7Z0EiRfx1GOkxNiBAJcb/cGxG924=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738642721; c=relaxed/simple;
	bh=8RYsFsyt9XKOqCwg6qJ9SOV8hycqHVsUml8P7H6kN0E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wll6C+R/CZmpp+xNit5UIJvcJLMk0gDTTXwzVRQm0mJg3fwruJ2KAGj5DZGfZ3ciKAT+4pNfbm3UMibFJb/u2q9SK9FdFGABZBY71hjhv3b8MNVFPnXRLxO/Q7dWFbtvDwtuEvbhf6b1w+IVA4GBDZVkaAtXdvOoDILranR9J0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ckHZ8DZ1; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7b6ed0de64aso446072585a.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 20:18:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1738642719; x=1739247519; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1DvyAG/gibJ4Np4As+DdlCtpsc8Q7r5eOByPQszzk7g=;
        b=ckHZ8DZ1q3jbYj6f/WhJveGGHgffBtMr7vry6JKPQQSVTFfGB6ivffFF378nYcSrN0
         0C/FVyMUplPBbGNj9kr4JwBGUe8CJe1Mm7p4FOz7PVH7QThfawbcq13PfzFYqlqRVXyD
         f51ZJNQdouOem6vYs2v58TjnJR04m2iPER2ygZD4mL+My+FJLgT2Y3P1/GoJ9ojo98Xr
         IWhwyvgehCOSb1Hvynhe2TKMKlaUKdW1zgNu6heDjgfeO6HdOONFLSN7MT05WJrGmQGy
         sdIPIrJEbJWhnJ0jiD6ZIvvrH3VwyzR1gscfFGsvS9+DMOoNpKS2ZiFpFghpgu6CreKE
         yb6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738642719; x=1739247519;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1DvyAG/gibJ4Np4As+DdlCtpsc8Q7r5eOByPQszzk7g=;
        b=tk+/LfvWd5Wfm80hLI1DwTU7vdf+3KH06n1UWj45l7aOE58aFJ9oNPswnx3L2yF444
         lFTPGAvREMuex6LQXlC2LNGx5cEapxrZF/LnZB2XpYgdEKfAxhXTqVxytdRL7Ikh3BKD
         VrIU1R18BtLPUo0gce2/3ih3yk1m6El2RGWkGP0jTWSibIi3tNggDq0hLfTRBQ11naFy
         razDgfSC5CJeUHqoc6WEzTKrX1add+UUcRypy5XjBZg2DZSqT4sPrY9fftp9w+o7dICD
         xrcbp8hHK5ko7znVsaY+WMTMv08tHCGwa0dIhZgXaHlM+fVq5yq4IRP06YZzZjtoLz7k
         t1dw==
X-Forwarded-Encrypted: i=1; AJvYcCUxvrST3XK9dlJaacNa7lIgEDDYYsZqVRnFpgxb+y6g4bu0WXtbGuL7893xYSfxOn3SWSVkfo7q2qQU@vger.kernel.org
X-Gm-Message-State: AOJu0YxvPKdszAZMvjGOXbbza2MdNedjUtnSn629I/C1/rkkBDOFBisc
	kthk5OTAsTu4l4uQaJXJ3rO005jpVRCeTng53LZmE2eqLv69CyDOnKV6IPkattI=
X-Gm-Gg: ASbGncv/im5zq2/y88YZTsk3j7luLfmH+ZZutBxuCnO0BgBPEMFb1BBUWNsiOlFonZ5
	+2LVyppNaCMNYzTnWmyloX9BUyQMruuBrtJnHNr/mL/Uj7Oc29tv6nRjLAH2jvHa9o295VQab0W
	b9rMUiBUB+lk+oWG0+1Yov8eLl38QkmM+rrtM5tTe7UMu2B4eAd3o8u03QEhEXw26Sw0t+327PB
	k4BC6qiy6XgFB4Ld9P3OrrIHhuNX+uDvkxJ7/2vHTvXG6zogakA27fGVyJXk1GOheAsg/3oYwtT
	hh8mX/TrmWlUI0iLx134p2U=
X-Google-Smtp-Source: AGHT+IE0f4QugKabfRRSBRleOS2KB1pvcyWkZ6UoqvN4crpYoZxJOEqx3b/6o3pkY3LuZEm1BmbQlA==
X-Received: by 2002:a05:620a:3d84:b0:7b1:ab32:b71e with SMTP id af79cd13be357-7c02eb7da0bmr280078885a.0.1738642719178;
        Mon, 03 Feb 2025 20:18:39 -0800 (PST)
Received: from sunil-laptop ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c00a90571csm597775385a.83.2025.02.03.20.18.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 20:18:37 -0800 (PST)
Date: Tue, 4 Feb 2025 09:48:22 +0530
From: Sunil V L <sunilvl@ventanamicro.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Anup Patel <apatel@ventanamicro.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Len Brown <lenb@kernel.org>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v2 16/17] irqchip/riscv-rpmi-sysmsi: Add ACPI support
Message-ID: <Z6GVDuhNyjFQ4OKT@sunil-laptop>
References: <20250203084906.681418-1-apatel@ventanamicro.com>
 <20250203084906.681418-17-apatel@ventanamicro.com>
 <Z6COlL_5n2AfRADL@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z6COlL_5n2AfRADL@smile.fi.intel.com>

On Mon, Feb 03, 2025 at 11:38:28AM +0200, Andy Shevchenko wrote:
> On Mon, Feb 03, 2025 at 02:19:05PM +0530, Anup Patel wrote:
> > From: Sunil V L <sunilvl@ventanamicro.com>
> > 
> > Add ACPI support for the RISC-V RPMI system MSI based irqchip driver.
> 
> ...
> 
> > +	if (!is_of_node(dev->fwnode)) {
> 
> Please, use dev_fwnode(),
> 
> But why do you need this? Can't the below simply become a no-op without
> this check?
> 
> > +		rc = riscv_acpi_get_gsi_info(dev->fwnode, &priv->gsi_base, &id,
> 
> Ditto.
> 
> > +					     &priv->nr_irqs, NULL);
> > +		if (rc) {
> > +			dev_err(dev, "failed to find GSI mapping\n");
> > +			return rc;
> > +		}
> > +	}
> 
> ...
> 
> >  		 * then we need to set it explicitly before using any platform
> >  		 * MSI functions.
> >  		 */
> > -		if (is_of_node(dev->fwnode))
> > +		if (is_of_node(dev->fwnode)) {
> >  			of_msi_configure(dev, to_of_node(dev->fwnode));
> > +		} else {
> > +			struct irq_domain *msi_domain;
> > +
> > +			msi_domain = irq_find_matching_fwnode(imsic_acpi_get_fwnode(dev),
> > +							      DOMAIN_BUS_PLATFORM_MSI);
> 
> > +			if (msi_domain)
> 
> Hmm... The OF case above assumes this check is not needed. Why is it special
> otherwise?
> 
> > +				dev_set_msi_domain(dev, msi_domain);
> > +		}
> >  
> >  		if (!dev_get_msi_domain(dev))
> 
> Even here you have a check for NULL, so I believe the conditional is simply
> redundant.
> 
> ...
> 
> > +#ifdef CONFIG_ACPI
> 
> > +	if (!acpi_disabled)
> 
> Why?
> 
> > +		acpi_dev_clear_dependencies(ACPI_COMPANION(dev));
> > +#endif
> 
> ...
> 
> > +#ifdef CONFIG_ACPI
> 
> Drop this ugly ifdeffery along with ACPI_PTR(). They are more harmful than
> useful.
> 
> ...
> 
> > +static const struct acpi_device_id acpi_rpmi_sysmsi_match[] = {
> > +	{ "RSCV0006", 0 },
> 
> Drop ', 0' part as it may be converted to a pointer in the future.
> 
Thanks!. Let me address your comments in next revision.

Thanks,
Sunil

