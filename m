Return-Path: <devicetree+bounces-67184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFA88C6E00
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 23:50:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97FE92826A9
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 21:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92CAE15B567;
	Wed, 15 May 2024 21:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="G2A75NTD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F23615B985
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 21:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715809827; cv=none; b=bD2chAm+Tr/WtZ8n1Dlyeyq3VEvDdXt0KucU8aAGZG/Ux3l9ftoYKX9QSOy2wi8Va5rqQFXR465zhQTr7M2AlAuIlYoV02w/mWqh8H7huBOwFz0VfIEI/mRihlOUrbYN5atrShnLX99bvLpio1wukdGOxbpT3A9oaGYtx1Xsbho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715809827; c=relaxed/simple;
	bh=PJLl00JSXWHvsV/oHOhLKcWkE7dzVuiu0in04i+U0L8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oc+3hacx/mo96mDciSqAkP3Rx9wp79CM2Ga2sEBJ510AIlP6/FOnzmM4d8tTswrqCj7TYvmzxImKeeGI0cDZWE8hzGeL88pm/4a6QJNp8nc6uOY/jRUtFfEfJ+qkhQpCSNwaxHWWvvFPs5Re8am8G5M9pAJZcw43KnP00y+Ws/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=G2A75NTD; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6f666caf9abso2432969b3a.1
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 14:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1715809825; x=1716414625; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SLs+h6zNZh7mF7wyHbnkfOw6GN1dWR7g2z29pkelkkw=;
        b=G2A75NTDyOWEthf3RFlzqsbW+f36P+IZLbXHET+03El4Fs2viwLg0f28quC/HuG4pE
         d6ZjauRfAxdAzCfNB9BAG+p8HoofjimWSixvs7nymmItMslpj+p67zs5zAngfjBBXkAR
         t2MM6HmX0/zFc42N0h7HdHmfaZKqId+1G5UvhI7X5hP8lmJl2bvKd/a31ykQlZ6f9hwj
         wObRKNkh46FBKeG4AoWY7IivoZyoGAWkz8Zjc4l5Ov34NOqb1dGzF0HcCocTPht19y9r
         uVnWXpRLyrw5sgpaoJOi21gycUWwcRhpesOuuf4GZsG1/Dghgy9HWGcTYIJmPr+HQJAE
         4cgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715809825; x=1716414625;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SLs+h6zNZh7mF7wyHbnkfOw6GN1dWR7g2z29pkelkkw=;
        b=vxlIcJsjw2pizW8w7g+bPYWq4dTjUp6BIbu5RzM+egfKwOCdKaIn3VtcaaA9LaWC9u
         6S8I4IVYodImbOUbWnXdfGWcSr20LBfpGQXjB7ggr+vq+AVyJS4llC0yP9meJvkz65Kx
         kRh1D/8YN2uSr8TCioxNTmbniFyCTo9ZywYo6VmoYydWBrBTY1nvCYK5cUOnRRbyXar9
         NFk3GnPlG04TXj2hHIFWVCmjt5deupiQeGvrdngBE4E3fTEUVMRdifgpWt4cN5+d8ipg
         CUlqRU/XcIoGfODYsl5RDhe+IT3R94jKjNpFbjCmfbXasiTRWJwPMp47nz13OZA/snyw
         BTSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjhFclrc1y1LQGvN0IO5HlFARgE+Vesf2MOCGCgUdSfCbITrWX72GIjBvtvO3dssDzwtMcQkaFJFqC5d17mOwCaYabXo/yV+7hnQ==
X-Gm-Message-State: AOJu0Yz4VpAAGmxx29RNOPHCyy4n3U8TQ8wPhAVUBdMmY6Q4fqzLdB3C
	1909Obuuyc4hCB+/mjqc+RZ0yA7VN0qUIbQMsSNwVJXrrT8jgoGwyIqm4jzwgi4=
X-Google-Smtp-Source: AGHT+IGEAaUjSboxWJ2duwQsEeAptuaGBNQQH1TifXZ6d134LKtkLFEiWsZJaGRCLjJ0v/CqjmN2Tg==
X-Received: by 2002:a05:6a21:788e:b0:1a7:7358:f108 with SMTP id adf61e73a8af0-1afde0b5c64mr19600162637.24.1715809825401;
        Wed, 15 May 2024 14:50:25 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a827fdsm11638629b3a.60.2024.05.15.14.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 14:50:22 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 15 May 2024 14:50:15 -0700
