Return-Path: <devicetree+bounces-238300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1E1C59BCF
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 37F7B4E1541
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74EE33164D5;
	Thu, 13 Nov 2025 19:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvIhnU76"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C89D221FCF;
	Thu, 13 Nov 2025 19:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763061450; cv=none; b=a7C1pbbuxx38vhNHQCaNnnJu4qG7AQr7GbUyqwP4U3yJhLHV1wF3mNb2RJhNU9T3+X7TJh6V/PuhPcVnm1agSpP5yTbgvyVeP9Ti2ltTAm6fLfgZMPoIwfq3MAE0cB1EMsNNRFnUuteXG0F2QQF8qnMzIbZxrdAgmlJTrMfuvI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763061450; c=relaxed/simple;
	bh=kt1jO8UvsULEtaDs/E7EX9tnRAFarugVzSN9GuwH6ro=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s7OIg8q6oz8mEdzaLLdPPCMEdPFuzWPBH1i90sYnBPPZv5EB81Yzi6b9gwbvD8W5gte/krbFZlPtD0fqWtbBlaHRuTQUApPqQdP0KuTlRaGImLSPslexGf3nnYGFOctyIzbiTH0BHDvuSJZZngyIq5njv2zAUJNT1JbpzYQvwMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvIhnU76; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CDD1C4CEF5;
	Thu, 13 Nov 2025 19:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763061449;
	bh=kt1jO8UvsULEtaDs/E7EX9tnRAFarugVzSN9GuwH6ro=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=dvIhnU76/pW+vCvvgnPNOO2XoQTRK5+zJKW4w6KCqjeswisCxWkZpIiklY0SGPySS
	 dc4BL0IQw9fjzF4yEHDnzZhbHolCVFhMkJCDkfroC1oOYtZ1AEzdpJNIltye3ymCvr
	 EoRUENxrYwJSfHaAGwqCFp4xZkLO5vyi37LLaJudOdlSK/ZjLC+8F3TSas9cOVBxw/
	 b33BvjEkKZPiNKw/m8PlodjOhuvFQf0UXpUiKy2dufHvnPJCEUu7MAIUM+q8ZL3qRP
	 ySj9jf4v/bQJ/v3kabWXXf5WDP40v48ydCR215Lvnu4LAirAtUi8mxv+N29aZK0vi3
	 AC64p6ZBMkUBw==
Message-ID: <273b638e-8251-4faf-929a-87432a48abdc@kernel.org>
Date: Thu, 13 Nov 2025 20:17:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/22] checkpatch: Warn on page table access without
 accessors
To: Samuel Holland <samuel.holland@sifive.com>, Joe Perches
 <joe@perches.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <pjw@kernel.org>, linux-riscv@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org
Cc: devicetree@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@kernel.org>,
 Michal Hocko <mhocko@suse.com>, Conor Dooley <conor@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>,
 Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>,
 Vlastimil Babka <vbabka@suse.cz>, "Liam R . Howlett"
 <Liam.Howlett@oracle.com>, Andy Whitcroft <apw@canonical.com>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
 <20251113014656.2605447-8-samuel.holland@sifive.com>
 <1dfa1e3566cafbe43a1d4753defef9c82ddb3b64.camel@perches.com>
 <a6e7a571-91d2-4e66-bc86-ba30f624294b@sifive.com>
From: "David Hildenbrand (Red Hat)" <david@kernel.org>
Content-Language: en-US
In-Reply-To: <a6e7a571-91d2-4e66-bc86-ba30f624294b@sifive.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13.11.25 03:36, Samuel Holland wrote:
> On 2025-11-12 8:21 PM, Joe Perches wrote:
>> On Wed, 2025-11-12 at 17:45 -0800, Samuel Holland wrote:
>>> Architectures may have special rules for accessing the hardware page
>>> tables (for example, atomicity/ordering requirements), so the generic MM
>>> code provides the pXXp_get() and set_pXX() hooks for architectures to
>>> implement. These accessor functions are often omitted where a raw
>>> pointer dereference is believed to be safe (i.e. race-free). However,
>>> RISC-V needs to use these hooks to rewrite the page table values at
>>> read/write time on some platforms. A raw pointer dereference will no
>>> longer produce the correct value on those platforms, so the generic code
>>> must always use the accessor functions.
>> []
>>> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
>> []
>>> @@ -7721,6 +7721,13 @@ sub process {
>>>   				ERROR("MISSING_SENTINEL", "missing sentinel in ID array\n" . "$here\n$stat\n");
>>>   			}
>>>   		}
>>> +
>>> +# check for raw dereferences of hardware page table pointers
>>> +		if ($realfile !~ m@^arch/@ &&
>>> +		    $line =~ /(?<!pte_t |p[mu4g]d_t |izeof\()\*\(?(vmf(\.|->))?(pte|p[mu4g]d)p?\b/) {
>>> +			WARN("PAGE_TABLE_ACCESSORS",
>>> +			     "Use $3p_get()/set_$3() instead of dereferencing page table pointers\n" . $herecurr);
>>> +		}
>>>   	}
>>
>> Seems like a lot of matches
>>
>> $ git grep -P '(?<!pte_t |p[mu4g]d_t |izeof\()\*\(?(vmf(\.|->))?(pte|p[mu4g]d)p?\b' | \
>>    grep -v '^arch/' | wc -l
>> 766

That is indeed concerning.

I recall that we discussed an alternative approach with Ryan in the 
past: I don't remember all the details, but essentially it was about 
using separate types, such that dereferencing would not get you the type 
the other functions would be expecting. Such that the compiler will bark 
when you try to dereference.


-- 
Cheers

David

