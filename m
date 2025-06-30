Return-Path: <devicetree+bounces-190930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8C5AED3BA
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 07:17:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0BB461726B5
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 05:17:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4343178F24;
	Mon, 30 Jun 2025 05:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="mqxqIjYr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD3D522A
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 05:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751260665; cv=none; b=Am88I6byXOgRwKiwaYUTqe9yj4YWx2CuqEk6zZFxbc72Da9IcKP5IymimN4YISYH/n5QBZHJFLIkAvUX1DUwu1HMDH/2X70otqjJGYXs78dhGlzW4Q5ILP9A1dwwlaokhaD/mRp4IF5K8BomMJ0cMI8o7zdVtHdbepB3Ldq5y2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751260665; c=relaxed/simple;
	bh=j0+utyg3WdFVd9h3Luv7yRhQ04bPtA+ySwD2/SbLX/w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l26D/bXqHJDt+S11COVLQnFUn38FajxzBftVwcIUPh28DgoQSf9OWUvpknr5R4EB67wcQhuzOy+GHxrTGXsLeaqgITv1n1TW9xkBzhu8Ryt5lip4wHjkrGOJzJerImwk3zYktb+tClhrhW7W0icHCE10vYvWCEg2HM0UTGtYkDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=mqxqIjYr; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7490cb9a892so2892062b3a.0
        for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 22:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751260663; x=1751865463; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CHPtwkORxYza8f0AQe4trY9Wlzmo7dC+e4hGrz5TZ/8=;
        b=mqxqIjYryhA+0zr9tTzyIr/Gcpvgpp/1zYKFkeUD0l7Kb8GxhEsslHPUnrHDeAdm16
         w4DtFymjm8fm1ZQBYlRRujx4qLkDKc+krNVHFywEuyfpPgZeij5EhNdpUIqIXqgkd3cB
         c7hazZBdvI5w2fRLfZUYnDKVd3D1XsvRz/rBz1fbvaLu7zfhysD5Nmuqs1bZ1oEUY8hg
         LBMc6Q6NDL6VrvwpcOgqpHKj793qgZhTRCppZb22hVI79j8peejBGCgcYJNmqrB5iUo4
         +yezLi9pCJXdX2d2aK5F9ducCt94lR1J5r2g9BQ7DPGIXZQhh2UVH+8fiklLepIjC+Lp
         d8vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751260663; x=1751865463;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CHPtwkORxYza8f0AQe4trY9Wlzmo7dC+e4hGrz5TZ/8=;
        b=bEtYjG6Wh0FTRPooV0jV6hg2qv7vsXV08uoPlEmygxvTNsqR/p4uXdtmXZoRqq59PD
         73BdZH+Yb8vmBp3tHGNApd/pkF16F+cPWKVDH0wvMxmynQZlKVmYizhjwecq8jZ5cxb0
         ObX8zMRrHFs2j8Rep0+Cc15ZnZ2pOrcL9CkqCxuXO0HIKs/Ux0cU7xVXM0ynokz7Px4C
         hpAWZuEIIDBbWjrm5lsmD30kPczBuNjSUbF4cE+YGv0uMTJssUYyA1NETa1TFokfayxl
         zZMK7lJRifaUJDOkt9BcoDe/h7Dxme+HnlZFRZWub6K/Tz9BQ++WDPeIMcU5bHQoIZ6y
         EGrw==
X-Forwarded-Encrypted: i=1; AJvYcCXYVQ8EGCU1+ZSQFPBaVwC3cXpZYgpQ2YNw+pkt6i8hUfglF6pd5kfQO6r5stvo7076IE05tECqVn8t@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7qhk45rkreZP5k2acVv+xufP9JBReORdq5QCPS0Q0dLBa3vM+
	AGz/Hiz8ZqCuXcrbpjc9njlln4Bh1qR5wF7BePJ5gSC+j+kadtyAfPUGYKws3DF0YG4=
X-Gm-Gg: ASbGnctWXuOE1J3jAwamYXTYCjltfQRcKHO+K7//k3EuXX3MEstCNP15+/bnYDZakc1
	Boon/52qIii1gLHyds+OWezmdqo2wjqE24y88kHGQqTijPfO9ufbvfdT9zmcHyt2fWkZczkX9pb
	+8PbFt+17ZmTYOaaQ9KiipdTpQjAY327nqy/ei2QeMFQlplQMOPTFqfC/OoSICvbHZ1MzWfSV1A
	XqOZt3bEgYE4CGy59D3uvnds8ZkK5APmKBo29veLWE9SCilHNqkHc2JKkKaDpg/Gx9Jv50XYCqN
	mtpQ0OV5oPvH/TiUhHREiPldCW7fjv0tj9tlXuJfC7Z3RBsGbwv9yqwP4eBp4js7Ds8jkPIGOOm
	HNpwN
X-Google-Smtp-Source: AGHT+IEHPxZf5K+6rB6h+G22ROpgqRBCwgyhaeWghhTRXeAPT0VUHYSFlG21O4cgJMdUdvOxbVQ28Q==
X-Received: by 2002:a05:6a00:3e17:b0:748:33f3:8da3 with SMTP id d2e1a72fcca58-74af6f2f9d7mr18261164b3a.19.1751260663025;
        Sun, 29 Jun 2025 22:17:43 -0700 (PDT)
Received: from sunil-laptop ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74af56e3ac1sm8021982b3a.145.2025.06.29.22.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Jun 2025 22:17:42 -0700 (PDT)
Date: Mon, 30 Jun 2025 10:47:28 +0530
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
Subject: Re: [PATCH v6 14/23] ACPI: property: Add support for cells property
Message-ID: <aGId6M_0D0qERUu_@sunil-laptop>
References: <20250618121358.503781-1-apatel@ventanamicro.com>
 <20250618121358.503781-15-apatel@ventanamicro.com>
 <aFka3y1494LIzyUA@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aFka3y1494LIzyUA@smile.fi.intel.com>

On Mon, Jun 23, 2025 at 12:14:07PM +0300, Andy Shevchenko wrote:
> On Wed, Jun 18, 2025 at 05:43:49PM +0530, Anup Patel wrote:
> > From: Sunil V L <sunilvl@ventanamicro.com>
> > 
> > Currently, ACPI doesn't support cells property when
> > fwnode_property_get_reference_args() is called. ACPI always expects
> > the number of arguments to be passed. However, the above mentioned
> > call being a common interface for OF and ACPI, it is better to have
> > single calling convention which works for both. Hence, add support
> > for cells property on the reference device to get the number of
> > arguments dynamically.
> 
> ...
> 
> > +static unsigned int acpi_fwnode_get_args_count(const struct acpi_device *device,
> > +					       const char *nargs_prop)
> > +{
> > +	const union acpi_object *obj;
> 
> > +	if (!nargs_prop)
> > +		return 0;
> 
> This check is implied by the call. No need to duplicate.
> 
> > +	if (acpi_dev_get_property(device, nargs_prop, ACPI_TYPE_INTEGER, &obj))
> > +		return 0;
> > +
> > +	return obj->integer.value;
> > +}
> 
> ...
> 
> > +			if (nargs_prop)
> 
> Again, if you don't won't to reassign the existing value, it's better to have
> this data be collected in the temporary variable of the same semantics. Then
> you will choose one when it's needed, no need to have this dup check (again!).
> 
Okay. Let me update in the next version.

Thanks!
Sunil

