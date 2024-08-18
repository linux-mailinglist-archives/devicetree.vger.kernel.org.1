Return-Path: <devicetree+bounces-94499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D911F955B81
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 08:43:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5911F1F2167A
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 06:43:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C0F214012;
	Sun, 18 Aug 2024 06:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="tz5D02/u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC6514A8B
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723963377; cv=none; b=OqlhoJeePiigqLloTwirE4ctRHAx03unVnaqJzz9OiUz0uI1M1i5DLRa7cA/dK1r6ayZeIiE6urlk7SwpbzxZ+loI1Jnmrb2RcZs/HQVM8PliVy2XF1V+MIYsx0AatCe2vNxHv/mOZ74Ov7kK3O7lql4xvG+W1fPjn/71DzoAMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723963377; c=relaxed/simple;
	bh=sRPSYdpr70kDnUmWl16TfbREyKeQnnlWJPh7z2q//BU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SMM+vAOT1LlWsXCiUuy39q6djvbau8syt8zw9BQRNoJ0K7sgIZQlZUA+00P47JlsrV0sraGCALYb0bNGx0vfIDJAwC8WDRhSA5x4jMxyPXD5Rup0FsCLFzv/GSm3X+Sw6AJBp51n9hxxw+D0/aId5hboEL7P7Rw4oXH4IzgxOns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=tz5D02/u; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-428163f7635so27880295e9.2
        for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 23:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1723963372; x=1724568172; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=quUzKJl3l9W/iH7huB/Ox/rGh7MBHVzUurNoeTrSXJY=;
        b=tz5D02/uCgrRxmvxomjzVDYx5pZEu+KZK8Q3PJq87Jd+kTRif9MReBc5/meIvYDoCb
         WtOjFxY2EJe7lNubPfyqINmGbIu/ZEpeKF6i9T1YOv+AjBBpkqxbUJLL9E6Y3nbuMLtZ
         GPZl+pL8dezAeSSnsRURZf6BqXuplzsHTenx/PJlqAnWm4+FKggrhE4CZxAU3pW7kE8y
         Kb/8EOcCqa4o59DDuXFQM/vARh94eM/OXo69Pe37+hP88jKIxfz2tLk/gWuqsGvDy8VK
         4PC4FyLrvpfBaXsL//WY3nDXS/k6cpBO/bRne6UL5vTN1AgHXLZzRf6TSSA+J7GJ9cN0
         6TxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723963372; x=1724568172;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=quUzKJl3l9W/iH7huB/Ox/rGh7MBHVzUurNoeTrSXJY=;
        b=qsg3pVfrE+wRZXXl3kss0ZBM4mR9e6NXS3wsU1ayj3qcjTzhPNgrF4tU/zZXmEQwxS
         +BEc2Je2oO1G3yeXcGXJgQ6rzVIkXG1/Dt5oJ250UEf5GeLaL9HOjreKB5FEWd+bNlaV
         SClJDBNVpbjgmFShRv22+H99rLaEU8BdkwpxZjUHP5HvquGnduVz37m58B/htLv52ZYS
         P2STXCkDT2cDDx4Tf1u5JPKBJI9MRwTA5M2yWRgpAEPy6qekdnmpBbaCzXwWFXx3Qaaj
         NGerVz/0+XbXeMBe5Dp0O0vrs9SXa88Ibk7PAvTZgR6au3F2MRvjeF4GPlJh06DYM6gp
         snbg==
X-Forwarded-Encrypted: i=1; AJvYcCWju/o/6172BulB7a04d5pUGLGeOxwVB2KFEDE8+kryWCG/9gOw7RGhyNcS21gqMpRtgkEec6yiHw5PZY4oCCumr5Ox+MITDyNzNA==
X-Gm-Message-State: AOJu0YxsoWoxjla9XsfoBkX26Csj60PObmQ6AYBNCTMCskDJUjS60ugu
	+hOHp3Aa/V/xHsTNJXPNBNXMrTq3fm+d1hYv7Y1Yk2JM6LcILlvOLcqgly84nfc=
