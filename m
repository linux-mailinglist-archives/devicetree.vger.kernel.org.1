Return-Path: <devicetree+bounces-67526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9376F8C8893
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 16:54:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C42AC1C21BE1
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 14:54:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3603067A0D;
	Fri, 17 May 2024 14:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="hUSWJbkO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459316CDAD
	for <devicetree@vger.kernel.org>; Fri, 17 May 2024 14:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715957604; cv=none; b=m8tZwOvTrcJhLVtvZynnncPnpXPUm0Ib2mKOqkifAeAr5ZbwHZPhOxEXLhmlDajyRcigPfGfnK1/byjScLU+RrDf1sqQzW0IXZ3L0nQS6yOmTu85uBrzV+UsxUy2s2sRzcy05MK4Xa2R6uLQ7OtqS7AHxtjEm0Fp43kfiJl9GNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715957604; c=relaxed/simple;
	bh=tISoTGebS4407fh89NkrPP6RNVyQwmfvD5bdgCJ5Fi8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=autIIvpB46m/Mxs8JivyNpGHZro9taa4iw93usLHzI78H8GEbsXHUtOibJu3r4Nf21JNdC4R1WMiShJmV8/oD89ajkLxIO7ACH0qH2ZonH9GOF82UV/9lV69URUKbJBqeDmRUkcFgmpZ3HYfJROX/GrmgJbItpoK3RB0I+w5Sqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=hUSWJbkO; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42011507a51so342185e9.0
        for <devicetree@vger.kernel.org>; Fri, 17 May 2024 07:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1715957601; x=1716562401; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p3qT2c8/AbHM1mLG3KaUUQ1VJHCZOCgVEzdfPOCGq3I=;
        b=hUSWJbkOrd8fd3IhzU7WE5nR9568/50kV5q3QkkVBPIQYBsz+2CA7WUF+Ls/2gwjaW
         tXnrRa/507UoPw527EJXfEPNUEWD/PtgLBu2/zP92iaI5R551OGyJw4o1plJ+Kgxia4f
         myKv6L6QkhH7mB7UmzFSuEphZafclCzwRdf8Mfv24YLav0KPj36f0wxmSU8M8PswYYb2
         6Tk88dy9FRujj30XYCBi4CuhFu5T/u+kQOm7IqbPvsUMDn2eV2tdAhixDobk7Jt/j626
         GMSLD8SuOjxCKQEMz917PJ+MrXL4TOn8hjyIppXrwbsBkAfwpD0nPRTUxdNWBYcUnYtv
         v1Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715957601; x=1716562401;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p3qT2c8/AbHM1mLG3KaUUQ1VJHCZOCgVEzdfPOCGq3I=;
        b=cLfR2g66EMf5yiQFWLJJH6FcHivgBmP/6uOKyYlEqmfaZqpFrO0VbAH5GGD1m6purn
         WDnd38/waLfpZGgXvmqeIeKFRhkM9w4cc77StLXqkZzSHknoquNnZmjS1vQeAv2ZnBI9
         kn8QINAMw48vGUk8BPrGnZGTd5iSBxdAUtJimckrkeisVxh/d0Y29DZWm+LAGi8DOizd
         MvcowgW9e0r0LG80JHM+GfwLGO+CvopBD4HbiP9l7fzwTugesZxiRRtaiShDp8lzl7Hi
         HVXNgHQQ0bBOsxdc0MNOyySNqHe+eTNYAS/wTGepxSR/cS/7GkFFjaK0cZi+LJ8WjLWZ
         5EMg==
X-Forwarded-Encrypted: i=1; AJvYcCWEu5fj7x1UHWOrtNAIlFTD6IZUiqyjh93MHMP56HJUx62WxkgfwFwkNY19D3t4zPS7wwmAsVSHx5soY056LRJcDuEdXIcRtRJ8Cg==
X-Gm-Message-State: AOJu0Yzh2FpKyMNZJSUMyiv7I9pq6ypCZyvH2ErUPkCyYiev97sdeJUU
	rk9KPpgr6JvJG5pqoneNlO9yov41w07rz1co/rTrLIZSuNNBP46dx5Di7vnEFZo=
X-Google-Smtp-Source: AGHT+IGmFz2dCCSoIGSZgcVXd3L2iIvNLJ1n+dSnLeRekQmogP6yVON/V7TWTOPfu9vhDYg4e13TwQ==
X-Received: by 2002:a05:600c:5116:b0:418:ef65:4b11 with SMTP id 5b1f17b1804b1-41feac59e8amr185538735e9.2.1715957600825;
        Fri, 17 May 2024 07:53:20 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:46f0:3724:aa77:c1f8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce9431sm301723695e9.28.2024.05.17.07.53.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 07:53:20 -0700 (PDT)
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
Subject: [PATCH v5 04/16] RISC-V: KVM: Allow Zimop extension for Guest/VM
Date: Fri, 17 May 2024 16:52:44 +0200
Message-ID: <20240517145302.971019-5-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240517145302.971019-1-cleger@rivosinc.com>
References: <20240517145302.971019-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Extend the KVM ISA extension ONE_REG interface to allow KVM user space
to detect and enable Zimop extension for Guest/VM.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 arch/riscv/include/uapi/asm/kvm.h | 1 +
 arch/riscv/kvm/vcpu_onereg.c      | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index b1c503c2959c..35a12aa1953e 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -167,6 +167,7 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZFA,
 	KVM_RISCV_ISA_EXT_ZTSO,
 	KVM_RISCV_ISA_EXT_ZACAS,
+	KVM_RISCV_ISA_EXT_ZIMOP,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index f4a6124d25c9..c6ee763422f2 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -60,6 +60,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(ZIHINTNTL),
 	KVM_ISA_EXT_ARR(ZIHINTPAUSE),
 	KVM_ISA_EXT_ARR(ZIHPM),
+	KVM_ISA_EXT_ARR(ZIMOP),
 	KVM_ISA_EXT_ARR(ZKND),
 	KVM_ISA_EXT_ARR(ZKNE),
 	KVM_ISA_EXT_ARR(ZKNH),
@@ -137,6 +138,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_ZIHINTNTL:
 	case KVM_RISCV_ISA_EXT_ZIHINTPAUSE:
 	case KVM_RISCV_ISA_EXT_ZIHPM:
+	case KVM_RISCV_ISA_EXT_ZIMOP:
 	case KVM_RISCV_ISA_EXT_ZKND:
 	case KVM_RISCV_ISA_EXT_ZKNE:
 	case KVM_RISCV_ISA_EXT_ZKNH:
-- 
2.43.0


