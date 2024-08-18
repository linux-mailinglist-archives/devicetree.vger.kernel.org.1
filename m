Return-Path: <devicetree+bounces-94500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9F7955B83
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 08:44:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B62EB281BB0
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 06:44:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67909F9FE;
	Sun, 18 Aug 2024 06:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="UVwpk8KY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD33511CAF
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 06:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723963437; cv=none; b=Q++Go+So3fGNKPtxnxV7lRrHKtCy/k89hk4tRZuZSh1+lVB34pg5Rzh0/btpi9lt5KsM/wFj0osjoNjTIOtQWYSmgVSKgAqPS9rkm1rbChPnVhazcUcFqwl1mKzxmBnXQ5RmlTPQgrmF7nf+0Sk9pB3T83lwgL+JRkklDCPaxjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723963437; c=relaxed/simple;
	bh=/AAo3eBZLqu9YReB96/A0olqzAGnxvHLZxg6b3in/iI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=V+84Ro8QyK6p10XAUw0gtmgeJLe60n4Nf5cfClPZvxN/+4hWnEZfsjB9eVd4WAvjDm2UG+BdRoDmprz5kXC7uyP9wXS1RY6E6iFCbRMqm11lirpm+eaXDShLZvsoaXu2B3grnYai4dG38ttGyz+ILWIJIcyMALfhGlIrzq6UhcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=UVwpk8KY; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-429e29933aaso23656815e9.0
        for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 23:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1723963434; x=1724568234; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H3v3ACeRnW6fQEuje9seVAm+KH7JNORlBJR9qvXfha0=;
        b=UVwpk8KYPP8pWhcl7/wl4AsRmrVEfAGH0vL22K7AwbstGoKhRGYdTruK5ncwZmAHBv
         rNVQ8cHisauIwAec4eH2/a36K2f+aFkh898mLQc7TxgCE72N+th/zWAPlia5NgYnCMvY
         oeAmQsWkz7YxiU+UfFy1IU+bXC7EvkM0iu2bL86EUQ4UK6Am25g1Rb6EwT1fsdqAXlr3
         56ZEqU1nwgOSOvHzVljrAUzWF9yZQwAX/+2I6cSShPezEl8ZA0epO9G9onLq3KTzqIfx
         Vu1NpQ5JwXWIBZ9eACPcsnPNkgyimvS4mrW3zDxm2h6Y4OxCIY5hLMJDvSUZcr7E/mPH
         FFZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723963434; x=1724568234;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H3v3ACeRnW6fQEuje9seVAm+KH7JNORlBJR9qvXfha0=;
        b=vg1EsQIt0y4S9XDEj2hPsilFg7oU9MyJa1RqfQsWno+t38qyIINmE06Zm+wylSA+CI
         8lEt0RK/ONl2VqR8fJNDEB5Cc6lEX7QgJFXAJgpoYX7jeUTHm6GlGt+b2Qs/Oqm/TTSh
         TzE66l7rYcic6EIZgIJYJbQXlzHmJDX4fbAs1vdf87kRW7ltqk5uReaZv8MwaAzGXPQw
         jraRaxoHiLvyb33BxAmyQSoZevkb5bU21yWpa6QyOhOHH4deKK2ZmRbjy1FEl8yD63/x
         BUL5nYvgz2Z31RDHaMJo0XW7SjoiLkWzfwfOgixpX66JWkTG4yoBEAkA51fHXk4zn21Z
         TXGg==
X-Forwarded-Encrypted: i=1; AJvYcCXWzYC+3hg3PmF3ndVk/uuss7PSTfe09c9TTUqeBE4tBT5ncuBX0QGyjU9+hVl2lcUxMBtnntjn6c5wPpX8Lsx/7nUnDpY87hL0qg==
X-Gm-Message-State: AOJu0YzEFdM1PIZhY9Lc9QO0lLAbsC97f6s+hlg3pBfB0DCQdyVcKua5
	h0SvXBwAlzFVESFzURGfClBV3RkNd9+W5i+am0M4N0dB0t0WkKvU7R7K3kxV5AI=
X-Google-Smtp-Source: AGHT+IGdpiZerNesAs6xzBEap+g5NepzOjC8cdpysjNsTdJ9hLtJ74EBvU/xnjt3uajkBUnG6SvmcQ==
X-Received: by 2002:a05:600c:3509:b0:426:64a2:5362 with SMTP id 5b1f17b1804b1-429ed7a6100mr51627275e9.8.1723963433892;
        Sat, 17 Aug 2024 23:43:53 -0700 (PDT)