X-Google-Smtp-Source: AGHT+IEe0ieY97eTK1clBc3HGi9QZxo6cf+OA5t5L0JQLmZOTEmF4/dAe6bc3mWD2TnCj1Dfw0jsiA==
X-Received: by 2002:a05:600c:3509:b0:426:6b92:387d with SMTP id 5b1f17b1804b1-429ed7b8860mr53677765e9.21.1723963372179;
        Sat, 17 Aug 2024 23:42:52 -0700 (PDT)
Received: from alex-rivos.guest.squarehotel.net ([130.93.157.50])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ed7945b8sm66605265e9.44.2024.08.17.23.42.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Aug 2024 23:42:51 -0700 (PDT)
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
Subject: [PATCH v5 07/13] riscv: Implement arch_cmpxchg128() using Zacas
Date: Sun, 18 Aug 2024 08:35:32 +0200
Message-Id: <20240818063538.6651-8-alexghiti@rivosinc.com>
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

Now that Zacas is supported in the kernel, let's use the double word
atomic version of amocas to improve the SLUB allocator.

Note that we have to select fixed registers, otherwise gcc fails to pick
even registers and then produces a reserved encoding which fails to
assemble.

Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/Kconfig               |  1 +
 arch/riscv/include/asm/cmpxchg.h | 38 ++++++++++++++++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 212ec2aab389..ef55ab94027e 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -111,6 +111,7 @@ config RISCV
 	select GENERIC_VDSO_TIME_NS if HAVE_GENERIC_VDSO
 	select HARDIRQS_SW_RESEND
 	select HAS_IOPORT if MMU
+	select HAVE_ALIGNED_STRUCT_PAGE
 	select HAVE_ARCH_AUDITSYSCALL
 	select HAVE_ARCH_HUGE_VMALLOC if HAVE_ARCH_HUGE_VMAP
 	select HAVE_ARCH_HUGE_VMAP if MMU && 64BIT
diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
index 5b2f95f7f310..05ba8a8e2ef5 100644
--- a/arch/riscv/include/asm/cmpxchg.h
+++ b/arch/riscv/include/asm/cmpxchg.h
@@ -296,6 +296,44 @@
 	arch_cmpxchg_release((ptr), (o), (n));				\
 })
 
+#if defined(CONFIG_64BIT) && defined(CONFIG_RISCV_ISA_ZACAS)
+
+#define system_has_cmpxchg128()        riscv_has_extension_unlikely(RISCV_ISA_EXT_ZACAS)
+
+union __u128_halves {
+	u128 full;
+	struct {
+		u64 low, high;
+	};
+};
+
+#define __arch_cmpxchg128(p, o, n, cas_sfx)					\
+({										\
+	__typeof__(*(p)) __o = (o);                                             \
+	union __u128_halves __hn = { .full = (n) };				\
+	union __u128_halves __ho = { .full = (__o) };				\
+	register unsigned long t1 asm ("t1") = __hn.low;			\
+	register unsigned long t2 asm ("t2") = __hn.high;			\
+	register unsigned long t3 asm ("t3") = __ho.low;			\
+	register unsigned long t4 asm ("t4") = __ho.high;			\
+										\
+	__asm__ __volatile__ (							\
+		 "       amocas.q" cas_sfx " %0, %z3, %2"			\
+		 : "+&r" (t3), "+&r" (t4), "+A" (*(p))				\
+		 : "rJ" (t1), "rJ" (t2)						\
+		 : "memory");							\
+										\
+		 ((u128)t4 << 64) | t3;						\
+})
+
+#define arch_cmpxchg128(ptr, o, n)						\
+	__arch_cmpxchg128((ptr), (o), (n), ".aqrl")
+
+#define arch_cmpxchg128_local(ptr, o, n)					\
+	__arch_cmpxchg128((ptr), (o), (n), "")
+
+#endif /* CONFIG_64BIT && CONFIG_RISCV_ISA_ZACAS */
+
 #ifdef CONFIG_RISCV_ISA_ZAWRS
 /*
  * Despite wrs.nto being "WRS-with-no-timeout", in the absence of changes to
-- 
2.39.2


