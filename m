Return-Path: <devicetree+bounces-224716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 726B4BC72EF
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 04:12:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8FD951899B58
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 02:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B49F013774D;
	Thu,  9 Oct 2025 02:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="g5GkFcdb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236D24C81
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 02:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975952; cv=none; b=I5OKEJyRcdIMuri2c0SgGrCh+1WVvhQR7RQn4ZQLMvXAM8zuhZiA3sqDXqqkGra8VlGhAGpoPxJYClI18Y75XSUihnTYpQBb12ZjTnz/Jfdfwkzgbtz1R0Ab3/uh4V0bTFxkCzrhPlphgsO1eZdg9HqHg84hhJC0y5gZ7CX7b8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975952; c=relaxed/simple;
	bh=BEO1C3ONk2myhERm288+5DEceZMfRXpENxcU22KYBbk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h0FdwG2a3fokpwxo8mw1qpYXIacnbGRe5GCdN3kW655HOe7nIDeNhhA78xSvR9vFKN85h3pnsf5rO3sLkTnRSaoYkib2bFOgSjF0HhlpEu1SNNQPHr//mFO3tr2hPhSL01uQnrmjSfB3JOf7wXk5vRMXXPmYdOV/gPjH8Ps623I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=g5GkFcdb; arc=none smtp.client-ip=209.85.166.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-9335a918867so42600039f.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 19:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1759975950; x=1760580750; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AbPu2XGEyV84O7ceajb+hSEcv9NBBUMvNPxDk1syPXo=;
        b=g5GkFcdbhS1utOplQhrrRvivMI+Hefwgp07EI0zMAkc8Vis8rP0K749ENEf4KPJRO4
         RgNUfbIMnh8oMlDJiIdCR6E09aqWTzAa6oN6r2juZG/JkgAfPNFngPUeP++4dZszgfB2
         WFbhN2qZmBSrcu0/FTrx1se+VB39vXh3LPQb+C8pxVs7wLlMu61HLp7qha4ewa7Z/V8b
         rnhTECbDvccIwQ5rQbww9pmN43Ts9r4jHeLVSnVnOmUwKYiJFo7gR4N765utdFVLUkVY
         IKq+Fvfxe2WcEJr73WDFZHbre8FH4+WXNaNTqL1NFO7a3ebY+zhtHXd0NM2J7YaNbnfZ
         K5Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759975950; x=1760580750;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AbPu2XGEyV84O7ceajb+hSEcv9NBBUMvNPxDk1syPXo=;
        b=rH18iQaDcGi538wrsEDtJRxycvOc2l7PHMYFtmJjCxs0ovSC4uVo4r51Nfy6RUODXW
         XHnBH2adtMcpl+DvDmjr/spQDsL+X3QSViRxytQB/1txgG15CYvhJQRTekztOfY2Vzb6
         LxIiS5gIk4TolxiaSFxEAXzVM/sKvQpb+Bwr3pqKKrJLRc57sP4ybQt7aLpsdPnPMAsI
         sTwlvTlosW2p994PPy5zSDSlK/QI5Kw0sD/g9fH9hCMpPUM1JGW8mPMwqaFbiVEDSswq
         JMAUGij9lzupMPgjJgg/MfPXmzZTDQr6DEwtWhbVxFwtatyuV+T7zX7twVzJVqZK2yyL
         k4wQ==
X-Gm-Message-State: AOJu0YzjURfNGg8GH+cQcLizRj411qxVp/vvbk+vuwem6MBMAYbi+t5q
	BNFaa5sSCJSJm6KR6Lkfw/bbzpjtJhG4dYBfxCPBgPBsqhtq6ck2MoiSTcrbMtYizGo=
