Return-Path: <devicetree+bounces-228578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BE98ABEF43C
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 06:26:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7DE473E39A8
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 04:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A25812C0260;
	Mon, 20 Oct 2025 04:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="Stmy11bH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F402BFC70
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760934338; cv=none; b=sql0W+fHavXWceD4VtaW8bEu0AVs/9soJ3Uqu/ucePNLw/QnLckyuke9CnvlwzLeWAr4Vss6gs0ofWY3wAy+BfEPP53+jcoTisgduqkclXs6fld9tnrN3C/4Y6xOIuomNimQoLUPoBdrEsdyQKQ/12UZ/WCfUrzPsRLMsUjvhGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760934338; c=relaxed/simple;
	bh=8hNEznhKZts7nsJ+/Md1hqEm+KtJGCPHkBh501JLIEI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OGOYRFaKzBrIQI2YlDux8XTGpjNCTuitPW9tShhLrPJVG7AUl/41K9PfvgjAng0giyMxT/wY0RJbJtyukqEBEPIcaadv22z3PvO6kWOCwCXyLPV8Ta8uMtgwn116UCvcq5YSiIaJ2S5TANPP65Ox72r4pRzwYPqOQyaslQHtFqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=Stmy11bH; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b593def09e3so2615787a12.2
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 21:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1760934336; x=1761539136; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Dx3bjUZwp+FDi5HGHRvFmbVTrXXeKiS0FzRK/EiFHI=;
        b=Stmy11bHlbtB+FCDM3N72lvFypHEqmDaCdkIBk4dvYHEXWSYbZjkmUaCLg9ibvm+aV
         +tBJT7JrQ+OWBwWUW+V7RvOPp7+dBAKV9NtfQCMefduyrAondxZDckMqpCFrzKHIX6Fa
         uYy2RuZQUJsWzih7+a77KtJvu2TlZlWNKSXR8xpia4RXDKdAQc6Vuq4YCd9jrz/4qsg4
         /tQUIb+B/uSJuNcuwZTTmuYjteul+9jOPHrFQ47XSAviBXnD1RnSYeL7mcohffacyoeN
         Y6lEFIunSYFtAh3whVE20Pzbi31sbVNEbffHHXiEMGYPXfck/E81aYv+N7roEMHMPPo7
         oViA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760934336; x=1761539136;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Dx3bjUZwp+FDi5HGHRvFmbVTrXXeKiS0FzRK/EiFHI=;
        b=Tq0AyNT1m8wY2ZC2nYEIThOL/16ykeRSVbU9OO9BTtI125fphS+1WO0hkni8bwqJ4o
         mItrvL+Cb1C/2bnBL/MWqiEU+7qBqjYvngmHl72f/0GM/j+kTImY1D4kmUZ4gVPunw+4
         34VBktxQr5x52O+03KCvgq6WCIorNSdMxZQXq+2/1FpKIXDL0UPkZtZlgE+wKC/Xebel
         vGBJIOn2AAN/bsHwFFwcBbAfGzjxyg2RIEuZHYPD0dPH15mNNFqLHSwRIuYMQ14+GId1
         I+3fd5nhDiwhhRUAyPc69NJCnVI6S30zR8CYLVeB8HjEltD3h5wFqa6hSg7HeE/NrR8C
         VfTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaY0c8I7WYIBhMmkb3ERoEt8fbdl3QSvRE58oEUF3MKQY6CRPHla5mK2Co1KnbWXKZQ1Kw+EDZDq7L@vger.kernel.org
X-Gm-Message-State: AOJu0YxfYruTjZLg9hHPFV+LLOiagx++Gjj8RkB4eyIXlYAJ1ZfWZAX/
	BiMwTlHXd3/WqcGcbtOuW8w4CUDoFZbeD5evyGHbpsGNXItxHmNWHYm01ki3WH8cY9U=
