Return-Path: <devicetree+bounces-144170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A465A2D1CF
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 00:52:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9110E3ACD80
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 23:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2CEF1DD529;
	Fri,  7 Feb 2025 23:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="RoNmWspQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D954C1D935C
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 23:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738972355; cv=none; b=IXCNTO2k0z6qDdeV3Yd85+9KTVQ2+CrvRKcUdBQIUoX71i2XgTuQESi+qEknMUF1qOrxZ4yRfbY9aawUZWJaCnEAeLSF9faSjSWf8xH+KjmWzMW3TaJcTZfPIx2SF2xovaVs228rSyKLXdR9w2oethO/4wJPK/CYG4DkfBOiuhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738972355; c=relaxed/simple;
	bh=feHZLMYdw1GKKdpzxXYJZHObDJpwzN8+Y0Xx2Qps0Fw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Di8xks8LiL8xu5U4jaewHz1MfhE/nMufGOKNVEd8INHIS7onR4tf8bbXO8jljnXRSu9NTeMPUm5bOJEyA4qsJtc++vtjNOlKqO/K/EY1VZMcBm3D7kkBfJZ1D+/54bgs5k6IGGcCVlcoWLrksAH7xG3txBynDMCuIQ4cILC4Vm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=RoNmWspQ; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-21f5660c2fdso22560445ad.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 15:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738972353; x=1739577153; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oQcVjQRwopmrHuG7wgsXbQFTOWJLCaxzXjS7jJ9aNqc=;
        b=RoNmWspQB8vNq6Ey74DOIuMh74vAkRoq85X9+moyA0z/rBNoXhmo9jFa3Sf/M5W6DI
         GBp2Q7gEJFvIf9el8ifnUWlfB8oLJ8CRmTJD+j7JDRz0LfGgy9n1o/FeDvJvBSO9VUTO
         7bcGlgSTc5315bdmrf8r2FqBlk/dbZHihABSupdMjwEN71guGwrWYAL0+vpfkbDE1pga
         WdVc0NNW5J5IP96coq3aNR/1NxrgX73rzjA2gha5b3t8rWb4VnqwfB+LR370OaHaLQb3
         +Qx2e66rRETtAe8WMynzj9fG38J46oKSTFFlukmQb3eB9hfr3tqDgKQPlSqr1gwyMXai
         Y1SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738972353; x=1739577153;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oQcVjQRwopmrHuG7wgsXbQFTOWJLCaxzXjS7jJ9aNqc=;
        b=uzn+QyQZCFyz/H+3S/Lld/l1KftcKPKHGhBLyOA3IPxgtkYmF4TpLGv3RsCT0YVYpE
         nVp/domNfEoFUH+gf1eMh84saxY/7+pgzTYHoyIbMQpBx/Oxeb9scPKxiDOT17SxBL8u
         ux0S247GORmMm5wymqLwHix8TyJX/PUo7EHoKT6VT9bgGDQ0/9bWxlMrDy4dGfSzFU3U
         bXez1kEQyqqERBwro8BASHMoua3r1weWG0wAaAmFt00FnoQQ2t1mdoftSrv31G3UnL6f
         XEqvqoUIbRvSPj3LE6EVRhaqb5WrBRF9zq1G1HShy1yadE58PYCRtlCsjcD1TMWlJbWg
         tJeA==
X-Forwarded-Encrypted: i=1; AJvYcCXL1/e0HSpe3cGPhIsf8hbsp6bbAagsW/RcrGaCcO3t69khk6ikMLgfSMIIGq7Fp+pReF3LRK4azJPj@vger.kernel.org
X-Gm-Message-State: AOJu0YxQMvr1qJqunM7ggkztVpoCIUSTgxmeZJuw4i+YzCNFOAmKZxzi
	KkNT9vd0hs3EwU0NnFVH5ihsp1GN7zwvDtKDj14WGHbxnifNpDCXXdYcS45KlRI=
X-Gm-Gg: ASbGncsyPZW4b9KQWef4ZyqdP7RzGATSWqvlMNGkd5NTfjQaUfi90sd+bQJmV5phyQN
	5Sl3Xq4vvd1YHhpr1KY9EX3vsZXIyiRGBBqIFjIAVglDmvXgAqJjxUuTTMWCNVuDrDV4WY+8nNZ
	t2iiycQaLSgFoSSIgKAoToYwC1tKz1Xu1F2QCBUKkEbAZXk0Gk3ZVu+UHT7bS2utBkyzTpwurSu
	Ugmv4T8DJCAK8Zpnh1QwBK4wz12HxBCAHbGMUN9BM71Ari+/lvXv12Fm1afBVHxZTEfV72EUEsR
	FKPuSY9fWewsYNQXCfZIYB8U5w==
