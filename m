Return-Path: <devicetree+bounces-218543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B68DB81698
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 21:04:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 174071C22F00
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 19:04:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B397E2737EA;
	Wed, 17 Sep 2025 19:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ASKVHwHx"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0660A4690
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 19:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758135843; cv=none; b=BweVK2OuSn7gDKUf6QXpzewom2Nqmt57Ma3Stpu8KxnIykJHHCuU93k9ODNNGUcOwfXWTRPSblmBkWDkYqAedd5cbbOhIvs/8NKwBQSJmIADW4ZKroLCraEDScB+07rlWbe13511mzb5YTlG/IL9fIBVexR3cs6EizG/VJe5/38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758135843; c=relaxed/simple;
	bh=uHriSmtS7Lxm0GPG+EDQP+ngN4Ody8EIz+QPxFS4Sww=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ILkQMb5E9aVClGwp5dj4Q6QQWVrRsEnY8Fdak9iuSki/soM8bm1VJe4Yypzh/df8Hd7IWbTmDhZQvlXpfJaR/nZLnEsfcBfU1MHTE7uo5BDotj1jYbOoHdCqg3Xkckaik83HU6CH8H8I3Si9mn+wmswSa4hHHS20f+jifEd+75M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ASKVHwHx; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758135841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=aHCH0VCzsWU4m239VlHHtfDVtMJrBZLoOpM6kxyrkrM=;
	b=ASKVHwHxNGvqqkGJnQbZc2JSjFo8K5U2Onl36Ox1HNpHLTgeqBb0BSqG6UnTropA1wEnp0
	d4Gpc409RLcCIpt0BjA6I9zwoioxIW5DTOzpn+g/wbIVFwWwHc/9fccYmOqyMVcrwaB95w
	msrQCUHVqd3NkRWiyk8o9rjLFLg2jiw=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-311-X_kWVhvOP_2Asnmi6UFXTQ-1; Wed, 17 Sep 2025 15:03:59 -0400
X-MC-Unique: X_kWVhvOP_2Asnmi6UFXTQ-1
X-Mimecast-MFC-AGG-ID: X_kWVhvOP_2Asnmi6UFXTQ_1758135839
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-3eb67c4aae5so29067f8f.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 12:03:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758135839; x=1758740639;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aHCH0VCzsWU4m239VlHHtfDVtMJrBZLoOpM6kxyrkrM=;
        b=YikqISi3P0G1clVPSXp+Y5GK+9F8hHqjLjl8IoFBMwG1Yx/LeMFcFeuzN+Faywmij3
         YmjEspKlzwBpWElxCcIqRsBNGJH8L2+aBGwqWYSl+JJ+TTUqHd1DDGDBvFcFDmx0upA6
         75zmO8H3kbrDeC2BGSsNV46/7N6AZm9WLjXp0kiTzaIX2d2qBOeiA3EWospUNKB6zP+v
         ++9Ls8mN1tbkYeHLt+P0Vjkm13rpl7eyUNeTs4N5XhGAq0O9N8X+0L2OyHd1TpSGZibp
         bqu3/AqIK4hoIcVPMnwKY8Uir6wGgMPMvMj/egV6tATwsH1WnVAKPlt6VlgImWurmzcY
         wpAQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/sO6CnJUAtkdeyVJtItz7bqLdfpdg9ZM0SMVQVKQjz65XwJfTHnl4Wpia9w+ZMINDBgIGfIV/pd2s@vger.kernel.org
X-Gm-Message-State: AOJu0YyupWlqbuxo3+65XptF2uCbZQc30NvT+tMaS9m8VAesfq36SPiX
	wusQtwLuebpDoD18zXRFgmgi0M6jG93HeqquA+mmYn41kQp8JF6JvMfup+LvatOQAb3pQlct8WY
	OEbYCVQr8+kn/nxQFRNZsetsVjOrGFnnNXTGO9f9sdrid9vfPY4wwQgKSGDUOFIA=
