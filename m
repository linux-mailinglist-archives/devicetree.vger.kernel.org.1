Return-Path: <devicetree+bounces-225449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5963BCE2E3
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 20:01:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 011D019A5438
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 18:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21C5620CCDC;
	Fri, 10 Oct 2025 18:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="N51+3V8W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75312C2EA
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 18:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760119300; cv=none; b=VlZTfjI+WDC6AaYlYK8HORtbNRXnCn52zBKtEHDjyNiPrhDcXaU4jxEhMHQuonzvBt35qs+QQOvSQCXZG00ZU6TBo2FmHfNrc9EnArSpCLtGZZ9H3jxXUhEihCeirDDLD6GqFmc8t5Sm2hqGfCbBM/WRl5Ff+LDjzwfc61I99Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760119300; c=relaxed/simple;
	bh=oA6ity5gTwIflaVvOm/NE5yGExVt52OoRJ9GzQ7fsBo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FcoSEel78UR5s3pb5lvJIwIoBhgpk4ruLZ3J4/K/cvhqTdIJYDs6xTIIo2lT72/G7tSFudGLjPjXbr4m/H0UQMBboKw3xA9lU0yFxAXkyELq2MPTl1O/6+VSl+y75g3B9H8x2tGr4UP9xqy+j88eiwQ2RuPdHhe+LUMjoBia+YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=N51+3V8W; arc=none smtp.client-ip=209.85.166.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-93e2d42d9b4so19433439f.2
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 11:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1760119297; x=1760724097; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LcZRKSK4PXETXkF9exJHZznRCpFqtWz78yHtguUg1Eg=;
        b=N51+3V8WPMQSkx1+/ju4z6vB3Gv8THJkDhgEgZ3rSsp2ePZ5yHfWXKp2pz+lztxYC7
         Q57dBrIE4M+llRZA+DKTvIs5WaJaWYhW0amLOz0br/AfWhT7PIAHgpU1z3L+IT6eYjCg
         7xzz8Ja8xKDawrGLdvzseN73/XFtIfzksKYXJBbXijiYauBNzAW0YSThh9ZojvzqxruC
         NEX11rBFHWkcSMti+dYPMyXhk2XBdtp15Yu3WOWywsuUbdWwEcVNR3fOYcHkytaYvagE
         kexoah1NUnbHWorgtQ2xGyIZ+GaXEt/Kc6LNWY5SklEC+CG2syGNGnPY0X+KY0NlPXo8
         VfFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760119297; x=1760724097;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LcZRKSK4PXETXkF9exJHZznRCpFqtWz78yHtguUg1Eg=;
        b=BX8E79Czpig5wzja6qDuXzBNYFzscML9+tA9IAM29uGpEZRJUjnBIgTjgOad9Q+UGx
         UgrwPCRWSCX0mJend/frvfbnTOH8mU+UqTDuTvIt1hp9I6/8R5cbBCFWQ9jf62agPx/1
         a2UfS7Asden7JWQK3hqayQiKMrYNY1RxkgGooOgIpXfHihWE+rnzZg8wLe5DwW8TfBJO
         qLrO346oKdv+euXdCQc+e72LfkI4R0vRCPYxbF8umzVTyTAC7wDqaT6FKvEwEW4UN5LJ
         UpNxMdC+w/sZt+FjbQFHNQPgvksnzfzAHosmoau9aemt5HXIGeXZfhPw30BDD5uKB8j0
         w8zQ==
X-Gm-Message-State: AOJu0Yy2HFdQLGW1TjCctf/+dmQ8dOo3iEYziMDf37TGQumVmqUD63bd
	A3q9YysJ8CbHngdKULP6tEVRlarJW1PAKrTItTcboe8O/D3NkRtjjRa2QEHKWuju+4E=
X-Gm-Gg: ASbGnct9YtyJv3ad3kzC33QX/qXynFoX/D6+/zEvKAyu8QTv9Sh3ypqmyx2Gn6PefYh
	T0CKt0HcC9pC7J0kkKpAaIpTFMFkg0c9hScPSrW/vysqUFn9wPyMf2mGg72fwuu7ii4oh5vm86x
	4VwwZpt+zjpyc68WRxwSA5aei/P+1grPs8UQ7ur2Lo77O5idzhA1DVpN0CW1MXHiJFkUduyItOq
	u+S+3obAAg8/X4KpdNqenl9S63fsFTI6qNo4dqhw4RWP+0NU2ZsPWMmKYAZzBWuJSr+zXgDdJzP
	yUFGX9RfpVvVTuj7SzUQPqV7imPlir7pu2z+LTIPQYamkxGy4Tb7HNktH/6X8fQwE2G4yTAoV+O
	LY3XhuWSuzoHEzV4kxsSl24xEWpvERPs97F03TYgR5gO2QZcGlSmoWKs65w==
X-Google-Smtp-Source: AGHT+IEBjqYLg0XLwORZyVN3qQnBYBCNWqLCOzyqFwj64pAzvRZBLWpl1DIWXO+pr6Q6ErFNviLU5w==
X-Received: by 2002:a05:6602:b91:b0:93b:c3cf:9873 with SMTP id ca18e2360f4ac-93bd17ec199mr1511233839f.8.1760119297356;
        Fri, 10 Oct 2025 11:01:37 -0700 (PDT)
