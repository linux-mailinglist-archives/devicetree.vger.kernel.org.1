Return-Path: <devicetree+bounces-237903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id BE069C55735
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 03:36:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4167B345A10
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 702502FD1D7;
	Thu, 13 Nov 2025 02:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="j1Tav42c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8542F6910
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 02:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763001369; cv=none; b=jbjy6eWF+tbngYSR5hISGBdMstgHPk8cN2GjaQBABB5blEPc0Kcsqi7yVh7XQobbIz2HOaID8UrEukTd2/Inc3OGppM6RGJyytPQaNGyJ60dU712EMY9AYKYRwvIxKgKkywj+0nQPf7S26jnyF/Q+TrgPNJz8Ww1boL/knlx3n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763001369; c=relaxed/simple;
	bh=f19DCM9aBD+9or5EhavKhA1i5pmAxjlwLhcKf363rqY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jCk0nau4EoAF72pWFhAxJXpSnSA1tXvqX+lsTx9d6mEZWnN2Yv1Y3XVd6rBhIcDzZcLA0t6LeS3VrFpDQ0mzzWcjlGY2hrgc/Svb349HKzrL2M3osmw5ZaSRxw3pbLCnL5AygN+MdoN7vKWLj2QxeelhAPUsu8DMcYlibmiQnrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=j1Tav42c; arc=none smtp.client-ip=209.85.166.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-948733e7810so16295539f.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 18:36:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1763001366; x=1763606166; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wU6W1sOwNniOpGHk04oKlDXcIE9zKrR6PDF1cQwJ0Ag=;
        b=j1Tav42cCtOxur+BMkVnqkQKZoIFShCEbJ5y2HcQp0Hs9hxGcSPVSTF8hKgvNx1qli
         285ebeJun5I+YcGJd5BNXSVI6MXNMf/YImReBdXslo+9XF4/U+Bpnsms94Eneyey6ad8
         98nQ/dar9izCVtfZLTCU4C1K7z816VKy4+osbZWZ1tmrQiSt795YaLDNUZ6h1wpcvl9z
         CSo+/2J29LivAnmE1pWeXj38g+pkid868XaE9cePOqyP/vb20JDDNCdSm5CztxPQ3mnP
         w7s/Bo4jEJ5tN1h8eKNR87Mbug59Y6GSgsnm//2vb95Vti8FCYG8Y+Pi7Emp10XmMtNG
         Uf/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763001366; x=1763606166;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wU6W1sOwNniOpGHk04oKlDXcIE9zKrR6PDF1cQwJ0Ag=;
        b=N8MVg7fAHeePn25e+NqctIjtbvJJhBXAePNpmlF2ijpCog7sxhqLUnMlZSqMSZlFCC
         y6gnAhviV+PEMGxG56OAsFMMcuSZzZwZpXG3TKXpnXtDJiR2FMrG8XBiD4HECwgFSUks
         AIHX6hIVi2lKZg01EpdU8J+QzkHyc86ibKgfidBHP+ZowJyaphdmF8AFIGxvvJi7OnpX
         si1GuqtR+eMEhg46O2rRTVNPzW1YWnv1347UfISwqNSXqrPSVo6W1Gf9bVRvTOf8KLBi
         TnECjJjy97tiiPHXh6o2QplpSczQ+JDx5GU2VgPc7FREwyqw/R1RWRXV+Az3fvrk/T1K
         RTjg==
X-Gm-Message-State: AOJu0YyICeUFJZo03mt5W45JR6atw0veIRQUQhHnL3JY8UvdW5HS87QT
	kpTn6303If4fg98cJyvp/J54konoTSNXwcdNNsDOmlFd2YX9w1aG0xvYkhOdv7Sa47w=
