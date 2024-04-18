Return-Path: <devicetree+bounces-60548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F038A9A21
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:45:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F448283588
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB7021635A6;
	Thu, 18 Apr 2024 12:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="orXBAWIl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6C91161326
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713444244; cv=none; b=k9suw1bKDX8NmFmRjuAiMBauI9Nmk7J1priPJsD8JFa7lb9aBe0iqMRuqZNVgf0aaIrwNGj1J29VlmFFH3+KSFUopVC/v3vZZFN+ZBjwp0BLZ2xwEY4AGjnVhbTfbSbb4QHyC9uCVde1rK38LyRKQB0kcVJ2Z7G4SWKnuqpyizI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713444244; c=relaxed/simple;
	bh=2meeqYrGqS6N+9ES03sW/IZ0HWVimfJczOdorGfrJB4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Gw3TbyUZ4lmgTJFa+SRwhEauAzmJIoD4RycWIX5MX4Zz5KAInUMRu9+QlEOaQFlr9d2ZCukUGbzdxqBSVMLrIlDRlnZCpJG5+D/BpZXEf9RnZoc4iJfwOJ9fzv+qMCp2PCa2jUXctuRu8/X+CfV4FxcMHNXo9/Y7MNWhz22ezHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=orXBAWIl; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d87c661031so57341fa.0
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 05:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713444241; x=1714049041; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=av0fCRvJ5d6BdL5At0wE/CNS0oRVP43ZLfrJceTJ89w=;
        b=orXBAWIlCbFEPZnXQnevS9f95mR5781Pc2yepFZQDAFvlJNBdvAcLHH8vprt+kGonx
         u/y21dbj5GkzC7GC9zD2/TDSztHegfMNMN2C/DhINA2H23Kk5mfXmCCyvY+gHjagQ+Hx
         oaNLoRtTXs5HQDI1JZgqE/2mtGYT+M2IaaZRjHo1RF13bMsHsiJE5d1wYa2P4OdVwI/A
         7BVKyu+mMSKhRKMcLyd/ObTNE0DshORErxAfHhUT+3WDt27HEN2cxYP1ZMIOX/m2Rzmg
         m50MJceZivYeNEpP/zgsWdA0CNd/KAvsGenYKqMMettqNaLTycWsPrXjixBOhvkaLotl
         ORBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713444241; x=1714049041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=av0fCRvJ5d6BdL5At0wE/CNS0oRVP43ZLfrJceTJ89w=;
        b=oSli0gFDI4zxzH6n0R6vkHgvYd89Mbifm6iOLWQewq/wl/xeLqyyuQd4P141gOXoEc
         XO0U/e069H+eL9h4CuNPTP6Je2mjYnVIWJqyazVj78nC5hEvrSzYxlw7i+HLZqSl3PAT
         sH/NMX9MkE9HQgMilKMyyuB3JNxXxGQMRedRvl50K3IT9VJ3wdh5TFj2sfMMmH9VRCQ0
         8mL8LuMbac104+aEGeaeMimJC4LVN1NP8yuQEEtOLaxXeNu0QjhQ8GNWyQvM9UqgxIvh
         S/CDTjN7zMMuq1QjS4JBKIMD61uflfClkcjz0tArVlfED1BmfCDsccGuzh+k2BenI/dD
         nBrw==
X-Forwarded-Encrypted: i=1; AJvYcCW/RrOvsKtcOD+x3mhPNzWr4Tli8PJr7lRj23MxMNRkM5RYmRsl7EdcGxiSduJtIslUz4egnn4we+UTKWi+p0rJeusC3icl2EoI9A==
X-Gm-Message-State: AOJu0YyVrDyYSqQFShUuSUgPn/nCdhy2t02heQnOCbDAEfbvM2KONMKt
	k6V5DvV/EGHAIigq0NMJrYM4W8ZUvtqT77rV8RNOAz8zmV8j05KU9jW+MJopsog=
X-Google-Smtp-Source: AGHT+IHdzMsUCMCexL1xcSXK55gyqNVYHzfsqQON0oQtcwPFlYxqOUNzTjfk86rgRUdr+Vw8mFv+bw==
X-Received: by 2002:a2e:3a19:0:b0:2da:320a:6739 with SMTP id h25-20020a2e3a19000000b002da320a6739mr1487240lja.1.1713444241121;
        Thu, 18 Apr 2024 05:44:01 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:7b64:4d1d:16d8:e38b])
        by smtp.gmail.com with ESMTPSA id bi18-20020a05600c3d9200b00418d5b16fa2sm3373412wmb.30.2024.04.18.05.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 05:44:00 -0700 (PDT)
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
Subject: [PATCH v2 06/12] RISC-V: KVM: Allow Zca, Zcf, Zcd and Zcb extensions for Guest/VM
Date: Thu, 18 Apr 2024 14:42:29 +0200
Message-ID: <20240418124300.1387978-7-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240418124300.1387978-1-cleger@rivosinc.com>
References: <20240418124300.1387978-1-cleger@rivosinc.com>
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
---
 arch/riscv/include/uapi/asm/kvm.h | 4 ++++
 arch/riscv/kvm/vcpu_onereg.c      | 8 ++++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index 35a12aa1953e..57db3fea679f 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -168,6 +168,10 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZTSO,
 	KVM_RISCV_ISA_EXT_ZACAS,
 	KVM_RISCV_ISA_EXT_ZIMOP,
+	KVM_RISCV_ISA_EXT_ZCA,
+	KVM_RISCV_ISA_EXT_ZCB,
+	KVM_RISCV_ISA_EXT_ZCD,
+	KVM_RISCV_ISA_EXT_ZCF,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index 12436f6f0d20..a2747a6dbdb6 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -48,6 +48,10 @@ static const unsigned long kvm_isa_ext_arr[] = {
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
@@ -128,6 +132,10 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
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
2.43.0


