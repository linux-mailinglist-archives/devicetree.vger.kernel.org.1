Return-Path: <devicetree+bounces-112158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EDACD9A13ED
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 22:30:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7CD1C1F24217
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 20:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD56F2194AF;
	Wed, 16 Oct 2024 20:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="iPfGJN9S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE2F2141B4
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 20:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729110513; cv=none; b=VK3Ra9F1mO/4Di3jMXbfVnfl0wUKti7fwN5Nk1mDSoT/74LfJrAmaKHLNGkFxY4PP0w4Rm4zg40fGoFTUORLYceSwTMm2vZ1+FbX4KUrXYJyRa3DN9BUvQRefXfs2thyxB3bxcNp9yujpL5hEyycdn0eiRX+gOYHUSe4Ltluv4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729110513; c=relaxed/simple;
	bh=hWrxMwx28beAbt4lP5Ac/wQvJLuzeBKa8rPDkzKEZSY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MoC/RcDTuDRICdz0+J/yACt1LHXRW1vmbuj5G64ry8Fj2YLWKzm4GpkfW2N6Vk1aJvYMz7CUcJgJmzF897wEoMugelv5rfbdAAJx1pauqkRT4SUEybckWczNXON50Xgn+3X4P9GwMg9ollk0q0rTOrPuYnWfoBLFAf1m/eXmnRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=iPfGJN9S; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2e28b75dbd6so173758a91.0
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 13:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1729110512; x=1729715312; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yDDaRB4PMyQ9/gql9k5VOFo/XTjSV8DD59ducmwypkQ=;
        b=iPfGJN9S2VX9j4p/Q3i6ThucG/sou+VKRuane39RQ0EutYcuzRZp0oz3iYCdqr2WeX
         CeKKwWfGXFEw6aRxH6OFXuX4ptbwnhD3SZwPaG3bn+VMH57RtHqbZm0zQ2goy/RHLxqa
         rRf6CDw1OwA98w/LfJi0fhEkpj+mn9+Qbptv6wNmzOpdH4aqP7ImLbnb+jynEKQXFxFE
         uAvS3DLoDqasRbeZ6mYDNJkZh4aqisHk9ehonLjqEnGq29wm8pTICW3HDo2BCn8QV5hW
         YZNqBj5IOvhkg4zDzbvRJtKS4nR62TYTRu73Qg6FOjdtqruQI8zBIf5zh4DMmjFthuPL
         QQKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729110512; x=1729715312;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yDDaRB4PMyQ9/gql9k5VOFo/XTjSV8DD59ducmwypkQ=;
        b=nr6JuN+z3tzUx4tBKcaZzD2N5qZLzGg2bBIb3WxgSX6ZHBRqyikMt40M/+dZKrwoTi
         1NeP2x6nJ6f85oX4epFi83MDElVjknEa6eJ9V4QCwjiWvWXDOvnGqs1j6xWTUf0hPewk
         QgwbiD1b95nFGwzMmLHUSaWfohsdaanGbpgp21dDiK5OUNkqC1CVJozSgxMM6nu2JzZp
         HXzoDBYjOVHNhWmMr81EOc7uDHoNbvjaeSvNaARxAVJTfJ/9SgTRzUT3g9JDIef7+SRF
         HiV+qWDsLM51rNBNY5a3KHk9JK1Ktk0FSGc9L5FT/FSytkW4BxnjqWwOLm798u4M9OQ9
         YJsA==
X-Forwarded-Encrypted: i=1; AJvYcCX/gdkw5oIAJDuNYFNZ5IOMZKblgwqfvoJeFq6+u87iRo3MIFKOQPGA4xuHkRxrw9agQ7PRcWw8xQIc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8YdqrSfF8gdVAufMmlU2FDNM4vrW54F2TuoeoCnRiX6eDDqcO
	McceF/9Xg/oUE5iXlJweyR/ViqjEkt1W2GGtdkMvAD12dyr5drg8YMKNwr+j44A=
X-Google-Smtp-Source: AGHT+IGd95Nmg0ggJul1Nr8wTLHIFKzUNFoXxBz4pua5goLKaPs4AurYTi27dLM3qyJ4bgLA2nsYeA==
X-Received: by 2002:a17:90a:644e:b0:2e2:ba35:3574 with SMTP id 98e67ed59e1d1-2e3152ca49bmr21323024a91.11.1729110511688;
        Wed, 16 Oct 2024 13:28:31 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e3e08f8f89sm228613a91.38.2024.10.16.13.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 13:28:31 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Atish Patra <atishp@atishpatra.org>,
	linux-kselftest@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
	Shuah Khan <shuah@kernel.org>,
	devicetree@vger.kernel.org,
	Anup Patel <anup@brainfault.org>,
	linux-kernel@vger.kernel.org,
	Jonathan Corbet <corbet@lwn.net>,
	kvm-riscv@lists.infradead.org,
	Conor Dooley <conor@kernel.org>,
	kasan-dev@googlegroups.com,
	linux-doc@vger.kernel.org,
	Evgenii Stepanov <eugenis@google.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v5 08/10] riscv: hwprobe: Export the Supm ISA extension
Date: Wed, 16 Oct 2024 13:27:49 -0700
Message-ID: <20241016202814.4061541-9-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20241016202814.4061541-1-samuel.holland@sifive.com>
References: <20241016202814.4061541-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Supm is a virtual ISA extension defined in the RISC-V Pointer Masking
specification, which indicates that pointer masking is available in
U-mode. It can be provided by either Smnpm or Ssnpm, depending on which
mode the kernel runs in. Userspace should not care about this
distinction, so export Supm instead of either underlying extension.

Hide the extension if the kernel was compiled without support for the
pointer masking prctl() interface.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v5:
 - Update pointer masking spec version to 1.0 in hwprobe documentation

Changes in v2:
 - New patch for v2

 Documentation/arch/riscv/hwprobe.rst  | 3 +++
 arch/riscv/include/uapi/asm/hwprobe.h | 1 +
 arch/riscv/kernel/sys_hwprobe.c       | 3 +++
 3 files changed, 7 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 85b709257918..b9aec2e5bbd4 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -239,6 +239,9 @@ The following keys are defined:
        ratified in commit 98918c844281 ("Merge pull request #1217 from
        riscv/zawrs") of riscv-isa-manual.
 
+  * :c:macro:`RISCV_HWPROBE_EXT_SUPM`: The Supm extension is supported as
+       defined in version 1.0 of the RISC-V Pointer Masking extensions.
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: Deprecated.  Returns similar values to
      :c:macro:`RISCV_HWPROBE_KEY_MISALIGNED_SCALAR_PERF`, but the key was
      mistakenly classified as a bitmask rather than a value.
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 1e153cda57db..868ff41b93d6 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -72,6 +72,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZCF		(1ULL << 46)
 #define		RISCV_HWPROBE_EXT_ZCMOP		(1ULL << 47)
 #define		RISCV_HWPROBE_EXT_ZAWRS		(1ULL << 48)
+#define		RISCV_HWPROBE_EXT_SUPM		(1ULL << 49)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
index cea0ca2bf2a2..0ac78e9f7c94 100644
--- a/arch/riscv/kernel/sys_hwprobe.c
+++ b/arch/riscv/kernel/sys_hwprobe.c
@@ -150,6 +150,9 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 			EXT_KEY(ZFH);
 			EXT_KEY(ZFHMIN);
 		}
+
+		if (IS_ENABLED(CONFIG_RISCV_ISA_SUPM))
+			EXT_KEY(SUPM);
 #undef EXT_KEY
 	}
 
-- 
2.45.1