X-Gm-Gg: ASbGncsneNzp/Pr22OwtoUr0k4N/rkDtzj1iqIyM9v6lQj4AiyIe7D2bi5YEzpY8liB
	3kejgsRxKoQiuf7gq1t2mMUmicTZctfGuPvIEiRjqpTgc63/zfSsl5w2fm1RE2XASeBTp4XE0dx
	HNWI+ffy+EQPfCWJ/aJa1BiCNxE5MsQr8iOwZ+b+BZJ1nRKLuuklfnNwvRBMI1T54oljZ63G6Wq
	++1sHDTvNcho8Vl8TQ3+73a9Sw7dRIoKhcOnykTIBfSqOvwyD4fmG9dEZkwGF09owNUdSD69NEe
	1CHx2fwzCF6fgSiBA6PKGiRbZIgZye06IUbiTd9/Ax0TrcikbX01v7kH+L2J7KsoIoY0IBuc2Zg
	mmfSB7iJzbTtQSjtGqz5w+xy8UjMXahKgfUfcHQfgchi4hx8qB5l/Dav1Kyy0HE/C
X-Received: by 2002:a05:6000:200c:b0:3ec:d789:b35e with SMTP id ffacd0b85a97d-3ecdf9f3e2bmr2220745f8f.8.1758135838651;
        Wed, 17 Sep 2025 12:03:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHH1jtQqXfA5qQMVLv888l0a3c36h370u+0P0yyGL+jfEOy01vR98KIIIx9Ov3RHgb7jlDtug==
X-Received: by 2002:a05:6000:200c:b0:3ec:d789:b35e with SMTP id ffacd0b85a97d-3ecdf9f3e2bmr2220727f8f.8.1758135838182;
        Wed, 17 Sep 2025 12:03:58 -0700 (PDT)
Received: from ?IPV6:2003:d8:2f27:6d00:7b96:afc9:83d0:5bd? (p200300d82f276d007b96afc983d005bd.dip0.t-ipconnect.de. [2003:d8:2f27:6d00:7b96:afc9:83d0:5bd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee073f3d68sm446010f8f.10.2025.09.17.12.03.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 12:03:56 -0700 (PDT)
Message-ID: <f8d3c2d4-8399-4169-8527-3c87922f2ef1@redhat.com>
Date: Wed, 17 Sep 2025 21:03:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC][PATCH v3 09/16] genirq/irqdesc: Have nr_irqs as non-static
To: Thomas Gleixner <tglx@linutronix.de>,
 Eugen Hristev <eugen.hristev@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, andersson@kernel.org,
 pmladek@suse.com, rdunlap@infradead.org, corbet@lwn.net, mhocko@suse.com
Cc: tudor.ambarus@linaro.org, mukesh.ojha@oss.qualcomm.com,
 linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org,
 jonechou@google.com, rostedt@goodmis.org, linux-doc@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250912150855.2901211-1-eugen.hristev@linaro.org>
 <20250912150855.2901211-10-eugen.hristev@linaro.org> <87cy7q9k8y.ffs@tglx>
 <87a52u9jyl.ffs@tglx> <8df2cf28-c15e-4692-a127-6a5c966a965e@linaro.org>
 <2bd45749-e483-45ea-9c55-74c5ba15b012@redhat.com> <87v7lh891c.ffs@tglx>
 <95ff36c2-284a-46ba-984b-a3286402ebf8@redhat.com>
 <24d6a51d-f5f8-44d7-94cb-58b71ebf473a@linaro.org>
 <7f4aa4c6-7b77-422b-9f7a-d01530c54bff@redhat.com> <87segk9az5.ffs@tglx>
From: David Hildenbrand <david@redhat.com>
Content-Language: en-US
Autocrypt: addr=david@redhat.com; keydata=
 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
 qIws/H2t
In-Reply-To: <87segk9az5.ffs@tglx>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

> 
>>> this would go to a separate section called .tagged_memory.
> 
> That'd be confusing vs. actual memory tags, no?

Yeah, I came to the conclusion just after an upstream call we just had 
about that topic (bi-weekly MM alignment session).

I'm open for any suggestions that make it more generic. My first 
instinct was "named memory regions".

>   
>> Maybe just "tagged_memory.h" or sth. like that? I'm bad at naming, so I
>> would let others make better suggestions.
> 
> inspect.h :)
> 
> I'm going to use 'inspect' as prefix for the thoughts below, but that's
> obviously subject to s/inspect/$BETTERNAME/g :)
> 
>>> Then anyone can walk through the section and collect the data.
>>>
>>> I am just coming up with ideas here.
>>> Could it be even part of mm.h instead of having a new header perhaps ?
>>> Then we won't need to include one more.
>>
>> I don't really have something against a new include, just not one that
>> sounded like a very specific subsystem, not something more generic.
> 
> Right. We really don't want to have five different mechanisms for five
> infrastructures which all allow to inspect kernel memory (life or
> dead) in one way or the other. The difference between them is mostly:
> 
>     - Which subset of the information they expose for inspection
> 
>     - The actual exposure mechanism: crash dump, firmware storage,
>       run-time snapshots in a filesystem, ....
> 
> Having one shared core infrastructure to expose data to those mechanisms
> makes everyones life simpler.
> 
> That obviously needs to collect the superset of data, but that's just a
> bit more memory consumed. That's arguably significantly smaller than
> supporting a zoo of mechanisms to register data for different
> infrastructures.
> 
> I'm quite sure that at least a substantial amount of the required
> information can be collected at compile time in special section
> tables. The rest can be collected in runtime tables, which have the same
> format as the compile time section tables to avoid separate parsers.
> 
> Let me just float some ideas here, how that might look like. It might be
> completely inpractical, but then it might be at least fodder for
> thoughts.

