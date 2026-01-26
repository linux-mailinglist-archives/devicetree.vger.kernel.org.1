Return-Path: <devicetree+bounces-259644-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eI5ULNLRd2mFlwEAu9opvQ
	(envelope-from <devicetree+bounces-259644-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:42:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 522608D34F
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:42:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 278613060D28
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDAB32D73BE;
	Mon, 26 Jan 2026 20:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="M9u6mR3/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f194.google.com (mail-dy1-f194.google.com [74.125.82.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFE42D73AE
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 20:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769460035; cv=none; b=XwRHBf244ySAYxvdpetGTMUCTntqlsDnwHZ3KRRJCW9Mhq2bEBg9/Kx5+JaL1ieRvZOppsuceStPF8vm65NJR38nDogBbeWpKudUtbZELNlMEnpHHbfao5COuHkO7J0k+3Vf6FxwNW8Dk+EeCLgeGa/1l0qLLtKfNh/QfDmHqAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769460035; c=relaxed/simple;
	bh=aoGpvrsYD8w5a452qvKD8qfj7v0SBwYk6GvPHlbXAj4=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rWltkHIf2ZklUeT6QBMbJfZt6vDuyQly/zZwJggKyKeneYlalgpf+s55XU0yqVybH9Skw/iYOpNh0uwVrgPqO1iaYCWhi2B5Gg+OHbEkC0B7ZM+OiWfhC7Pcy07GDw1CjrPtkR/XqIbxCH+rvNSNdA/79VmZ99As5h2HtAgd97c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=M9u6mR3/; arc=none smtp.client-ip=74.125.82.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-dy1-f194.google.com with SMTP id 5a478bee46e88-2b74f839bdfso1544704eec.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 12:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1769460031; x=1770064831; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EUBpOm0QvKE2389W2MiwDwXvLMg/CnIs37/EZYwRaJU=;
        b=M9u6mR3/aNK8BZmBX78WRAbvwN6YX+AmG7e/U+MCt8zXKX1hABGR7GOGFerBOXgjZX
         77/CVaYNuKSne6efVmMpmK+r+QQdDY2SzRWBMaogGde05d4ZyQmWmMfdavW7+M1fSmdl
         g0F4nSB2D+NWEb7n4HSJOZUTbT0PrY/zD5giiSQns9V4Cuu4eWsyymBYrq0D8CxWDXY8
         eaDPWrkOwbiB0Iukb/pte+2ncblEALdrNUbm7ImZktGVZjzquWfB/mhaCPL29vnyAWQm
         v3nRGDzCeYlc3rShPpFbmwuZAPuk/xNUCrv7u4OmGEtpPAJPyhY3ABcNashxgffl+32X
         2niw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769460031; x=1770064831;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EUBpOm0QvKE2389W2MiwDwXvLMg/CnIs37/EZYwRaJU=;
        b=XpZW++y7tOQqpJMcRGvFe5hYlWHyHC5p2okYCPxSTgt6RESO8sY16Q6GWGqFUo2Lx0
         MXdGnACXdsX4GomlAsaulLeKPiHbZsrJUgNopWSaIJeBRGGNFLLBGUoEINNIN4uGpTOZ
         4IdrYydfDnFV7r3lAxCahxbuIBNDj3RvS3eSBxvrpc+4JKXBO3d5u58k+Kbr45Use8YO
         1JnkxZXMlM8lYlUV/kFiLTPjlWuOMCB8TbQEsPI6Sm42y1Q9Q7XKy61hA3iv0+Gb7rxC
         GchZOFzyWT0mr8QacIlCzpyQo24USsrEBT20AD5S8LFGHxS4S/QSJ7+CbOpsGElLjLOX
         XKYg==
X-Forwarded-Encrypted: i=1; AJvYcCVHAU//IL+AqnTSV7m6shjevwR1D3mhlIrBQzZDr7JLZey+FXy4D0T59Aw8QL09phaQrl5NbF/4J6/0@vger.kernel.org
X-Gm-Message-State: AOJu0YwqnojQnQVqnsRU6KzM1t4A4Y+kTMxt/GFqP0v6k81LUpywwsg3
	ngwcIubgBq4UK1MR8YCGtwt2J9qFZz6oBXNO2dAp2hv7Q94DpnvzlTGRoYDTkA9qMDU=
X-Gm-Gg: AZuq6aL0L9GTUZrGphePoXGeGrJ1WsSwgB03KAJIFB5m1jDwedW21qITxWRYEFAzu9D
	jc+gnSGJQgrBasJsvDlFA8Zag8XGwDU4mpui1r5/Sb+2109R2fzHWOulRuq5VL7F7ItihE3KHcl
	hx/zv0J5Qcz9dNDSYI0MRDFG4JniCFjFXV/VPeGBhlcAVLLgQxC3MFjuhDYTqBoLMr7tAAKchTr
	9lRY+xu9/zcL0daax0TLkoZchlUULbRL3q83bCmf9cJcVUPpO926pHJ0n8txz5m6F5P9EnX9BQ8
	pmZxH9z0ASdECCz7MQeme76w5K/kg6emxLe2EhceZWPxq5pbb+r6JLNpUOeUR1hsfaqHF1LlswM
	ZDTGDlDUW4UXfrVTA7d6sMfQZyckEInHAApMR7vp6N3hc0CD3Wm16JZOM3EgpAqaaaQ6Fju04aj
	hMTWGMePaY+KuVvvcM+dkxsgRtqrokG4c=
X-Received: by 2002:a05:693c:6218:b0:2ae:5a2e:de70 with SMTP id 5a478bee46e88-2b7638d6573mr2604064eec.8.1769460031398;
        Mon, 26 Jan 2026 12:40:31 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b73aa03fd0sm15037214eec.23.2026.01.26.12.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 12:40:30 -0800 (PST)
Date: Mon, 26 Jan 2026 12:40:28 -0800
From: Deepak Gupta <debug@rivosinc.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
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
	Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Andreas Hindborg <a.hindborg@kernel.org>,
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
	Benno Lossin <lossin@kernel.org>, linux-kernel@vger.kernel.org,
	linux-fsdevel@vger.kernel.org, linux-mm@kvack.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kselftest@vger.kernel.org, alistair.francis@wdc.com,
	richard.henderson@linaro.org, jim.shu@sifive.com,
	andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com,
	atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com,
	alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org,
	rick.p.edgecombe@intel.com, rust-for-linux@vger.kernel.org,
	Zong Li <zong.li@sifive.com>,
	Andreas Korb <andreas.korb@aisec.fraunhofer.de>,
	Valentin Haudiquet <valentin.haudiquet@canonical.com>
Subject: Re: [PATCH v26 10/28] riscv/mm: Implement map_shadow_stack() syscall
Message-ID: <aXfRPJvoSsOW8AwM@debug.ba.rivosinc.com>
References: <20251211-v5_user_cfi_series-v26-0-f0f419e81ac0@rivosinc.com>
 <20251211-v5_user_cfi_series-v26-10-f0f419e81ac0@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20251211-v5_user_cfi_series-v26-10-f0f419e81ac0@rivosinc.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rivosinc.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[rivosinc.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[rivosinc.com:+];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linutronix.de,redhat.com,alien8.de,linux.intel.com,kernel.org,zytor.com,linux-foundation.org,oracle.com,suse.cz,sifive.com,dabbelt.com,eecs.berkeley.edu,arndb.de,infradead.org,xmission.com,lwn.net,google.com,gmail.com,garyguo.net,protonmail.com,umich.edu,vger.kernel.org,kvack.org,lists.infradead.org,wdc.com,linaro.org,rivosinc.com,intel.com,aisec.fraunhofer.de,canonical.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259644-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[debug@rivosinc.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_GT_50(0.00)[60];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,debug.ba.rivosinc.com:mid,fraunhofer.de:email,sifive.com:email,rivosinc.com:email,rivosinc.com:dkim]
X-Rspamd-Queue-Id: 522608D34F
X-Rspamd-Action: no action

Hi Paul/Zong,

Can you apply following diff on `allocate_shadow_stack` function in this patch.
This fixes the bug that I earlier mentioned. We shouldn't be returning location
to token and instead return base address of shadow stack. Userspace consumer
should be determining token location itself. This matches the ABI of other
arches. Sorry for being late on this.

diff --git a/arch/riscv/kernel/usercfi.c b/arch/riscv/kernel/usercfi.c
index 27b36034ea85..a8530e6afb1e 100644
--- a/arch/riscv/kernel/usercfi.c
+++ b/arch/riscv/kernel/usercfi.c
@@ -232,7 +232,7 @@ static unsigned long allocate_shadow_stack(unsigned long addr, unsigned long siz
  {
         int flags = MAP_ANONYMOUS | MAP_PRIVATE;
         struct mm_struct *mm = current->mm;
-       unsigned long populate, tok_loc = 0;
+       unsigned long populate;

         if (addr)
                 flags |= MAP_FIXED_NOREPLACE;
@@ -245,13 +245,11 @@ static unsigned long allocate_shadow_stack(unsigned long addr, unsigned long siz
         if (!set_tok || IS_ERR_VALUE(addr))
                 goto out;

-       if (create_rstor_token(addr + token_offset, &tok_loc)) {
+       if (create_rstor_token(addr + token_offset, NULL)) {
                 vm_munmap(addr, size);
                 return -EINVAL;
         }

-       addr = tok_loc;
-
  out:
         return addr;
  }

On Thu, Dec 11, 2025 at 09:20:43AM -0800, Deepak Gupta via B4 Relay wrote:
>From: Deepak Gupta <debug@rivosinc.com>
>
>As discussed extensively in the changelog for the addition of this
>syscall on x86 ("x86/shstk: Introduce map_shadow_stack syscall") the
>existing mmap() and madvise() syscalls do not map entirely well onto the
>security requirements for shadow stack memory since they lead to windows
>where memory is allocated but not yet protected or stacks which are not
>properly and safely initialised. Instead a new syscall map_shadow_stack()
>has been defined which allocates and initialises a shadow stack page.
>
>This patch implements this syscall for riscv. riscv doesn't require token
>to be setup by kernel because user mode can do that by itself. However to
>provide compatibility and portability with other architectues, user mode
>can specify token set flag.
>
>Reviewed-by: Zong Li <zong.li@sifive.com>
>Tested-by: Andreas Korb <andreas.korb@aisec.fraunhofer.de>
>Tested-by: Valentin Haudiquet <valentin.haudiquet@canonical.com>
>Signed-off-by: Deepak Gupta <debug@rivosinc.com>
>---
> arch/riscv/kernel/Makefile  |   1 +
> arch/riscv/kernel/usercfi.c | 142 ++++++++++++++++++++++++++++++++++++++++++++
> 2 files changed, 143 insertions(+)
>
>diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
>index f60fce69b725..2d0e0dcedbd3 100644
>--- a/arch/riscv/kernel/Makefile
>+++ b/arch/riscv/kernel/Makefile
>@@ -125,3 +125,4 @@ obj-$(CONFIG_ACPI)		+= acpi.o
> obj-$(CONFIG_ACPI_NUMA)	+= acpi_numa.o
>
> obj-$(CONFIG_GENERIC_CPU_VULNERABILITIES) += bugs.o
>+obj-$(CONFIG_RISCV_USER_CFI) += usercfi.o
>diff --git a/arch/riscv/kernel/usercfi.c b/arch/riscv/kernel/usercfi.c
>new file mode 100644
>index 000000000000..251c3faccbf8
>--- /dev/null
>+++ b/arch/riscv/kernel/usercfi.c
>@@ -0,0 +1,142 @@
>+// SPDX-License-Identifier: GPL-2.0
>+/*
>+ * Copyright (C) 2024 Rivos, Inc.
>+ * Deepak Gupta <debug@rivosinc.com>
>+ */
>+
>+#include <linux/sched.h>
>+#include <linux/bitops.h>
>+#include <linux/types.h>
>+#include <linux/mm.h>
>+#include <linux/mman.h>
>+#include <linux/uaccess.h>
>+#include <linux/sizes.h>
>+#include <linux/user.h>
>+#include <linux/syscalls.h>
>+#include <linux/prctl.h>
>+#include <asm/csr.h>
>+#include <asm/usercfi.h>
>+
>+#define SHSTK_ENTRY_SIZE sizeof(void *)
>+
>+/*
>+ * Writes on shadow stack can either be `sspush` or `ssamoswap`. `sspush` can happen
>+ * implicitly on current shadow stack pointed to by CSR_SSP. `ssamoswap` takes pointer to
>+ * shadow stack. To keep it simple, we plan to use `ssamoswap` to perform writes on shadow
>+ * stack.
>+ */
>+static noinline unsigned long amo_user_shstk(unsigned long *addr, unsigned long val)
>+{
>+	/*
>+	 * Never expect -1 on shadow stack. Expect return addresses and zero
>+	 */
>+	unsigned long swap = -1;
>+
>+	__enable_user_access();
>+	asm goto(".option push\n"
>+		".option arch, +zicfiss\n"
>+		"1: ssamoswap.d %[swap], %[val], %[addr]\n"
>+		_ASM_EXTABLE(1b, %l[fault])
>+		".option pop\n"
>+		: [swap] "=r" (swap), [addr] "+A" (*addr)
>+		: [val] "r" (val)
>+		: "memory"
>+		: fault
>+		);
>+	__disable_user_access();
>+	return swap;
>+fault:
>+	__disable_user_access();
>+	return -1;
>+}
>+
>+/*
>+ * Create a restore token on the shadow stack.  A token is always XLEN wide
>+ * and aligned to XLEN.
>+ */
>+static int create_rstor_token(unsigned long ssp, unsigned long *token_addr)
>+{
>+	unsigned long addr;
>+
>+	/* Token must be aligned */
>+	if (!IS_ALIGNED(ssp, SHSTK_ENTRY_SIZE))
>+		return -EINVAL;
>+
>+	/* On RISC-V we're constructing token to be function of address itself */
>+	addr = ssp - SHSTK_ENTRY_SIZE;
>+
>+	if (amo_user_shstk((unsigned long __user *)addr, (unsigned long)ssp) == -1)
>+		return -EFAULT;
>+
>+	if (token_addr)
>+		*token_addr = addr;
>+
>+	return 0;
>+}
>+
>+static unsigned long allocate_shadow_stack(unsigned long addr, unsigned long size,
>+					   unsigned long token_offset, bool set_tok)
>+{
>+	int flags = MAP_ANONYMOUS | MAP_PRIVATE;
>+	struct mm_struct *mm = current->mm;
>+	unsigned long populate, tok_loc = 0;
>+
>+	if (addr)
>+		flags |= MAP_FIXED_NOREPLACE;
>+
>+	mmap_write_lock(mm);
>+	addr = do_mmap(NULL, addr, size, PROT_READ, flags,
>+		       VM_SHADOW_STACK | VM_WRITE, 0, &populate, NULL);
>+	mmap_write_unlock(mm);
>+
>+	if (!set_tok || IS_ERR_VALUE(addr))
>+		goto out;
>+
>+	if (create_rstor_token(addr + token_offset, &tok_loc)) {
>+		vm_munmap(addr, size);
>+		return -EINVAL;
>+	}
>+
>+	addr = tok_loc;
>+
>+out:
>+	return addr;
>+}
>+
>+SYSCALL_DEFINE3(map_shadow_stack, unsigned long, addr, unsigned long, size, unsigned int, flags)
>+{
>+	bool set_tok = flags & SHADOW_STACK_SET_TOKEN;
>+	unsigned long aligned_size = 0;
>+
>+	if (!cpu_supports_shadow_stack())
>+		return -EOPNOTSUPP;
>+
>+	/* Anything other than set token should result in invalid param */
>+	if (flags & ~SHADOW_STACK_SET_TOKEN)
>+		return -EINVAL;
>+
>+	/*
>+	 * Unlike other architectures, on RISC-V, SSP pointer is held in CSR_SSP and is available
>+	 * CSR in all modes. CSR accesses are performed using 12bit index programmed in instruction
>+	 * itself. This provides static property on register programming and writes to CSR can't
>+	 * be unintentional from programmer's perspective. As long as programmer has guarded areas
>+	 * which perform writes to CSR_SSP properly, shadow stack pivoting is not possible. Since
>+	 * CSR_SSP is writeable by user mode, it itself can setup a shadow stack token subsequent
>+	 * to allocation. Although in order to provide portablity with other architecture (because
>+	 * `map_shadow_stack` is arch agnostic syscall), RISC-V will follow expectation of a token
>+	 * flag in flags and if provided in flags, setup a token at the base.
>+	 */
>+
>+	/* If there isn't space for a token */
>+	if (set_tok && size < SHSTK_ENTRY_SIZE)
>+		return -ENOSPC;
>+
>+	if (addr && (addr & (PAGE_SIZE - 1)))
>+		return -EINVAL;
>+
>+	aligned_size = PAGE_ALIGN(size);
>+	if (aligned_size < size)
>+		return -EOVERFLOW;
>+
>+	return allocate_shadow_stack(addr, aligned_size, size, set_tok);
>+}
>
>-- 
>2.43.0
>
>

