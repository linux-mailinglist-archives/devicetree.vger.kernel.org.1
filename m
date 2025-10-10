Return-Path: <devicetree+bounces-225494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDF8BCE6F2
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 21:55:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54CBD3BECD5
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 19:55:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F0943016F5;
	Fri, 10 Oct 2025 19:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="i7QtjhtD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6ABBEEC0
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 19:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760126119; cv=none; b=INGzl8A7Uc4fI2ZDFjFguEqigZG3ZZ7sFtkjISEr3WpHFw998V+MMyu5OigcHXI6hD9XoEWWYd1VdmSXIevqxvwT2b+2f/PZKvLxVqP04bbZlHArX+ls6EOjNfLuX9Uo8yOvzMJoh+wV4ZnL5Rcy2LtjkWcCjyPfJNXie8KyQGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760126119; c=relaxed/simple;
	bh=SimwkdUwxyOn+voLJS/BfWE2ArUJiVBnyTuBlpymv+0=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=epDd3bV/eZyQleV8UVf+QhYkyFPd6o9GcX92y4UKXtK2MGpvxZfftXP5boLOQH7q2oXIjTCX6SK9O2QK6tDei1Zh9QeRUFuO7D47tXcmw2Ea2R6ycQKyRnTuijWRxjfyyU6oYZm49g/rTyGGuA/BrcOTOzTFDm8iUWalGA4v1C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=i7QtjhtD; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 5D2403F84A
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 19:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1760126114;
	bh=kPhA/oNdZoYVHAUf6Erq79uJcMcXf1/DDMPMdaotDWc=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=i7QtjhtDDDMyUzT0k9YybFFk4K9MHOcnmTAcstEnRpga5gtMVMbCUSDlLEq+eUhqJ
	 5XQs+Wzu08h9HHpsIaoBx9RyIBnQmfEqdiswLx1tQe8Fh3hUKDyHn4kgLdx34iNOYd
	 4sREcbUAvIGp1Q5/UQLoDscAkr88ILh3H8F8QhCMG2VmXvJBR6q2LPNEZqiIETnW1m
	 p8gCpO4q7QNq59dSSstPgEt5mM5nJMXid+OdX/c7IbSfVs2zFWxm6oU0Duqg8g+fO8
	 Xts00WvyiD/tOMfGFpwuHM3cKfyRZKYokrdWS7OINvuN20mri60o1Vu1m0rNOdnJmJ
	 jORswfSkjfX2SvtAKo2d9GMmjwcL/g96QaJHsKgt8bK6IUZHYgqCCPmoKP+kIMcN2q
	 aM5I3N5CBgFntyBuwwfpDBREanOD0BSCme1qS31GGNdnATQ48O04Mnrnt3muTqF0cM
	 zzkR8iioGvqRILvj0qY+p3creBeGqfhrF8MjKBLbVUH7jRJrsAvbTgKEGHCA0Ll2jQ
	 x65016tuyIbY/08hljj7SME88bxxODGwWvCUcjXd3sSrGxkM8ICfjREJ2MMFHGTB0y
	 yhxbaSDwJmNg67tDsOTl1eNsMTP3jMnC//LnV1k5DzajF5lGyNPTTmNeUicFkvfrzB
	 iIGjMlvVta1eEmPjJgjxYa8A=
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5a265e0ed8cso2088517137.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 12:55:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760126113; x=1760730913;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kPhA/oNdZoYVHAUf6Erq79uJcMcXf1/DDMPMdaotDWc=;
        b=RjGRt2Zr217rU1VSYVDYbP5RUF7vp8TDmfVPZbESRgR1Jz+5fok2bt8x8Mh/+Lzfzt
         PZfneCbtDF/7tUWiWOd7fchTIZcmTECqbtHwE02TBF+HM3CfVLGla16KT6+Vh01NprCh
         zutK3zo2TP80eWZXGQKHX0xDpSLztnW0zBWsgvRlKDtHPirFQmgOhxP98FDeEv+IDFkq
         er+lZ6frNYYNj2oHN5BhZCKai7Jy2M+ktYHP1R08iBKpbQew6oS1i5gAjtItQBkjnGOf
         ZWykxGaHj0Tl+HrgyTfHqf1CJfPXPM09Ihv/OUoTg9+PMkKCnjs2KMwdTG+sYXkMzxql
         4yJw==
X-Gm-Message-State: AOJu0Yxs2MDxl7RZMpxoNuiuzZ3H61dFU5kB+NNeAbpl2+mtivY6UOY7
	0PVNZ1H6vLObYF1S28dwr2z6yBTHSxb0AllA1xKXMYoRaS5yoyluzEhUQLlG4Gr8PyJHTD20btz
	AFVQSfwpIFyGnSWqGrJ/zfjXqgKnGaEBw1bLBLVH0Ucd6bHTovJosnFRiCM3A8B8hUfsTb0ysdm
	Ter0Dn8siZ8JJEyFwR43wn1mbeDW4zlhY93KnpAO4/+1yqqdBpYMdFXA==
X-Gm-Gg: ASbGncuKv78UtavyCyqcExjoUxOp5OThpicivmqRoYe4DqEUrBBWqtc+cyb+zYeWEnN
	RXkEZnaKuAcx+5HkMutafc4p2jqzNzr8MRX8FV62vIWa5s4/x0LLx1FbwutfEAOoXfjhBg4pQrt
	kDwe6zLfbcd5FNG2VpMNo=
