Return-Path: <devicetree+bounces-144511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFD7A2E5A9
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 08:43:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 625BA188B7D0
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 07:43:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C315D1B86E9;
	Mon, 10 Feb 2025 07:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="hEHhEnub"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 955011A3159
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 07:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739173364; cv=none; b=h++eC3Nx0K1LGH2cbL61X1+NjGhKisw0C1cJs1thQrHTnP5+RHlDcZLWUJS39JtnyhlESXvSfqvBxE4x+HdjJU0cxD2e8B976FwSHg1+RuAe5v8Mqf0hLblmZENTXdz16sUUTJQfwM2shk2kiL3CWSvjFAia9U6poFijEk9lAOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739173364; c=relaxed/simple;
	bh=uELykYu2UfnPFrcbXaL5ytU50E2XF8fxhOESv8wBqLc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qV76+Wz+tot/0uV8ME6haAO9KpzAHOvdmczCKqX45+JNQWZMteF3yt6Pvjnh7+DObk0rcJmEPAzMp0VlQub2bKd/eb0OZSWq4e5EXX0Oo2ICqgaPlrm1UW0pIkGhpNE+trxzNABLAH8q6oBoI/Rt7PUlba+IsVWbBAKbrAuz6fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=hEHhEnub; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43937cf2131so7483355e9.2
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2025 23:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1739173360; x=1739778160; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jki0b2am8yzlz3QyhCDEFnMh6r+K6Xff5FC3zmcGxIQ=;
        b=hEHhEnub9vJ60lxT2vbKKBzRLmTMTfzEohjaxyIuLzLiow2SvvpkSatF4AZQxAJjnt
         GldSg7omHp61iZ44O1NoCTj6O106Fa44wXsTEgwrO3V6PzE0XKFkh6b/1ZhCnDiUMPLD
         iwdjtrUpH14ypIzDoUIvMM99VMZk3yMbhrAuLsSxv/dZnbni6dapXkUUVW/cIaTFVxpU
         G5YOpqgvdH6tvuTG1XbLoQT9/+QjN8WaQ3SBagZb0OxHRyre8cxLMu7PshbV34ULqsvb
         gv/zLIyYV/g09f6i49Cxt3Z9AKBh7vYEdtAS2ASA6AqW2u06PJmqX7yjLhHIybimdYpn
         yLVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739173360; x=1739778160;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jki0b2am8yzlz3QyhCDEFnMh6r+K6Xff5FC3zmcGxIQ=;
        b=Fk2qZMC+KS0OnFMlHmzYcdPJOGNAPp9l/t8YTwtexmhB0CHZC3h485H4X4Epwdroft
         BSQPIQ6b+3luFsx4Lf6ZD9hXCQoxQRW8OM7OU6CCOGpi+HzJsuTJhm+p474buvekHIsx
         1NXb+PwfgzZJJGfz9PMl5YrEx/WWvvbvUCYRtSD09UQyBgPmxzluXoTFx/3VHEM6zYus
         oIGsUISAjU3PHtbVChG294PxQlnfOdwwqfLV1EsAqe7LLea/t5+Evh7S4FMRlBtc0pCN
         x5j4SLOTs/PmbdZjJpMPDEO2O23dlMvpkDNupZhIzQ159CTylhQkuXuh33dszhGh9JIh
         /ZXw==
X-Forwarded-Encrypted: i=1; AJvYcCUh0j0rNrak3Hr90Q1ra6d2ORfD+wOzTj1/K7PZJt69azETm6B45/1Ws3E6gN/nltjU45Ahhk2fjJeq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2jNcuycL/JerZ1GnDxziV3B6WkRxZ9/E9oBWW9zuTswVhGDN7
	972F1kkMu/jQBlSo6kV4MMxsZG4gf4eq5wJ9iWmRHX6f6RiFT8htfYGe4/FSgts=
