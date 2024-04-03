Return-Path: <devicetree+bounces-56083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CF5897C3E
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 01:44:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 721961F28861
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 23:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C1AA1586C4;
	Wed,  3 Apr 2024 23:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="WSPS38vq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005EE158210
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 23:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712187713; cv=none; b=Irn4UpxPpHZFkhXTsDWPqvaXxKRvE7NySRURj28yjeko/CSk6Rnla056PQwgXbn8B+qC5LI4IA1OQvZwQpyCa8ufvJVOz6yG5S5rp7X3WLblypBT3LNFLbC4B3PebZPKnw4HxPTH7FZoWnfsGpjMewTrQyhaGUkLqgSJi7z0gdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712187713; c=relaxed/simple;
	bh=ZshD/5wywYZOoD7/u3SYmOTR2SIaMjHKlWumK97il8I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pilfvmXhDtLSUvHc7C//2EncrxIPc+WqcnQUPezq9vKSR0AOSMdoc6h2QeuawiiFP4ourVk5JGZ/WB32iMmnQO18vTFsyU2bRFI+TvS+Ro7KCrVVoU+RZSsD1KLmjA2O2x9I+JZ+RaD1DfssMteSG3CMrR1WJ3EsPVuxqzYVVH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=WSPS38vq; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-5ce6b5e3c4eso303585a12.2
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 16:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712187711; x=1712792511; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ABpeeFCkULjAH2+wvqdO28185Mvpk++2Yk/j/QF7GJ0=;
        b=WSPS38vqE0RSmCl5/mHAvxiYjuUqgkGN16SPOi53Pz9owOm/JcFZbEz2PZvKqeI95x
         6XnfV7ymNpxe20jOM58dR5YcNBEMy+tPWOyB6tTt+UkxAlesgvrNw3fEa6KjACYnntZf
         dNC8QEjvD7luxmLJ7Dtf8pZt3/acLsD2iuwUm/3+SW3gz3IY8BF3z6TuISWsn0fTvq63
         Eh3IfdEKTFZ87hO9mpy/jdtnbBlyDldcnMK2F6mTh5LYDPztWFahuho+HqvbfOCGyqQu
         eYW7RP+KOMKHbq9WjsxHwTJ9Xjz63VM8JrVJZGdL5pagF5qxXl3wIRBW47ylxN9kPbVZ
         g6xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712187711; x=1712792511;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ABpeeFCkULjAH2+wvqdO28185Mvpk++2Yk/j/QF7GJ0=;
        b=qtCxz2vC/rY3tZ1zBgcwWLzvlYRcnKd2jWdVUdD6I9xnTqHcfcjN/2lRLvXrEuwrCw
         He88IKSny51ykZlU54GKnN2LajfGWxp0TIr1+veeZHbjM6pYdzc49LfOIyVe2TKnNeb5
         pAvij70XLA1PmbENEKmUFvmRrgfUW5XYSoqdrdYWSL884J9q1TyJvwoSN9BFKMkbTilg
         bVYKHVY3fgOHN6wzgSGiDwDDAz+jIiv7aHZ129mnvc3Fi5Ewd4e24XI806xXQ87cHUM2
         IlnaPK4re61cmo+/TPWQNECuDYfYnKt7wxQR1sxMNsRo2pCeHtcHgWDkcNdJZcuM+bT6
         kVxA==
X-Forwarded-Encrypted: i=1; AJvYcCWxTGUg4Ddxptpeid49CwoZSzMYS7QfTqQ0jPXyuu6brVKsBbHB0pII/sb9sTVh8152tfwvIzVSvY95RfbNtWrFZld2pHo6acjyIA==
X-Gm-Message-State: AOJu0YylcMmPIoU9kFMh4RsApgz67xtDhcGHpIxo4GcnHfrtsxyKG/ZD
	ifqHngZAs19mg/JGn55nMfMz+YlOe+Uz7xv4W92YNfeflqdr23TbrwawfquBdbs=
X-Google-Smtp-Source: AGHT+IEuPdJ9+VZyZuaG1MlOsTEyLTpxiJH28qDOFi58HVozeCfEc+yN58hPfTIqNV3cM5o/KXJ7iw==
X-Received: by 2002:a05:6a21:339e:b0:1a6:f8cf:1e23 with SMTP id yy30-20020a056a21339e00b001a6f8cf1e23mr1102834pzb.41.1712187711360;
        Wed, 03 Apr 2024 16:41:51 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id b18-20020a170902d51200b001deeac592absm13899117plg.180.2024.04.03.16.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 16:41:50 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
