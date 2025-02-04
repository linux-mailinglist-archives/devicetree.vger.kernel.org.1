Return-Path: <devicetree+bounces-142990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEC8A277AF
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 17:58:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 264B3163D6B
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 16:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 007D7215788;
	Tue,  4 Feb 2025 16:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="EX2Lvt6P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7106E215786
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 16:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738688298; cv=none; b=XDFvx2BE0edWVrv1ZB3Zrn29rd0+WwjenhzDsmGu7PvpXrsX3s/7kj689PjsJgVwWpYVWcKYM/ACaif7YJX80fEnNg0W6+OGbJyz+wACmPAuBPoRWM5oG8q8t+HjnFBdeZ5WqkA/8oalQr2S9vd1cw6nILG/lyZGva4TK8++bm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738688298; c=relaxed/simple;
	bh=i8RsDQsHeAslGjYrHeMWqMCw59W/EPLvwnmHdBmCEzs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mM83hocccvxbowFniuqgEEH4zBR5IfeG+ZdprWCkLLiZ/NRZ1FQbIFof+L4l0QWax35FCwFiJ+tv0GL2aVB/CgJOhfjRX8dQsdcIfTQR47qAOQYOf5Ef3GodDn5RBm7i3QwtabBjVSHIfXzNU1mgJQdq35ZCqD4inS6bY7yvnl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=EX2Lvt6P; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2165cb60719so107005875ad.0
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 08:58:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1738688296; x=1739293096; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EwLeQKf0vtUui74lT12wFv843Oi1b36R7jDrobGeWGo=;
        b=EX2Lvt6PH4v1K5/Ca+5fgwHWSJoaaXnrBti1qOMPIDdNol/DeZKC1ej05FGA28Xvuk
         IGpPt7kmseUnpOa1ufrg3sA+e4qvwzteUoAobigp2z8oFJpH1GJuwYCt2UB6vWKzUFxt
         GZdyUhk4Q6tKUbTqYDHwxdbAO10rDYKqgFeicmQ2UehREY66Tg2cyZ9IP2J4mDzF0wvS
         2oQoGDUsZsW5eOlC/AvWhQdQc4kkt/OrU21Gzi8uEeVivJU+mwi4G+7cCl6oNq1vrW+q
         Ne0LlxsxcIZlmqqgVGZftRC29hSIb/o3hdObdRIeXHO41VLCPQTUcP6Fn1/RQlMNIpDd
         9egQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738688296; x=1739293096;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EwLeQKf0vtUui74lT12wFv843Oi1b36R7jDrobGeWGo=;
        b=KUckh+CjnNgOb7wldpZXu/7eLfbKa9jQHhoX/NYhkQ83+8hKyMckT/efbgXErc2tUO
         f9am9Vkb0kVoeY7t4tRCoyhfK9j97/t1VRi3CV2w6u6haKxPcAlHrmSaHAo6Dbrcc+06
         DLf/r+1CO16v77UABTfQYjDQVcBDoSEh+7XFr6sLzk4cUMdsWiYbN89JCAnkXPA3dQV/
         yrM65Urhhf19UDdZIkUq60cy3qHwUnPI7lI6q+Y8CoVS49g2JPZJC8YzPuNn37ikveiN
         afFG+b/0kem8Zd7B7Tn9cz3a9UX55QuoUubQHRszKxtxmTm8e8ki5BOyPuRz7z2MduCT
         uT1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXSLFA1QdlszlI1D15sLcw7DM3C3EiZT3v+/rDlb22ZiD/utQR/Hv1HNT78RJxWxjV7vNfXauuexpck@vger.kernel.org
X-Gm-Message-State: AOJu0YysW4d1KppOtzU6PahUNTRAzMbM+UOmEGT4F61w6Hu6dLKa2Jwq
	Pkl0By23laNzPxyXoYG5pkc6Pk1eRkSk8EyM4QtzMr7KmZ10IYLc6fmA4zNTmHY=
X-Gm-Gg: ASbGnctlip/81NAxPvS+oZ9D0kHRXgbsbIcnMfnDSwqWXgE4sbsfrn8823p+3t+FO7c
	F9RGDPI0V0Lt2nXgI7h73MUysr/YYjgt+FwZudbuPcLis22DqfzIbLIvkYoHtUnrB8IE/DUrADB
	2bz/HflWQAePMFhdnP4fCp6zW1DcdjWg2UQ00g03Rg5b4TDwnOSdrbetlV5ikuergAOaXM0VdWh
	svLb9Rf5mN/8Cc2RaCSTnksCWgt+iM6fJEbmD5TTnqmPGTGi/BNfrtegYP445g4LAAnDAXgs0p5
	ADG0wsdJbMPtjns3LnSyt+U=
X-Google-Smtp-Source: AGHT+IH1Yx22xVxfTcYpwaH4xx/e93Sx3gcR5IYL+etceVupvjY9dDNCANrsvumn1lQdWQaHc/HUqg==
X-Received: by 2002:a17:902:d4c3:b0:216:4e9f:4ebe with SMTP id d9443c01a7336-21dd7de213cmr392230845ad.42.1738688296579;
        Tue, 04 Feb 2025 08:58:16 -0800 (PST)
Received: from sunil-laptop ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21de32eb34esm98292765ad.149.2025.02.04.08.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 08:58:15 -0800 (PST)
Date: Tue, 4 Feb 2025 22:28:03 +0530
From: Sunil V L <sunilvl@ventanamicro.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Mika Westerberg <mika.westerberg@linux.intel.com>,
	Anup Patel <apatel@ventanamicro.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
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
Subject: Re: [RFC PATCH v2 12/17] ACPI: property: Add support for nargs_prop
 in acpi_fwnode_get_reference_args()
Message-ID: <Z6JHG-nqFWDv-jpE@sunil-laptop>
References: <20250203084906.681418-1-apatel@ventanamicro.com>
 <20250203084906.681418-13-apatel@ventanamicro.com>
 <Z6CPvteWv89Xo70j@smile.fi.intel.com>
 <20250203105840.GH3713119@black.fi.intel.com>
 <Z6C1cg3cqik8ZxvU@sunil-laptop>
 <20250203123658.GI3713119@black.fi.intel.com>
 <Z6DJ9kmNx4JoqRg-@sunil-laptop>
 <Z6DVDicVEgmSyGcT@smile.fi.intel.com>
 <Z6DVn8u-2EwMaMR4@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z6DVn8u-2EwMaMR4@smile.fi.intel.com>

On Mon, Feb 03, 2025 at 04:41:35PM +0200, Andy Shevchenko wrote:
> > Ah, interesting. The original change that introduces this 3e3119d3088f ("device
> > property: Introduce fwnode_property_get_reference_args") hadn't been reviewed
> > by Mika or me, that's probably why we are not familiar with.
> > 
> > Since interface is already established, I would recommend to fix
> > this as proposed, i.e. with a new API. This is the way to match
> > how OF seems to be doing.
> 
> For the reference see implementation of of_fwnode_get_reference_args()
> 
> 	if (nargs_prop)
> 		ret = of_parse_phandle_with_args(to_of_node(fwnode), prop,
> 						 nargs_prop, index, &of_args);
> 	else
> 		ret = of_parse_phandle_with_fixed_args(to_of_node(fwnode), prop,
> 						       nargs, index, &of_args);
> 
> 
Thanks!. I can do similar. But the change in
__acpi_node_get_property_reference() will be still required since that
is the place where the actual decoding of AML object is done. That would
be similar to __of_parse_phandle_with_args() as well. Hope that is fine.

Thanks,
Sunil

