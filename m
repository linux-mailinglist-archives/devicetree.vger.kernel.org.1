Return-Path: <devicetree+bounces-245690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A71CB45A4
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 01:33:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EE4B33000962
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 00:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E44AF219319;
	Thu, 11 Dec 2025 00:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="T8FMIFHq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B811DFDB8
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 00:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765413228; cv=none; b=QZnul1qZOhWNcmWKW5hVQDXdOjneZ6TFsb1mEqOyB3Oc0cvKWwmZRWL/syDtPSN0gpg5K6sXlhn9lsanL21yzfX2kUdDFA3ZoyUD3nOqQsWADVcQ6mjvgY/UUJ6Qgf4eAFBfXSJpcp1m4V8hrRJOvUpNYmyNjOHSa5AzACYJjnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765413228; c=relaxed/simple;
	bh=2JDmWBATpaUa6H2BcCIWxO0SvGynnnvWoeBMOOx9Drk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MNrdF2G/oyvnJsybaq3He+B/8OweZZMtP7KZYrEdM6SDPJ51AeZ6otrSm8Vj6SZ8gyacp9UgWpInrAV2Se83DlUlNBv6+C9DGyEbXHfFTX2sHqUEKqgq7cEoz52QULQpIOH8K+/FUYhs69GtPVD5ernpqIb87JshX9Zmxd3MYPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=T8FMIFHq; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7ade456b6abso303882b3a.3
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 16:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1765413227; x=1766018027; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3QrmlcsyPJfUCC0ZcW/aA6sfMqx5l+Z163FBQ6ysu4g=;
        b=T8FMIFHqn/hM8JeS6uY3CfllpKUzV8BLY81iwqyoLQfzJG0jOkjPFvNABY4YTiS5B2
         1m0uBmVoY9aImrqNl3xNsKyI5ooKpPc9HXmYy1oRUxFv57S6pLJr1PUDbN8GbMA6mLi/
         FOekgp9AaRK5zUht6iCnFL42l1DQ7jA9N/r9ZYdEmNSmtY+HRHodivM2vqDBypY7PDte
         cAhMhqtNSdYE/yjCg5hzgRDhQbVHtslJyBRpnbNZEp3i0V+cxIFPCEC7Ob9okdMauaWW
         T2kkRdZwRFGRvJKUFMEux3rRvD/eSsunAT4S8NTwrS+ThZDhDUGpUZOL3vfcl3AjlBGl
         1qXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765413227; x=1766018027;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3QrmlcsyPJfUCC0ZcW/aA6sfMqx5l+Z163FBQ6ysu4g=;
        b=NIBKjppiTTj+W0ahEoqRzUT7adPtU2xs4Ez2ziks8S+VeDfIfE0FSQZuUeYP/voTqA
         57PuHWb/nfQ8HBl2l9if6E4SrfJUvd4Ju+UPnrUd6jSwdY/ft+3AB8bPvjUxRxQ7eucl
         SRCyKPyi6ml7XgWWOlYVdMdqLVglsJLGjiDjlz7BodT8HqyZWBbFIZZriW3WHQ4oSJRq
         r6aUZbMrNESMNKo6lalZt4+xHi0Ki0wxGrrU2HeCAA87dWXO0OyQrZUhCnvgSZe8SaOh
         uxKwx5Di0y6PBvdLw9LI9ingIF+YBIVkC+gpzM80KsGRhaznI+S293iEd6VyRDRJCcu3
         CwCQ==
X-Gm-Message-State: AOJu0YwvdAk/VBe9PJG6FZkLIeDBc4NBvls7ZR/9mZYfKzp/IJqjV5Dw
	RWMztG3IaJ4m/TmP4gFpgIj7OGQaKx21zZDluWHgwf0JT4momWs7q2fsA6gJAQGyrrw=
