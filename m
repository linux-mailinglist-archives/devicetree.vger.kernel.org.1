Return-Path: <devicetree+bounces-228575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F26CBEF412
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 06:25:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF2423E16E4
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 04:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59C1F2BEC3D;
	Mon, 20 Oct 2025 04:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="TI7PAg8e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14192BE035
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760934314; cv=none; b=okzwmsbAFSkXOGmM5u0nHsvS2iXxHStnOpIyfJmIj3bJZCHtWrNXBTFWwPjYXT5xGEsB9XS9g0dU6Zijq3jp2ChuU5FEUorZgHKx7gnS3suK/47QXTih2M9GSqZlHwmoO/w6DSKm4R50GJy5vl3raspkVapEnaBvtY8O4KVuN9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760934314; c=relaxed/simple;
	bh=2UrLom+8S0YfMeVr+t5kLx1uY2+UanG/i4doYApCDfA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=a6zFGY5Kyyn25qsLLunh3Yelx8Ho9EDElF+DBK3Xi6nqNlKSvSiQShlbHXDhQnqe4UhSBpj1iL4EFjrtIYhE3uwM2Ot4l1LeMP8SclDJCBWs0pe/DQkGbS7//9fI4WSn9DbAYxN3dMwIgywt1CbX0FLYDtto94+ETqXlmNrdDl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=TI7PAg8e; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b679450ecb6so2881205a12.2
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 21:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1760934311; x=1761539111; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qPcskIG/1ay0sXA6LTmEjesE/nyn+okHLSoMKeTK/t4=;
        b=TI7PAg8etcfGL3hzAEpu7CylxGLeoIKdbrIdxkjRnZ25lrDKDceBjE+6QcDpnWxYKA
         UdsZJSYCghNutnaP1nfYyoQsdyMVyBYHImZmZ78/T0QJKMz3lKvfbi4URxsCtMHroFMF
         2BU9+0yRwNwOVEfxC+z6t+NDe6lM4u9uRmc35kVU01wIL2V3vFCcMwTuHd846XigF8nw
         nDhfatDjSv6aq76ZXOyJEOanV1Ofsr6siwXu6EfwDPRgSDXCOyAfRNujsGZtly4VqxKZ
         F9K/i3E8YXfhbsdbvxexNTTVnIbGqsrFexIvoIvvvI6Lq8qeDr0J6mF+stcpKsG/niKA
         yacg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760934311; x=1761539111;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qPcskIG/1ay0sXA6LTmEjesE/nyn+okHLSoMKeTK/t4=;
        b=KNoLXazOAX1OPHyDov4iQHS2E52IUAzQxEeQSX/hNuS6eD7D1eUp8ZqFvypsO4FjwU
         VItXtOfQ9+jaIfsqSdUeI487vZYdlP659oASQCeiPVc7h5DHCFGEgFZyIZdoi8yWe+dN
         aDmXQFRQc9WgNC3qyWNtghhYs2Iu7NgBwJVlf6Fa4C31IQ7pewl6HdG5pDnAdTyHzqmW
         VyvQSm9yZOiKcly2JUv79EhXz0mU1gAB6rPaXvz31RQe0XRbcJHrOT378r0m9Lf8EliI
         ndxco3OnY0zxiU+A23nOhfRYJHWj+Iop19FPqaDgWJSOYkdBCo7Ev+KRPrINPS1tt1wD
         IO9Q==
X-Forwarded-Encrypted: i=1; AJvYcCV36akVhDl4pUyKX9x5sG9gohV1FUaGELwGkbegqMfwdTLTnZknkackxBNCBcIULTHdkiTaSvAOnq6p@vger.kernel.org
X-Gm-Message-State: AOJu0YxHdLCcWvIaG6VZuHM0ECGU6vM7LIzcG6dTo9dHHnKC8scqtJ8a
	pErrz3cKqNUYuDXyUbyJUV8//mzJFwUl+lq16d8+vghTnjNW6nnyzrky2Kf/W5GLwiw=
