Return-Path: <devicetree+bounces-165129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E4277A83836
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 07:24:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D0FB51B61CBD
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 05:24:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 108C11F2C58;
	Thu, 10 Apr 2025 05:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Q06OStfN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051321F0E56
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 05:24:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744262649; cv=none; b=saQRGAhiNz1pgYDrcof4mJn6YHCvoL8VcSopSHdvXct+uBnCgciOWfEFG4sBYER0YE5ZQXG8fVDi1L89AHVp+EuzhLX4YqWKASzVfXXBkJkf/I+hWedqLbZ9RHZ/EWmS6ZNC1z63NVzfgREo25woq6OkGELh+g1cPBQHjIREjXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744262649; c=relaxed/simple;
	bh=AvvJAYBIs5by7MUm027EyrQQeOiSll/0ZVufQ4rC9yc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KqPSVt/jj015TZQizd7Tg6RDjZkSeIXP2YgI0DHh5eZgUPoAGBJdu0Q1dF9uac+XZH/ar/sN6oNjl4ximJGTNKgNdK5yGqgMbhunr0ffuVcsyeGWBpaFiRFNz2cCCTlZL11UcoXe3Kq/A8SUPEnFOBzz+GORthTkN7AZN/Nqc0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Q06OStfN; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-3012a0c8496so308099a91.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 22:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1744262646; x=1744867446; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PZYMzQXIXSU/bXW26sRzTu+9m/v0haq3s3VFwVwrb1s=;
        b=Q06OStfNnyhk6geDn6XJVdrTgl9RLokjP8fFq1dQ5Ji+TXVzONRg8FXehDUrWs7g4y
         ow0UE9yJ80OHMRNMVUuPCELlh75h4elSC02YCbIpkF+up6qXmlfcOitm/Kc+Dz0qDgCq
         VIn9Bl01QVVVq7GS+sou1aoLgIaE0uSS7ZXuFZB+f4CXFTK0l7fX4nP3Z/jDmDizTO7H
         uOUZ5cRkMngYz7mdK7Z5PEek0Io4x6hT8vSTqHCXek+twna6uNudanzqx4e5j834oFwx
         a+/w6v0Mgqoe7HWMnwXAl43j3VvtbMG/Kv5s337nQORHOSEmLRmRlMqMt6BV/UCyD1VJ
         10+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744262646; x=1744867446;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PZYMzQXIXSU/bXW26sRzTu+9m/v0haq3s3VFwVwrb1s=;
        b=oyBtV6q6cs5fFP8Eha83CwZtMxy4JBo369NWttYKs87JO3EiFDTT/x8m1w7DTzIYvX
         gaiqr0xhT6C5bN96cqUKHGNcrI9yBiRkWAfAId3+zgqEItPIetsqKcDM+yXyIADFcpf8
         2X3wN74heGRu1taBec1g4/hJ3i3F9WBbayYqH1BNjMUDq/SgVU9lwUKzRmxWl6WE3V2l
         jGDHfetyYcZAfsoK16iBG/Rkbn3UilbzadNE5C7EZLS970jZBRFDfy1B+Mm9CKACgATU
         4MGvPT551kUkX8IfumFrP9eaX3MsbzBQUKySm5FJPm2LCV6xOrQ1D6Zm2P+soPNaLOz2
         0Kwg==
X-Forwarded-Encrypted: i=1; AJvYcCXiJ1mLqEfprMNAUjN9FnWZ6D8VUCxWIcBmdQklH1RH/kabfvuCdIG8EvVNzbvr96mN9nmD91NuHJ4m@vger.kernel.org
X-Gm-Message-State: AOJu0YzhMEF/fI9xBsvauIiTNFim89o0/joP+8BiOZlt/30LkmeVxSN5
	7WweDtg2DQ3jS1xjqtYbQhRr3PbcAJLwriqXLNpoJVDdGTRlx2sFwoJhMmqUfi4=
X-Gm-Gg: ASbGnctu0wwy/ukEkCcweX5BqndrPEHIKP2niOna86Rjp0ebd/ZN3GuTWkpPwlQtl9u
	p/qAoPp/nhFyGDq7D1d81wN7BNf0h+SHRv9e2Qx8Xf5ozTWMFKldAymDrXWMmaXgcaNiX+mZTPi
	m74PRzdCn0Fi8gFq6MzhJS8uqkPIDDYd9qRVb2Dsr1VRljxeAPrbdi+808FubYA/BuFCp7GTXf+
	B2Vgw3ZIwQRPdBTFDqgjPOahrazpbD63cQ8/jD+ErTZHbZDqqjLutFbQtxh6J8uD/hDOrgIRxVe
	Kjj87TygC4J2ctxvZiYuDxN1CtlK4ONhTZpDPtjNk4I+kXZu4kc=
X-Google-Smtp-Source: AGHT+IEFGYLi01GN6t1Qu8phsbyE3bnOEDBZkOiu+MAV/bjppeYPX1aHEWOs4wEGQPAvVv3qM4pyaQ==
X-Received: by 2002:a17:90a:d64b:b0:2fa:13d9:39c with SMTP id 98e67ed59e1d1-30718b75cebmr2953474a91.14.1744262646173;
        Wed, 09 Apr 2025 22:24:06 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7ccac49sm21649615ad.217.2025.04.09.22.24.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 22:24:05 -0700 (PDT)
Date: Wed, 9 Apr 2025 22:24:02 -0700
From: Deepak Gupta <debug@rivosinc.com>
To: Alexandre Ghiti <alex@ghiti.fr>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	"Liam R. Howlett" <Liam.Howlett@oracle.com>,
	Vlastimil Babka <vbabka@suse.cz>,
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
	rick.p.edgecombe@intel.com, Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH v12 27/28] riscv: Documentation for shadow stack on riscv
