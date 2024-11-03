Return-Path: <devicetree+bounces-118491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F47C9BA61A
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 15:58:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4D7A1F217CD
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 14:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BE1117624D;
	Sun,  3 Nov 2024 14:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="SUV48zvU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88FEA156875
	for <devicetree@vger.kernel.org>; Sun,  3 Nov 2024 14:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730645888; cv=none; b=owsu7vWp/S/KNV1axZPPn0BMktHxjDv9HpoAZC96dwPoM4vMyiCzAJ5psW8S/LJdDRHnjnCTg6SItzCClHzb86dbiVFoG6YL6On5JPCgS1uVruc14J36NmACljLcK94/CIFFyl4Fbt/ujR+gl0h8sI3h6+bI1RImeHDVk6NbtIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730645888; c=relaxed/simple;
	bh=AA0WiotsCMovaMp28+X0tg8CsoVA5Lev8Q+VorcC64k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rnkuQzKdjqAtLCkl32EyvsgP9vGT7IklzNMnfLMYg1F4d375x1Fiw78syH1dZ1UkmCEtyTepHW9F77unSgbc9o2lqJZnR970pHnZWk6TlBuA1qjfr66swIfjpBwAztiiVMIMzSm0WRm02V9w82ZbjL/pmVHSBPxm7Q7AfVASDTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=SUV48zvU; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43158625112so29026735e9.3
        for <devicetree@vger.kernel.org>; Sun, 03 Nov 2024 06:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1730645884; x=1731250684; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N5AV+nOoC/tuklQRoqzKvrTd6uHJ4OaRW4xZaKd3wLE=;
        b=SUV48zvUYIzHcO2HQf0r+ojNeM5Vbt38AQAgwNt5+y3wrUVCYPiRGNk6RV3NxYc7gn
         XzILqq/JFUOyNt30Nm2ZLXCLLTrfE6Z665EN8ju9KWVnBGRDlmMbKv//knBCj53pWLx+
         lpNO8qXCeS2yKHxo9FGf45lI2wrxRwRoOTOhLnT+CQqV9F9lpQF2foNwXaPML8zn7+q8
         yfQLQYm4DPBKEckk7SAPaYlrZvltWcjjpDtApEsed1HZxcniheT1xBBH9eQQqG7E9NcG
         IN51SUm776Vuar/B1kJ7sz46vPKNQql5qWfLU5IiBjedKnLBMvwvg9IlhmscFAbhPh9F
         1rVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730645884; x=1731250684;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N5AV+nOoC/tuklQRoqzKvrTd6uHJ4OaRW4xZaKd3wLE=;
        b=rRhW0uaCLwdDxclNXuOWj05jPI7SctRu5xe4E3zjIljLztuI2L5+2/yPfDe1ysBBJ4
         aOLnX0MbIissWhvcaZhCsE7MWMMVAKiPfjG0UxmimwF1cHog5dGEPVicREEb+d9CpCTY
         MGAEaLtR2cRmibRD5YKhVV2FRVuLo0w8HrJ24FFa/i6DFulc6pYApWC0DnHlXRQRzmxK
         tKGhV4YOZLcKh2b8Xv1RwQqd2x8dIK4OTqW1PYea+J/BPw/oIFkdKhe/4VJ3Z6yZmk37
         GrS6Rm5ILaKxwd4SRWFizK7A5Hugnb3+HEEua921Z9H0YNDiZLDasVEjR/XzrGBaKOB2
         QMRA==
X-Forwarded-Encrypted: i=1; AJvYcCUEWmtSZcpZoxy/MotP81n1j3RF2tBlFp2Jrol1ixySSu16HCDlggBCmCFEg3zGENbAxdmUXcXJPjVL@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1YavoltoJOgFKXNO0c1oSXvBdGyFEM15qCPMpHB0kbu1q5Sv0
	YxalfF8eFc+C4FdoLSNZTKwgE1NjxCMB+JJ3O9/KS/obIet557BJUoqSC/7KX0E=
X-Google-Smtp-Source: AGHT+IE55nBQ7rbTlkCqdHR3oJ0XymsMVwn2Z7Lo05//Ad0W+sZxb56nu4edxwe80UlQVGkf+GZkPg==
X-Received: by 2002:a05:600c:22d3:b0:432:7c08:d121 with SMTP id 5b1f17b1804b1-432849fa03amr81532075e9.12.1730645883736;
        Sun, 03 Nov 2024 06:58:03 -0800 (PST)
