Return-Path: <devicetree+bounces-225438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 344E9BCE085
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 19:04:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BB7D94E991A
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 17:04:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EFB21E32A2;
	Fri, 10 Oct 2025 17:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="cjEU8dfS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7772718EAB
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760115861; cv=none; b=itiqHln0/2q4rf0eFZUjzULkIjc9UxnAYHCFETmpEsaWYdVgva6OA42Z7YAKWCM4lTYUHoyNbH2Y2keTnNtzvaJRFRmT1N02yRrHZfmANi/wmO+EQ4rM9myGNg4GgF2V8L/Oqe61n8f+boMwLZpZYzJpEWJ9QWXFYct8HeQAGRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760115861; c=relaxed/simple;
	bh=gRT5PU7wDGh7GtgloUvjUMgoKi1g6w1VadZgRBEHa0I=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bYG0KmXMi5Gir8O4aS76e35T/780hccO+D1HsKMHsFfnDYOf7IIg3VN9z+LymgnduzSypYVE+1kmYTdK1FBj0xhXWkv0gc+6hDug0IkZp9GmJbqJFWMixbcn4z420D1CwRt50JbDJM714zYD2cckNdSjii3onGXJPJp3fJqwYAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=cjEU8dfS; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 192EB3F856
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1760115857;
	bh=VMMsbHNHQlUNowhauDzTqGTgCrfFH9KMpRorSuBG4rw=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=cjEU8dfSgbQdCjsvjCE78yq3Tp3DybP5Idnqx/PCly4b1maQZyP14A7qQSgkpSOOC
	 2aTY/c24NoHqH1xqR+e54lClosbA8GbL20kV+Wxbkbm1LR5v14xZVx4x8j/psJCnsy
	 +tXt5RYChx3zGJrcGNWyOr/kIo7XdtGJpr1lGQ9cUp4HTqfgo6UaO3lpOS9VCAXEDW
	 cdYyhBORSjA2EDg9esRmZGcWgfeq7q/JROGJKFO9ArOI1Y6PbcUk0C7ZgllXg9GLTR
	 MTAvAxLV10qRAGK5RUI5MyVjUTUP3/BvQYf0ibnShKdPYACngsLzX0EnDfOLhkd8GD
	 Rdhq3U/ng1PWv+ztb/GDp3PZeCiCy71tfqX/n2VcDkvUlXLHf9UAS7c1+7N6mIW0rI
	 dR8p/NBn2N0MbFX/1yIWvB4d4cinfTkVSGs9Jx+cGfJbafeDN1x/NI9au8sbuuJRz+
	 dswM3Ozz3i4oiIesBxVb15z3HqTJVMtETpSBK/uC4jMqbgFLOSLuWK0zRIzdsIbQv7
	 2YdTs0Fc5jYPp3WdJtB94VGBpCi0snHXbcOOtI9lfFbdr45qUm4q268+DWwLlY1tq6
	 l+pQQKZjkzEX8wigx6Xe0nWIn/uCP8XgyxcEES5FxKLURdc6xL/RPTTQJ0KfoXoda3
	 R9xWtWWmF7V//1XavCj0Awxs=
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-92eb7ac6c06so5067071241.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 10:04:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760115854; x=1760720654;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VMMsbHNHQlUNowhauDzTqGTgCrfFH9KMpRorSuBG4rw=;
        b=myWYiOIvM2s2ewqB0XLhB4y1AY8J21UbfMDpcZT9onsOgdo0vgrjgbXNA9Y/xuBZgg
         /UaT9ibRuDhQbhMUrjTD1phdh6Qob5nfH/odeQ2UjSCIf1zTtUMu14lgOHqJvt0IsLzx
         zb9Cq5u27I3pYeo4Xeknl4+n9uDh5h/aCUjcerpcX0m5W7WuS6MHFYhJUFjWJMQ3uD9m
         jBctdkVHBifX5lPTI353OzPz/t6gB2e091UTsuYoVnZ83ZSFkd4thjcGbuRy7M44nDaM
         0tbwiH4+3kJbkiIvRWVNqXB/6bD+YI6BhKTS2/quIEMbjvZqoQjb4XZSkq96g4RN9Lxb
         fIqw==
X-Gm-Message-State: AOJu0Yx3ymoQi4K/wofAiB6addGpkCnqQJXYmaEd6u2Ynf3rxf4bNW2O
	crJWclr18yBFr1bHo/Uo7rQfcbZZBuPwEYxdjKMwTbGDeA+3OTFbS+tKf+nFggLOcy7KedpSslT
	zTOK4c4KZMn1fcB0dDzyA6MzBgUi0Kec5RY7ybSETx+bnrr/LMIlb+cbDbZMiBDNU+NT+Je544h
	9I0M8Fz5QHvxQxQHR/mOooCjXjY3V09nG/YT4TSsArYcMBZlJS55m2Kw==
