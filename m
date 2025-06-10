Return-Path: <devicetree+bounces-184023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3FEAD2CD4
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 06:42:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD0A97A7B14
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 04:41:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA81725D1F3;
	Tue, 10 Jun 2025 04:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="jSVXQt6c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F8321322F
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 04:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749530537; cv=none; b=LhCkgPm34yCMyErgN367+LsFcIugA/WnQ9PipcO/RLLm8RABVx76pCZKA7SKVsrPlT6iBlXy4NqA9fB0L8mZQj5g9wpt5pMmfNDM/Synb8ygkRGoIcbSvjtnzcVPIajv5Y+1M6DCl2sKI0YFBVABqLWmL5ASuML+FU3Wg7BW3/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749530537; c=relaxed/simple;
	bh=CAzDFjhSAzbmD8Txu7d1pGievjGb5rkrE7JNed1lhig=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nnG/jrTK6NwS6E53ZxXjDft5BEx75VdDcs+NvIV46Nli3W5TQrzpgT+Y/tG31bQdGF6BKGff4zXXeW7ldzoHrxfZChUK4lsIAOZ/hWZdC6o4tyIcWZWAq6lF0Rutx+pAaMsilB1p8QDiK4lPNyFB5weTZBjQrf4uwhzG2O0RbQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=jSVXQt6c; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2350b1b9129so32225045ad.0
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 21:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1749530535; x=1750135335; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KVeTEtZcl1m4ClJ2o9p5dHCV4fbTAw96xygmKyHd+ZA=;
        b=jSVXQt6cLqIWP2AdpnrUhsBreW4p2wU25oiaJN790VwdPuc+ze2tIRIQ7mDrgv6rFF
         uY/yfialTOt6CMMNQiGP1bxkV1VrWS+M0CvGPEHv1hoLmjuu4UbQXch4WTOB4uKXXn/W
         4rqK6PbVoPtqNUgi/1Ytoucsy9MD+ylnZY7NZjQfSYay1/yEGf6o4ahiE24XHg+SUmN6
         6Et8ze4Tz/BNL+qIQgD1qfSrrMmOm3fvD8fFpZUOsg/dtS76F1Yf7XQCOHSKqoO/lpia
         vXtXUBhWdqVe3PV8po5IUOGQqUzn/5NQp9qxvFsEDlfURhM/3wPsVoAFbCfrfQ7DJKfr
         +QXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749530535; x=1750135335;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KVeTEtZcl1m4ClJ2o9p5dHCV4fbTAw96xygmKyHd+ZA=;
        b=gHxTc7KKZWLSFgxPsNQeQJg8v6zO6t90eKUk+EbY/w8jznxbVUfwaCsF7y/xRHUZ4t
         uSqT23/nnfmla33wMwA9YntFlbxVPmqhIlwyKlKLrbXjbImPrJwuVfn4GUjO9BoUFNu8
         KJqMO+DcWK+/C7FvQgEN3xaUiq+VfCUni19zehQ00nOyKnZKbvdDjunrRoMuQYlbqt6W
         B1gOFw7rLcz2t8PgNodMp9Xf+Rbicsn3wq6pTeuLvSLqTzu+ZiXSYXqXvHdSEaJlJx81
         PnrjVY6wX6WCUB+xf2Ey09+kJlDNN2Q409BYHTgd9DRwKmMFlQ7gd72Ww/8wvNN/dZrU
         iGcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVindrW9fpveI8pi5fnC5PCv3OipG762Uv6bvrVqcvmgebXvs7p9HGWlZJdww5hWWFKlAY1DDLQNSw8@vger.kernel.org
X-Gm-Message-State: AOJu0Yxia+MXRLzO7HcwZAedUk1CiIF9YAsQO4vApgqiLuC7USX7tHWE
	7oguykbLlKFF+XGhYaJt94JWA3R2ZzUH2XQ1aovqDhRuRsvFT46h6OzR8ZlHH919mB8=
X-Gm-Gg: ASbGncujHUToJPAkdsaRmZNu+E8merJdjDuS1QJjW6bpwGoVBnw2S5zwhBc5UB4WmOz
	vuOEaa7wBtHyEh8XiKhFko+Z27qQYW4Tq5hmtPdAlhajHojQ/Y4YRHbURGqAUkqjHOcY6GrM2i1
	7SOVvU/P2zyjwsRAApatZ2seqzF/+rPSMAf+rCUJ6vtZMtkYa7fbrEXiJoV6lVHOZnlqYxvGkWs
	ENiE4GOh0K0uCJuwEUnpPbQm+sDY7L/M96jtlEM0al09ood0a0jsyNAC5uzafiFtmaJkoy0Z2cj
	8TExKNCiwtrCkgy/SOsV6FXv1/4nkwd2gERH9/Y5v9c3mc+Yz6m/IjxkCRQTyh+jMlnXCA==
X-Google-Smtp-Source: AGHT+IEkTU+gBcq13St9Qw/Wf0Um/jTGbpeL8M59SViyqMxrr/ADp4BVSyewhIKv47GXRKYXDjzYQQ==
X-Received: by 2002:a17:902:d2c3:b0:235:7c6:ebd2 with SMTP id d9443c01a7336-23601d2296bmr201118235ad.31.1749530535298;
        Mon, 09 Jun 2025 21:42:15 -0700 (PDT)
Received: from sunil-laptop ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2363ad3492esm1896875ad.154.2025.06.09.21.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jun 2025 21:42:14 -0700 (PDT)
Date: Tue, 10 Jun 2025 10:12:03 +0530
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
Subject: Re: [PATCH v4 17/23] ACPI: RISC-V: Create interrupt controller list
 in sorted order
Message-ID: <aEe3m23wIDM1I-AH@sunil-laptop>
References: <20250525084710.1665648-1-apatel@ventanamicro.com>
 <20250525084710.1665648-18-apatel@ventanamicro.com>
 <aDbuABrlO30TIrx1@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aDbuABrlO30TIrx1@smile.fi.intel.com>

On Wed, May 28, 2025 at 02:05:36PM +0300, Andy Shevchenko wrote:
> On Sun, May 25, 2025 at 02:17:04PM +0530, Anup Patel wrote:
> > 
> > Currently, the interrupt controller list is created without any order.
> > Create the list sorted with the GSI base of the interrupt controllers.
> 
> ...
> 
> > -	list_add_tail(&ext_intc_element->list, &ext_intc_list);
> > +	if (list_empty(&ext_intc_list)) {
> > +		list_add(&ext_intc_element->list, &ext_intc_list);
> > +		return 0;
> > +	}
> 
> With the below done the above can be optimized (hopefully).
> 
> > +	list_for_each_entry(node, &ext_intc_list, list) {
> > +		if (node->gsi_base < ext_intc_element->gsi_base)
> > +			break;
> > +	}
> > +
> > +	__list_add(&ext_intc_element->list, node->list.prev, &node->list);
> 
> Is this reimplementation of list_add_tail()? And why list debug is excluded here?
> 
Sure. Let me use list_add_tail() itself in the next revision. However, I
didn't understand the list debug question. IIUC, list_add_tail() is a
wrapper around __list_add() and doesn't exclude the list debug, right?

Thanks!
Sunil

