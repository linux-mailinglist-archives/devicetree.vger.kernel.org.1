Return-Path: <devicetree+bounces-211253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 96235B3E19C
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 13:31:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ACDA83AD5ED
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 11:31:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB3F631DD9A;
	Mon,  1 Sep 2025 11:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="ajnBDXJu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1CA31DD96
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 11:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756726260; cv=none; b=uRaOPOoqoQ1/84bl9OxxoClCRsaG6I/ooeQHKeuE7WK89fvuhxNupXPC+tgUCNpb1bcU/rQj89nJWucbn8PZKVE/3U53M1EsK2K49LpXuDbPXr6/++sjoti6z6Yxw/ihuY+JdVeXiTEoAHbVoX40yhyC2X6tcl4LCKuSrwfQG14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756726260; c=relaxed/simple;
	bh=d3KdXT/c2Yk9m0PpM0HCDs6YwY7JVVIjaErZMTVmByc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VytQMC1kilA1Tlmydx3Eldtw3WxecMorcV5sF5UG6MwnVZ32iEGYJPcz7mFBb+cXcZIxNDwSJx21UWglJBgrHuIkXYGPzSYGpZgqHcK/Vy3SCFAhkaLSFTfscwrHtyy6NoYM8HQ/5IIpYybAz0+YR1CbwqhDbuqDEEpOXt52syM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=ajnBDXJu; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-77256e75eacso933308b3a.0
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 04:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1756726257; x=1757331057; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KsWJ8LfQ5pRsnjiKNBF8VnH1ORJpnctEr1VaNmcMPZo=;
        b=ajnBDXJuePZBwgzuiui5MFzkNE6r0owZ2e41VZpsnizyaGYcRN+dt3P/BrCkljmuxl
         BhmQkWmM/EocmXU2+vOGXa9qQipA+KwsdeDmNc8XG1mv9dTel9Uzd+wAeWkr6gNQsqqH
         Fqhn+XBAgBYMX+PrhGjDnhZUJqwUlZuirNnxvDhcW8RDbiO+ftlrTrkmCdwTRBOLnNba
         IENUppRLzIf0AXeJWK8NrtpRoBzRpibpPeBpHD1JulCs1y4Pr/0Yxh4SGSSg/ORtZyb4
         /DNB12EjLjMpcHu5y0wvBnqPspRm3qTsBcZxofmFnYKYwEJO4LEvgP9a9Utza6gGu/sE
         tMQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756726257; x=1757331057;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KsWJ8LfQ5pRsnjiKNBF8VnH1ORJpnctEr1VaNmcMPZo=;
        b=fai4XXl4sXfLvfolSmPVTXM0NEj2Q4deZFIXk5wy/FKk9s18pbLqzMEruXsoNNDCo3
         aO3f4mzxfkykk3GM0OHBT5MQnWu5oRRmwyfwIduonhD62G+oUIy0BtqNPaCTU+OoqtGM
         hYLWrXlZQYKcbscSPK2M6bZTTyWa80H7U/cQO5di4BNEgdyyMicabKT9MWd9/s7WempQ
         dbm4c9wmZlP8EchhLPFz71G2HpDtL41OjPoy9ukUrWeyV4vVawqEnSL53OEIQ3FQ8wtn
         o/eD9OUbe8nsm1F1SYSR3pBzzYUfVcUweeHhX7g1UJ5iGK5eOeqNRmPV2Xmqq321JWjW
         jn+w==
X-Gm-Message-State: AOJu0YwRdoR2JxIz0+lSbkFYq9YsH+zmkhpBbMJFmmlaJoKuTvpTgptD
	nDME93D5oXjHw+DUDD6EDksWBtRBOH8NXoOz00yY4KZsgSXUE1KjbeD/+D3SG7d54Y8=
X-Gm-Gg: ASbGncu7F+/wqDX0PiUuDMgHyF21t2WX+dcCAbeo1jYAB7v46NRBy7xSadzrAIYOI8E
	8bk8kL/NpTSnZcceZxixFkgPuv+YrstKBqW0rePclaA9HaKm1x46VcbzEsMNkhnWtyXAIA0js3N
	Dr4zrWexjUCeXwl0Cr5VfJ2A8DQ0xtMu9eYFVvrJ5+UVt/WOrzzOa7X7ptM/w02IzCSf6kRh10o
	ZVrLSgW/DISN2co6J1Gx/VYdhAH6xP3neLhpwJ1pTRd3TCd5pe/T8V+yuyxsB8/2QKjJbYKLUes
	90iYNKOxhRKHmD2pHWV6CRqaaIitZrZsK7/GrGMrlUi1WaEnlBu9Y+eW3DCmgrbAXclJtTu5rmp
	bYw/fCJWBVxpWo16cUtztkrPFzB2075f7C8PyvdM0ZIBmqi9QE1XXDFb8fqb9jm2RNzlXQpS+qv
	URLiJh/HxfBFKL8PDZe7LM6HUESJeKXtjiBCH/rnU2IrE=
