Return-Path: <devicetree+bounces-176199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B51AB31AC
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 10:31:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BD7A07A958F
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 08:30:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7B8E2550D4;
	Mon, 12 May 2025 08:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="N987vsIX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF8413AD1C
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 08:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747038670; cv=none; b=EZn6Wzmymjr/ooIsIouBBCeb7Y0V7OAu72JYCb00RNY/eYsz5L9VE6CDIRpoSEQ7TivLX2k85viq/N5G3M2N5wLyt4oTMTXDbornmcQIDrhkUY5D/7l2CHHjBbQFpKpA0cDMYbu/vplh5CaGxHwiCauBn1DCKuuSJYEafPQCWM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747038670; c=relaxed/simple;
	bh=VbIsCmNofx1yYvLRGUCQKtW0w8/8EizRNsmeIZAEhcc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MKgJhaMydGLo6jA1LoE89Wv9J1/jhROgKYcWkH8RTxTiaO6QAZ15J8PgSuDPU66zQ6cyaqMk3dolE2ilQtvDKvTfqNA/1VEU7vaLUZDP5cPKMsdxbMBf41hDfqNptz7z0pkuOA0oRahfHD9sjkZLNEHb0rYviQXsYoMQGFkO1w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=N987vsIX; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-30a9718de94so3911494a91.0
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 01:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1747038668; x=1747643468; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IzzZU6pvyYy7YIZ/GFIFCMgtFSutDNrqjC/VQVHvmcs=;
        b=N987vsIX6LpBw0SS18D9yiW/8DRwzA6CgPE+ns/F5ohGEQ29zi6a83pTaTqflqioeG
         KS+Fak6H8zfA7f8xR1JhZHXDdSP8xAbqUtZAPre+sASSwZ+9AuLXYHO1XIHeZQLbW9dg
         zTtjur3pdhurmiFcWOfeWzznqU6/cvXmTsTZDb9bkIpZrfsBX7KOPeGZBN/czeZyaGne
         dU2ArzdeEJFNNXudyH+HEKMC2NZSGbRX5rFULJWFkmlR0pbD2O9axXYMeDF6WIBJp/RP
         0/yJayE3Vnk2CILa7XIFZsFHwHIZfMHEk2TiLj4q+ZcbyWQeL+329VBwyyjLmy58J/+f
         klgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747038668; x=1747643468;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IzzZU6pvyYy7YIZ/GFIFCMgtFSutDNrqjC/VQVHvmcs=;
        b=a6gJHG7Rxic/yulansd6ZmvTG2Q5ZgoJ+PyaaEr5Sk5CH6QfwDI9K3NKZe+HY+PjhQ
         UgAjBP5tSFPalsuU7d8Fb+4XHeBeelvp0e6jPbFc7iIGcvmrFA0+fJ1d0G8bwbxgcv0B
         QbZ9a55Pmb2eOZyAJXGKZywGo5p7O09vMNe0qmmPw16qLTE+5J1Myea28bSwvp0wl1sK
         TzrAlAmJvxF6AbFGwTMoIq2GAhSIoGonuTrSsAlBdpI7FA+r7dLoj8RiH5QdB7+P3zFJ
         FTEpECf+S5TxrSSm3BNLiDaNZvDGiKuwT9wVHdS8r9R88VS+DIfNNl7FGG01drlLq/rB
         rX9g==
X-Forwarded-Encrypted: i=1; AJvYcCUieGRkQfh5OrcJpAFFhF1zr7MCBVllYku+Zlzpzn91RXCjTIP9XbAPMTzuq4vDhXEAli34M2stpms+@vger.kernel.org
X-Gm-Message-State: AOJu0YxYVmyd0PoK+jwex83J6n50ZWk3QhFGRE91tSbR1gegNn0ApTZr
	e+FyphZwL317gu2uO5rE8rWGr1Z2ZBAtjAi0NNnAiutKy/d3qrxTwY/939ASlUY=