X-Gm-Gg: ASbGnctEflwzNhd/+yWZLrhvz5YAC425SczQbo+imF1AMVFDaqruznjlzS3/b+e1pmT
	DUAH+/N8l33oLaxIKFQK7IbzC4vrm4PXM91R8AuP13x+usSSMXxnpkXbYnYvuKbSek/PGeeGjFG
	6+lcF29NTZgn1cABsOOZnVlrPgvZKyrxkKg7ANzmxBWA8Tg0ohclJsrOCNuzRwL1gFShuw+rl+c
	cIs7Zel7633Vmem/zrVK/kiZZBm3aKn/1+sQzLNCN7j9biQaXS3Q6SvYEAtqIoy6Tb+hXO/7n8Z
	d4lNm3KLMC6OXlRVoD3ZHOWqIxIZtUTcRx0YOJV9iyZmVBkfza3nU6wtqmkdGaqa5bxNq9D2MwZ
	EnIgpTn6qLhX2FpIPS5je85vwRHow/jq6cyHYXEAo4pR+XZYpVEt8DeJC74Q7sMccXEW+uSRYFu
	J6lGSR2W8VE1zPHEbLcYYmOgBiNl7Q5I+q+b19zQaFz+fdxrFnZWVdGT/96hx6bdbadB+Q6P6q0
	oZ5LF8D1rLi
X-Google-Smtp-Source: AGHT+IEujhnClojcicPbj3y6ytDrc6WWv+RwekLkEKlFozxNxVRIRtmsdedEqStzjhfQZMJDA0LXfw==
X-Received: by 2002:a17:902:f647:b0:24b:11c8:2d05 with SMTP id d9443c01a7336-290cb65c5b1mr125810595ad.45.1760934311032;
        Sun, 19 Oct 2025 21:25:11 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246ec20a4sm68319325ad.7.2025.10.19.21.25.02
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 19 Oct 2025 21:25:10 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: corbet@lwn.net,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	will@kernel.org,
	peterz@infradead.org,
	boqun.feng@gmail.com,
	mark.rutland@arm.com,
	anup@brainfault.org,
	atish.patra@linux.dev,
	pbonzini@redhat.com,
	shuah@kernel.org,
	parri.andrea@gmail.com,
	ajones@ventanamicro.com,
	brs@rivosinc.com,
	guoren@kernel.org
Cc: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org,
	apw@canonical.com,
	joe@perches.com,
	lukas.bulwahn@gmail.com,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [PATCH v4 05/10] riscv: Apply Zalasr to smp_load_acquire/smp_store_release
Date: Mon, 20 Oct 2025 12:24:52 +0800
Message-ID: <20251020042457.30915-1-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace fence instructions with Zalasr instructions during
smp_load_acquire() and smp_store_release() operations.

|----------------------------------|
|    |     __smp_store_release     |
|    |-----------------------------|
|    | zalasr        | !zalasr     |
| rl |-----------------------------|
|    | s{b|h|w|d}.rl | fence rw, w |
|    |               | s{b|h|w|d}  |
|----------------------------------|
|    |    __smp_load_acquire       |
|    |-----------------------------|
|    | zalasr        | !zalasr     |
| aq |-----------------------------|
|    | l{b|h|w|d}.aq | l{b|h|w|d}  |
|    |               | fence r, rw |
|----------------------------------|

Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>
---
 arch/riscv/include/asm/barrier.h | 91 ++++++++++++++++++++++++++++----
 1 file changed, 80 insertions(+), 11 deletions(-)

diff --git a/arch/riscv/include/asm/barrier.h b/arch/riscv/include/asm/barrier.h
index b8c5726d86acb..9eaf94a028096 100644
--- a/arch/riscv/include/asm/barrier.h
+++ b/arch/riscv/include/asm/barrier.h
@@ -51,19 +51,88 @@
  */
 #define smp_mb__after_spinlock()	RISCV_FENCE(iorw, iorw)
 
