Return-Path: <devicetree+bounces-216089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA30B539B5
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:55:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 72A751886356
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:55:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B76335CEA2;
	Thu, 11 Sep 2025 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iLKbfIob"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9275034DCFD
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 16:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757609693; cv=none; b=gMBNNCp7O6sak87mJM7nEyHNCFj9K2I9TGe7OEN/MxsaKsWLGC4VhLI75u8xSUK+0YlQP7yI2NocP7UOGega+f83pgYl7AhJlNTC+pQy6dasy69LhnWTCPAAZBbPOuAM1k91VzWVb0oTXsyyIydFr/OCWJk6BK9u0xtQ2t4ECis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757609693; c=relaxed/simple;
	bh=XTBXEstd6PB9WyzlM8/xiw+x+UCwbaYFeIr5kI+4iIs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iLfaNsivvvlJpfZODxt0/FqUgv/1UWsGGSdbuTUUsaRnRUUm/59Mixcqti4ik2znerzc/Xv7eFT9wcIPwKWquznkHSOG7itBG86o7U5NsRmb+Xyds0y6Xnv3slWTl1oWsSuhM37B6WIqo2f4FU29B9o9zkybV+jjlUZQqYOGShE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iLKbfIob; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5607ac8320cso134382e87.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757609690; x=1758214490; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bfboHB9qu5xk51JT6CFCORwu42mssq00krwKtD4BSs0=;
        b=iLKbfIobnkjsOEm/jx0C/KfUlcslwY/4x/qHD1FjtSs53TwiLilvg4HhhUsHbfRxA2
         sb41iT1S/wArJwf6//RUkHLhGRBolvioJ9Yp0+xMGRxU5xhsQpBEIauyCjOGxULBTjRG
         82jN1j5gN8sEoaISb49Wmfcqek+VeTALhgEVncq4tX0rvJXmmsfL7FC8bb/w2npmFB1r
         ACUe2PGsUNRC6LKkr2YFvdh6Ou36WODOGWFSSaWI0qGNYn5aDLsvflTv68H5NoD6yo8l
         uuGwG7026sTyELdmyP77jGeuk6RnAyZcDarz0O466HVyz/uZeqraQpg3rzGh3PBxSPH3
         kx4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757609690; x=1758214490;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bfboHB9qu5xk51JT6CFCORwu42mssq00krwKtD4BSs0=;
        b=RnzoNywTeB7A6Wy0j/kXx/WKyGITbtidL9fj+QVhZxjZ3/aPiP/P+ii63mWMEP4Qk2
         TsntSCXRLQ1XJ6ehAsZq2L/xvn831IzDJ5UAsFSZFJZH5E3uuy+5YIZbLPMCdhxH7Atb
         p8LVH/Mi2U2cbx49/2NGtq6mKc+xL9hLm4jnWxQddFmosztkPtT5yTkyU/SoaoiTAou5
         SQRbr9x/O6vujODuOzkxReS2dYcyL5B7IsPH0Qs4WKdI/CzE6atdGYdMi0oPXY3k012n
         SQAMDuiSJzud5/PlQGANb6QFZ4tSTEzXtdqnzRNiubgmihqz9W8c6ADrcbqJXGH8DuO1
         vmcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfp1Dfb+CXgvgK7OHsHLk5WR8XUGE6Ar9vrdPyaOqtsAaJpCwpHscwfWfOca59+hQmbILHSbmV+bRm@vger.kernel.org
X-Gm-Message-State: AOJu0YxpM/elfSOryPGsivt5tfplXbR5z3I27WKCNqLvyYkBygFxeLgG
	m5MmiWDQWyurCky/G9ddKKuHFsg+UnV3Oju7qD7LQspOY1JIdA5PD1o6bvjLZsSuWzk=
X-Gm-Gg: ASbGncv2AGwKjDInWxOm3QPrnMyKeRwTWRgpssvBno7eKS58onnDSutmWaN/aVhrW6Y
	ZGuihpAIhfF6rg203dJ8Td5YhKaskBYPwrfod3zn0OzcvQUfkB95YZpyFad8NPp07tYGVya1PvT
	eOzcto198RiMp/3uj/Q51sQ3ikzdVlHynR3EsUkukegyo0TwtcKGho/LPhpqKmBMCEncpeiXsdo
	F6crWsBbI7QHkLOZxSZWsH1COqRXqb7/Msl7RMGLyGJ42NXJwLWO1LkisftlP74YNvPiIls6uNc
	1Uaz2RpLs/Gf3YMAIvNmOGlHe513ma2P42mxpsxy1kJJUxRHSKnuN7Wax3X/MV1GYmAi459cFU/
	0MSR98SKNb/N3bnfpCd6ZQBgED6oVWqCGlA69BlcmbVktgOTvTw==
