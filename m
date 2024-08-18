Return-Path: <devicetree+bounces-94502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8FC955B8D
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 08:46:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 294BEB20A4D
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 06:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76E1711CBD;
	Sun, 18 Aug 2024 06:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Sj4ywXs4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4730DDAB
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 06:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723963561; cv=none; b=LjUVI8lXgE1ykpnc25yTZr2AxG3EXi8oMRChRxWz/9sihtGmKoUGxyMFsW50bN+4SZPE1n/A5G6RGyirxnsdWHnkkb49ejrYj1ODHomUduu2803Zx/F35Lo6uBOAlt0YDGENEwKXSeXjtkl9eWRHp/2vIZ7YX6Hv4uqfTUFdwwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723963561; c=relaxed/simple;
	bh=qPpipNWa0bJ3ZFtgez7ow/f7HIXA18TVHj9XSMnwy/8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nX9t3vxYQRD38sQwFaWuK82tL1MS502t3/9qkelzNi5QQruWxY0oBhChPBLNtG1DU4TsQltwrj4nF8dbuz8ERzSrQjmzFPWavLfPdRi7mGmMEgU9B9PxYJGJk1NK0yn7sblJMEGn2NAP7s9yZfTRxAVDBAdnwpW7C7p09SOGDQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Sj4ywXs4; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-427fc97a88cso26572525e9.0
        for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 23:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1723963557; x=1724568357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J1DJp3g8ecAC/DPl4n2lm0ysWSqC430kG0AnG9TGYTU=;
        b=Sj4ywXs41OGQ5t/POV7UqzDOAwkk3D+KK037qQfnzZau1eTeUKp8Hlptp0PsunxrxX
         L22PfFU30vI365Dht9qtJuTkYiuhmvVL8bnFUtEkCilQjkyzNBoT4i83DnYlAPvhY0Vk
         OcjGY606ZCOHxOnzSMivgnGD+LGZTruh9SqIdwDPB0IDSKIv6vp7HGSbozlVYixWP4FO
         ygf8BeBXISmFs357kCgUL4IEz/GuerPUs0drKNqieJ1C1ZfrY/P7AjN0jZq4WwkGo+Cx
         GN741ZCyTjv1IxlRsCdh4P+17bycySfS9oYIyyOUAum0qw4vjW/+uLI/iLiTM5/djgvd
         iX5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723963557; x=1724568357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J1DJp3g8ecAC/DPl4n2lm0ysWSqC430kG0AnG9TGYTU=;
        b=ReL/OKHDGOaaIkJ6E+tzE+lKfbc/s9x0cPUPSraFWvIFJEMGVg8I3L74RWBIEIyi+h
         M/nzxgPpCcIX4hK2Tc9TiZ6p69M4Uvy/6ExWkbz9DSOKpNH6t3QYociNVqPEd0ORB4w5
         CZ2Wsv4s5CA3nxZvO3SUipTk5d+hVAKl3b5xKQ8UrwyS1LFLxCrgBps8iKfqi43LXK4u
         SaIPFfF8yiiI4N0d51xNhj0xiMhZ0OnpwU3rujNQZtApm7Da6yY+69fFui0VWdhPRov6
         UVf0DWB+DYbxbQJ54e9Xv6FNHGyr3KX10PJnTcr5OjfaezdcuFS9d5OAEigLuAjuviWX
         KdNg==
X-Forwarded-Encrypted: i=1; AJvYcCV9+K5tyHU4gx5u3WTxgrOsMGR4Eyi1chYtsduv+tHk/eiTJGt7NdHLi/K8cgMQ5gjmk3Q81+6XJyuKvwxWiQS/+4URY6IQoxmV6g==
X-Gm-Message-State: AOJu0YyrrbDe6D8au0C0p6Fh33lFETS9X0ueK7KlMXjwjgTmCkT/LtuT
	MTvuBoYSSa8Pdu5Uie3KMJCVXQCJLzFBWrJxe25XyqsUP9PLfOZsSV66CSeVrHrv4bPuEd1C2Xh
	Y
X-Google-Smtp-Source: AGHT+IHPeK5VmE03PU4h9/i27orpAxZrVCijc8uGk6SFEjR1/wG06pKyXQz/+RBNMzRG1dmIOL6ROQ==
X-Received: by 2002:a5d:6911:0:b0:368:3717:10aa with SMTP id ffacd0b85a97d-371a73dbb2fmr2311786f8f.11.1723963557033;
        Sat, 17 Aug 2024 23:45:57 -0700 (PDT)
