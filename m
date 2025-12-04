Return-Path: <devicetree+bounces-244481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBD1CA550B
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 21:30:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F3E531A26D8
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 20:27:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 045173563F4;
	Thu,  4 Dec 2025 20:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="bA1sYoAG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D153557E4
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 20:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764878693; cv=none; b=Rw33HHLBVONlIFGLtCTDAtmKUYJECwyw54z8qmXVg0d8lqd2TS6LFsOJCq8HRDcO6Cxa0jlmPKZGlCROQjve+k57uaRMcVOVC5J2boHyyALfQj2PFn2+h/kLg8Zny6s31tYhmw7JHe5Y4P8fdfi6Z0dc8j62HQM3y4vDgikn5es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764878693; c=relaxed/simple;
	bh=+ngELFAfNSDVPG1dfl4U/GNwgJgSLmHNPMTUuZ2hwrY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Pr8tnWMyvxS699Se0S6h3wLFz2q/GssDZ+3hqhqAEq/cNDceJipbq8DJh2k1hh78G48y94sE+xrEAdr4kEEQMLOgIYjYdUEDkUM2JWFSLlFMvrYFgjStQoOjRsgYAnmj++Wj9Th6kGqF8f2+3DGDpjdch7p9x/mH2/Eihk6BU/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=bA1sYoAG; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7aae5f2633dso1542831b3a.3
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 12:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1764878689; x=1765483489; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uR2ANK1p/GtJMLoYkqluiVL+IiMuKNKdjgHs5HSKwC4=;
        b=bA1sYoAGNYrhIUtW0/k2h9N41N8tw+2Q0fwZJq5QR+6/K0p8JocSR2Cffm5XIia8A8
         Ts4HSQ3pUG5YyoYo4lXzWeBPud44DtrYHHOAiO89AOZvxjAnyKbtBaFf+1SzrFbpxC4Y
         AZw+rtzQY6Ti33fx1xZo3MJ1Jj7yxE+qiIfNvOC+jkjF60myYMRjMAkUVp0kbjbwYYnO
         2cUUYZwjiOMTbRb8RK3u535/lbs59fMJ6cbzfBc78qwi3utIC4bBhnsFYZMt9r7/OrbU
         zgnk5QINjpVFA8zbybxjabLE1mR9QWMgUnAa0T6igOkmfynOtyKgNpP1WvNEHFSXt0aw
         2D6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764878689; x=1765483489;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uR2ANK1p/GtJMLoYkqluiVL+IiMuKNKdjgHs5HSKwC4=;
        b=MjvIhwmk0kRGbF99rwxnv3whiVhZjB6F9yVSTDNXThbz49tq88TmZ16wcqpdhQG7fr
         XC29QFCTauTGCN7iX1lo7uthdPHHlXLK/dA0nH/dX1Zcos47kC9eHLETBUqSGtzyUtJ2
         Noe/qD+MlbBlIizK6aAima2pVwpo6ltR8pXxepmcD447NJT+YWWqj1drismmNgbPsam9
         D3xS2Dj+swZvMRyytf74v8MNeKhNyew3SQ7uVUcC1sCpcoxqPLKg9ocmFJ1NNZMK1IMN
         GZo59uA8qZv+NngUE7t98x+hh2dsrKGQFCSvKDVhO1RNYwWfbn9qeS0W7H3KgcayscoC
         rpZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqfkTfFLETIzMBOi5Z8k2OXVGxxnlLlQpanAXO/ft3203tQjqryPLQmwqlF03NIuKQW2YFFZ8ecMbI@vger.kernel.org
X-Gm-Message-State: AOJu0YzGiz0t+9WW62uWhG0gAnvgvOVSGvzpimYGzg+vy1XroHvLb8cO
	ZgHUfGh8wyIg+2p9OJaG/+DDaPH2o9gw2a5BXLVI92HkAFZa3a5fFs60EZOdlT/Pbofcs3p4HSn
	uLDh9
X-Gm-Gg: ASbGncuFR+3wedit3fZfn9KdAB4HZZo8Wi70G/v8aVgTHzuokzTovtRtnEN59nn2u7D
	baGbw7+WNDzfxgfe/Vr5bhQ9cBS8jiMh+dFC/85TQh7IBXxYhKpnXTBt052S+rqzXum+6h5UdZv
	8ZbipgkyFSBruHgfgmSvYwEOj/r0xZodsEGPxqv7Xx62i1rwy58TjLo+29RmKKvt7EWJRIBSGms
	khypkDMIe7P1Ga/qsgXyYU9Wcm+8k/MGKD48wu3XstWCUvV2vi2/AUe/D4YJzUckblXwY053+PF
	J8ocNKdcN/KDJnOCd4xwwJ5QA59G77+/bH5HHmt+G7pfqfe1JylY2JESidvW8s/nZacxBHRBVQI
	w1fr6Qdktg0fayqRCc44E9BU2/R9jT4JUurQVcPsvP2nGgOQn96y7BLnFtT8sAyBqTGMZ87EFBB
	4ddFUtQjSIT0ZHoW5bo8zt