To: paul.walmsley@sifive.com,
	rick.p.edgecombe@intel.com,
	broonie@kernel.org,
	Szabolcs.Nagy@arm.com,
	kito.cheng@sifive.com,
	keescook@chromium.org,
	ajones@ventanamicro.com,
	conor.dooley@microchip.com,
	cleger@rivosinc.com,
	atishp@atishpatra.org,
	alex@ghiti.fr,
	bjorn@rivosinc.com,
	alexghiti@rivosinc.com,
	samuel.holland@sifive.com,
	conor@kernel.org
Cc: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mm@kvack.org,
	linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	corbet@lwn.net,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	oleg@redhat.com,
	akpm@linux-foundation.org,
	arnd@arndb.de,
	ebiederm@xmission.com,
	Liam.Howlett@oracle.com,
	vbabka@suse.cz,
	lstoakes@gmail.com,
	shuah@kernel.org,
	brauner@kernel.org,
	debug@rivosinc.com,
	andy.chiu@sifive.com,
	jerry.shih@sifive.com,
	hankuan.chen@sifive.com,
	greentime.hu@sifive.com,
	evan@rivosinc.com,
	xiao.w.wang@intel.com,
	charlie@rivosinc.com,
	apatel@ventanamicro.com,
	mchitale@ventanamicro.com,
	dbarboza@ventanamicro.com,
	sameo@rivosinc.com,
	shikemeng@huaweicloud.com,
	willy@infradead.org,
	vincent.chen@sifive.com,
	guoren@kernel.org,
	samitolvanen@google.com,
	songshuaishuai@tinylab.org,
	gerg@kernel.org,
	heiko@sntech.de,
	bhe@redhat.com,
	jeeheng.sia@starfivetech.com,
	cyy@cyyself.name,
	maskray@google.com,
	ancientmodern4@gmail.com,
	mathis.salmen@matsal.de,
	cuiyunhui@bytedance.com,
	bgray@linux.ibm.com,
	mpe@ellerman.id.au,
	baruch@tkos.co.il,
	alx@kernel.org,
	david@redhat.com,
	catalin.marinas@arm.com,
	revest@chromium.org,
	josh@joshtriplett.org,
	shr@devkernel.io,
	deller@gmx.de,
	omosnace@redhat.com,
	ojeda@kernel.org,
	jhubbard@nvidia.com
Subject: [PATCH v3 08/29] mm: Define VM_SHADOW_STACK for RISC-V
Date: Wed,  3 Apr 2024 16:34:56 -0700
Message-ID: <20240403234054.2020347-9-debug@rivosinc.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240403234054.2020347-1-debug@rivosinc.com>
References: <20240403234054.2020347-1-debug@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

VM_SHADOW_STACK is defined by x86 as vm flag to mark a shadow stack vma.

x86 uses VM_HIGH_ARCH_5 bit but that limits shadow stack vma to 64bit only.
arm64 follows same path (see links)

To keep things simple, RISC-V follows the same.
This patch adds `ss` for shadow stack in process maps.

Links:
https://lore.kernel.org/lkml/20231009-arm64-gcs-v6-12-78e55deaa4dd@kernel.org/#r

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 fs/proc/task_mmu.c |  3 +++
 include/linux/mm.h | 11 ++++++++++-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/fs/proc/task_mmu.c b/fs/proc/task_mmu.c
index 3f78ebbb795f..d9d63eb74f0d 100644
--- a/fs/proc/task_mmu.c
+++ b/fs/proc/task_mmu.c
@@ -702,6 +702,9 @@ static void show_smap_vma_flags(struct seq_file *m, struct vm_area_struct *vma)
 #endif /* CONFIG_HAVE_ARCH_USERFAULTFD_MINOR */
 #ifdef CONFIG_X86_USER_SHADOW_STACK
 		[ilog2(VM_SHADOW_STACK)] = "ss",
+#endif
+#ifdef CONFIG_RISCV_USER_CFI
+		[ilog2(VM_SHADOW_STACK)] = "ss",
 #endif
 	};
 	size_t i;
diff --git a/include/linux/mm.h b/include/linux/mm.h
index f5a97dec5169..64109f6c70f5 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -352,7 +352,16 @@ extern unsigned int kobjsize(const void *objp);
  * for more details on the guard size.
  */
 # define VM_SHADOW_STACK	VM_HIGH_ARCH_5
-#else
+#endif
+
+#ifdef CONFIG_RISCV_USER_CFI
+/*
+ * RISC-V is going along with using VM_HIGH_ARCH_5 bit position for shadow stack
+ */
+#define VM_SHADOW_STACK	VM_HIGH_ARCH_5
+#endif
+
+#ifndef VM_SHADOW_STACK
 # define VM_SHADOW_STACK	VM_NONE
 #endif
 
-- 
2.43.2