Subject: [PATCH 2/2] riscv: vector: Use vlenb from DT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240515-add_vlenb_to_dt-v1-2-4ebd7cba0aa1@rivosinc.com>
References: <20240515-add_vlenb_to_dt-v1-0-4ebd7cba0aa1@rivosinc.com>
In-Reply-To: <20240515-add_vlenb_to_dt-v1-0-4ebd7cba0aa1@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715809814; l=3496;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=PJLl00JSXWHvsV/oHOhLKcWkE7dzVuiu0in04i+U0L8=;
 b=PPusZY5yDbyewn4LPOz6zzsAoeQVGhX8cVESMhQXQMjuHBGziZWmOGA/NEGK6N38Apa7YdlR0
 JGRVUT1Zr/bCCs7fZNijKg52638cniW+CprhQnJVbS0uErZnn/Wx36U
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

If vlenb is provided in the device tree, prefer that over reading the
vlenb csr.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/include/asm/cpufeature.h |  2 ++
 arch/riscv/kernel/cpufeature.c      | 47 +++++++++++++++++++++++++++++++++++++
 arch/riscv/kernel/vector.c          | 12 +++++++++-
 3 files changed, 60 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm/cpufeature.h
index 347805446151..0c4f08577015 100644
--- a/arch/riscv/include/asm/cpufeature.h
+++ b/arch/riscv/include/asm/cpufeature.h
@@ -31,6 +31,8 @@ DECLARE_PER_CPU(struct riscv_cpuinfo, riscv_cpuinfo);
 /* Per-cpu ISA extensions. */
 extern struct riscv_isainfo hart_isa[NR_CPUS];
 
+extern u32 riscv_vlenb_of;
+
 void riscv_user_isa_enable(void);
 
 #if defined(CONFIG_RISCV_MISALIGNED)
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 3ed2359eae35..6c143ea9592b 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -35,6 +35,8 @@ static DECLARE_BITMAP(riscv_isa, RISCV_ISA_EXT_MAX) __read_mostly;
 /* Per-cpu ISA extensions. */
 struct riscv_isainfo hart_isa[NR_CPUS];
 
+u32 riscv_vlenb_of;
+
 /**
  * riscv_isa_extension_base() - Get base extension word
  *
@@ -648,6 +650,46 @@ static int __init riscv_isa_fallback_setup(char *__unused)
 early_param("riscv_isa_fallback", riscv_isa_fallback_setup);
 #endif
 
+static int has_riscv_homogeneous_vlenb(void)
+{
+	int cpu;
+	u32 prev_vlenb = 0;
+	u32 vlenb;
+
+	/* Ignore vlenb if vector is not enabled in the kernel */
+	if (!IS_ENABLED(CONFIG_RISCV_ISA_V))
+		return 0;
+
+	for_each_possible_cpu(cpu) {
+		struct device_node *cpu_node;
+
+		cpu_node = of_cpu_device_node_get(cpu);
+		if (!cpu_node) {
+			pr_warn("Unable to find cpu node\n");
+			return -ENOENT;
+		}
+
+		if (of_property_read_u32(cpu_node, "riscv,vlenb", &vlenb)) {
+			of_node_put(cpu_node);
+
+			if (prev_vlenb)
+				return -ENOENT;
+			continue;
+		}
+
+		if (prev_vlenb && vlenb != prev_vlenb) {
+			of_node_put(cpu_node);
+			return -ENOENT;
+		}
+
+		prev_vlenb = vlenb;
+		of_node_put(cpu_node);
+	}
+
+	riscv_vlenb_of = vlenb;
+	return 0;
+}
+
 void __init riscv_fill_hwcap(void)
 {
 	char print_str[NUM_ALPHA_EXTS + 1];
@@ -671,6 +713,11 @@ void __init riscv_fill_hwcap(void)
 			pr_info("Falling back to deprecated \"riscv,isa\"\n");
 			riscv_fill_hwcap_from_isa_string(isa2hwcap);
 		}
+
+		if (elf_hwcap & COMPAT_HWCAP_ISA_V && has_riscv_homogeneous_vlenb() < 0) {
+			pr_warn("Unsupported heterogeneous vlen detected, vector extension disabled.\n");
+			elf_hwcap &= ~COMPAT_HWCAP_ISA_V;
+		}
 	}
 
 	/*
diff --git a/arch/riscv/kernel/vector.c b/arch/riscv/kernel/vector.c
index 6727d1d3b8f2..e04586cdb7f0 100644
--- a/arch/riscv/kernel/vector.c
+++ b/arch/riscv/kernel/vector.c
@@ -33,7 +33,17 @@ int riscv_v_setup_vsize(void)
 {
 	unsigned long this_vsize;
 
-	/* There are 32 vector registers with vlenb length. */
+	/*
+	 * There are 32 vector registers with vlenb length.
+	 *
+	 * If the riscv,vlenb property was provided by the firmware, use that
+	 * instead of probing the CSRs.
+	 */
+	if (riscv_vlenb_of) {
+		this_vsize = riscv_vlenb_of * 32;
+		return 0;
+	}
+
 	riscv_v_enable();
 	this_vsize = csr_read(CSR_VLENB) * 32;
 	riscv_v_disable();

-- 
2.44.0