Thanks a bunch for writing all that down!

> 
> As this is specific for the compiled kernel version you can define an
> extensible struct format for the table.
> 
> struct inspect_entry {
> 	unsigned long	properties;
>          unsigned int	type;
>          unsigned int	id;
>          const char	name[$MAX_NAME_LEN];
> 	unsigned long	address;
>          unsigned long	length;
>          ....
> };
> 
> @type
>         refers either to a table with type information, which describes
>         the struct in some way or just generate a detached compile time
>         description.
> 
> @id
>         a unique id created at compile time or via registration at
>         runtime. Might not be required

We discussed that maybe one would want some kind of a "class" 
description. For example we might have to register one pgdat area per 
node. Giving each one a unique name might be impractical / unreasonable.

Still, someone would want to select / filter out all entries of the same 
"class".

Just a thought.

> 
> @name:
>         Name of the memory region. That might go into a separate table
>         which is referenced by @id, but that's up for debate.

Jup.

> 
> @address:
> @length:
>         obvious :)
> 
> ...
>          Whatever a particular consumer might require
> 
> @properties:
> 
>          A "bitfield", which allows to mark this entry as (in)valid for a
>          particular consumer.
> 
>          That obviously requires to modify these properties when the
>          requirements of a consumer change, new consumers arrive or new
>          producers are added, but I think it's easier to do that at the
>          producer side than maintaining filters on all consumer ends
>          forever.

Question would be if that is not up to a consumer to decide ("allowlist" 
/ filter) by class or id, stored elsewhere.

> 
> Though I might be wrong as usual. IOW this needs some thoughts. :)
> 
> The interesting engineering challenge with such a scheme is to come up
> with a annotation mechanism which is extensible.
> 
>       Runtime is trivial as it just needs to fill in the new field in the
>       datastructure and all other runtime users have that zero
>       initialized automatically, if you get the mechanism correct in the
>       first place. Think in templates :)
> 
>       Compile time is a bit more effort, but that should be solvable with
>       key/value pairs.
> 
>       Don't even waste a thought about creating the final tables and
>       sections in macro magic. All the annotation macros have to do is to
>       emit the pairs in a structured way into discardable sections.
> 
>       Those section are then converted in post processing into the actual
>       section table formats and added to the kernel image. Not a
>       spectacular new concept. The kernel build does this already today.
> 
>       Just keep the compile time annotation macro magic simple and
>       stupid. It can waste 10k per entry at compile time and then let
>       postprocessing worry about downsizing and consolidation. Nothing to
>       see here :)

Sounds interesting!

-- 
Cheers

David / dhildenb