Received: from alex-rivos.guest.squarehotel.net ([130.93.157.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37189849cdbsm7338955f8f.28.2024.08.17.23.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Aug 2024 23:45:56 -0700 (PDT)
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
Cc: Guo Ren <guoren@linux.alibaba.com>
Subject: [PATCH v5 10/13] asm-generic: ticket-lock: Add separate ticket-lock.h
Date: Sun, 18 Aug 2024 08:35:35 +0200
Message-Id: <20240818063538.6651-11-alexghiti@rivosinc.com>
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

From: Guo Ren <guoren@linux.alibaba.com>

Add a separate ticket-lock.h to include multiple spinlock versions and
select one at compile time or runtime.

Reviewed-by: Leonardo Bras <leobras@redhat.com>
Suggested-by: Arnd Bergmann <arnd@arndb.de>
Link: https://lore.kernel.org/linux-riscv/CAK8P3a2rnz9mQqhN6-e0CGUUv9rntRELFdxt_weiD7FxH7fkfQ@mail.gmail.com/
Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
Signed-off-by: Guo Ren <guoren@kernel.org>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 include/asm-generic/spinlock.h        |  87 +---------------------
 include/asm-generic/ticket_spinlock.h | 103 ++++++++++++++++++++++++++
 2 files changed, 104 insertions(+), 86 deletions(-)
 create mode 100644 include/asm-generic/ticket_spinlock.h

diff --git a/include/asm-generic/spinlock.h b/include/asm-generic/spinlock.h
index 4773334ee638..970590baf61b 100644
--- a/include/asm-generic/spinlock.h
+++ b/include/asm-generic/spinlock.h
@@ -1,94 +1,9 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 
-/*
- * 'Generic' ticket-lock implementation.
- *
- * It relies on atomic_fetch_add() having well defined forward progress
- * guarantees under contention. If your architecture cannot provide this, stick
- * to a test-and-set lock.
- *
- * It also relies on atomic_fetch_add() being safe vs smp_store_release() on a
- * sub-word of the value. This is generally true for anything LL/SC although
- * you'd be hard pressed to find anything useful in architecture specifications
- * about this. If your architecture cannot do this you might be better off with
- * a test-and-set.
- *
- * It further assumes atomic_*_release() + atomic_*_acquire() is RCpc and hence
- * uses atomic_fetch_add() which is RCsc to create an RCsc hot path, along with
- * a full fence after the spin to upgrade the otherwise-RCpc
- * atomic_cond_read_acquire().
- *
- * The implementation uses smp_cond_load_acquire() to spin, so if the
- * architecture has WFE like instructions to sleep instead of poll for word
- * modifications be sure to implement that (see ARM64 for example).
- *
- */
-
 #ifndef __ASM_GENERIC_SPINLOCK_H
 #define __ASM_GENERIC_SPINLOCK_H
 
-#include <linux/atomic.h>
-#include <asm-generic/spinlock_types.h>
-
-static __always_inline void arch_spin_lock(arch_spinlock_t *lock)
-{
-	u32 val = atomic_fetch_add(1<<16, &lock->val);
-	u16 ticket = val >> 16;
-
-	if (ticket == (u16)val)
-		return;
-
-	/*
-	 * atomic_cond_read_acquire() is RCpc, but rather than defining a
-	 * custom cond_read_rcsc() here we just emit a full fence.  We only
-	 * need the prior reads before subsequent writes ordering from
-	 * smb_mb(), but as atomic_cond_read_acquire() just emits reads and we
-	 * have no outstanding writes due to the atomic_fetch_add() the extra
-	 * orderings are free.
-	 */
-	atomic_cond_read_acquire(&lock->val, ticket == (u16)VAL);
-	smp_mb();
-}
-
-static __always_inline bool arch_spin_trylock(arch_spinlock_t *lock)
-{
-	u32 old = atomic_read(&lock->val);
-
-	if ((old >> 16) != (old & 0xffff))
-		return false;
-
-	return atomic_try_cmpxchg(&lock->val, &old, old + (1<<16)); /* SC, for RCsc */
-}
-
-static __always_inline void arch_spin_unlock(arch_spinlock_t *lock)
-{
-	u16 *ptr = (u16 *)lock + IS_ENABLED(CONFIG_CPU_BIG_ENDIAN);
-	u32 val = atomic_read(&lock->val);
-
-	smp_store_release(ptr, (u16)val + 1);
-}
-
-static __always_inline int arch_spin_value_unlocked(arch_spinlock_t lock)
-{
-	u32 val = lock.val.counter;
-
-	return ((val >> 16) == (val & 0xffff));
-}
-
-static __always_inline int arch_spin_is_locked(arch_spinlock_t *lock)
-{
-	arch_spinlock_t val = READ_ONCE(*lock);
-
-	return !arch_spin_value_unlocked(val);
-}
-
-static __always_inline int arch_spin_is_contended(arch_spinlock_t *lock)
-{
-	u32 val = atomic_read(&lock->val);
-
-	return (s16)((val >> 16) - (val & 0xffff)) > 1;
-}
-
+#include <asm-generic/ticket_spinlock.h>
 #include <asm/qrwlock.h>
 
 #endif /* __ASM_GENERIC_SPINLOCK_H */
diff --git a/include/asm-generic/ticket_spinlock.h b/include/asm-generic/ticket_spinlock.h
new file mode 100644
index 000000000000..cfcff22b37b3
--- /dev/null
+++ b/include/asm-generic/ticket_spinlock.h
@@ -0,0 +1,103 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/*
+ * 'Generic' ticket-lock implementation.
+ *
+ * It relies on atomic_fetch_add() having well defined forward progress
+ * guarantees under contention. If your architecture cannot provide this, stick
+ * to a test-and-set lock.
+ *
+ * It also relies on atomic_fetch_add() being safe vs smp_store_release() on a
+ * sub-word of the value. This is generally true for anything LL/SC although
+ * you'd be hard pressed to find anything useful in architecture specifications
+ * about this. If your architecture cannot do this you might be better off with
+ * a test-and-set.
+ *
+ * It further assumes atomic_*_release() + atomic_*_acquire() is RCpc and hence
+ * uses atomic_fetch_add() which is RCsc to create an RCsc hot path, along with
+ * a full fence after the spin to upgrade the otherwise-RCpc
+ * atomic_cond_read_acquire().
+ *
+ * The implementation uses smp_cond_load_acquire() to spin, so if the
+ * architecture has WFE like instructions to sleep instead of poll for word
+ * modifications be sure to implement that (see ARM64 for example).
+ *
+ */
+
+#ifndef __ASM_GENERIC_TICKET_SPINLOCK_H
+#define __ASM_GENERIC_TICKET_SPINLOCK_H
+
+#include <linux/atomic.h>
+#include <asm-generic/spinlock_types.h>
+
+static __always_inline void ticket_spin_lock(arch_spinlock_t *lock)
+{
+	u32 val = atomic_fetch_add(1<<16, &lock->val);
+	u16 ticket = val >> 16;
+
+	if (ticket == (u16)val)
+		return;
+
+	/*
+	 * atomic_cond_read_acquire() is RCpc, but rather than defining a
+	 * custom cond_read_rcsc() here we just emit a full fence.  We only
+	 * need the prior reads before subsequent writes ordering from
+	 * smb_mb(), but as atomic_cond_read_acquire() just emits reads and we
+	 * have no outstanding writes due to the atomic_fetch_add() the extra
+	 * orderings are free.
+	 */
+	atomic_cond_read_acquire(&lock->val, ticket == (u16)VAL);
+	smp_mb();
+}
+
+static __always_inline bool ticket_spin_trylock(arch_spinlock_t *lock)
+{
+	u32 old = atomic_read(&lock->val);
+
+	if ((old >> 16) != (old & 0xffff))
+		return false;
+
+	return atomic_try_cmpxchg(&lock->val, &old, old + (1<<16)); /* SC, for RCsc */
+}
+
+static __always_inline void ticket_spin_unlock(arch_spinlock_t *lock)
+{
+	u16 *ptr = (u16 *)lock + IS_ENABLED(CONFIG_CPU_BIG_ENDIAN);
+	u32 val = atomic_read(&lock->val);
+
+	smp_store_release(ptr, (u16)val + 1);
+}
+
+static __always_inline int ticket_spin_value_unlocked(arch_spinlock_t lock)
+{
+	u32 val = lock.val.counter;
+
+	return ((val >> 16) == (val & 0xffff));
+}
+
+static __always_inline int ticket_spin_is_locked(arch_spinlock_t *lock)
+{
+	arch_spinlock_t val = READ_ONCE(*lock);
+
+	return !ticket_spin_value_unlocked(val);
+}
+
+static __always_inline int ticket_spin_is_contended(arch_spinlock_t *lock)
+{
+	u32 val = atomic_read(&lock->val);
+
+	return (s16)((val >> 16) - (val & 0xffff)) > 1;
+}
+
+/*
+ * Remapping spinlock architecture specific functions to the corresponding
+ * ticket spinlock functions.
+ */
+#define arch_spin_is_locked(l)		ticket_spin_is_locked(l)
+#define arch_spin_is_contended(l)	ticket_spin_is_contended(l)
+#define arch_spin_value_unlocked(l)	ticket_spin_value_unlocked(l)
+#define arch_spin_lock(l)		ticket_spin_lock(l)
+#define arch_spin_trylock(l)		ticket_spin_trylock(l)
+#define arch_spin_unlock(l)		ticket_spin_unlock(l)
+
+#endif /* __ASM_GENERIC_TICKET_SPINLOCK_H */
-- 
2.39.2