Received: from alex-rivos.guest.squarehotel.net ([130.93.157.50])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ed4a857bsm66904395e9.0.2024.08.17.23.43.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Aug 2024 23:43:53 -0700 (PDT)
From: Alexandre Ghiti <alexghiti@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Andrea Parri <parri.andrea@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Will Deacon <will@kernel.org>,
	Waiman Long <longman@redhat.com>,
	Boqun Feng <boqun.feng@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Leonardo Bras <leobras@redhat.com>,
	Guo Ren <guoren@kernel.org>,
	linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-arch@vger.kernel.org
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>
Subject: [PATCH v5 08/13] riscv: Implement xchg8/16() using Zabha
Date: Sun, 18 Aug 2024 08:35:33 +0200
Message-Id: <20240818063538.6651-9-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240818063538.6651-1-alexghiti@rivosinc.com>
References: <20240818063538.6651-1-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds runtime support for Zabha in xchg8/16() operations.

Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/asm/cmpxchg.h | 65 ++++++++++++++++++++------------
 1 file changed, 41 insertions(+), 24 deletions(-)

diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
index 05ba8a8e2ef5..19779d4d134a 100644
--- a/arch/riscv/include/asm/cmpxchg.h
+++ b/arch/riscv/include/asm/cmpxchg.h
@@ -14,29 +14,41 @@
 #include <asm/insn-def.h>
 #include <asm/cpufeature-macros.h>
 
-#define __arch_xchg_masked(sc_sfx, prepend, append, r, p, n)		\
-({									\
-	u32 *__ptr32b = (u32 *)((ulong)(p) & ~0x3);			\
-	ulong __s = ((ulong)(p) & (0x4 - sizeof(*p))) * BITS_PER_BYTE;	\
-	ulong __mask = GENMASK(((sizeof(*p)) * BITS_PER_BYTE) - 1, 0)	\
-			<< __s;						\
-	ulong __newx = (ulong)(n) << __s;				\
-	ulong __retx;							\
-	ulong __rc;							\
-									\
-	__asm__ __volatile__ (						\
-	       prepend							\
-	       "0:	lr.w %0, %2\n"					\
-	       "	and  %1, %0, %z4\n"				\
-	       "	or   %1, %1, %z3\n"				\
-	       "	sc.w" sc_sfx " %1, %1, %2\n"			\
-	       "	bnez %1, 0b\n"					\
-	       append							\
-	       : "=&r" (__retx), "=&r" (__rc), "+A" (*(__ptr32b))	\
-	       : "rJ" (__newx), "rJ" (~__mask)				\
-	       : "memory");						\
-									\
-	r = (__typeof__(*(p)))((__retx & __mask) >> __s);		\
+#define __arch_xchg_masked(sc_sfx, swap_sfx, prepend, sc_append,		\
+			   swap_append, r, p, n)				\
+({										\
+	if (IS_ENABLED(CONFIG_RISCV_ISA_ZABHA) &&				\
+	    riscv_has_extension_unlikely(RISCV_ISA_EXT_ZABHA)) {		\
+		__asm__ __volatile__ (						\
+			prepend							\
+			"	amoswap" swap_sfx " %0, %z2, %1\n"		\
+			swap_append						\
+			: "=&r" (r), "+A" (*(p))				\
+			: "rJ" (n)						\
+			: "memory");						\
+	} else {								\
+		u32 *__ptr32b = (u32 *)((ulong)(p) & ~0x3);			\
+		ulong __s = ((ulong)(p) & (0x4 - sizeof(*p))) * BITS_PER_BYTE;	\
+		ulong __mask = GENMASK(((sizeof(*p)) * BITS_PER_BYTE) - 1, 0)	\
+				<< __s;						\
+		ulong __newx = (ulong)(n) << __s;				\
+		ulong __retx;							\
+		ulong __rc;							\
+										\
+		__asm__ __volatile__ (						\
+		       prepend							\
+		       "0:	lr.w %0, %2\n"					\
+		       "	and  %1, %0, %z4\n"				\
+		       "	or   %1, %1, %z3\n"				\
+		       "	sc.w" sc_sfx " %1, %1, %2\n"			\
+		       "	bnez %1, 0b\n"					\
+		       sc_append						\
+		       : "=&r" (__retx), "=&r" (__rc), "+A" (*(__ptr32b))	\
+		       : "rJ" (__newx), "rJ" (~__mask)				\
+		       : "memory");						\
+										\
+		r = (__typeof__(*(p)))((__retx & __mask) >> __s);		\
+	}									\
 })
 
 #define __arch_xchg(sfx, prepend, append, r, p, n)			\
@@ -59,8 +71,13 @@
 									\
 	switch (sizeof(*__ptr)) {					\
 	case 1:								\
+		__arch_xchg_masked(sc_sfx, ".b" swap_sfx,		\
+				   prepend, sc_append, swap_append,	\
+				   __ret, __ptr, __new);		\
+		break;							\
 	case 2:								\
-		__arch_xchg_masked(sc_sfx, prepend, sc_append,		\
+		__arch_xchg_masked(sc_sfx, ".h" swap_sfx,		\
+				   prepend, sc_append, swap_append,	\
 				   __ret, __ptr, __new);		\
 		break;							\
 	case 4:								\
-- 
2.39.2


