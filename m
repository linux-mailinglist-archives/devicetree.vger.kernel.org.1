Return-Path: <devicetree+bounces-242416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD684C8A164
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 14:47:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D1A73ACC9C
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 13:47:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1434A2980C2;
	Wed, 26 Nov 2025 13:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kB8wxPZu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D04123536B
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 13:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764164851; cv=none; b=QFRU5vBRUCjC/2EnvlocQcqJDNoaS/CxJW/iT55IzYjyARDCE4Pa4jLToXMQaNx3BMB01+A+w/d9KqaOhG66rTY9NWvUuvdo9Aiqr+Xfxn9ybN56qOmrXITv3qdDeVnhQ8RHRRBBT7SAmnzMzpq6NCzAOffEP882hqcuKVCcvyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764164851; c=relaxed/simple;
	bh=nSIeQJafWTiuRYGr2EKztQnParKvqrQ8LRFQDOBk2tM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oQrExGSHsCF2e59AlmnwjycmCc3+vE9GiW28QKPPQ6r2ouZNBx5WviXoDwxOyEPhTHK7CzsxRS1x0WVvZzKXJeHqZUnXdWS0z155wB5iHRL743SgwgjxyFrIrvNi42SNoZgItYNrjpb5xaPSIxXrB2k0N/ykTcEeUpvNqK/XqWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kB8wxPZu; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-640aa1445c3so10176174a12.1
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764164847; x=1764769647; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rOcN8utXBvCmBV1D6iZJFhosr0VxKSdczfYTYogMAeI=;
        b=kB8wxPZulKqm5CMuaISlgzLCj+NijLwmThDZclg9Q7OpUVRljOmHsFbIk2u+72PpLI
         39W1IZ1NDvQZABy0V0GNxHaMrpQINWKMeWMQ/RbFd6ILt8Qio9vgOXfqmRHDFo5K0JUo
         hEm1sMlLxq3MZpMnODWsXdzu3HqpLRWGQmLbxRoSoDRIqUKlCPZrb1IPmI9cpXsHIDO9
         qdY+OyoaJpN5lFVYUrevuDOsewKwZkqMW4JxBFXWPwV6m3ttj8nFapHKMeC4eBV4cn0i
         9vl9/EjwdaWwAbPdPjVIG2fk6bqGDDiYmteCVwFEkhiEsh42Mq5Q80klejlqWR8ecNvK
         FU2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764164847; x=1764769647;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rOcN8utXBvCmBV1D6iZJFhosr0VxKSdczfYTYogMAeI=;
        b=rtyHUDMeMWT4IRRKkIcCTiXa7g9srpWBLAtEt6Sl3z3ld4v4zucilS6fAUp8/cNFFV
         U4o1bZOyaUUmjw2IkAwGUQ/8RReXMA3sf9gfJWF5621LxHQz/Dc/eh/ySY1iFJ+QzaL1
         M1AQtcChqz1X+fmFaCIurw3nZJIinOjyKbKQ1NN9o18N6HuqzRHlG+iOhGvRo9Ur9YSc
         uA81eRm5AY7NpK/66ngW7r03S3wPN2M4zTdZkSmPkAPFh6md83Tj5lyfoH5D0u2zV4tB
         6Jfd8JL991lYCQneZg9QvgsszSOwmiqej8L2fFuG3q/+cI+eG7szsRssKbWql5pK2rR1
         Z7cQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrzi1d9/yHC8yuku4rZtWVIbZ/VVLp1KzpsCmqGh62V5zp1c1D4T1jfobkgCWTxjuT9ZFvHrtbfNUg@vger.kernel.org
X-Gm-Message-State: AOJu0YweSp+9FEqovTaoV8uBkkSW/GXJOy5QxSzr1DBW+s1q466jR824
	Z9hJ8s7eySufeA3/4iClQ6Fn2DShnm6xc+l4NDKaxI15vByHSyC05Jqb
X-Gm-Gg: ASbGncuki5yOylp5zCBBpbYh3l67vMgxxt6KGv+L4jVmO2G1gMwzD69Bd2lfo5RZiEq
	uy1ws79fEN+FkihSVycajR4Otr9gDRvUUz8JBwfxhZXoEpp02PxdtW/ku1B9t3qYaY7zN6IJnhT
	fbgni5YawlcT61xJwWyY2D97LHJAiA1w+qNp0qad2Zg3AdXjM53SkdG5Yh4luMfBjR8Gib7w1ka
	c3PqLruOTDc4mb8qedutPyCKdvytkrxt3/8hd9YnTEK66l8qob8gwOCQyp+PK1PHn+NU+8Ggg1N
	kVe/irTLhzvXqHzE+WgrOsq8Ir7LxcrzJzf8XUmKfTapzIwGXkfy/tRUXbiYulubNHktYMdIPhD
	Y6nYyZNKV0o+xjRBCZ22Q5y9x9//Z2T0opemXZdV8zJEvti8RayKKQhQTJjMsEwrybKINr0doAc
	f/u73Ox3ql1w==
