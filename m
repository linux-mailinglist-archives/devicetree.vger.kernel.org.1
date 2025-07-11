Return-Path: <devicetree+bounces-195631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A17B02535
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 21:53:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 20F7B1CC25E2
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 19:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D33862FCE04;
	Fri, 11 Jul 2025 19:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="HpLm/KVW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADE22F3C16
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 19:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752263237; cv=none; b=mXS4j5UJCn4lIS4f2y6t+EJJb4LQoBkP+/xLKa0UIkU80PsKMOed5ChJyrdgS1zl3bMRKnW/2Eb+b7R2tzf8HWFyQMaoV7x225QtrJefd3mw3IGNuuhTxdiTbK3RhuitdoEUjalA7NKcwut4O1mOtSTihHHAz5vn7ACThzwCrAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752263237; c=relaxed/simple;
	bh=sFaiwL1IAfb6PyE/FjSk9WIwHTzXUZv50mJ+nuqII80=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LwTlqHUdM2fdyxX2M4jue6t9DSMEHRNjVZ0IwxNCXX+mLWjEGlKy/N9pOh5Zsziz1gsjytcyZ0VxVyTUxLvcF+4ESflkwTn6YFU9x8ASdpr2RvJr5cyIIDio5ITe0SNqhIcJP7iCwYgB8URqBr9BcLD6UbE8AhCOpBbMmd/Gys0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=HpLm/KVW; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-748d982e92cso1691039b3a.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1752263235; x=1752868035; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=97idN3yevHtenW1UOqMmzI1HJzUNQ+IzroMxOnaMZVo=;
        b=HpLm/KVWRihW4QczSnrIJOdLgHZbkafOBIjxX1WioMpo4HeCptlwJye7aHn3ZnLzxK
         hDXNU2sRJ9txaqcwAChUQ2Kttt8OZz8Gk+eVUfZYgQ4F2bFmEf/XlJ3kieFwHbO7gEuX
         bVLJOJFH3yT274TDpUCKlPvsZUXFDOR7i9sgcxoMPs9+MjLWzvBplyJZuj+w4o8qecTC
         3dSt/91jWP+GwIqSZqsj0hQnz5sFUaQhSCG7IHvdMYX2gJpmknW//ZrIw1XOFV0gY9C/
         lINW1UOYrv9rJHlxXszX2I57acbqvH2JsMtWxaOuhzWKPx0M7GnKtDHMybZXvPm8VowC
         qO9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752263235; x=1752868035;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=97idN3yevHtenW1UOqMmzI1HJzUNQ+IzroMxOnaMZVo=;
        b=LfSz9hGOilApZgqNktEiSrDRZyl2RHiSxYLOH01NYrC+WHMOg2sqk6azFbN96DXqKc
         VVMYgm76KBAfHJNaxqv/1wM9Epe5rtrW9z7jjy9HAfoY5xMqSnz21Mzy8PNTiQL8+mMD
         UmbD6+9I4QC6E9NMJ94W3A8oftlD6lFjfR0Uk35osC0YHkikVHYmZw0Y9+7z9C+I9wyi
         9mMPlwOAxF53wPvyauwNgnBLHCse8+bW9zubUd3Sl0H2wte2zjNjrlGXOj1+jDjxWZqq
         oR0Ig9k16lwgF/Y6BegLuh/L7tKe2E1A59lO9A/kVpoGdmoAlOAmFCqyNTiWbQYRl1RF
         lvcA==
X-Forwarded-Encrypted: i=1; AJvYcCXp6wIN0dhG7Sin1SMF1bhXYFQi4KJH4cn5Lnj9Fi1o/V1Xumsy8eI1muB7+mAjr2IsN34NPg0OzKQN@vger.kernel.org
X-Gm-Message-State: AOJu0YyWlpgyhfEFk/Agl/iL89Zn3TcZ1NOnL3y/3qWHtHs667gtyo1y
	6Mg7g/ZA7c+SsmzRH+RwIUkkFIdukahWQbDaESALw5JbteRwvOecLOmPjEKZC1KXve4=
X-Gm-Gg: ASbGncuXNQiJ0GuZzwUA736lidNYKtlcMxbAvW/isfPgfnbyBJF88gZ2kc8VUW/eTTm
	Ls+3ZJnlBpzBGbcao3ut7Ao7XMXfjSLiWe0LsRcwh0qwWYb/4y9wp0b6TjOfU92+8uslVx2Bgu7
	O2u2pfKEsy+lkz8FvvDA2T8DW0j4wQBgIxmHXSwEQiKQFVftWXIUP2BPxKSqL7H/NezSfQK0Zq2
	6NkS8e2+3ukKG+sVRrwldD9X1iZhgxfA2t3OizUUJlcd6F3H9Z8zVyxZFxqZ0t6EEESVmMB54dV
	gKIjVITX9xrEsMove/F9J6qC46Oy3/r2kAHCIYbtsz90hTdC06JiAAQ9vnPBXlVYUEQhsJqbBDo
	alSbYlGYjP1ttU0Bb+EIMfwP30eF4uGIWabXFfQZCHL4=
X-Google-Smtp-Source: AGHT+IHwJTDGg9rq2j66Wqz5or/ZUFf1xTDlZS7Yi3n13nxS/K1PihYkRUSmg1+BL+hU8IT5qsS4UQ==
X-Received: by 2002:a05:6a20:c906:b0:218:5954:1293 with SMTP id adf61e73a8af0-23120901f07mr9038519637.34.1752263235265;
        Fri, 11 Jul 2025 12:47:15 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9e06995sm5840977b3a.38.2025.07.11.12.47.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 12:47:14 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Fri, 11 Jul 2025 12:46:25 -0700
Subject: [PATCH v18 20/27] riscv/hwprobe: zicfilp / zicfiss enumeration in
 hwprobe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250711-v5_user_cfi_series-v18-20-a8ee62f9f38e@rivosinc.com>
References: <20250711-v5_user_cfi_series-v18-0-a8ee62f9f38e@rivosinc.com>
In-Reply-To: <20250711-v5_user_cfi_series-v18-0-a8ee62f9f38e@rivosinc.com>
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
 Zong Li <zong.li@sifive.com>, Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.13.0

Adding enumeration of zicfilp and zicfiss extensions in hwprobe syscall.

Reviewed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/uapi/asm/hwprobe.h | 2 ++
 arch/riscv/kernel/sys_hwprobe.c       | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index aaf6ad970499..45ac92452e13 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -82,6 +82,8 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZAAMO		(1ULL << 56)
 #define		RISCV_HWPROBE_EXT_ZALRSC	(1ULL << 57)
 #define		RISCV_HWPROBE_EXT_ZABHA		(1ULL << 58)
+#define		RISCV_HWPROBE_EXT_ZICFILP	(1ULL << 59)
+#define		RISCV_HWPROBE_EXT_ZICFISS	(1ULL << 60)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
index 0b170e18a2be..59fbc9c2d126 100644
--- a/arch/riscv/kernel/sys_hwprobe.c
+++ b/arch/riscv/kernel/sys_hwprobe.c
@@ -113,6 +113,8 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZCMOP);
 		EXT_KEY(ZICBOM);
 		EXT_KEY(ZICBOZ);
+		EXT_KEY(ZICFILP);
+		EXT_KEY(ZICFISS);
 		EXT_KEY(ZICNTR);
 		EXT_KEY(ZICOND);
 		EXT_KEY(ZIHINTNTL);

-- 
2.43.0