X-Gm-Gg: ASbGncvZl1wtJOaY/w89knKNCKehlP+133y+m/EtMIg+KkXzCuFYFVqRQHztV2ndkBM
	3+KwWfEpIyOBv3XxxIDiTNPRQ1IX4W0NgVOy/A+FMyohX3aSwIXiSOc3aKtdf1oSXFrbi09HXbp
	tn/XJ/159J3KJ1FJms5+RVae9qgf7TlEkgxJ6wrkvHTNQfgMPkkleEu3gS03sB1xMKc1n8JrOTU
	vp7Jrh1/wWvlW158fp5x98+77Z34M1HraUHL2Wc0Uzns8kOXsiZdnTl8eaz2n5j9GGAueHRIp7f
	+G+2s5HsDfX9N/Yiqe5lcV7SRaoc98+2oXOul+OjhFQVrsMVzHH3GvSaNTt4
X-Google-Smtp-Source: AGHT+IF39BdEkA9ZgcBIHbLRArZRwyqYfhbYwkkcPtQvR89C0KQhk8Xnq25iZkfcHIflDsp+ppJQFw==
X-Received: by 2002:a5d:47ad:0:b0:38b:d7c3:3768 with SMTP id ffacd0b85a97d-38dc90fdb89mr7501603f8f.12.1739173359748;
        Sun, 09 Feb 2025 23:42:39 -0800 (PST)
Received: from ?IPV6:2a01:e0a:e17:9700:16d2:7456:6634:9626? ([2a01:e0a:e17:9700:16d2:7456:6634:9626])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390d896d70sm171375435e9.0.2025.02.09.23.42.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Feb 2025 23:42:38 -0800 (PST)
Message-ID: <4320b0be-acce-43b2-b148-1577c6a56dff@rivosinc.com>
Date: Mon, 10 Feb 2025 08:42:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 14/26] riscv/traps: Introduce software check exception
To: Deepak Gupta <debug@rivosinc.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>,
 x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka
 <vbabka@suse.cz>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Christian Brauner <brauner@kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, Kees Cook <kees@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>,
 Jann Horn <jannh@google.com>, Conor Dooley <conor+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-mm@kvack.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org,
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com,
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com,
 atishp@rivosinc.com, evan@rivosinc.com, alexghiti@rivosinc.com,
 samitolvanen@google.com, broonie@kernel.org, rick.p.edgecombe@intel.com
References: <20250204-v5_user_cfi_series-v9-0-b37a49c5205c@rivosinc.com>
 <20250204-v5_user_cfi_series-v9-14-b37a49c5205c@rivosinc.com>
 <fec3b7be-4259-4eef-87f9-b2cee5718cae@rivosinc.com>
 <Z6Z6mhiQ3DmsNZe9@debug.ba.rivosinc.com>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <Z6Z6mhiQ3DmsNZe9@debug.ba.rivosinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 07/02/2025 22:26, Deepak Gupta wrote:
> Hi Clement,
> 
> Thanks for looking at it. Inline
> On Thu, Feb 06, 2025 at 02:49:09PM +0100, Clément Léger wrote:
>>
>>
>> On 05/02/2025 02:22, Deepak Gupta wrote:
>>> zicfiss / zicfilp introduces a new exception to priv isa `software check
>>> exception` with cause code = 18. This patch implements software check
>>> exception.
>>
>> Hey Deepak,
>>
>> While not directly related to this patch, is the exception 18 delegation
>> documented in the SBI doc ? I mean, should we specify that it is always
>> delegated when implementing FWFT LANDING_PAD/SHADOW_STACK ?
> 
> I don't think it's document in SBI spec anywhere. Should it be ?

That's a good question ! I don't know the process to document that part
of the SBI but that would probably be nice to document it anyway I
guess. Atish may know what to do with that.

Clément

> 
> 
> In code, opensbi delegates the exception (SW_CHECK)
> https://github.com/riscv-software-src/opensbi/
> commit/110524441a827e026db3547ed03c5723b9c9e211
> 
>>
>> Thanks,
>>
>> Clément
>>
>>>


