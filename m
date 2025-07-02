Return-Path: <devicetree+bounces-192198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47392AF5B75
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 16:45:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 381551C42C62
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 14:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC33C2F5463;
	Wed,  2 Jul 2025 14:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="IzGM8IOk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7A3309DC8
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 14:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751467521; cv=none; b=BpNJ9Y9Bbt+LaN80fpEsejUdii3oXFgRMksOi/c3s3gELYmqeTsCzAaQyNJ4BxdD3zs/RAkPDM2egO4LcPWsFbogQAvelHTEmBVRNmFo8NTc9H+TKKxuQBxKTFkm1ElGNkYJNTqXM2Ykmy1WGzKKR3dYLVMmvq4tSVPfnHvmWVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751467521; c=relaxed/simple;
	bh=YCLtjEou17wI5SQ0333An2jcT7S7VeJx1PUsRLs7g3A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NUnXG3jzzPTVk1xgh+pvYHhMaralIOQd0aav8BLnkzQQUElHUx8JikHHtG2S4tHRELxSDvk9o/l4e3hjEdkGaNpwfIT/xTDaX19LobYza7mv33rdUfw02Y+e8Flt4cbGWIfGFSglueMSsUh3FXWsCpnCSbcv+fpohVBrjztGLYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=IzGM8IOk; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-31a93a4b399so588900a91.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 07:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751467520; x=1752072320; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ub3S+Dt/bu8miV+mMpV8No5VX9B8sDnT2TuQkds1xm4=;
        b=IzGM8IOk5hZVxX8TIC1yu2d8gSyC3vh2teoMEuqulztZ1eLEJl4xWt4Y4LdwIAlLZS
         z9O6YuEuT9Ko9LrwNpgEU7kDHCoLkCpywUpbBwFpJQtnVDqPPQ3JNFnukZHc8m5yp800
         9Q3In8FDKQ9e8pDhKLGeargpLzjYxYhvBixwKU9UtSnI/Wl2cnWpt5YdEE6uM2YYa6CG
         nWdpJKVJXBsNsLh3SGjCqwWf5EXLw9qdw+ANHDZCd4aYTZaRfKhdyXyNJox4b6HofaLN
         LsHIjM+JveRoHNEAHscynr4HwbxI0SpYK/sIWnXT7IKx8HFEp4nJWZpDK2qEhUryDvkN
         +fkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751467520; x=1752072320;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ub3S+Dt/bu8miV+mMpV8No5VX9B8sDnT2TuQkds1xm4=;
        b=lJo//z05DpkpgsfxHQSgbHDyHVzBIo0IvT5j+eaS7XyVKo623/vu+gjqCmIwooQ6fh
         gc+US/UQbJw9F3Fuwfc6opsdqwf3+174887Bxcgzb5q/sLEWQ1dXckuK9PzQ+uvUyjAw
         motd3MIOVonquQ5CvjdomLvFTiEpkllTvNDPWHT9A0SrJWyZpDMcE290Agr6FhskCmZG
         2vB1QnIrD7OKeH/4yYcVOr213pMls8LJrLYwL+DjlK3/NJvLKnnI3RrRx6ANsdLSIhU/
         BLG41QgH196PK1dyDP5LxeifD/8opWL5q/LSFSE4LiH4ZyUF1Czb7jpbTELr6VxGHXss
         meyw==
X-Forwarded-Encrypted: i=1; AJvYcCWEhj501yV61rQdUgMrBq5H4xbpRd50TgQriw9HbQH0dHzU7RqArtTMtViplYrBRVm10qo26Pl4PpVO@vger.kernel.org
X-Gm-Message-State: AOJu0YzSemH18HPNkJ7nCeARncYNXUAzaKhMbBKp1jx7AcWLsVlgmkB7
	PpEt1LHefE4mozWYwZ3721EG9tOMor1NfY6Sf2P/tjIU1i4isvk538IZn9uK2rSDTtI=
