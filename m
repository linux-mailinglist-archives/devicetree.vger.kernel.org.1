Return-Path: <devicetree+bounces-97776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DD5963749
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 03:04:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A5DC28212A
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 01:04:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB63D146592;
	Thu, 29 Aug 2024 01:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="VfiSCjzu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC9C136663
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 01:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724893331; cv=none; b=n+PCWVY/MjZB8GgIoieEUeinaMAB9C11qfntQp2DikHXKa1IAPK9dUTUvmZtPhXsu0Ga/3C8tr8MornruPj1lqXOMI5eRymH1JVEAb5o/jV91vINpjK9iJ4fvycg/CvpGYXzU0Y8MSn3jN0+dIV1yxkblgQ6J5p0b/zx87aoVBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724893331; c=relaxed/simple;
	bh=FTANMXx9niaisfK+aQOXv+t1NRHVUzMLkPl/sK5KrN4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DntB7pV+HXv9g8QAtE2y89Zv3wMfACsdEAQIhbjUMtFF3x4AoH1UasExuhweRNhsVDJY3nLgAxBOIFYtGhyOQ2krfLkkzOt4r12nxUV9BfQUs+IVDjIbd5cSRp51lRhICQ/lZAMGBxnuQY8bA7XIxhpUhuVwFKrsxA2m7jsgAzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=VfiSCjzu; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-714226888dfso128435b3a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 18:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1724893329; x=1725498129; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UVeUN5Mn4knmfhlWREJV6zJkPuiqFserRZxouOs1BJI=;
        b=VfiSCjzuwhvb4Zr591fzQqVeOyP2asgXO4s2l0vzl9CJQnPgZBrJg2aXPRD1QHKn63
         e3tyGJzQNUWi5+DtPCmqhflejxz/AYqgJ5aWoF6kMFjvBAP8jVu+gH7zx3P6zWiPk+sp
         OO5yIFliWuHTgnbenuN7yWUgjFZNPx+SF5jaBW9r8/xqUpG6KhYnqfEmd09EmlYKBbZk
         dvb6nCeZLkthdHZpGOKtJVo9TAXIa74evM1cMZrbWiExTsxmKRmq+cJF6jdV5JNFGfMC
         sDd7/vniF75iV0I8lHhsIj0wUpesjILpm9G5U3komg8L0Ms8XLj49ZzlqXUsO6spVOvq
         ygsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724893329; x=1725498129;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UVeUN5Mn4knmfhlWREJV6zJkPuiqFserRZxouOs1BJI=;
        b=EUoIpczFtAGrlRzAoP5ytauIemDzOWng51tnmGVU1lj/NDbPbQW2sN2CyGjYDkqrP/
         brNzY9Oux37degEMg19hmBkGQLiNEiuzXKv+fDC6GFcAsItN4q5am4tjAWAqF54KEEtg
         wHG4OAEdyTxpE6bNjZg6geQoOvrehSjTwZJFgZiJ3sSl/9/sZokPxYvhI2sWwwSNVrMO
         lOy23fiTjzwICnz/jktH1PUs97upnXlaxWbyzz8PXICq7oxuvhn0P98JJl8VRt+bAYgM
         DzQtKkYM8NXInA1NCA989YAUU9L0uynQYLrdMKv5oyktDbV7GIKb+1CcxcFRmrUMYN7N
         wVng==
X-Gm-Message-State: AOJu0YyMPMrL9dOpg1/9lOwbPOm77koXX4sJ1QVBxW3EAA53U39zCIA0
	SgN3GCmsoGLNRoZRXzRsbuQDZPOq+xL+p9IeWveU7Qfnq2Cli0n1zmWmpWAubh8=
X-Google-Smtp-Source: AGHT+IE20Iz5wZXTitHFQF8jSuAcL+G/x9Gpo+1x4hS8Jq+hDLNQBGiIr2r+fj9xMkWCy+9sL14ZDA==
X-Received: by 2002:a05:6a21:e94:b0:1c0:f315:ec7e with SMTP id adf61e73a8af0-1cce101e3eamr1074001637.28.1724893328672;
        Wed, 28 Aug 2024 18:02:08 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-715e5576a4dsm89670b3a.17.2024.08.28.18.02.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 18:02:08 -0700 (PDT)
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
Subject: [PATCH v4 09/10] RISC-V: KVM: Allow Smnpm and Ssnpm extensions for guests
Date: Wed, 28 Aug 2024 18:01:31 -0700
Message-ID: <20240829010151.2813377-10-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240829010151.2813377-1-samuel.holland@sifive.com>
References: <20240829010151.2813377-1-samuel.holland@sifive.com>
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

(no changes since v2)

Changes in v2:
 - New patch for v2

 arch/riscv/include/uapi/asm/kvm.h | 2 ++
 arch/riscv/kvm/vcpu_onereg.c      | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index e97db3296456..4f24201376b1 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -175,6 +175,8 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZCF,
 	KVM_RISCV_ISA_EXT_ZCMOP,
 	KVM_RISCV_ISA_EXT_ZAWRS,
+	KVM_RISCV_ISA_EXT_SMNPM,
+	KVM_RISCV_ISA_EXT_SSNPM,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index b319c4c13c54..6f833ec2344a 100644
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
@@ -129,6 +131,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_M:
 	/* There is not architectural config bit to disable sscofpmf completely */
 	case KVM_RISCV_ISA_EXT_SSCOFPMF:
+	case KVM_RISCV_ISA_EXT_SSNPM:
 	case KVM_RISCV_ISA_EXT_SSTC:
 	case KVM_RISCV_ISA_EXT_SVINVAL:
 	case KVM_RISCV_ISA_EXT_SVNAPOT:
-- 
2.45.1