X-Google-Smtp-Source: AGHT+IEHPtR4zyLqNCyvJKPqlt3PqTSeJMo8/BMvDE8703ct4FKH+8I7ByzjstUJPqKt7PJP3sWJCg==
X-Received: by 2002:a05:6402:50d2:b0:641:3189:a183 with SMTP id 4fb4d7f45d1cf-64555b99be9mr17506130a12.14.1764164847223;
        Wed, 26 Nov 2025 05:47:27 -0800 (PST)
Received: from localhost ([185.92.221.13])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-645363c56a4sm17704368a12.15.2025.11.26.05.47.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 26 Nov 2025 05:47:26 -0800 (PST)
Date: Wed, 26 Nov 2025 13:47:26 +0000
From: Wei Yang <richard.weiyang@gmail.com>
To: Ryan Roberts <ryan.roberts@arm.com>
Cc: "David Hildenbrand (Red Hat)" <david@kernel.org>,
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>,
	linux-riscv@lists.infradead.org,
	Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org,
	devicetree@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
	linux-kernel@vger.kernel.org, Mike Rapoport <rppt@kernel.org>,
	Michal Hocko <mhocko@suse.com>, Conor Dooley <conor@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>, Vlastimil Babka <vbabka@suse.cz>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Julia Lawall <Julia.Lawall@inria.fr>,
	Nicolas Palix <nicolas.palix@imag.fr>,
	Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH v3 06/22] mm: Always use page table accessor functions
Message-ID: <20251126134726.yrya5xxayfcde3kl@master>
Reply-To: Wei Yang <richard.weiyang@gmail.com>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
 <20251113014656.2605447-7-samuel.holland@sifive.com>
 <02e3b3bd-ae6a-4db4-b4a1-8cbc1bc0a1c8@arm.com>
 <bc88d132-452a-42a1-9ee5-5407334d8aac@kernel.org>
 <df7d10ba-bb42-4ea1-8c5b-5db88a18eccb@kernel.org>
 <6bdf2b89-7768-4b90-b5e7-ff174196ea7b@lucifer.local>
 <71123d7a-641b-41df-b959-88e6c2a3a441@kernel.org>
 <c0818f5b-b8a1-4730-aa1d-df0f547a3d47@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c0818f5b-b8a1-4730-aa1d-df0f547a3d47@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)

On Wed, Nov 26, 2025 at 01:03:42PM +0000, Ryan Roberts wrote:
>On 26/11/2025 12:35, David Hildenbrand (Red Hat) wrote:
[...]
>>>>>> Hi,
>>>>>>
>>>>>> I've just come across this patch and wanted to mention that we could also
>>>>>> benefit from this improved absraction for some features we are looking at for
>>>>>> arm64. As you mention, Anshuman had a go but hit some roadblocks.
>>>>>>
>>>>>> The main issue is that the compiler was unable to optimize away the
>>>>>> READ_ONCE()s
>>>>>> for the case where certain levels of the pgtable are folded. But it can
>>>>>> optimize
>>>>>> the plain C dereferences. There were complaints the the generated code for arm
>>>>>> (32) and powerpc was significantly impacted due to having many more
>>>>>> (redundant)
>>>>>> loads.
>>>>>>
>>>>>
>>>>> We do have mm_pmd_folded()/p4d_folded() etc, could that help to sort
>>>>> this out internally?
>>>>>
>>>>
>>>> Just stumbled over the reply from Christope:
>>>>
>>>> https://lkml.kernel.org/r/0019d675-ce3d-4a5c-89ed-f126c45145c9@kernel.org
>>>>
>>>> And wonder if we could handle that somehow directly in the pgdp_get() etc.
>
>I certainly don't like the suggestion of doing the is_folded() test outside the
>helper, but if we can push that logic down into pXdp_get() that would be pretty
>neat. Anshuman and I did briefly play with the idea of doing a C dereference if
>the level is folded and a READ_ONCE() otherwise, all inside each pXdp_get()
>helper. Although we never proved it to be correct. I struggle with the model for
>folding. Do you want to optimize out all-but-the-highest level's access or
>all-but-the-lowest level's access? Makes my head hurt...
>
>

You mean sth like:

static inline pmd_t pmdp_get(pmd_t *pmdp)
{
#ifdef __PAGETABLE_PMD_FOLDED
	return *pmdp;
#else
	return READ_ONCE(*pmdp);
#endif
}

>>>
>>> I find that kind of gross to be honest. Isn't the whole point of folding that we
>>> don't have to think about it...
>
>Agreed, but if we can put it inside the default helper implementation, that
>solves it, I think? An arch has to be careful if they are overriding the
>defaults, but it's still well contained.
>
>> 
>> If we could adjust generic pgdp_get() and friends to not do a READ_ONCE() once
>> folded we might not have to think about that in the callers.
>> 
>> Just an idea, though, not sure if that would fly the way I envision it.
>
>

-- 
Wei Yang
Help you, Help me