X-Gm-Gg: ASbGnct4x7QJhk6zexijGcSgmBqLjKA8bljXGg4lq5xMuH7br7mf8VQkTTLc/49s1Vv
	vO+kaGHspctYKLqNC1vGqqRY+gf23jVqtr0aTPRyftGwuIy/Y/d0e63pu1GG82ni4sLXW3Si23O
	J3AeNc4AKpRxTVFHBOGrP1YAFOyI2scp4BbTxh2whHaOQEkr+hezGI8i/cMTLeMFFYflb+aXD2n
	Pf+k7zaXyEM3SpTht0Ypeqxz35gWeSAJYAA9bqlu9hCAkXwUw9vJfi7m5UpgoPPmI9Z7N/heUIZ
	00DeRgDsVI7OZfu7ugJq4m+lEL9UACUidM3oyMMw3fHRrZgxTHmi+nSdlCK353f1AXlmdzZIije
	4RbHVWPZF6gKGvPSniLO+5aDWAzvTl3ukLzWInMDFWpEb2ADpzcuruny52m5kY/+y6Txt5AyHtz
	UYC3cR0nnFBtZqTEuq
X-Google-Smtp-Source: AGHT+IGraeE/bIFHpoWCxTBowHF0q/OZirZ/vsZdNcApHxPGLPbWrFtEzHUR2rGHxEjy2kfVThP5Xg==
X-Received: by 2002:a92:ca0d:0:b0:433:330a:a572 with SMTP id e9e14a558f8ab-43473d52e46mr77508645ab.13.1763001365760;
        Wed, 12 Nov 2025 18:36:05 -0800 (PST)
Received: from [100.64.0.1] ([170.85.6.171])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5b7bd26ff20sm267252173.23.2025.11.12.18.36.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 18:36:05 -0800 (PST)
Message-ID: <a6e7a571-91d2-4e66-bc86-ba30f624294b@sifive.com>
Date: Wed, 12 Nov 2025 20:36:03 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/22] checkpatch: Warn on page table access without
 accessors
To: Joe Perches <joe@perches.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <pjw@kernel.org>, linux-riscv@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>,
 David Hildenbrand <david@redhat.com>, linux-mm@kvack.org
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
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <1dfa1e3566cafbe43a1d4753defef9c82ddb3b64.camel@perches.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2025-11-12 8:21 PM, Joe Perches wrote:
> On Wed, 2025-11-12 at 17:45 -0800, Samuel Holland wrote:
>> Architectures may have special rules for accessing the hardware page
>> tables (for example, atomicity/ordering requirements), so the generic MM
>> code provides the pXXp_get() and set_pXX() hooks for architectures to
>> implement. These accessor functions are often omitted where a raw
>> pointer dereference is believed to be safe (i.e. race-free). However,
>> RISC-V needs to use these hooks to rewrite the page table values at
>> read/write time on some platforms. A raw pointer dereference will no
>> longer produce the correct value on those platforms, so the generic code
>> must always use the accessor functions.
> []
>> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> []
>> @@ -7721,6 +7721,13 @@ sub process {
>>  				ERROR("MISSING_SENTINEL", "missing sentinel in ID array\n" . "$here\n$stat\n");
>>  			}
>>  		}
>> +
>> +# check for raw dereferences of hardware page table pointers
>> +		if ($realfile !~ m@^arch/@ &&
>> +		    $line =~ /(?<!pte_t |p[mu4g]d_t |izeof\()\*\(?(vmf(\.|->))?(pte|p[mu4g]d)p?\b/) {
>> +			WARN("PAGE_TABLE_ACCESSORS",
>> +			     "Use $3p_get()/set_$3() instead of dereferencing page table pointers\n" . $herecurr);
>> +		}
>>  	}
> 
> Seems like a lot of matches
> 
> $ git grep -P '(?<!pte_t |p[mu4g]d_t |izeof\()\*\(?(vmf(\.|->))?(pte|p[mu4g]d)p?\b' | \
>   grep -v '^arch/' | wc -l
> 766
> 
> Is this really appropriate?

Other patches in this series remove 277 of these matches. But it looks like a
couple of driver systems (iommu, dm) use variables that match this pattern as
well. Limiting the check to include/ and mm/ avoids the false positives.

> trivia:
> 
> izeof is really odd looking.  I'd prefer sizeof.

I agree, but my perl complains "Variable length lookbehind not implemented in
regex m/(?<!pte_t |p[mu4g]d_t |sizeof\()\*\(?(vmf(\.|->))?(pte|p[mu4g]d)p?\b/ at
scripts/checkpatch.pl line 7727." I could split this into two patterns, which
would also solve the false positives with multiple variable declarations.

Regards,
Samuel