X-Received: by 2002:a05:6102:162c:b0:5d5:f6ae:74b4 with SMTP id ada2fe7eead31-5d5f6ae7587mr2959671137.40.1760126113156;
        Fri, 10 Oct 2025 12:55:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGl7uSNVMd1/CraY5eNdtkJsmXLfjZq71soXKG1D0wdaThXC8TnpM49Ya9Dq+mRSUiBMq5+qPE5yVu6PxXKKHU=
X-Received: by 2002:a05:6102:162c:b0:5d5:f6ae:74b4 with SMTP id
 ada2fe7eead31-5d5f6ae7587mr2959658137.40.1760126112724; Fri, 10 Oct 2025
 12:55:12 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 10 Oct 2025 14:55:12 -0500
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 10 Oct 2025 14:55:12 -0500
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <178f4daf-c752-457b-8f0c-c6273f3a63dd@sifive.com>
References: <20251009015839.3460231-1-samuel.holland@sifive.com>
 <20251009015839.3460231-17-samuel.holland@sifive.com> <CAJM55Z9kRpc53s3Kip=U-CcDxAX0UZD5AbTBy_owU8xPEYH5MA@mail.gmail.com>
 <6fa3c728-5048-4d26-9b6f-21757320caad@sifive.com> <CAJM55Z8masgGn4vVe_2g1e9WXnLu0Vf5oGxbiniGpsbOhYPLRw@mail.gmail.com>
 <178f4daf-c752-457b-8f0c-c6273f3a63dd@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 10 Oct 2025 14:55:12 -0500
X-Gm-Features: AS18NWAlCRC7l99R73r3woSIp-vlQ76Jq27BWW9v6hsv7x0ENpHaGmY-XmjOCps
Message-ID: <CAJM55Z_wOkC767T1p749aVzAL5uQD5Lw6D6eqHb9wp-f=nAO0g@mail.gmail.com>
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
> On 2025-10-10 12:04 PM, Emil Renner Berthing wrote:
> > Samuel Holland wrote:
> >> Hi Emil,
> >>
> >> Thanks for testing!
> >>
> >> On 2025-10-10 10:06 AM, Emil Renner Berthing wrote:
> >>> Samuel Holland wrote:
> > [ .. ]
> >>>> +
> >>>> +void __init riscv_init_memory_alias(void)
> >>>> +{
> >>>> +	int na = of_n_addr_cells(of_root);
> >>>> +	int ns = of_n_size_cells(of_root);
> >>>> +	int nc = na + ns + 2;
> >>>> +	const __be32 *prop;
> >>>> +	int pairs = 0;
> >>>> +	int len;
> >>>> +
> >>>> +	prop = of_get_property(of_root, "riscv,physical-memory-regions", &len);
> >>>> +	if (!prop)
> >>>> +		return;
> >>>> +
> >>>> +	len /= sizeof(__be32);
> >>>> +	for (int i = 0; len >= nc; i++, prop += nc, len -= nc) {
> >>>> +		unsigned long base = of_read_ulong(prop, na);
> >>>> +		unsigned long size = of_read_ulong(prop + na, ns);
> >>>> +		unsigned long flags = be32_to_cpup(prop + na + ns);
> >>>> +		struct memory_alias_pair *pair;
> >>>> +		int alias;
> >>>> +
> >>>> +		/* We only care about non-coherent memory. */
> >>>> +		if ((flags & PMA_ORDER_MASK) != PMA_ORDER_MEMORY || (flags & PMA_COHERENT))
> >>>> +			continue;
> >>>> +
> >>>> +		/* The cacheable alias must be usable memory. */
> >>>> +		if ((flags & PMA_CACHEABLE) &&
> >>>> +		    !memblock_overlaps_region(&memblock.memory, base, size))
> >>>> +			continue;
> >>>> +
> >>>> +		alias = FIELD_GET(PMR_ALIAS_MASK, flags);
> >>>> +		if (alias) {
> >>>> +			pair = NULL;
> >>>> +			for (int j = 0; j < pairs; j++) {
> >>>> +				if (alias == memory_alias_pairs[j].index) {
> >>>> +					pair = &memory_alias_pairs[j];
> >>>> +					break;
> >>>> +				}
> >>>> +			}
> >>>> +			if (!pair)
> >>>> +				continue;
> >>>> +		} else {
> >>>> +			/* Leave room for the null sentinel. */
> >>>> +			if (pairs == ARRAY_SIZE(memory_alias_pairs) - 1)
> >>>> +				continue;
> >>>> +			pair = &memory_alias_pairs[pairs++];
> >>>> +			pair->index = i;
> >>>
> >>> I think this needs to be pair->index = i + 1, so PMA_ALIAS(1) can refer to the
> >>> first entry (i = 0).
> >>
> >> The code here is as intended. It's the PMA_ALIAS(1) in the DT that I should have
> >> changed to PMA_ALIAS(0) after I removed the special first entry from the
> >> riscv,physical-memory-regions property. Patch 18 also needs this fix.
> >
> > Hmm.. that doesn't quite work for me though. Then the "if (alias)" above won't
> > trigger with PMR_ALIAS(0) right?
>
> Yes, you're right. My fault for trying to be clever last time, where the special
> first entry meant PMR_ALIAS(0) would never be used. (And for not testing with
> the same DT as I sent, since EIC7700 needs downstream DT changes to integrate
> noncoherent peripherals.)
>
> For v3, I plan to make PMR_ALIAS(0) set a flag so it will be distinct from lack
> of PMR_ALIAS, and keep the indexes zero-based. For now, you should be able to
> test by keeping PMR_ALIAS(1) and adding a dummy entry at the beginning (for
> example by copying the first entry).

Great that also works. To be clear the JH7100 also boots with the pair->index =
i + 1 solution above.

