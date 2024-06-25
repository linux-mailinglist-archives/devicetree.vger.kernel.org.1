Return-Path: <devicetree+bounces-79878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEA0917311
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 23:12:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DD35DB24396
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 21:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2FF11822C9;
	Tue, 25 Jun 2024 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="CH3nGo70"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2118C181CE2
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 21:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719349793; cv=none; b=msTRn/1VfrqUYxy/Gq9hlUjGTO5M9CqytZ5+hhGgjl6wr8baPygzAm+YLagKHzKa2hqv+T6FHKtCkekzhFvV7VmtYDExrwIAXZUTZjI2WCDxstXnK9FGCUyChw8Vl4Q/W972oIh45RMT/7xTy7sg0vzjlwFsYzrMCeJr5AR2ExE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719349793; c=relaxed/simple;
	bh=PI7B36y2IeGPu8CBf2Gu5A2WliKssIxixDQxXVVUuDo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JDGe50xLXhSBhCqP1uVfLqxPzWXlIA5LGAQBZbht7WhVZ0J1qkx0JZW19bd1slyTjG1wOjvCfTFp/qzibyxanphW7zlWqj+A2YSPkGjjjjaZPb91Ivn59ZSJfa57+gWe8KMJBcD3pJeSDcJKEFu/dU77CFFNedIVFQJm64FG8RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=CH3nGo70; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1f6a837e9a3so37245305ad.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 14:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1719349791; x=1719954591; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WmS6vWk00EfafKWbKkl85gc2oDZFAwwt7tuzVTWTGwo=;
        b=CH3nGo70CA3nxi/p1XOqc/btLvxIVraRNZIT2qMvRFRLNed7N3CfEhs/hvNInYomPO
         wwRuAqMTnPaVqKXtsR3wt6fCzLfWgJsAi4UWElwolIDOda7y96aMhRH/inQ6kWryR+zW
         z0yesFjTEKvLlQQDM7u6Ue3sjG8ZbA7p9ayJzWAvv5k6/vx4gCzWdMKWUDPCnA6gEU0h
         YxdFEtC9SNes72ZikfsXUpwKaQu6riYL43xfm4YQBK1sWjM7/d4zLJhVj2NGsXRWD17w
         tatVoiRfWgAcDSddk4U0k3neSpBUfVHLAt7zhYKDoH9AThbMgUI/e/fkGdsA+jp+mRFV
         SfLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719349791; x=1719954591;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WmS6vWk00EfafKWbKkl85gc2oDZFAwwt7tuzVTWTGwo=;
        b=fbM4jTQ0BW6MkUPw13DGQNdxarQdmu9/niixwRSEuzUh7F9PscisseoaEeh2K55ntF
         1Sg/Wr2BwfBqPu6OCMQ2o+5P717tODEkJFiZMGDvc/cFPrf3CB4EjKbpkjivHk4OJ2Qu
         15y3O0rO5bJ0Gf7pO2X+N2xGKKyQLuJC4/ZpgVsZzbD65MyizM3lUgRFLU0cOHgo/WLX
         k/D5wMLARPBLUf8Z5eFY6cKK+HkVMZ+NHmJ1Ix8xYwK3V+iHNxo40FTdJcLI0ARhZ3AJ
         J1TxUENdPLPCbsWFhHX9ry5NR8PfdoVXxN3fdBmThOBevut7yGYVGi6juIYMzdAyPcBn
         kylw==
X-Gm-Message-State: AOJu0YwwwkUHzjjF3zLL2FtDAUynYCrrACRyw9pxaCMpenN7PDTfUTCk
	qz/A4C/DPN6XL/PtTb64XgC/F8eehRA2l9nsjHi3KaOrYzdkXIOorrwU3U2LtwQ=
X-Google-Smtp-Source: AGHT+IHTw5qN2SpgPrcqrPEXyzhXThDZldXGwPxQ/Q1c/gHxKEx75NLlZ00CvfUvOupr2aJXM+dfMw==
X-Received: by 2002:a17:903:32ce:b0:1f9:e95b:5810 with SMTP id d9443c01a7336-1fa24082313mr90605365ad.53.1719349791487;
        Tue, 25 Jun 2024 14:09:51 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9eb328f57sm85873455ad.110.2024.06.25.14.09.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 14:09:51 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org,
	Anup Patel <anup@brainfault.org>,
	Conor Dooley <conor@kernel.org>,
	kasan-dev@googlegroups.com,
	Atish Patra <atishp@atishpatra.org>,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v2 09/10] RISC-V: KVM: Allow Smnpm and Ssnpm extensions for guests
Date: Tue, 25 Jun 2024 14:09:20 -0700
Message-ID: <20240625210933.1620802-10-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240625210933.1620802-1-samuel.holland@sifive.com>
References: <20240625210933.1620802-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The interface for controlling pointer masking in VS-mode is henvcfg.PMM,
which is part of the Ssnpm extension, even though pointer masking in
HS-mode is provided by the Smnpm extension. As a result, emulating Smnpm
in the guest requires (only) Ssnpm on the host.

Since the guest configures Smnpm through the SBI Firmware Features
interface, the extension can be disabled by failing the SBI call. Ssnpm
cannot be disabled without intercepting writes to the senvcfg CSR.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v2:
 - New patch for v2

 arch/riscv/include/uapi/asm/kvm.h | 2 ++
 arch/riscv/kvm/vcpu_onereg.c      | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index e878e7cc3978..eda2a54c93e3 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -168,6 +168,8 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZTSO,
 	KVM_RISCV_ISA_EXT_ZACAS,
 	KVM_RISCV_ISA_EXT_SSCOFPMF,
+	KVM_RISCV_ISA_EXT_SMNPM,
+	KVM_RISCV_ISA_EXT_SSNPM,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index c676275ea0a0..71c6541d7070 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -34,9 +34,11 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	[KVM_RISCV_ISA_EXT_M] = RISCV_ISA_EXT_m,
 	[KVM_RISCV_ISA_EXT_V] = RISCV_ISA_EXT_v,
 	/* Multi letter extensions (alphabetically sorted) */
+	[KVM_RISCV_ISA_EXT_SMNPM] = RISCV_ISA_EXT_SSNPM,
 	KVM_ISA_EXT_ARR(SMSTATEEN),
 	KVM_ISA_EXT_ARR(SSAIA),
 	KVM_ISA_EXT_ARR(SSCOFPMF),
+	KVM_ISA_EXT_ARR(SSNPM),
 	KVM_ISA_EXT_ARR(SSTC),
 	KVM_ISA_EXT_ARR(SVINVAL),
 	KVM_ISA_EXT_ARR(SVNAPOT),
@@ -122,6 +124,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_M:
 	/* There is not architectural config bit to disable sscofpmf completely */
 	case KVM_RISCV_ISA_EXT_SSCOFPMF:
+	case KVM_RISCV_ISA_EXT_SSNPM:
 	case KVM_RISCV_ISA_EXT_SSTC:
 	case KVM_RISCV_ISA_EXT_SVINVAL:
 	case KVM_RISCV_ISA_EXT_SVNAPOT:
-- 
2.44.1


