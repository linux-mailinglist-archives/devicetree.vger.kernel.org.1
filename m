Return-Path: <devicetree+bounces-102507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD879774FF
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 01:20:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 14C31B25407
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 23:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66E6F1C9DC0;
	Thu, 12 Sep 2024 23:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="xfSo6tQf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D709C1C986F
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 23:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726183067; cv=none; b=ZQnmyBFzIz0gUr8txk9AaYZTm7De86ra/lTnlMUoBZPozst0UbaX/u7q+gL234Puam1yTbwieYepJx7/sCH0zJEgCk1j5GwdPjmH8SPDb75SrSt6tGjmPg9Z0cYK1JMclXRUsrnDuZggeS6hKEvQDaB+ZlPgv03FwjjF/KOuutY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726183067; c=relaxed/simple;
	bh=/86S3Elf9NC4ZOOJ6NGZuRR938iy8k687BQAt/alq6Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kePv/mflkLI1REp13bOy/PWK6IrE0FANs9fWg6VqBCzg7wjUsfDdBombe/m2N8PVpDtST+JzlFbzQdfL2fSKB+hOdy9wBJRT1zmVYHvSaW9TUPy6t4A1mLhYfkjZJ1g884FN7AXjGpuC9xHwGsj9w4DKn6Tp6dFH37dExdpNnns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=xfSo6tQf; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2d86f71353dso1108183a91.2
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 16:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1726183065; x=1726787865; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L4VD0pn+7fxYAYMmu2vkxqQSkT8TrKqfbPDKikIcbYI=;
        b=xfSo6tQfB93nq5WU0Qo5mFPl6HzDHcyJZc2JthAsJlUgQP+WIj4gZe/iQTfJp4hCkP
         bAASRYypG1ke1mTzweC9JqeclZJeuwCebu0IVJOwg7Xc8HHsW8vpxxgm8Kl3TqdMsRD2
         AtnYGSP7695koSmZCnnmBmal4dMoHkJIvuYV3oVAopgDIftoDapEPbz2pCKfuyyZaIxK
         ZIb18ZZJ6Wzi/7/Okt9oH64DcqJd8g20o4c6pqbJxlWH2pEN69lzezKTCbmlpDJWDFii
         BF2qPVZ+uZx9AW8snKg6pxGFYobpFEZLUCPCN1ea0ntf7M2qalAs2I7SkYCvul1OvRPE
         RfEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726183065; x=1726787865;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L4VD0pn+7fxYAYMmu2vkxqQSkT8TrKqfbPDKikIcbYI=;
        b=OVs+jNLAGV/5RDChmqh7cnSTd8FJKqU1E/WvoaLCsDrVWl0zKQz/7/KMAV173K8pjc
         edV/PnedtU1sPH7iOEtSd3PphmKi5geB7qyNj/0u4jkaX6AKFI0RCnU5aHIZTca+c7TR
         5JGgZPJrbAgVDfsidgUkUpyIBwZig1ZlDJEhZ51zDAEI3gmON8mzrKkEg2JoWMCLbsVm
         qxjwkGk2q8cmAictnqIKRCiKOktoyJLlh7XJ/+yTu2Ptsq797Vhfe7mXW9Quz7q/r6ar
         2W+4f+mWgrvQ0l7mSiY3jIbP7fPgpV0zKsfqbfdqCJze39Sdk4iyO8BW2Nk+87sF5rW7
         qWkA==
X-Forwarded-Encrypted: i=1; AJvYcCXq8hyccJkw8Bz4U3d2Be3xLD45mXFRt8WF+tzUYAOp1FlFptoYCOmpNQbR4Ml8IodZ3HD2Fd6KsyBT@vger.kernel.org
X-Gm-Message-State: AOJu0YwqUhqicuOhFldanF/RHkZS5T2ELMWaLWXkek+M+zT/YH8O/TID
	/mqggUUmz0CDYSBUbX9xKAaNKjLmFq3tV6O/giGsJbt1J9qEGS8FJJYIqB5ACfY=
X-Google-Smtp-Source: AGHT+IHE2/uUipG3AbFYQLbtsQ6XTH0oLyDxTmTJL8HOpmNqW0hVQmxkI0Zi8FntOLvceExzi1MfEA==
X-Received: by 2002:a17:90a:c10:b0:2d8:f7e2:eff with SMTP id 98e67ed59e1d1-2dba006821cmr4395000a91.36.1726183065339;
        Thu, 12 Sep 2024 16:17:45 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2db6c1ac69asm3157591a91.0.2024.09.12.16.17.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 16:17:45 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
To: paul.walmsley@sifive.com,
	palmer@sifive.com,
	conor@kernel.org,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-mm@kvack.org,
	linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org