X-Gm-Gg: ASbGnctVCLbXQ8AXn5tUcJmi2/GHmaUVX1DM1KJQ/t5dLpsQhOK7Rn0Y8lXg266dRxB
	HyTNTsBQM/kk0SMOB0gc2fnnT/ub2ybkgboKNjrapm3glp9SGJ3ni/rtFG3H1SkJnPkOj4N7TID
	eGDinuP88tA0k0jFNdjxY=
X-Received: by 2002:a05:6102:3310:b0:555:56e0:f357 with SMTP id ada2fe7eead31-5d5e2351acamr6103879137.23.1760115853731;
        Fri, 10 Oct 2025 10:04:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFBv28DNHJQ5jnD7uIITRjtmxvXAZjjFTFMwrxw+yeFjdrVbwveu4Y97WaEPytCYr30o/zb78JpBxe+rPRUAWY=
X-Received: by 2002:a05:6102:3310:b0:555:56e0:f357 with SMTP id
 ada2fe7eead31-5d5e2351acamr6103795137.23.1760115853023; Fri, 10 Oct 2025
 10:04:13 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 10 Oct 2025 10:04:12 -0700
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 10 Oct 2025 10:04:11 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <6fa3c728-5048-4d26-9b6f-21757320caad@sifive.com>
References: <20251009015839.3460231-1-samuel.holland@sifive.com>
 <20251009015839.3460231-17-samuel.holland@sifive.com> <CAJM55Z9kRpc53s3Kip=U-CcDxAX0UZD5AbTBy_owU8xPEYH5MA@mail.gmail.com>
 <6fa3c728-5048-4d26-9b6f-21757320caad@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 10 Oct 2025 10:04:11 -0700
X-Gm-Features: AS18NWCTcud7R14NP1QO40mHS3XWKKbNmY-Wviavp42FX96J5d0QmbVlv50GxHg
Message-ID: <CAJM55Z8masgGn4vVe_2g1e9WXnLu0Vf5oGxbiniGpsbOhYPLRw@mail.gmail.com>
Subject: Re: [PATCH v2 16/18] riscv: mm: Use physical memory aliases to apply PMAs
To: Samuel Holland <samuel.holland@sifive.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <pjw@kernel.org>, linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, Conor Dooley <conor@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>, 
	Emil Renner Berthing <kernel@esmil.dk>, Andrew Morton <akpm@linux-foundation.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Samuel Holland wrote:
> Hi Emil,
>
> Thanks for testing!
>
> On 2025-10-10 10:06 AM, Emil Renner Berthing wrote:
> > Samuel Holland wrote:
[ .. ]
> >> +
> >> +void __init riscv_init_memory_alias(void)
> >> +{
> >> +	int na = of_n_addr_cells(of_root);
> >> +	int ns = of_n_size_cells(of_root);
> >> +	int nc = na + ns + 2;
> >> +	const __be32 *prop;
> >> +	int pairs = 0;
> >> +	int len;
> >> +
> >> +	prop = of_get_property(of_root, "riscv,physical-memory-regions", &len);
> >> +	if (!prop)
> >> +		return;
> >> +
> >> +	len /= sizeof(__be32);
> >> +	for (int i = 0; len >= nc; i++, prop += nc, len -= nc) {
> >> +		unsigned long base = of_read_ulong(prop, na);
> >> +		unsigned long size = of_read_ulong(prop + na, ns);
> >> +		unsigned long flags = be32_to_cpup(prop + na + ns);
> >> +		struct memory_alias_pair *pair;
> >> +		int alias;
> >> +
> >> +		/* We only care about non-coherent memory. */
> >> +		if ((flags & PMA_ORDER_MASK) != PMA_ORDER_MEMORY || (flags & PMA_COHERENT))
> >> +			continue;
> >> +
> >> +		/* The cacheable alias must be usable memory. */
> >> +		if ((flags & PMA_CACHEABLE) &&
> >> +		    !memblock_overlaps_region(&memblock.memory, base, size))
> >> +			continue;
> >> +
> >> +		alias = FIELD_GET(PMR_ALIAS_MASK, flags);
> >> +		if (alias) {
> >> +			pair = NULL;
> >> +			for (int j = 0; j < pairs; j++) {
> >> +				if (alias == memory_alias_pairs[j].index) {
> >> +					pair = &memory_alias_pairs[j];
> >> +					break;
> >> +				}
> >> +			}
> >> +			if (!pair)
> >> +				continue;
> >> +		} else {
> >> +			/* Leave room for the null sentinel. */
> >> +			if (pairs == ARRAY_SIZE(memory_alias_pairs) - 1)
> >> +				continue;
> >> +			pair = &memory_alias_pairs[pairs++];
> >> +			pair->index = i;
> >
> > I think this needs to be pair->index = i + 1, so PMA_ALIAS(1) can refer to the
> > first entry (i = 0).
>
> The code here is as intended. It's the PMA_ALIAS(1) in the DT that I should have
> changed to PMA_ALIAS(0) after I removed the special first entry from the
> riscv,physical-memory-regions property. Patch 18 also needs this fix.

Hmm.. that doesn't quite work for me though. Then the "if (alias)" above won't
trigger with PMR_ALIAS(0) right?

/Emil