X-Gm-Gg: ASbGnctumeINACiOaJR1gNQy2GwOqPXge61S8GVS4X3FagS2Po0L+TNTxxWtsXqlGAk
	dtiUNEbF7HNjlXApNPf+ardYOfNF9uc6vIkL/h7Fnq0y0C+asPVp7ik489VkIfcrXH8njR6tzhu
	1eWEOB46+EiXfdblT+IoYDySg8efzOWpze+dXty1GAZYngPl++5R7nktK//nXXXvb2ClyXBeYBw
	SdO+GYyXEJCdlKXeJ7r+gF0fJFH6yR5Oqh15iJgI0mOW6nfSFslvnx5Z2JvPIB2SQb53ezp+zA3
	RoKG7vchqsX7lRQnQ8xqvCKTFYWrXSnd9d5LvT1KqxhLS6wrssqJU9Nz7c6c9ApJeJJTuJ4LEHV
	s6AD8UIAMS2A4OCHwiSiGFctQFteKSpUrUQVFfj6yj6FNRkWei7E468Ft8utSQC2r2yFwsKojGM
	mjKyxT3QyXQvlS5dNtuVxkzphrs3lwGfLn/k4CRrY2/pQnIFdXkapJvC9pN4yzfT0=
X-Google-Smtp-Source: AGHT+IHd1kF3POpTVpfQwriGdz/AzJEchqY/kwdyjm7t3VNt+rro2wzxG/dmQOsLktQwlvjqL1Trmw==
X-Received: by 2002:a17:903:b48:b0:290:29ba:340f with SMTP id d9443c01a7336-290cb17c05fmr150708105ad.42.1760934336328;
        Sun, 19 Oct 2025 21:25:36 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246ec20a4sm68319325ad.7.2025.10.19.21.25.28
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 19 Oct 2025 21:25:36 -0700 (PDT)
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
Subject: [PATCH v4 08/10] riscv: Remove arch specific __atomic_acquire/release_fence
Date: Mon, 20 Oct 2025 12:24:55 +0800
Message-ID: <20251020042457.30915-4-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251020042457.30915-1-luxu.kernel@bytedance.com>
References: <20251020042457.30915-1-luxu.kernel@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove arch specific __atomic_acquire/release_fence() operations since
they use fence instruction to simulate acquire/release order and can not
work well with real acquire/release instructions.

The default generic __atomic_acuire/release_fence() now provide sequential
order via 'fennce rw, rw'. They are rarely called since we use real
acquire/release instructions in most of times.

Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>
---
 arch/riscv/include/asm/atomic.h | 6 ------
 arch/riscv/include/asm/fence.h  | 4 ----
 2 files changed, 10 deletions(-)

diff --git a/arch/riscv/include/asm/atomic.h b/arch/riscv/include/asm/atomic.h
index 86291de07de62..6ed50a283bf8b 100644
--- a/arch/riscv/include/asm/atomic.h
+++ b/arch/riscv/include/asm/atomic.h
@@ -18,12 +18,6 @@
 
 #include <asm/cmpxchg.h>
 
-#define __atomic_acquire_fence()					\
-	__asm__ __volatile__(RISCV_ACQUIRE_BARRIER "" ::: "memory")
-
-#define __atomic_release_fence()					\
-	__asm__ __volatile__(RISCV_RELEASE_BARRIER "" ::: "memory");
-
 static __always_inline int arch_atomic_read(const atomic_t *v)
 {
 	return READ_ONCE(v->counter);
diff --git a/arch/riscv/include/asm/fence.h b/arch/riscv/include/asm/fence.h
index 182db7930edc2..9ce83e4793948 100644
--- a/arch/riscv/include/asm/fence.h
+++ b/arch/riscv/include/asm/fence.h
@@ -7,12 +7,8 @@
 	({ __asm__ __volatile__ (RISCV_FENCE_ASM(p, s) : : : "memory"); })
 
 #ifdef CONFIG_SMP
-#define RISCV_ACQUIRE_BARRIER		RISCV_FENCE_ASM(r, rw)
-#define RISCV_RELEASE_BARRIER		RISCV_FENCE_ASM(rw, w)
 #define RISCV_FULL_BARRIER		RISCV_FENCE_ASM(rw, rw)
 #else
-#define RISCV_ACQUIRE_BARRIER
-#define RISCV_RELEASE_BARRIER
 #define RISCV_FULL_BARRIER
 #endif
 
-- 
2.20.1