X-Gm-Gg: ASbGncsxHDj/FrN0gc1lWSL4UT/d5+iQO9TO9EYaINGausJyHVpGuYNrSK5kVzvQ4lU
	3TMw1Cp0jgfxKaBH52EEOs8OcVHk1nOz3SS6VLZcl92KqUw1nqCureL3/jr1MYbdlLZd9PIeeJB
	Hy/W8rfEOOgF7mIv1y+WxJ7aHdIF59IZJR/dqiiR5RHppZ5JIqi0bXpehbA6/KihaaM5oCiRCxr
	PeAq2pUyChrCKbcFn/6Ou6J3vUAspwEBh8mpGKwOCRidD/yoxGoWU5OdM0EZieYIQamNRshGWo6
	B5qXhiqrg8hJ+WP5R6QD6UEE8Fr4sgdTaMHD6iY7z+DpK5VNXFoBoRk7sWQ=
X-Google-Smtp-Source: AGHT+IGHNaTbk9KHcwLFc1JRN2apw3Jv/AHhjSrIdSWvDZ8yqVhUcJckbF0S8Q0geEc46Wby78RCbQ==
X-Received: by 2002:a17:90b:3945:b0:2ee:c6c8:d89f with SMTP id 98e67ed59e1d1-30c3cefe5c1mr22528948a91.14.1747038668235;
        Mon, 12 May 2025 01:31:08 -0700 (PDT)
Received: from sunil-laptop ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30ad4fe21a6sm9135565a91.31.2025.05.12.01.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 01:31:07 -0700 (PDT)
Date: Mon, 12 May 2025 14:00:54 +0530
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
Subject: Re: [PATCH v3 15/23] ACPI: property: Add support for cells property
Message-ID: <aCGxvuHwd7TzfDOS@sunil-laptop>
References: <20250511133939.801777-1-apatel@ventanamicro.com>
 <20250511133939.801777-16-apatel@ventanamicro.com>
 <aCGgZPJUQdAnWa-z@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aCGgZPJUQdAnWa-z@smile.fi.intel.com>

Hi Andy,

On Mon, May 12, 2025 at 10:16:52AM +0300, Andy Shevchenko wrote:
> On Sun, May 11, 2025 at 07:09:31PM +0530, Anup Patel wrote:
> > 
> > Currently, ACPI doesn't support cells property when
> > fwnode_property_get_reference_args() is called. ACPI always expects the
> > number of arguments to be passed. However,
> > fwnode_property_get_reference_args() being a common interface for OF and
> > ACPI, it is better to have single calling convention which works for
> > both. Hence, add support for cells property on the reference device to
> > get the number of arguments dynamically.
> 
> You can reformat above to make it deviate less (in terms of line lengths):
> 
> Currently, ACPI doesn't support cells property when
> fwnode_property_get_reference_args() is called. ACPI always expects
> the number of arguments to be passed. However, the above mentioned
> call being a common interface for OF and ACPI, it is better to have
> single calling convention which works for both. Hence, add support
> for cells property on the reference device to get the number of
> arguments dynamically.
>
Sure. Let me update in the next revision. Thanks!
 
> ...
> 
> > +			if (nargs_prop) {
> > +				if (!acpi_dev_get_property(device, nargs_prop,
> > +							   ACPI_TYPE_INTEGER, &obj)) {
> > +					args_count = obj->integer.value;
> > +				}
> > +			}
> > +
> 
> > +			if (nargs_prop) {
> > +				device = to_acpi_device_node(ref_fwnode);
> > +				if (!acpi_dev_get_property(device, nargs_prop,
> > +							   ACPI_TYPE_INTEGER, &obj)) {
> > +					args_count = obj->integer.value;
> > +				}
> > +			}
> 
> These two seems to me enough duplicative to have a common helper:
> 
> static unsigned int ...(struct acpi_dev *adev, ...)
> {
> 	// define an obj variable?
> 
> 	if (!nargs_prop)
> 		return 0;
> 
> 	if (acpi_dev_get_property(adev, nargs_prop, ACPI_TYPE_INTEGER, &obj))
> 		return 0;
> 
> 	return obj->integer.value;
> }
> 
> Yes, the nember of LoCs most likely will increase, but the point here is better
> maintenance experience.
> 
Makes sense. Let me do it in the next version.

Thanks!
Sunil

