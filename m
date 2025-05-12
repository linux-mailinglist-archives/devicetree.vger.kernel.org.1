Return-Path: <devicetree+bounces-176204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D44AB31CD
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 10:36:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D94A33B5757
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 08:36:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6318B2580EA;
	Mon, 12 May 2025 08:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="JbbxPg21"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E8C257430
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 08:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747039013; cv=none; b=hxJM2aDWyahjjYfMxMFthI2Ww+O/bNc38iw4TgOu3vmvNE/jbWSQVDOzX6f1FAlRwtuiX43BZDQMoX4x9/6RpbnnrH4vBSQj2gIglso5fqSJEaId66o28PLYFjvvU/hs8kd1faMygqt9gYaiy/0iSb7E2Wyoe/AcQ5Xg7gHnUnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747039013; c=relaxed/simple;
	bh=TRB7eQyt2VOil6Xd2YCPJj+sLe3Q8um9y22xx0V3P2w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nN1EivTpKzfW53lG73r69kKHZhZFrvzMF5uOvHPfVFv7IBHhUP7wnJlpwFzR5ZS42utzh4PD5UBLZrgR6n4CmTmxKLmGfIYlf+/9KIQ7++udnrzvUt/AYTXtD1Yco3gJUNpS0KE1qLM0zMPTWnxDc7SeQFxGaPWzdCZ0JmSWwoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=JbbxPg21; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7423df563d6so2588939b3a.0
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 01:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1747039011; x=1747643811; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ejc+fT9oBiZc6vlLfCLO2KcJoR0VUYj8MUaNRpcLSKk=;
        b=JbbxPg21aN72Mm5UnW3XeSQWJcsGn+Sx2dGUY88ooALtbgIjFedL4tsQyXIKdj+lTL
         w+d1c2skjR7ZGtRAxsdpT2rycGOQSNl9PThEE5nzu+QVJZ5zMHqXMGWEirowPVUm9zg1
         BfXc+bOSVijZPVqqdVOF6tfaJf+JCB6nQmLRuE46B41Vj6uqXAiAjdHVxsRUOt9dyLyR
         oW3zaLFa25713dYD4SdUrN7rwBgsNadJi7AcYCONBfpbaVEJF4YLRmTopD8cPcK5ZRBh
         vPfG5SlJHEfbS+xOH5bIS89dUfM8ZX0tS8593BLr4mqi+3lMu9cBNYshqT5B96sU8FH/
         nrIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747039011; x=1747643811;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ejc+fT9oBiZc6vlLfCLO2KcJoR0VUYj8MUaNRpcLSKk=;
        b=lc82QS9Lp23lFYAATTzzmcNxcbfN4gah/HJwvOFk69OW70fTfmu/rAZjFeadiyDAc+
         WXq6PeCp3LsmGu2RJ1RBUdYTIcpNycqXY02Usn7IIylIa/X9AIv5SE7DLmoEuTHVH0hq
         oguuB/jwIb2bijSY2VRvM3U3NlBFKQup6drBHoErvof3EN2ZXlqiEeBmSaHTErU3ogjB
         PEVeLoqLeOySUVBlOehDZYFCDO4iE8aJa16TmJTauHxlpRr9gTPqSkwfMMKsS+cfw9+j
         +49H0Kpal9PQLwCOBoynbVyaQQphE+pNaye0IiQRLFUJASxShwGxS0NC4LH78xuYELUT
         F2Rw==
X-Forwarded-Encrypted: i=1; AJvYcCVVoGG6BqIrI41IcCxnQbgn/e/uuy+77x/tq1yTh46rX7zsMVzB/jsw9HmPog57anIBRd0BE8PaB/zi@vger.kernel.org
X-Gm-Message-State: AOJu0YxRd0N5vyxfgeah0yMeDEu9hzePlClMLajbQvw6wbmvty/Lb+EO
	WhVZK1/90A15loFimCAdsFOVxxWBk+vuhXpYv4P9KYYLvkCpLTEFA4SFnU91feI=
X-Gm-Gg: ASbGncvVRzbSpTMv3QFBG8/YL27+bXWTrsFZ1leg7HpC38FJaR7LsRw3OP0Vd+NfGRn
	TM/v34ZxlB5cI+66PZ28s3kmqjGph+iiVRet8/Tm7hhoumHUvk3HQSctoD0cJMdLgSc3WbZYlau
	xT/H82b27Q4FIiBLbnnehIBdKImkpZ2us7LNUTfU0m95ldGZ6HSb7Bak2Jyipk7ibwEvhe5eKgM
	w6H/zR5tjdQ3W8LmVHTIlRA9fGy5MdkrvZkdAFuP/Cs9SYmeFLqg5gbgpgDm1GRkrBVmr5oixyN
	Hhxuu8QzYp/PPXWFFHQCnv3JyyeUTKb8F72sMXKld7ZT3PVY2vGplxYnfRQ=
X-Google-Smtp-Source: AGHT+IETI+63sqf5lJSJNfnuKUbP5ALGJFrOUXpQSYU1rR9FXckU+YWdjPI/7RMywkT9jw7jl9sPHg==
X-Received: by 2002:a17:90b:4c8d:b0:2f2:ab09:c256 with SMTP id 98e67ed59e1d1-30c3d65e2a5mr21634709a91.33.1747039010926;
        Mon, 12 May 2025 01:36:50 -0700 (PDT)
Received: from sunil-laptop ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30c39e760acsm6089961a91.47.2025.05.12.01.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 01:36:50 -0700 (PDT)
Date: Mon, 12 May 2025 14:06:37 +0530
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
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 20/23] mailbox/riscv-sbi-mpxy: Add ACPI support
Message-ID: <aCGzFVXFBVRbMUKz@sunil-laptop>
References: <20250511133939.801777-1-apatel@ventanamicro.com>
 <20250511133939.801777-21-apatel@ventanamicro.com>
 <aCGjEdNVH3ughITd@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aCGjEdNVH3ughITd@smile.fi.intel.com>

On Mon, May 12, 2025 at 10:28:17AM +0300, Andy Shevchenko wrote:
> On Sun, May 11, 2025 at 07:09:36PM +0530, Anup Patel wrote:
> > From: Sunil V L <sunilvl@ventanamicro.com>
> > 
> > Add ACPI support for the RISC-V SBI message proxy (MPXY) based
> > mailbox driver.
> 
> ...
> 
> > -		if (is_of_node(dev_fwnode(dev)))
> > +		if (is_of_node(dev_fwnode(dev))) {
> >  			of_msi_configure(dev, to_of_node(dev_fwnode(dev)));
> > +		} else {
> 
> You probably want to have this as
> 
> 		} else if (is_acpi_..._node()) { // you should decide if it is data, device or any type of ACPI node you match with
> 
Sure.

> > +			msi_domain = irq_find_matching_fwnode(imsic_acpi_get_fwnode(dev),
> > +							      DOMAIN_BUS_PLATFORM_MSI);
> > +			dev_set_msi_domain(dev, msi_domain);
> > +		}
> >  	}
> 
> ...
> 
> > +#ifdef CONFIG_ACPI
> > +	if (!acpi_disabled)
> 
> Hmm... Why do you need this check? What for?
> 
When we boot with DT, ACPI_COMPANION(dev) will return NULL which will
cause a crash in acpi_dev_clear_dependencies(). Let me know if I am
missing something.

> > +		acpi_dev_clear_dependencies(ACPI_COMPANION(dev));
> > +#endif
> 
Thanks,
Sunil