Message-ID: <Z_dV8v54vfD9zHLV@debug.ba.rivosinc.com>
References: <20250314-v5_user_cfi_series-v12-0-e51202b53138@rivosinc.com>
 <20250314-v5_user_cfi_series-v12-27-e51202b53138@rivosinc.com>
 <2a24cc43-4150-4a56-ba09-0d136dde893f@ghiti.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <2a24cc43-4150-4a56-ba09-0d136dde893f@ghiti.fr>

On Tue, Apr 08, 2025 at 10:48:08AM +0200, Alexandre Ghiti wrote:
>
>On 14/03/2025 22:39, Deepak Gupta wrote:
>>Adding documentation on shadow stack for user mode on riscv and kernel
>>interfaces exposed so that user tasks can enable it.
>>
>>Reviewed-by: Zong Li <zong.li@sifive.com>
>>Signed-off-by: Deepak Gupta <debug@rivosinc.com>
>>---
>>  Documentation/arch/riscv/index.rst   |   1 +
>>  Documentation/arch/riscv/zicfiss.rst | 176 +++++++++++++++++++++++++++++++++++
>>  2 files changed, 177 insertions(+)
>>
>>diff --git a/Documentation/arch/riscv/index.rst b/Documentation/arch/riscv/index.rst
>>index be7237b69682..e240eb0ceb70 100644
>>--- a/Documentation/arch/riscv/index.rst
>>+++ b/Documentation/arch/riscv/index.rst
>>@@ -15,6 +15,7 @@ RISC-V architecture
>>      vector
>>      cmodx
>>      zicfilp
>>+    zicfiss
>>      features
>>diff --git a/Documentation/arch/riscv/zicfiss.rst b/Documentation/arch/riscv/zicfiss.rst
>>new file mode 100644
>>index 000000000000..5ba389f15b3f
>>--- /dev/null
>>+++ b/Documentation/arch/riscv/zicfiss.rst
>>@@ -0,0 +1,176 @@
>>+.. SPDX-License-Identifier: GPL-2.0
>>+
>>+:Author: Deepak Gupta <debug@rivosinc.com>
>>+:Date:   12 January 2024
>>+
>>+=========================================================
>>+Shadow stack to protect function returns on RISC-V Linux
>>+=========================================================

<... snipped ..>

>>+
>>+5. violations related to returns with shadow stack enabled
>>+-----------------------------------------------------------
>>+
>>+Pertaining to shadow stack, CPU raises software check exception in following
>>+condition:
>>+
>>+- On execution of ``sspopchk x1/x5``, ``x1/x5`` didn't match top of shadow
>>+  stack. If mismatch happens then cpu does ``*tval = 3`` and raise software
>>+  check exception.
>>+
>>+Linux kernel will treat this as :c:macro:`SIGSEV`` with code =
>>+:c:macro:`SEGV_CPERR` and follow normal course of signal delivery.
>>+
>>+6. Shadow stack tokens
>>+-----------------------
>>+Regular stores on shadow stacks are not allowed and thus can't be tampered
>>+with via arbitrary stray writes due to bugs. Method of pivoting / switching to
>>+shadow stack is simply writing to csr ``CSR_SSP`` changes active shadow stack.
>
>
>I don't understand the end of this sentence.

I'll rephrase it to make it readable and understandable.

>
>
>>+This can be problematic because usually value to be written to ``CSR_SSP`` will
>>+be loaded somewhere in writeable memory and thus allows an adversary to
>>+corruption bug in software to pivot to an any address in shadow stack range.
>
>
>Remove "an"
>
>
>>+Shadow stack tokens can help mitigate this problem by making sure that:
>>+
>>+- When software is switching away from a shadow stack, shadow stack pointer
>>+  should be saved on shadow stack itself and call it ``shadow stack token``
>>+
>>+- When software is switching to a shadow stack, it should read the
>>+  ``shadow stack token`` from shadow stack pointer and verify that
>>+  ``shadow stack token`` itself is pointer to shadow stack itself.
>>+
>>+- Once the token verification is done, software can perform the write to
>>+  ``CSR_SSP`` to switch shadow stack.
>>+
>>+Here software can be user mode task runtime itself which is managing various
>>+contexts as part of single thread. Software can be kernel as well when kernel
>>+has to deliver a signal to user task and must save shadow stack pointer. Kernel
>>+can perform similar procedure by saving a token on user shadow stack itself.
>>+This way whenever :c:macro:`sigreturn` happens, kernel can read the token and
>>+verify the token and then switch to shadow stack. Using this mechanism, kernel
>>+helps user task so that any corruption issue in user task is not exploited by
>>+adversary by arbitrarily using :c:macro:`sigreturn`. Adversary will have to
>>+make sure that there is a ``shadow stack token`` in addition to invoking
>>+:c:macro:`sigreturn`
>>+
>>+7. Signal shadow stack
>>+-----------------------
>>+Following structure has been added to sigcontext for RISC-V::
>>+
>>+    struct __sc_riscv_cfi_state {
>>+        unsigned long ss_ptr;
>>+    };
>>+
>>+As part of signal delivery, shadow stack token is saved on current shadow stack
>>+itself and updated pointer is saved away in :c:macro:`ss_ptr` field in
>>+:c:macro:`__sc_riscv_cfi_state` under :c:macro:`sigcontext`. Existing shadow
>>+stack allocation is used for signal delivery. During :c:macro:`sigreturn`,
>>+kernel will obtain :c:macro:`ss_ptr` from :c:macro:`sigcontext` and verify the
>>+saved token on shadow stack itself and switch shadow stack.
>>

