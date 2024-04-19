Return-Path: <devicetree+bounces-60927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7ED8AAFC6
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 15:53:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72FC828252F
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 13:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1496512AAF4;
	Fri, 19 Apr 2024 13:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="TfsA0shd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5391012A151
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 13:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713534814; cv=none; b=sIW2r0xT5la9hynx6X8EqBqXnDOwdsCgfqag3G6Ux+m2FS0Ri2QFODH8ROuYeRL1xYfsPH6wqRTEP+MCN299PdgSb2//taIQd9iBw7olVQkCey9A0NJrTgJex2gCsLXXzqLyvgKxrmee7fEYNdAvIIucPViP7lKwwDHL5t6de7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713534814; c=relaxed/simple;
	bh=/+RCT2PQcQbxcdDlZ1qzKOIQWqvxqwYfsMlCrWUC9EI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-type; b=nnpk+Op6El2gBXWTI0kg1/5H2q+OARCl789r0AOWE5+6dAw6Y6bYIf1/QU9H5FziIGx9DvaOpH/FrnvN9nSMTYEoQK4mwJQO82Y642zXDdg7GfEKGU+LPNOGl46piw29fWHG4Bc1ia+BjAf+sK4ZRd7Cs5ml/E8jVZ6XjUAKFco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=TfsA0shd; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a526a200879so259922866b.1
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 06:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1713534811; x=1714139611; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v7Wus7+04U367SmPRgLRcagyxip4bNtqJZUWzPYUkwc=;
        b=TfsA0shdc1qP153seLtzztSIOMvQfuhWRTlTqq5aftUXThQ/0yMgHWoooMOPb4HqMc
         cISaSwggi/7vCVk5wfhn/dKqFiLhOOVp5o2xFmggM8AvtuD31IbIgG2Bh+RnqyE8C4Yx
         DTRGXAVyCujwW5mptY98P4++/aez3lcA+oTXjnASEwjHzCT4MF5YbI8jzsdINiXlFq+H
         4aNNxO1aW7Qkh89vLGT5RaAXmSuTjNPwh15UjNR5wzrLSu+vTgyDhSa2YH+4SBlEPh4P
         hR1qv/SD97A3wvSvaxPJbkJebhv8M+19jqsB+cV0AUclytMqbKbdYk6N+fbPKpXWGlNM
         bdLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713534811; x=1714139611;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v7Wus7+04U367SmPRgLRcagyxip4bNtqJZUWzPYUkwc=;
        b=jUAOgTrbvhvpezECL57yJg/a0JtVl1zw24WyHDyQ9vcOYf0xAb51EABEOme0mkEsdx
         KbTfLpGxvFWRAeQzbyuLNjFQPOhy8dt2X9O3PaBUsCrs13Y+x7r/nlMTKrVRbt5mcLkG
         x17trBykUZ7CGgaFEj2VZjD0ImAZOwqNJESTFsb1nsGHyEkaL1TwjHrdrGp0pxuRRmbv
         twmczLnGT4Ojv/eko5tEDXPnzwRD3vXx8CAr8cvudFKkNp2NIatZvswCYWfBa/jhoC5H
         Av8Tq/kyf+jU+dbHHHP/Z0YNmzohdhBSeiWICdz4SfeyOpEFszqrenNO5TnGcPdGBFox
         qbzw==
X-Forwarded-Encrypted: i=1; AJvYcCVXWztMJcWc3jP34QllhawcURaNMa+F+bIKh5zjF9fD5NeLHr2yoYjZ8Gaz0cl9vufz3huwSaKSj00cVvP9pQBl/jFaQgAxJCF+hQ==
X-Gm-Message-State: AOJu0YwjKSU9H9ygTWoQ8gainMRGd3RxWMUGUmAiZFAMqIlCVamThUDl
	HChlm21DNUJsSacyRFBHC6XUhK2ePpVWMi42bk8eJWxga50s3zF+YVyvSOg8w3k=
X-Google-Smtp-Source: AGHT+IGW5DMzpQ1s7RJVHZYrIDlcwyg2slIg6T6KVtXyKcpiNBcc1wPNCm7ONf1zgIDtdYgJqAgZAw==
X-Received: by 2002:a17:906:f8c5:b0:a55:5ddd:e5f6 with SMTP id lh5-20020a170906f8c500b00a555ddde5f6mr1513975ejb.28.1713534810779;
        Fri, 19 Apr 2024 06:53:30 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id t22-20020a1709063e5600b00a5209dc79c1sm2266768eji.146.2024.04.19.06.53.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 06:53:30 -0700 (PDT)
From: Andrew Jones <ajones@ventanamicro.com>
To: linux-riscv@lists.infradead.org,
	kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	conor.dooley@microchip.com,
	anup@brainfault.org,
	atishp@atishpatra.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	christoph.muellner@vrull.eu,
	heiko@sntech.de,
	charlie@rivosinc.com,
	David.Laight@ACULAB.COM,
	parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: [PATCH v2 5/6] KVM: riscv: Support guest wrs.nto