X-Google-Smtp-Source: AGHT+IHAP/HpWJz43wjzWV1AMfyaEGlxWi3s5h5cxx1rxnhDpNmQHxPjIrGV0BRKPAD8DAepB/KmuQ==
X-Received: by 2002:a05:6a20:394b:b0:243:a251:cf51 with SMTP id adf61e73a8af0-243d6f87714mr10685440637.54.1756726257360;
        Mon, 01 Sep 2025 04:30:57 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.55])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7725ad1e9afsm2911441b3a.11.2025.09.01.04.30.51
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 01 Sep 2025 04:30:57 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	ajones@ventanamicro.com,
	brs@rivosinc.com
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	apw@canonical.com,
	joe@perches.com,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [PATCH 4/4] riscv: Use Zalasr for smp_load_acquire/smp_store_release
Date: Mon,  1 Sep 2025 19:30:22 +0800
Message-Id: <20250901113022.3812-5-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250901113022.3812-1-luxu.kernel@bytedance.com>
References: <20250901113022.3812-1-luxu.kernel@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace fence instructions with Zalasr instructions during acquire or
release operations.

Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>
---
 arch/riscv/include/asm/barrier.h | 79 +++++++++++++++++++++++++++-----
 1 file changed, 68 insertions(+), 11 deletions(-)

diff --git a/arch/riscv/include/asm/barrier.h b/arch/riscv/include/asm/barrier.h
index b8c5726d86acb..b1d2a9a85256d 100644
--- a/arch/riscv/include/asm/barrier.h
+++ b/arch/riscv/include/asm/barrier.h
@@ -51,19 +51,76 @@
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
+	compiletime_assert_atomic_type(*p);					\
+	switch (sizeof(*p)) {							\
+	case 1:									\
+		asm volatile(ALTERNATIVE("fence rw, w;\t\nsb %0, 0(%1)\t\n",	\
+					 SB_RL(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : : "r" (v), "r" (p) : "memory");	\
+		break;								\
+	case 2:									\
+		asm volatile(ALTERNATIVE("fence rw, w;\t\nsh %0, 0(%1)\t\n",	\
+					 SH_RL(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : : "r" (v), "r" (p) : "memory");	\
+		break;								\
+	case 4:									\
+		asm volatile(ALTERNATIVE("fence rw, w;\t\nsw %0, 0(%1)\t\n",	\
+					 SW_RL(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : : "r" (v), "r" (p) : "memory");	\
+		break;								\
+	case 8:									\
+		asm volatile(ALTERNATIVE("fence rw, w;\t\nsd %0, 0(%1)\t\n",	\
+					 SD_RL(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : : "r" (v), "r" (p) : "memory");	\
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
+	TYPEOF_UNQUAL(*p) val;							\
+	compiletime_assert_atomic_type(*p);					\
+	switch (sizeof(*p)) {							\
+	case 1:									\
+		asm volatile(ALTERNATIVE("lb %0, 0(%1)\t\nfence r, rw\t\n",	\
+					 LB_AQ(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : "=r" (val) : "r" (p) : "memory");	\
+		break;								\
+	case 2:									\
+		asm volatile(ALTERNATIVE("lh %0, 0(%1)\t\nfence r, rw\t\n",	\
+					 LH_AQ(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : "=r" (val) : "r" (p) : "memory");	\
+		break;								\
+	case 4:									\
+		asm volatile(ALTERNATIVE("lw %0, 0(%1)\t\nfence r, rw\t\n",	\
+					 LW_AQ(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : "=r" (val) : "r" (p) : "memory");	\
+		break;								\
+	case 8:									\
+		asm volatile(ALTERNATIVE("ld %0, 0(%1)\t\nfence r, rw\t\n",	\
+					 LD_AQ(%0, %1) "\t\nnop\t\n",		\
+					 0, RISCV_ISA_EXT_ZALASR, 1)		\
+					 : "=r" (val) : "r" (p) : "memory");	\
+		break;								\
+	default:								\
+		__bad_size_call_parameter();					\
+		break;								\
+	}									\
+	val;									\
 })
 
 #ifdef CONFIG_RISCV_ISA_ZAWRS
-- 
2.20.1


