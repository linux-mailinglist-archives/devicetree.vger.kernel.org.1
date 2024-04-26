Return-Path: <devicetree+bounces-62978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C08F8B34F4
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 12:08:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B70F62890CF
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 10:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E72DE142645;
	Fri, 26 Apr 2024 10:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="NiOAdjZL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3271D142E68
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 10:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714126110; cv=none; b=LFH4laFepwrzMf4gQ74342TsPUk/ic3MmjzLNJQdTjDefGxrdMkmTJsB9Y2tBkcrkfQp8T/WyrDQxpOa3N6tBLQKRKvglI9r8E8ZmnyT/EfZygIB2tXbbk1U5aejLcG5mDgYGnktQufIH5cSAdF/xrwZv/QLKrLhqsZzwcnuVxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714126110; c=relaxed/simple;
	bh=/+RCT2PQcQbxcdDlZ1qzKOIQWqvxqwYfsMlCrWUC9EI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-type; b=H61xBOK/YyLYBQ+UUiYAeXMtqTacI/2ljXfAPc1DhvifntMa/sspYXeq4RBg0iWMOE5DIZvuY1HeS7cBvx+gfbrbBlT5H1e5Tcwa5p68zVOAukykn5aI1iEZS8DV989w3B/w+UVFjCLH7KnLREnmoioJqt9c3SeYFGfOKKvbr38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=NiOAdjZL; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-41ba0bb5837so1502955e9.3
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 03:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1714126107; x=1714730907; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v7Wus7+04U367SmPRgLRcagyxip4bNtqJZUWzPYUkwc=;
        b=NiOAdjZLxY5hWSn4ewBZREa3GX+W2Nt3X3vA9npk3HCxdtb3G5l5117Gx7JJA2y07A
         GvNaSFVVssb8RP1xD/LMIHL7gtFCwo5lczMBPmT23ByP1W4kJZJfWOWFyQ260L8YlVSA
         aExLkwCofF24v0xBjM0IbLmfpPLOEB/5yWjovKuA74V8oREauZX0wlJT5QqcXcbo8/ti
         bQE5QF7Hy2m7xTqJ51zdrO3tPj8lhqoaSzWwCTzCR0L87PTXj9mBwjLLO4e/hjKntsKI
         AJnb8Bfd/FP2z+rTDX3UFQV9/uZk89ytxEU7ed9nDeO/V3boPNHVWz+I2RYCI30ZT6Qo
         wpeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714126107; x=1714730907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v7Wus7+04U367SmPRgLRcagyxip4bNtqJZUWzPYUkwc=;
        b=jSqVUViWBrokyGa4igjAR5pcUyweTCdHrpajrhKNQ2upF3Wt9CdyrqU6sNLFap2eY/
         Ho9uYavxk7Rh+/CkXv2CpjIcFvggIajgCFBpEvrfbIZ15N5sFvIqr+aOsCdAHezN1220
         kfIFzE/kjPWivtTFBP1P+6bN6e37iKFagB9r8j5pyGc1micQofLY90vmMgFZHV8tBZkj
         HuAqRPtylPWn7LLsAiOTmV4cYM7g4S3G/qK449F4rgQTvNvhLpoD66PBROsr8HZmNEZb
         ZB/74drzKsP9tyk6i74VXvyR9bPHmXWMCKK47TekQ2fMhCVmjFa5yOK+vTf5CssZ9P+e
         asTw==
X-Forwarded-Encrypted: i=1; AJvYcCVBl4IPsIknVc55QsM0DZSeZsFJMWlWxvWm53kETVLaktFLveHyqV/cLJ2jTj/ZDGcNInCgQQIge6R1KsmzlfvmcAFYIxhxKxJlUw==
X-Gm-Message-State: AOJu0YyVTXQAiPxaEsSjdzmJnlhGuSEH0dvDcmoYqENIwbfLGASIlLb/
	v4U3d+GrWPSatpWRRvV3SzqQjffRNyAtoUrdEQ4LvnYwZvNnwrnI4MqlZ1Jn1Gk=
X-Google-Smtp-Source: AGHT+IHmuK6587YLD1TvpMfR5JU2NEwBiVqiMKGOYMJM7kh+ka4QMxL41PfGPLdVykese00Ql9LAlw==
X-Received: by 2002:a05:600c:4450:b0:418:6900:96af with SMTP id v16-20020a05600c445000b00418690096afmr1724304wmn.25.1714126107683;
        Fri, 26 Apr 2024 03:08:27 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id z9-20020a05600c0a0900b00418916f5848sm29907016wmp.43.2024.04.26.03.08.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 03:08:27 -0700 (PDT)
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
Subject: [PATCH v3 5/6] KVM: riscv: Support guest wrs.nto
Date: Fri, 26 Apr 2024 12:08:25 +0200
Message-ID: <20240426100820.14762-13-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240426100820.14762-8-ajones@ventanamicro.com>
References: <20240426100820.14762-8-ajones@ventanamicro.com>
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