X-Gm-Gg: ASbGncusw+MJECvRxTQ6dkGn3OeoTYsl1d+RwOwZJsWyos9KxJfAeybOkEwFkg0q+nx
	hYd1kha84zvATIudDy72U2eGeKNe3BdZzcexyWf7xJ0juDXYjTwnekB9JnWLuk3x3tLYUxd2Nko
	8g0ils62pt9a5osT3AqlyRI6BPlWWCVQjoU6lWANqijsUVMeyqn04hitmzipG513p95zcPNVXaG
	1B+ZxgCTLt7vbN0cVKUDKkVAIuInvHUhUwW7ZobOE1vptxybxe3naDAD+nMteDvqW6Pm58DtghQ
	MMv3RXxN5mXvpy2ydNIYIM/43mdfzIIIddy+0coG5wlIqVbOPrDgrl3F2TDgVaht+OMCSeLAmk8
	ufKAE
X-Google-Smtp-Source: AGHT+IFPa9TeJNuPoAgMtcthgHelhMMx1yE/P2JRUakvM+iYhxMlIKjpAgWtoSbiHmHsdR0eqv5U7A==
X-Received: by 2002:a17:90b:558d:b0:30e:e9f1:8447 with SMTP id 98e67ed59e1d1-31a917843a0mr4240732a91.4.1751467519591;
        Wed, 02 Jul 2025 07:45:19 -0700 (PDT)
Received: from sunil-laptop ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31a9cc4c7c3sm17879a91.9.2025.07.02.07.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 07:45:19 -0700 (PDT)
Date: Wed, 2 Jul 2025 20:15:04 +0530
From: Sunil V L <sunilvl@ventanamicro.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Anup Patel <apatel@ventanamicro.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Alexandre Ghiti <alex@ghiti.fr>, Len Brown <lenb@kernel.org>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 14/24] ACPI: property: Refactor
 acpi_fwnode_get_reference_args()
Message-ID: <aGVF8Gqzs2YZf1Os@sunil-laptop>
References: <20250702051345.1460497-1-apatel@ventanamicro.com>
 <20250702051345.1460497-15-apatel@ventanamicro.com>
 <CAJZ5v0ifCN7OWEw0DHpULSmXn4nCb9EdJMjQPJwmdoF_y0nfjA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAJZ5v0ifCN7OWEw0DHpULSmXn4nCb9EdJMjQPJwmdoF_y0nfjA@mail.gmail.com>

On Wed, Jul 02, 2025 at 12:07:36PM +0200, Rafael J. Wysocki wrote:
> On Wed, Jul 2, 2025 at 7:15 AM Anup Patel <apatel@ventanamicro.com> wrote:
> >
> > From: Sunil V L <sunilvl@ventanamicro.com>
> >
> > Currently acpi_fwnode_get_reference_args() calls the public function
> > __acpi_node_get_property_reference() which ignores the nargs_prop
> > parameter.
> 
> Which I suppose is a problem.  Why is it so?
> 
fwnode_property_get_reference_args() documents as below.

* @nargs_prop: The name of the property telling the number of
 *              arguments in the referred node. NULL if @nargs is known,
 *              otherwise @nargs is ignored. Only relevant on OF.
 * @nargs:      Number of arguments. Ignored if @nargs_prop is non-NULL.

You can see that nargs_prop is not supported with ACPI currently. Since
fwnode_property_get_reference_args() calls
__acpi_node_get_property_reference(), there is no way to determine the
nargs from the nargs_prop currently with ACPI. Since
fwnode_property_get_reference_args() is a common API across DT and ACPI,
it is a problem for users.


> > To fix this, make __acpi_node_get_property_reference() to
> > call the static acpi_fwnode_get_reference() so that callers of
> > fwnode_get_reference_args() can still pass a valid property name to
> > fetch the number of arguments.
> 
> Are the current callers of acpi_fwnode_get_reference_args() going to
> be affected by this change and if so, then how?
> 
Good question!. If some one is currently passing both valid nargs_prop and
nargs with ACPI, now with this change it will start getting the value
from nargs_prop which was simply ignored earlier. However, I see only 2
combinations how fwnode_property_get_reference_args() is being used. 

(nargs_prop = NULL) && (args_count !=0)
or
(nargs_prop != NULL) && (args_count = 0)

So, IMO it should be safe to make this change. But let me know if I am
missing something.

Thanks!
Sunil

