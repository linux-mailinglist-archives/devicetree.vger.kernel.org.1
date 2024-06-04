Return-Path: <devicetree+bounces-72239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E30BE8FB2CE
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:51:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 63CFBB281ED
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 544AA149C6A;
	Tue,  4 Jun 2024 12:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="00ZnnNIt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7366149C64
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717505286; cv=none; b=SiS4WDjqfQYcCsS3B8ijVNx4CUspc1xwzXmaLtkLTzRAfTol4CirQlg4VLFT4nYXyLv66RrHqbSizoyp5b90ZXFIsRPqIK6m01qfglMa9LyGSOZ0ka+NsYxA541a8xK+UDFAhSKG2/PT6cPnvVEpvTPUPanFmrinttRH/tdMEXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717505286; c=relaxed/simple;
	bh=ZohCCwLLKDWdWTtROOn+XtuALbMR8Hmvwe3YoT+NpEU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qGL8mNNMfgXZKAfykvHNyoOjispbdq7osu7B878jMjMb10m9qIDSCj48oar8kzU5AeNRQzN5vnn80DLR5asWl3+BalMxEBoNXtD5BRfsUs9QwOuuWiQVTJJN/tTLNtzvZCQ9Tc8UsUE5JnwH3PyVpSV0OtyF/NftawLI5mOfduA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=00ZnnNIt; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-6c8b6e40ea6so337685a12.3
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 05:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1717505284; x=1718110084; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gs55v193sdHVl0rBHs/P2Y++ez1UXnaq9pE10ZEsFSw=;
        b=00ZnnNItS/Pw+S6qBsfKb/toNYH3b2xRDcbYdOIUbiMEJeQoMgKR3aN6zsT0Q2oX+5
         ooXYunPbsuk0Ux+K+21ifbQQOQ9P8ujK4wBpZ8eMFikF7rEj1zDX0dKVcCVktgP2cyJP
         qcyDizhg5ZH+sZG6PjLfp9pYucx0lAQS+f+yXFxvX5T6lRdUF6roW4pPUtIUfJAoXvbw
         riNhuff4DLt+q27QLpUp3hsGJR2FaXx1Aev8WxN7IDlVYVcGXKok6WFP90T+FbeOpnAG
         bsyvmbrsk262K0HdbvCM/LG2P9tUZMC7sIIacs2IYs9J8czQVndy9zh2EKWpD5s7jHh+
         XCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717505284; x=1718110084;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gs55v193sdHVl0rBHs/P2Y++ez1UXnaq9pE10ZEsFSw=;
        b=wIbnaX8Er362WfevGxrlZu8nFV+vrzOV8iJW3yKu30pPLLoRefTmsC7/Uo5X6HnM3A
         9JH9ZIQ+QN+zevhm4Myt0V3Ngs06iUfBi39RWjnFd6gkfWN3tb+nDvkVYxe+npWqSQV3
         pZbB/FDSWb0xw6vsIdUyCQNYp6bCcqxqILaGRHGoyeTiWnjaP2Ae8iYkB2y322mkmh+w
         STxde4nKTgxVW+Ycrx4ydzqTJRGfj95HeGM/LRVwZSjI7go5EF7ZIpDa8PD6Dw0yTNhK
         ebKBdb1/jgTDPENyCzZQjoEzW4H/egH+cT9DwpWONlaDAb5tQe0/Te8Uyo037rwOD8pE
         Y4gw==
X-Forwarded-Encrypted: i=1; AJvYcCVSPYhNytHXZ2rXCJNNH+Aw5DdWXZxCs6YnimvfQeDuiiyAmFZoYtSC2Cce7O8IU5YTJEXRV5wcY3kZL4d74SNU+NG0CDi656eJVQ==
X-Gm-Message-State: AOJu0Yw5DuG0RPmutLhy9TjB7WM+vJB1jdIfPh0jciwM0pTg6QKSUEVD
	nu+X6MpUuIB49W4+AQPYjKc7Y60wrxmbKcXkuJx+0k+LGDuRf/hcs8E431nxbtA=
X-Google-Smtp-Source: AGHT+IEsMZJmc0GRfwnGJXawzgQpJTLYGNhY37MgDtgsSTzGDBp6EPH/FvyBY3q5m6FyKXNVAkhfqw==
X-Received: by 2002:a05:6a21:99a6:b0:1af:a4a5:a26a with SMTP id adf61e73a8af0-1b26f0f25c3mr13691235637.1.1717505284134;
        Tue, 04 Jun 2024 05:48:04 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:327b:5ba3:8154:37ed])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f6323ebc69sm83042885ad.211.2024.06.04.05.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 05:48:03 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Shuah Khan <shuah@kernel.org>
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Atish Patra <atishp@atishpatra.org>,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org
Subject: [PATCH v6 10/16] RISC-V: KVM: Allow Zca, Zcf, Zcd and Zcb extensions for Guest/VM
Date: Tue,  4 Jun 2024 14:45:42 +0200
Message-ID: <20240604124550.3214710-11-cleger@rivosinc.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240604124550.3214710-1-cleger@rivosinc.com>
References: <20240604124550.3214710-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Extend the KVM ISA extension ONE_REG interface to allow KVM user space
to detect and enable Zca, Zcf, Zcd and Zcb extensions for Guest/VM.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Acked-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/uapi/asm/kvm.h | 4 ++++
 arch/riscv/kvm/vcpu_onereg.c      | 8 ++++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index db482ef0ae1e..71b17a6799e6 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -169,6 +169,10 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZACAS,
 	KVM_RISCV_ISA_EXT_SSCOFPMF,
 	KVM_RISCV_ISA_EXT_ZIMOP,
+	KVM_RISCV_ISA_EXT_ZCA,
+	KVM_RISCV_ISA_EXT_ZCB,
+	KVM_RISCV_ISA_EXT_ZCD,
+	KVM_RISCV_ISA_EXT_ZCF,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index 09f0aa92a4da..f68b15b15f0e 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -49,6 +49,10 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(ZBKC),
 	KVM_ISA_EXT_ARR(ZBKX),
 	KVM_ISA_EXT_ARR(ZBS),
+	KVM_ISA_EXT_ARR(ZCA),
+	KVM_ISA_EXT_ARR(ZCB),
+	KVM_ISA_EXT_ARR(ZCD),
+	KVM_ISA_EXT_ARR(ZCF),
 	KVM_ISA_EXT_ARR(ZFA),
 	KVM_ISA_EXT_ARR(ZFH),
 	KVM_ISA_EXT_ARR(ZFHMIN),
@@ -134,6 +138,10 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_ZBKC:
 	case KVM_RISCV_ISA_EXT_ZBKX:
 	case KVM_RISCV_ISA_EXT_ZBS:
+	case KVM_RISCV_ISA_EXT_ZCA:
+	case KVM_RISCV_ISA_EXT_ZCB:
+	case KVM_RISCV_ISA_EXT_ZCD:
+	case KVM_RISCV_ISA_EXT_ZCF:
 	case KVM_RISCV_ISA_EXT_ZFA:
 	case KVM_RISCV_ISA_EXT_ZFH:
 	case KVM_RISCV_ISA_EXT_ZFHMIN:
-- 
2.45.1