X-Google-Smtp-Source: AGHT+IGXwBdnwsXC7werXS6c6WUS/jEPrEOGwp0IA8NfmoP+ydSr3eKuUztbpRmkqaooT6lTRRravA==
X-Received: by 2002:a05:651c:19a3:b0:336:527a:5b45 with SMTP id 38308e7fff4ca-33b52b71534mr29335971fa.5.1757609689465;
        Thu, 11 Sep 2025 09:54:49 -0700 (PDT)
Received: from [10.214.35.248] ([80.93.240.68])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1a8211d6sm3931581fa.43.2025.09.11.09.54.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 09:54:48 -0700 (PDT)
Message-ID: <6673f66b-e854-4502-bfb5-4b46b16fa457@gmail.com>
Date: Thu, 11 Sep 2025 18:54:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/7] kho: replace KHO FDT with kstate metadata
To: Rob Herring <robh@kernel.org>, Andrey Ryabinin <arbn@yandex-team.com>
Cc: linux-kernel@vger.kernel.org, Alexander Graf <graf@amazon.com>,
 Mike Rapoport <rppt@kernel.org>, James Gowans <jgowans@amazon.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>,
 x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Baoquan He
 <bhe@redhat.com>, kexec@lists.infradead.org,
 Pratyush Yadav <ptyadav@amazon.de>, Jason Gunthorpe <jgg@nvidia.com>,
 Pasha Tatashin <pasha.tatashin@soleen.com>,
 David Rientjes <rientjes@google.com>, Pratyush Yadav <pratyush@kernel.org>,
 Changyuan Lyu <changyuanl@google.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-doc@vger.kernel.org, Chris Li <chrisl@kernel.org>,
 Ashish.Kalra@amd.com, William Tu <witu@nvidia.com>,
 David Matlack <dmatlack@google.com>, Saravana Kannan <saravanak@google.com>,
 devicetree@vger.kernel.org
References: <20250909201446.13138-1-arbn@yandex-team.com>
 <20250909201446.13138-5-arbn@yandex-team.com>
 <20250910165010.GA223810-robh@kernel.org>
Content-Language: en-US
From: Andrey Ryabinin <ryabinin.a.a@gmail.com>
In-Reply-To: <20250910165010.GA223810-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/10/25 6:50 PM, Rob Herring wrote:
> On Tue, Sep 09, 2025 at 10:14:39PM +0200, Andrey Ryabinin wrote:
>> Store KSTATE physical address & size instead of FDT in kho_data.
>> and initialize KSTATE from kho_populate().
>> To be able to use FDT in parallel with KSTATE place FDT
>> address&size into 'struct kho_fdt' and save/restore it using KSTATE.
>>
>> This finishes wiring KSTATE with KHO, making it fully functional.
>>
>> Signed-off-by: Andrey Ryabinin <arbn@yandex-team.com>
>> ---
>>  arch/x86/include/uapi/asm/setup_data.h |  4 +-
>>  arch/x86/kernel/kexec-bzimage64.c      |  6 +--
>>  arch/x86/kernel/setup.c                |  3 +-
>>  drivers/of/fdt.c                       |  6 +--
>>  include/linux/kexec.h                  |  2 +-
>>  include/linux/kstate.h                 |  1 +
>>  kernel/liveupdate/kexec_handover.c     | 60 +++++++++++++++++++++-----
>>  7 files changed, 61 insertions(+), 21 deletions(-)
>>
>> diff --git a/arch/x86/include/uapi/asm/setup_data.h b/arch/x86/include/uapi/asm/setup_data.h
>> index 2671c4e1b3a0..844f5b93473f 100644
>> --- a/arch/x86/include/uapi/asm/setup_data.h
>> +++ b/arch/x86/include/uapi/asm/setup_data.h
>> @@ -83,8 +83,8 @@ struct ima_setup_data {
>>   * Locations of kexec handover metadata
>>   */
>>  struct kho_data {
>> -	__u64 fdt_addr;
>> -	__u64 fdt_size;
>> +	__u64 kstate_addr;
>> +	__u64 kstate_size;
>>  	__u64 scratch_addr;
>>  	__u64 scratch_size;
>>  } __attribute__((packed));
> 
> Isn't this part of the ABI which you can't just change.
> 
> Rob

Yes, it is part of the ABI and layout of this struct can't be changed.
But this change only affects semantics of fields, layout stays the same,
so this should be ok.

If we kexec from an old kernel and kho_data contains FDT address,
the initialization of KSTATE will just fail and boot should continue as
if there was no kho_data at all. At current stage of KHO development,
without real users, change like this should be fine.