Date: Fri, 19 Apr 2024 15:53:27 +0200
Message-ID: <20240419135321.70781-13-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240419135321.70781-8-ajones@ventanamicro.com>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit

When a guest traps on wrs.nto, call kvm_vcpu_on_spin() to attempt
to yield to the lock holding VCPU. Also extend the KVM ISA extension
ONE_REG interface to allow KVM userspace to detect and enable the
Zawrs extension for the Guest/VM.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/asm/kvm_host.h |  1 +
 arch/riscv/include/uapi/asm/kvm.h |  1 +
 arch/riscv/kvm/vcpu.c             |  1 +
 arch/riscv/kvm/vcpu_insn.c        | 15 +++++++++++++++
 arch/riscv/kvm/vcpu_onereg.c      |  2 ++
 5 files changed, 20 insertions(+)

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 484d04a92fa6..e27c56e44783 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -69,6 +69,7 @@ struct kvm_vcpu_stat {
 	struct kvm_vcpu_stat_generic generic;
 	u64 ecall_exit_stat;
 	u64 wfi_exit_stat;
+	u64 wrs_exit_stat;
 	u64 mmio_exit_user;
 	u64 mmio_exit_kernel;
 	u64 csr_exit_user;
diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index b1c503c2959c..89ea06bd07c2 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -167,6 +167,7 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZFA,
 	KVM_RISCV_ISA_EXT_ZTSO,
 	KVM_RISCV_ISA_EXT_ZACAS,
+	KVM_RISCV_ISA_EXT_ZAWRS,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index b5ca9f2e98ac..abcdc78671e0 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -25,6 +25,7 @@ const struct _kvm_stats_desc kvm_vcpu_stats_desc[] = {
 	KVM_GENERIC_VCPU_STATS(),
 	STATS_DESC_COUNTER(VCPU, ecall_exit_stat),
 	STATS_DESC_COUNTER(VCPU, wfi_exit_stat),
+	STATS_DESC_COUNTER(VCPU, wrs_exit_stat),
 	STATS_DESC_COUNTER(VCPU, mmio_exit_user),
 	STATS_DESC_COUNTER(VCPU, mmio_exit_kernel),
 	STATS_DESC_COUNTER(VCPU, csr_exit_user),
diff --git a/arch/riscv/kvm/vcpu_insn.c b/arch/riscv/kvm/vcpu_insn.c
index ee7215f4071f..97dec18e6989 100644
--- a/arch/riscv/kvm/vcpu_insn.c
+++ b/arch/riscv/kvm/vcpu_insn.c
@@ -16,6 +16,9 @@
 #define INSN_MASK_WFI		0xffffffff
 #define INSN_MATCH_WFI		0x10500073
 
+#define INSN_MASK_WRS		0xffffffff
+#define INSN_MATCH_WRS		0x00d00073
+
 #define INSN_MATCH_CSRRW	0x1073
 #define INSN_MASK_CSRRW		0x707f
 #define INSN_MATCH_CSRRS	0x2073
@@ -203,6 +206,13 @@ static int wfi_insn(struct kvm_vcpu *vcpu, struct kvm_run *run, ulong insn)
 	return KVM_INSN_CONTINUE_NEXT_SEPC;
 }
 
+static int wrs_insn(struct kvm_vcpu *vcpu, struct kvm_run *run, ulong insn)
+{
+	vcpu->stat.wrs_exit_stat++;
+	kvm_vcpu_on_spin(vcpu, vcpu->arch.guest_context.sstatus & SR_SPP);
+	return KVM_INSN_CONTINUE_NEXT_SEPC;
+}
+
 struct csr_func {
 	unsigned int base;
 	unsigned int count;
@@ -378,6 +388,11 @@ static const struct insn_func system_opcode_funcs[] = {
 		.match = INSN_MATCH_WFI,
 		.func  = wfi_insn,
 	},
+	{
+		.mask  = INSN_MASK_WRS,
+		.match = INSN_MATCH_WRS,
+		.func  = wrs_insn,
+	},
 };
 
 static int system_opcode_insn(struct kvm_vcpu *vcpu, struct kvm_run *run,
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index f4a6124d25c9..67c5794af3b6 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -41,6 +41,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(SVNAPOT),
 	KVM_ISA_EXT_ARR(SVPBMT),
 	KVM_ISA_EXT_ARR(ZACAS),
+	KVM_ISA_EXT_ARR(ZAWRS),
 	KVM_ISA_EXT_ARR(ZBA),
 	KVM_ISA_EXT_ARR(ZBB),
 	KVM_ISA_EXT_ARR(ZBC),
@@ -120,6 +121,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_SVINVAL:
 	case KVM_RISCV_ISA_EXT_SVNAPOT:
 	case KVM_RISCV_ISA_EXT_ZACAS:
+	case KVM_RISCV_ISA_EXT_ZAWRS:
 	case KVM_RISCV_ISA_EXT_ZBA:
 	case KVM_RISCV_ISA_EXT_ZBB:
 	case KVM_RISCV_ISA_EXT_ZBC:
-- 
2.44.0