X-Gm-Gg: ASbGnct0ttmO4xWUj9yuxPQ59jkXhsSd4Zanrr9h9bRvDdAxhNbZHYWkaqqf/VPCjf8
	6cmlfHeBr7Jij6fr5T0pKNDWiPBso4jsYXraKVRlXUbDcX3WAKajzbaB0qFuc/NmNO+tDChY0Kx
	cZe2MU5HNWPSD0SMF2rsiKXplQ+5/E/EHk1sashlZKzrvhEfFFAlMXrwJcygfrrbUX4xJwcgrkY
	NpFkaPre+b8sPUZDq3G30RehAvEVBLBz8I8tNwyT8OLYzU4ZR1Pv90HfLtXpM3SPFBW1rRzmnpi
	9uqzWADTcFKdTfPkRfYyMJov3asARkdUqHrBvhHN4KDygNcdgxCPu83L7Drh1gQuzJ7lPAbC1fo
	tM4V/ufdggKVapIkNE78bw3vhTEZypeeNm8BO9OcGeeN0LwlltImJ734X2oFV7+2ObW2SwqaMUk
	jzYqdyYPXTNgUjfA==
X-Google-Smtp-Source: AGHT+IGjk/exFuz2Gv/i6l6p36w76njH4yBjUre8KbL1otNzyBmhPQsg1E1fJ2rghGyT0+Ekep5ekQ==
X-Received: by 2002:a05:6a20:a10a:b0:366:14b0:4b0e with SMTP id adf61e73a8af0-366e3acee69mr4438378637.74.1765413226713;
        Wed, 10 Dec 2025 16:33:46 -0800 (PST)
Received: from [100.64.0.1] ([167.103.29.104])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c0c25b7d59dsm580312a12.6.2025.12.10.16.33.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Dec 2025 16:33:46 -0800 (PST)
Message-ID: <af8fd275-a34d-4b2f-8834-9c85dab2bbae@sifive.com>
Date: Thu, 11 Dec 2025 09:33:41 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/22] mm: Allow page table accessors to be
 non-idempotent
To: "David Hildenbrand (Red Hat)" <david@kernel.org>,
 Ryan Roberts <ryan.roberts@arm.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <pjw@kernel.org>, linux-riscv@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org
Cc: devicetree@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@kernel.org>,
 Michal Hocko <mhocko@suse.com>, Conor Dooley <conor@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>,
 Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>,
 Vlastimil Babka <vbabka@suse.cz>, "Liam R . Howlett"
 <Liam.Howlett@oracle.com>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
 <20251113014656.2605447-9-samuel.holland@sifive.com>
 <fbfef7fc-4030-462b-b514-498eea6620aa@arm.com>
 <c2597d43-d909-4259-bb5b-9294e4069385@kernel.org>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <c2597d43-d909-4259-bb5b-9294e4069385@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2025-11-28 2:47 AM, David Hildenbrand (Red Hat) wrote:
> On 11/27/25 17:57, Ryan Roberts wrote:
>> On 13/11/2025 01:45, Samuel Holland wrote:
>>> Currently, some functions such as pte_offset_map() are passed both
>>> pointers to hardware page tables, and pointers to previously-read PMD
>>> entries on the stack. To ensure correctness in the first case, these
>>> functions must use the page table accessor function (pmdp_get()) to
>>> dereference the supplied pointer. However, this means pmdp_get() is
>>> called twice in the second case. This double call must be avoided if
>>> pmdp_get() applies some non-idempotent transformation to the value.
>>>
>>> Avoid the double transformation by calling set_pmd() on the stack
>>> variables where necessary to keep set_pmd()/pmdp_get() calls balanced.
>>
>> I don't think this is a good solution.
> 
> Agreed,
> 
>     set_pmd(&pmd, pmd);
> 
> is rather horrible.
I agree that this patch is ugly. The only way I see to avoid code like this is
to refactor (or duplicate) the functions so no function takes pointers to both
hardware page tables and on-stack page table entries. Is that sort of
refactoring the right direction to go for v4?

Regards,
Samuel