-#define __smp_store_release(p, v)					\
-do {									\
-	compiletime_assert_atomic_type(*p);				\
-	RISCV_FENCE(rw, w);						\
-	WRITE_ONCE(*p, v);						\
+extern void __bad_size_call_parameter(void);
+
+#define __smp_store_release(p, v)						\
+do {										\
+	typeof(p) __p = (p);							\
+	union { typeof(*p) __val; char __c[1]; } __u =				\
+		{ .__val = (__force typeof(*p)) (v) };				\
+	compiletime_assert_atomic_type(*p);					\
+	switch (sizeof(*p)) {							\
+	case 1:									\
+		asm volatile(ALTERNATIVE("fence rw, w;\t\nsb %0, 0(%1)\t\n",	\
+					 SB_RL(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : : "r" (*(__u8 *)__u.__c), "r" (__p)	\
+					 : "memory");				\
+		break;								\
+	case 2:									\
+		asm volatile(ALTERNATIVE("fence rw, w;\t\nsh %0, 0(%1)\t\n",	\
+					 SH_RL(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : : "r" (*(__u16 *)__u.__c), "r" (__p)	\
+					 : "memory");				\
+		break;								\
+	case 4:									\
+		asm volatile(ALTERNATIVE("fence rw, w;\t\nsw %0, 0(%1)\t\n",	\
+					 SW_RL(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : : "r" (*(__u32 *)__u.__c), "r" (__p)	\
+					 : "memory");				\
+		break;								\
+	case 8:									\
+		asm volatile(ALTERNATIVE("fence rw, w;\t\nsd %0, 0(%1)\t\n",	\
+					 SD_RL(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : : "r" (*(__u64 *)__u.__c), "r" (__p)	\
+					 : "memory");				\
+		break;								\
+	default:								\
+		__bad_size_call_parameter();					\
+		break;								\
+	}									\
 } while (0)
 
-#define __smp_load_acquire(p)						\
-({									\
-	typeof(*p) ___p1 = READ_ONCE(*p);				\
-	compiletime_assert_atomic_type(*p);				\
-	RISCV_FENCE(r, rw);						\
-	___p1;								\
+#define __smp_load_acquire(p)							\
+({										\
+	union { typeof(*p) __val; char __c[1]; } __u;				\
+	typeof(p) __p = (p);							\
+	compiletime_assert_atomic_type(*p);					\
+	switch (sizeof(*p)) {							\
+	case 1:									\
+		asm volatile(ALTERNATIVE("lb %0, 0(%1)\t\nfence r, rw\t\n",	\
+					 LB_AQ(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : "=r" (*(__u8 *)__u.__c) : "r" (__p)	\
+					 : "memory");				\
+		break;								\
+	case 2:									\
+		asm volatile(ALTERNATIVE("lh %0, 0(%1)\t\nfence r, rw\t\n",	\
+					 LH_AQ(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : "=r" (*(__u16 *)__u.__c) : "r" (__p)	\
+					 : "memory");				\
+		break;								\
+	case 4:									\
+		asm volatile(ALTERNATIVE("lw %0, 0(%1)\t\nfence r, rw\t\n",	\
+					 LW_AQ(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : "=r" (*(__u32 *)__u.__c) : "r" (__p)	\
+					 : "memory");				\
+		break;								\
+	case 8:									\
+		asm volatile(ALTERNATIVE("ld %0, 0(%1)\t\nfence r, rw\t\n",	\
+					 LD_AQ(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : "=r" (*(__u64 *)__u.__c) : "r" (__p)	\
+					 : "memory");				\
+		break;								\
+	default:								\
+		__bad_size_call_parameter();					\
+		break;								\
+	}									\
+	__u.__val;								\
 })
 
 #ifdef CONFIG_RISCV_ISA_ZAWRS
-- 
2.20.1