Received: from alex-rivos.ba.rivosinc.com (lfbn-lyo-1-472-36.w2-7.abo.wanadoo.fr. [2.7.62.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d5c65b8sm124358355e9.18.2024.11.03.06.58.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2024 06:58:03 -0800 (PST)
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
	Andrea Parri <andrea@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>
Subject: [PATCH v6 06/13] riscv: Improve zacas fully-ordered cmpxchg()
Date: Sun,  3 Nov 2024 15:51:46 +0100
Message-Id: <20241103145153.105097-7-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241103145153.105097-1-alexghiti@rivosinc.com>
References: <20241103145153.105097-1-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The current fully-ordered cmpxchgXX() implementation results in:

  amocas.X.rl     a5,a4,(s1)
  fence           rw,rw

This provides enough sync but we can actually use the following better
mapping instead:

  amocas.X.aqrl   a5,a4,(s1)

Suggested-by: Andrea Parri <andrea@rivosinc.com>
Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/asm/cmpxchg.h | 92 ++++++++++++++++++++++----------
 1 file changed, 64 insertions(+), 28 deletions(-)

diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
index 1f4cd12e4664..052418aba11a 100644
--- a/arch/riscv/include/asm/cmpxchg.h
+++ b/arch/riscv/include/asm/cmpxchg.h
@@ -107,8 +107,10 @@
  * store NEW in MEM.  Return the initial value in MEM.  Success is
  * indicated by comparing RETURN with OLD.
  */
-
-#define __arch_cmpxchg_masked(sc_sfx, cas_sfx, prepend, append, r, p, o, n)	\
+#define __arch_cmpxchg_masked(sc_sfx, cas_sfx,					\
+			      sc_prepend, sc_append,				\
+			      cas_prepend, cas_append,				\
+			      r, p, o, n)					\
 ({										\
 	if (IS_ENABLED(CONFIG_RISCV_ISA_ZABHA) &&				\
 	    IS_ENABLED(CONFIG_RISCV_ISA_ZACAS) &&				\
@@ -117,9 +119,9 @@
 		r = o;								\
 										\
 		__asm__ __volatile__ (						\
-			prepend							\
+			cas_prepend							\
 			"	amocas" cas_sfx " %0, %z2, %1\n"		\
-			append							\
+			cas_append							\
 			: "+&r" (r), "+A" (*(p))				\
 			: "rJ" (n)						\
 			: "memory");						\
@@ -134,7 +136,7 @@
 		ulong __rc;							\
 										\
 		__asm__ __volatile__ (						\
-			prepend							\
+			sc_prepend							\
 			"0:	lr.w %0, %2\n"					\
 			"	and  %1, %0, %z5\n"				\
 			"	bne  %1, %z3, 1f\n"				\
@@ -142,7 +144,7 @@
 			"	or   %1, %1, %z4\n"				\
 			"	sc.w" sc_sfx " %1, %1, %2\n"			\
 			"	bnez %1, 0b\n"					\
-			append							\
+			sc_append							\
 			"1:\n"							\
 			: "=&r" (__retx), "=&r" (__rc), "+A" (*(__ptr32b))	\
 			: "rJ" ((long)__oldx), "rJ" (__newx),			\
@@ -153,16 +155,19 @@
 	}									\
 })
 
-#define __arch_cmpxchg(lr_sfx, sc_cas_sfx, prepend, append, r, p, co, o, n)	\
+#define __arch_cmpxchg(lr_sfx, sc_sfx, cas_sfx,				\
+		       sc_prepend, sc_append,				\
+		       cas_prepend, cas_append,				\
+		       r, p, co, o, n)					\
 ({									\
 	if (IS_ENABLED(CONFIG_RISCV_ISA_ZACAS) &&			\
 	    riscv_has_extension_unlikely(RISCV_ISA_EXT_ZACAS)) {	\
 		r = o;							\
 									\
 		__asm__ __volatile__ (					\
-			prepend						\
-			"	amocas" sc_cas_sfx " %0, %z2, %1\n"	\
-			append						\
+			cas_prepend					\
+			"	amocas" cas_sfx " %0, %z2, %1\n"	\
+			cas_append					\
 			: "+&r" (r), "+A" (*(p))			\
 			: "rJ" (n)					\
 			: "memory");					\
@@ -170,12 +175,12 @@
 		register unsigned int __rc;				\
 									\
 		__asm__ __volatile__ (					\
-			prepend						\
+			sc_prepend					\
 			"0:	lr" lr_sfx " %0, %2\n"			\
 			"	bne  %0, %z3, 1f\n"			\
-			"	sc" sc_cas_sfx " %1, %z4, %2\n"		\
+			"	sc" sc_sfx " %1, %z4, %2\n"		\
 			"	bnez %1, 0b\n"				\
-			append						\
+			sc_append					\
 			"1:\n"						\
 			: "=&r" (r), "=&r" (__rc), "+A" (*(p))		\
 			: "rJ" (co o), "rJ" (n)				\
@@ -183,7 +188,9 @@
 	}								\
 })
 
-#define _arch_cmpxchg(ptr, old, new, sc_cas_sfx, prepend, append)	\
+#define _arch_cmpxchg(ptr, old, new, sc_sfx, cas_sfx,			\
+		      sc_prepend, sc_append,				\
+		      cas_prepend, cas_append)				\
 ({									\
 	__typeof__(ptr) __ptr = (ptr);					\
 	__typeof__(*(__ptr)) __old = (old);				\
@@ -192,22 +199,28 @@
 									\
 	switch (sizeof(*__ptr)) {					\
 	case 1:								\
-		__arch_cmpxchg_masked(sc_cas_sfx, ".b" sc_cas_sfx,	\
-					prepend, append,		\
-					__ret, __ptr, __old, __new);    \
+		__arch_cmpxchg_masked(sc_sfx, ".b" cas_sfx,		\
+				      sc_prepend, sc_append,		\
+				      cas_prepend, cas_append,		\
+				      __ret, __ptr, __old, __new);	\
 		break;							\
 	case 2:								\
-		__arch_cmpxchg_masked(sc_cas_sfx, ".h" sc_cas_sfx,	\
-					prepend, append,		\
-					__ret, __ptr, __old, __new);	\
+		__arch_cmpxchg_masked(sc_sfx, ".h" cas_sfx,		\
+				      sc_prepend, sc_append,		\
+				      cas_prepend, cas_append,		\
+				      __ret, __ptr, __old, __new);	\
 		break;							\
 	case 4:								\
-		__arch_cmpxchg(".w", ".w" sc_cas_sfx, prepend, append,	\
-				__ret, __ptr, (long), __old, __new);	\
+		__arch_cmpxchg(".w", ".w" sc_sfx, ".w" cas_sfx,		\
+			       sc_prepend, sc_append,			\
+			       cas_prepend, cas_append,			\
+			       __ret, __ptr, (long), __old, __new);	\
 		break;							\
 	case 8:								\
-		__arch_cmpxchg(".d", ".d" sc_cas_sfx, prepend, append,	\
-				__ret, __ptr, /**/, __old, __new);	\
+		__arch_cmpxchg(".d", ".d" sc_sfx, ".d" cas_sfx,		\
+			       sc_prepend, sc_append,			\
+			       cas_prepend, cas_append,			\
+			       __ret, __ptr, /**/, __old, __new);	\
 		break;							\
 	default:							\
 		BUILD_BUG();						\
@@ -215,17 +228,40 @@
 	(__typeof__(*(__ptr)))__ret;					\
 })
 
+/*
+ * These macros are here to improve the readability of the arch_cmpxchg_XXX()
+ * macros.
+ */
+#define SC_SFX(x)	x
+#define CAS_SFX(x)	x
+#define SC_PREPEND(x)	x
+#define SC_APPEND(x)	x
+#define CAS_PREPEND(x)	x
+#define CAS_APPEND(x)	x
+
 #define arch_cmpxchg_relaxed(ptr, o, n)					\
-	_arch_cmpxchg((ptr), (o), (n), "", "", "")
+	_arch_cmpxchg((ptr), (o), (n),					\
+		      SC_SFX(""), CAS_SFX(""),				\
+		      SC_PREPEND(""), SC_APPEND(""),			\
+		      CAS_PREPEND(""), CAS_APPEND(""))
 
 #define arch_cmpxchg_acquire(ptr, o, n)					\
-	_arch_cmpxchg((ptr), (o), (n), "", "", RISCV_ACQUIRE_BARRIER)
+	_arch_cmpxchg((ptr), (o), (n),					\
+		      SC_SFX(""), CAS_SFX(""),				\
+		      SC_PREPEND(""), SC_APPEND(RISCV_ACQUIRE_BARRIER),	\
+		      CAS_PREPEND(""), CAS_APPEND(RISCV_ACQUIRE_BARRIER))
 
 #define arch_cmpxchg_release(ptr, o, n)					\
-	_arch_cmpxchg((ptr), (o), (n), "", RISCV_RELEASE_BARRIER, "")
+	_arch_cmpxchg((ptr), (o), (n),					\
+		      SC_SFX(""), CAS_SFX(""),				\
+		      SC_PREPEND(RISCV_RELEASE_BARRIER), SC_APPEND(""),	\
+		      CAS_PREPEND(RISCV_RELEASE_BARRIER), CAS_APPEND(""))
 
 #define arch_cmpxchg(ptr, o, n)						\
-	_arch_cmpxchg((ptr), (o), (n), ".rl", "", "	fence rw, rw\n")
+	_arch_cmpxchg((ptr), (o), (n),					\
+		      SC_SFX(".rl"), CAS_SFX(".aqrl"),			\
+		      SC_PREPEND(""), SC_APPEND(RISCV_FULL_BARRIER),	\
+		      CAS_PREPEND(""), CAS_APPEND(""))
 
 #define arch_cmpxchg_local(ptr, o, n)					\
 	arch_cmpxchg_relaxed((ptr), (o), (n))
-- 
2.39.2