X-Google-Smtp-Source: AGHT+IH5jRZW/ovSUPH8eJRvmKh5nXw8ULDIWD5h4+evTSN5U5cvmcLVFvRfp+GmY1NLadqVCxbddQ==
X-Received: by 2002:a17:903:94e:b0:215:9470:7e82 with SMTP id d9443c01a7336-21f4e6a035bmr94058495ad.4.1738972353039;
        Fri, 07 Feb 2025 15:52:33 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f368da60bsm36436795ad.258.2025.02.07.15.52.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 15:52:32 -0800 (PST)
Date: Fri, 7 Feb 2025 15:52:28 -0800
From: Deepak Gupta <debug@rivosinc.com>
To: Vlastimil Babka <vbabka@suse.cz>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	"Liam R. Howlett" <Liam.Howlett@oracle.com>,
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Christian Brauner <brauner@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Oleg Nesterov <oleg@redhat.com>,
	Eric Biederman <ebiederm@xmission.com>, Kees Cook <kees@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>,
	Jann Horn <jannh@google.com>, Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-mm@kvack.org, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org,
	alistair.francis@wdc.com, richard.henderson@linaro.org,
	jim.shu@sifive.com, andybnac@gmail.com, kito.cheng@sifive.com,
	charlie@rivosinc.com, atishp@rivosinc.com, evan@rivosinc.com,
	cleger@rivosinc.com, alexghiti@rivosinc.com,
	samitolvanen@google.com, broonie@kernel.org,
	rick.p.edgecombe@intel.com
Subject: Re: [PATCH v9 01/26] mm: helper `is_shadow_stack_vma` to check
 shadow stack vma
Message-ID: <Z6acvL9W4G9Y90WV@debug.ba.rivosinc.com>
References: <20250204-v5_user_cfi_series-v9-0-b37a49c5205c@rivosinc.com>
 <20250204-v5_user_cfi_series-v9-1-b37a49c5205c@rivosinc.com>
 <6543c6b6-da86-4c10-9b8c-e5fe6f6f7da9@suse.cz>
 <Z6aa24/5M5Xdhe/A@debug.ba.rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <Z6aa24/5M5Xdhe/A@debug.ba.rivosinc.com>

On Fri, Feb 07, 2025 at 03:44:27PM -0800, Deepak Gupta wrote:
>On Fri, Feb 07, 2025 at 10:27:10AM +0100, Vlastimil Babka wrote:
>>On 2/5/25 02:21, Deepak Gupta wrote:
>>>VM_SHADOW_STACK (alias to VM_HIGH_ARCH_5) is used to encode shadow stack
>>
>>I see that arm GCS uses VM_HIGH_ARCH_6.
>>
>>>VMA on three architectures (x86 shadow stack, arm GCS and RISC-V shadow
>>
>>And RISC-V doesn't define it at all, not even in this patchset, or did I
>>miss it somewhere?
>>
>
>hmm...
>Something wrong in my workflow and rebasing.
>Thanks for catching this.

I think this is the miss on my part.

I had this patch in last series which introduces `ARCH_HAS_USER_SHADOW_STACK`
https://lore.kernel.org/all/20241111-v5_user_cfi_series-v8-1-dce14aa30207@rivosinc.com/

As part of above patch, `CONFIG_X86_USER_SHADOW_STACK` was replaced with
`CONFIG_ARCH_HAS_USER_SHADOW_STACK` in `mm.h` to define VM_SHADOW_STACK
as VM_HIGH_ARCH_5. It was all fine because all 3 arches were using VM_HIGH_ARCH_5. 

However as things progressed on, arm64 ended up using VM_HIGH_ARCH_6. But
arm64 gcs patches also landed the introduction of `ARCH_HAS_USER_SHADOW_STACK`.
So I dropped this patch from my v9 and didn't pay attention and actually missed
the definition.

>
>>>stack). In case architecture doesn't implement shadow stack, it's VM_NONE
>>>Introducing a helper `is_shadow_stack_vma` to determine shadow stack vma
>>>or not.