X-Google-Smtp-Source: AGHT+IHr9eCZ7OoyJRMHMKZM3eAa0ZLkjuqDEJhukBTDFAFWWCXqX+gcmL/RFs0P9XhWOx4pRyl01w==
X-Received: by 2002:a05:7022:fe09:b0:119:e569:fb9b with SMTP id a92af1059eb24-11df0bd1799mr5495837c88.10.1764878689024;
        Thu, 04 Dec 2025 12:04:49 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11df76e2eefsm10417454c88.6.2025.12.04.12.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 12:04:48 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Thu, 04 Dec 2025 12:04:14 -0800
Subject: [PATCH v24 25/28] riscv: create a config for shadow stack and
 landing pad instr support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251204-v5_user_cfi_series-v24-25-ada7a3ba14dc@rivosinc.com>
References: <20251204-v5_user_cfi_series-v24-0-ada7a3ba14dc@rivosinc.com>
In-Reply-To: <20251204-v5_user_cfi_series-v24-0-ada7a3ba14dc@rivosinc.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>, 
 x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
 Andrew Morton <akpm@linux-foundation.org>, 
 "Liam R. Howlett" <Liam.Howlett@oracle.com>, 
 Vlastimil Babka <vbabka@suse.cz>, 
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Christian Brauner <brauner@kernel.org>, 
 Peter Zijlstra <peterz@infradead.org>, Oleg Nesterov <oleg@redhat.com>, 
 Eric Biederman <ebiederm@xmission.com>, Kees Cook <kees@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Jann Horn <jannh@google.com>, Conor Dooley <conor+dt@kernel.org>, 
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>, Benno Lossin <lossin@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com, 
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com, 
 atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com, 
 alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org, 
 rick.p.edgecombe@intel.com, rust-for-linux@vger.kernel.org, 
 Zong Li <zong.li@sifive.com>, 
 Andreas Korb <andreas.korb@aisec.fraunhofer.de>, 
 Valentin Haudiquet <valentin.haudiquet@canonical.com>, 
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764878636; l=2507;
 i=debug@rivosinc.com; s=20251023; h=from:subject:message-id;
 bh=+ngELFAfNSDVPG1dfl4U/GNwgJgSLmHNPMTUuZ2hwrY=;
 b=iBrp1RtTRh5oJZVzaOaeFhva2V5Z1q1JFj7rzOxyzprKnymzoWjN45RvOVAV8T5/wMd+G1JGu
 G1MvETpgLboC+3bOxlsHE8Ns8RB1GZmzEixY2AHWIc1eUxbU9mIcSne
X-Developer-Key: i=debug@rivosinc.com; a=ed25519;
 pk=O37GQv1thBhZToXyQKdecPDhtWVbEDRQ0RIndijvpjk=

This patch creates a config for shadow stack support and landing pad instr
support. Shadow stack support and landing instr support can be enabled by
selecting `CONFIG_RISCV_USER_CFI`. Selecting `CONFIG_RISCV_USER_CFI` wires
up path to enumerate CPU support and if cpu support exists, kernel will
support cpu assisted user mode cfi.

If CONFIG_RISCV_USER_CFI is selected, select `ARCH_USES_HIGH_VMA_FLAGS`,
`ARCH_HAS_USER_SHADOW_STACK` and DYNAMIC_SIGFRAME for riscv.

Reviewed-by: Zong Li <zong.li@sifive.com>
Tested-by: Andreas Korb <andreas.korb@aisec.fraunhofer.de>
Tested-by: Valentin Haudiquet <valentin.haudiquet@canonical.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/Kconfig                  | 22 ++++++++++++++++++++++
 arch/riscv/configs/hardening.config |  4 ++++
 2 files changed, 26 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 0c6038dc5dfd..f5574c6f66d8 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -1146,6 +1146,28 @@ config RANDOMIZE_BASE
 
           If unsure, say N.
 
+config RISCV_USER_CFI
+	def_bool y
+	bool "riscv userspace control flow integrity"
+	depends on 64BIT && \
+		$(cc-option,-mabi=lp64 -march=rv64ima_zicfiss_zicfilp -fcf-protection=full)
+	depends on RISCV_ALTERNATIVE
+	select RISCV_SBI
+	select ARCH_HAS_USER_SHADOW_STACK
+	select ARCH_USES_HIGH_VMA_FLAGS
+	select DYNAMIC_SIGFRAME
+	help
+	  Provides CPU assisted control flow integrity to userspace tasks.
+	  Control flow integrity is provided by implementing shadow stack for
+	  backward edge and indirect branch tracking for forward edge in program.
+	  Shadow stack protection is a hardware feature that detects function
+	  return address corruption. This helps mitigate ROP attacks.
+	  Indirect branch tracking enforces that all indirect branches must land
+	  on a landing pad instruction else CPU will fault. This mitigates against
+	  JOP / COP attacks. Applications must be enabled to use it, and old user-
+	  space does not get protection "for free".
+	  default y.
+
 endmenu # "Kernel features"
 
 menu "Boot options"
diff --git a/arch/riscv/configs/hardening.config b/arch/riscv/configs/hardening.config
new file mode 100644
index 000000000000..089f4cee82f4
--- /dev/null
+++ b/arch/riscv/configs/hardening.config
@@ -0,0 +1,4 @@
+# RISCV specific kernel hardening options
+
+# Enable control flow integrity support for usermode.
+CONFIG_RISCV_USER_CFI=y

-- 
2.45.0