X-Gm-Gg: ASbGncunjohPZmDxtWC/izYSnZiayxWW8hlzh3sFeoMfOj/a+cTgtIyv2ZwgJEiB+SQ
	3slBNUBdaJ71Gh3zSQ2EXTJo5o63rtVNIgzcyl3N20S7oelTSxSc+21q/6iPIjYJVOvwkpf1uZz
	66CAPptEQKsHutoyyZ/u8abU8xSwwMUjH6gbO1kJvRupiZmyEbVIHSrnhBmnSrrP7LmJ1O7GE+B
	Jv7DCY26z5QYQVZNZm3TrVcAxMCVmqXul4H/dO4O7t1H7r7CynjynjcC3nwrZcNYOJTO75uOPYm
	G1G84AX0j1ozoM4Kbj2XQbaoomP4LYFRRBgT6xrw+iY0bUOhGKG3APDu9pPaFNfw2zpL3XyWlwo
	vilmq/jV9r40peaKAFUDUPbXy3W702WMv2XdorREnAa/OUQzNmOVuzfEY+HIIvSE=
X-Google-Smtp-Source: AGHT+IFf3P0fMqgtIRBVPv2XsviE3jCqS0vhAVEZFCbPRNoZDag8qSCTZQOfXsXtGUnTxbVxbZkh8Q==
X-Received: by 2002:a05:6e02:18c7:b0:427:de6d:b6f3 with SMTP id e9e14a558f8ab-42f873590a0mr52309535ab.8.1759975950061;
        Wed, 08 Oct 2025 19:12:30 -0700 (PDT)
Received: from [100.64.0.1] ([170.85.6.207])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-42f9036cee5sm5594385ab.32.2025.10.08.19.12.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 19:12:29 -0700 (PDT)
Message-ID: <e155e1f8-0b54-432e-a155-eec5ca41c341@sifive.com>
Date: Wed, 8 Oct 2025 21:12:28 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/11] riscv: mm: Fix up memory types when writing page
 tables
To: Alexandre Ghiti <alex@ghiti.fr>, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv@lists.infradead.org, Conor Dooley <conor@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexandre Ghiti <alexghiti@rivosinc.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20241102000843.1301099-1-samuel.holland@sifive.com>
 <20241102000843.1301099-7-samuel.holland@sifive.com>
 <4123bd5d-33b8-4248-a03a-de784c433040@ghiti.fr>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <4123bd5d-33b8-4248-a03a-de784c433040@ghiti.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Alex,

On 2024-11-05 5:03 AM, Alexandre Ghiti wrote:
> On 02/11/2024 01:08, Samuel Holland wrote:
>> Currently, Linux on RISC-V has three ways to specify the cacheability
>> and ordering PMAs of a page:
>>   1) Do nothing; assume the system is entirely cache-coherent and rely on
>>      the hardware for any ordering requirements
>>   2) Use the page table bits specified by Svpbmt
>>   3) Use the page table bits specified by XTheadMae
>>
>> To support all three methods, the kernel dynamically determines the
>> definitions of the _PAGE_NOCACHE and _PAGE_IO fields. However, this
>> alone is not sufficient, as XTheadMae uses a nonzero memory type value
>> for normal memory pages. So the kernel has an additional alternative
>> sequence (ALT_THEAD_PMA) to insert the correct memory type when writing
>> page table entries.
> 
> 
> I have just taken a look, and it's not exactly when the page table is written
> but rather when the page table entry is being created.
> 
> And I have to admit that I find it weird, moving that to the set_pXd() functions
> seems way more robust. Indeed those functions must be used to write a page table
> entry but a page table entry can be created by other means than with the
> pfn_pXd() functions.
> 
> This is what I did for NAPOT to hide the size of the mapping contained in the
> pfn from the generic kernel here https://lore.kernel.org/linux-
> riscv/20240802151430.99114-1-alexghiti@rivosinc.com/

I've just sent out a v2 which follows your suggestion[1]. It turns out that the
pXXp_get()/set_pXX() functions aren't 100% robust either, with some examples
shown in patch 5 of the new series[2]. And there's some ongoing discussion about
if it's appropriate to put nontrivial code in those helper functions[3]. So I
don't know what's really the best strategy here.

Regards,
Samuel

[1]:
https://lore.kernel.org/linux-riscv/20251009015839.3460231-1-samuel.holland@sifive.com/
[2]:
https://lore.kernel.org/linux-riscv/20251009015839.3460231-6-samuel.holland@sifive.com/
[3]:
https://lore.kernel.org/all/20251006082238.GQ3245006@noisy.programming.kicks-ass.net/