Cc: corbet@lwn.net,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	robh@kernel.org,
	krzk+dt@kernel.org,
	oleg@redhat.com,
	tglx@linutronix.de,
	mingo@redhat.com,
	bp@alien8.de,
	dave.hansen@linux.intel.com,
	x86@kernel.org,
	hpa@zytor.com,
	peterz@infradead.org,
	akpm@linux-foundation.org,
	arnd@arndb.de,
	ebiederm@xmission.com,
	kees@kernel.org,
	Liam.Howlett@oracle.com,
	vbabka@suse.cz,
	lorenzo.stoakes@oracle.com,
	shuah@kernel.org,
	brauner@kernel.org,
	samuel.holland@sifive.com,
	debug@rivosinc.com,
	andy.chiu@sifive.com,
	jerry.shih@sifive.com,
	greentime.hu@sifive.com,
	charlie@rivosinc.com,
	evan@rivosinc.com,
	cleger@rivosinc.com,
	xiao.w.wang@intel.com,
	ajones@ventanamicro.com,
	anup@brainfault.org,
	mchitale@ventanamicro.com,
	atishp@rivosinc.com,
	sameo@rivosinc.com,
	bjorn@rivosinc.com,
	alexghiti@rivosinc.com,
	david@redhat.com,
	libang.li@antgroup.com,
	jszhang@kernel.org,
	leobras@redhat.com,
	guoren@kernel.org,
	samitolvanen@google.com,
	songshuaishuai@tinylab.org,
	costa.shul@redhat.com,
	bhe@redhat.com,
	zong.li@sifive.com,
	puranjay@kernel.org,
	namcaov@gmail.com,
	antonb@tenstorrent.com,
	sorear@fastmail.com,
	quic_bjorande@quicinc.com,
	ancientmodern4@gmail.com,
	ben.dooks@codethink.co.uk,
	quic_zhonhan@quicinc.com,
	cuiyunhui@bytedance.com,
	yang.lee@linux.alibaba.com,
	ke.zhao@shingroup.cn,
	sunilvl@ventanamicro.com,
	tanzhasanwork@gmail.com,
	schwab@suse.de,
	dawei.li@shingroup.cn,
	rppt@kernel.org,
	willy@infradead.org,
	usama.anjum@collabora.com,
	osalvador@suse.de,
	ryan.roberts@arm.com,
	andrii@kernel.org,
	alx@kernel.org,
	catalin.marinas@arm.com,
	broonie@kernel.org,
	revest@chromium.org,
	bgray@linux.ibm.com,
	deller@gmx.de,
	zev@bewilderbeest.net
Subject: [PATCH v4 09/30] riscv: zicfiss / zicfilp extension csr and bit definitions
Date: Thu, 12 Sep 2024 16:16:28 -0700
Message-ID: <20240912231650.3740732-10-debug@rivosinc.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240912231650.3740732-1-debug@rivosinc.com>
References: <20240912231650.3740732-1-debug@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

zicfiss and zicfilp extension gets enabled via b3 and b2 in *envcfg CSR.
menvcfg controls enabling for S/HS mode. henvcfg control enabling for VS
while senvcfg controls enabling for U/VU mode.

zicfilp extension extends *status CSR to hold `expected landing pad` bit.
A trap or interrupt can occur between an indirect jmp/call and target
instr. `expected landing pad` bit from CPU is recorded into xstatus CSR so
that when supervisor performs xret, `expected landing pad` state of CPU can
be restored.

zicfiss adds one new CSR
- CSR_SSP: CSR_SSP contains current shadow stack pointer.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 25966995da04..af7ed9bedaee 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -18,6 +18,15 @@
 #define SR_MPP		_AC(0x00001800, UL) /* Previously Machine */
 #define SR_SUM		_AC(0x00040000, UL) /* Supervisor User Memory Access */
 
+/* zicfilp landing pad status bit */
+#define SR_SPELP	_AC(0x00800000, UL)
+#define SR_MPELP	_AC(0x020000000000, UL)
+#ifdef CONFIG_RISCV_M_MODE
+#define SR_ELP		SR_MPELP
+#else
+#define SR_ELP		SR_SPELP
+#endif
+
 #define SR_FS		_AC(0x00006000, UL) /* Floating-point Status */
 #define SR_FS_OFF	_AC(0x00000000, UL)
 #define SR_FS_INITIAL	_AC(0x00002000, UL)
@@ -197,6 +206,8 @@
 #define ENVCFG_PBMTE			(_AC(1, ULL) << 62)
 #define ENVCFG_CBZE			(_AC(1, UL) << 7)
 #define ENVCFG_CBCFE			(_AC(1, UL) << 6)
+#define ENVCFG_LPE			(_AC(1, UL) << 2)
+#define ENVCFG_SSE			(_AC(1, UL) << 3)
 #define ENVCFG_CBIE_SHIFT		4
 #define ENVCFG_CBIE			(_AC(0x3, UL) << ENVCFG_CBIE_SHIFT)
 #define ENVCFG_CBIE_ILL			_AC(0x0, UL)
@@ -215,6 +226,11 @@
 #define SMSTATEEN0_HSENVCFG		(_ULL(1) << SMSTATEEN0_HSENVCFG_SHIFT)
 #define SMSTATEEN0_SSTATEEN0_SHIFT	63
 #define SMSTATEEN0_SSTATEEN0		(_ULL(1) << SMSTATEEN0_SSTATEEN0_SHIFT)
+/*
+ * zicfiss user mode csr
+ * CSR_SSP holds current shadow stack pointer.
+ */
+#define CSR_SSP                 0x011
 
 /* symbolic CSR names: */
 #define CSR_CYCLE		0xc00
-- 
2.45.0