Received: from [100.64.0.1] ([170.85.6.207])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-93e25a95cbbsm116859739f.22.2025.10.10.11.01.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 11:01:36 -0700 (PDT)
Message-ID: <178f4daf-c752-457b-8f0c-c6273f3a63dd@sifive.com>
Date: Fri, 10 Oct 2025 13:01:35 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 16/18] riscv: mm: Use physical memory aliases to apply
 PMAs
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>,
 linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Conor Dooley <conor@kernel.org>,
 Alexandre Ghiti <alex@ghiti.fr>, Emil Renner Berthing <kernel@esmil.dk>,
 Andrew Morton <akpm@linux-foundation.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20251009015839.3460231-1-samuel.holland@sifive.com>
 <20251009015839.3460231-17-samuel.holland@sifive.com>
 <CAJM55Z9kRpc53s3Kip=U-CcDxAX0UZD5AbTBy_owU8xPEYH5MA@mail.gmail.com>
 <6fa3c728-5048-4d26-9b6f-21757320caad@sifive.com>
 <CAJM55Z8masgGn4vVe_2g1e9WXnLu0Vf5oGxbiniGpsbOhYPLRw@mail.gmail.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <CAJM55Z8masgGn4vVe_2g1e9WXnLu0Vf5oGxbiniGpsbOhYPLRw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2025-10-10 12:04 PM, Emil Renner Berthing wrote:
> Samuel Holland wrote:
>> Hi Emil,
>>
>> Thanks for testing!
>>
>> On 2025-10-10 10:06 AM, Emil Renner Berthing wrote:
>>> Samuel Holland wrote:
> [ .. ]
>>>> +
>>>> +void __init riscv_init_memory_alias(void)
>>>> +{
>>>> +	int na = of_n_addr_cells(of_root);
>>>> +	int ns = of_n_size_cells(of_root);
>>>> +	int nc = na + ns + 2;
>>>> +	const __be32 *prop;
>>>> +	int pairs = 0;
>>>> +	int len;
>>>> +
>>>> +	prop = of_get_property(of_root, "riscv,physical-memory-regions", &len);
>>>> +	if (!prop)
>>>> +		return;
>>>> +
>>>> +	len /= sizeof(__be32);
>>>> +	for (int i = 0; len >= nc; i++, prop += nc, len -= nc) {
>>>> +		unsigned long base = of_read_ulong(prop, na);
>>>> +		unsigned long size = of_read_ulong(prop + na, ns);
>>>> +		unsigned long flags = be32_to_cpup(prop + na + ns);
>>>> +		struct memory_alias_pair *pair;
>>>> +		int alias;
>>>> +
>>>> +		/* We only care about non-coherent memory. */
>>>> +		if ((flags & PMA_ORDER_MASK) != PMA_ORDER_MEMORY || (flags & PMA_COHERENT))
>>>> +			continue;
>>>> +
>>>> +		/* The cacheable alias must be usable memory. */
>>>> +		if ((flags & PMA_CACHEABLE) &&
>>>> +		    !memblock_overlaps_region(&memblock.memory, base, size))
>>>> +			continue;
>>>> +
>>>> +		alias = FIELD_GET(PMR_ALIAS_MASK, flags);
>>>> +		if (alias) {
>>>> +			pair = NULL;
>>>> +			for (int j = 0; j < pairs; j++) {
>>>> +				if (alias == memory_alias_pairs[j].index) {
>>>> +					pair = &memory_alias_pairs[j];
>>>> +					break;
>>>> +				}
>>>> +			}
>>>> +			if (!pair)
>>>> +				continue;
>>>> +		} else {
>>>> +			/* Leave room for the null sentinel. */
>>>> +			if (pairs == ARRAY_SIZE(memory_alias_pairs) - 1)
>>>> +				continue;
>>>> +			pair = &memory_alias_pairs[pairs++];
>>>> +			pair->index = i;
>>>
>>> I think this needs to be pair->index = i + 1, so PMA_ALIAS(1) can refer to the
>>> first entry (i = 0).
>>
>> The code here is as intended. It's the PMA_ALIAS(1) in the DT that I should have
>> changed to PMA_ALIAS(0) after I removed the special first entry from the
>> riscv,physical-memory-regions property. Patch 18 also needs this fix.
> 
> Hmm.. that doesn't quite work for me though. Then the "if (alias)" above won't
> trigger with PMR_ALIAS(0) right?

Yes, you're right. My fault for trying to be clever last time, where the special
first entry meant PMR_ALIAS(0) would never be used. (And for not testing with
the same DT as I sent, since EIC7700 needs downstream DT changes to integrate
noncoherent peripherals.)

For v3, I plan to make PMR_ALIAS(0) set a flag so it will be distinct from lack
of PMR_ALIAS, and keep the indexes zero-based. For now, you should be able to
test by keeping PMR_ALIAS(1) and adding a dummy entry at the beginning (for
example by copying the first entry).

Regards,
Samuel


