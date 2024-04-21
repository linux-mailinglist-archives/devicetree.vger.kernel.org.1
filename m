Return-Path: <devicetree+bounces-61155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 631FA8ABDF7
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 03:05:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86B551C20CD2
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 01:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1A3CDDBE;
	Sun, 21 Apr 2024 01:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="hy0LN10F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 993E1D517
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713661494; cv=none; b=WuI7lXDr6Xck5jpVCMHCcUze72NkT/3Jd6yVPC+W8nMKrEE0jwhEcWWlNnwbT9rF8IJvG8NbY+J4smm4jzE0LWLqMWrTswCnP5fhK/8KA3H+619t6n8XJG4knxEPv4TfG4a8hUkHv8uwcC2vDGebLCywD3ajCSz3a4q7APhjITE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713661494; c=relaxed/simple;
	bh=2wg73hE7GfHtQm3h56N22EjVsvIgG2uOGknAS+HQCok=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=orzUcjRRdlyNNmRYGXdA168UDGR896O7PsAl/ensosUKAIADUEl8kBuq+RBNnvDXdcnHGm7npZDu7HPaXqiEmlWY4sYkrZIOSHKW1qx8pk4syBmJLNeG3nreu3FjI5NFngBJPx4zQTxNCSEaN6wTVqV/kdh0Vj9pB1BGz/ABeTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=hy0LN10F; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-5dcc4076c13so2244955a12.0
        for <devicetree@vger.kernel.org>; Sat, 20 Apr 2024 18:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713661493; x=1714266293; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EwiZxNeYR2dsOfUqNH+FhNResBaJwUAOM6PgWjZ96ng=;
        b=hy0LN10FKAUvGCAyJySBNGWy+JOZYuTWFCC/bV9t4RQIBLWF8VAdoJmLoOqzUDAoXd
         OmctypurqvMJW8dn0R0l3SGfieF2dPI19IESEcEuswKsXYBrgLzvhKfPOkEOqIM9YBwC
         NTE7gVkthaaYnVIHpckRbWl90x2Y7/AYGPGXL9A509kH3tHKCAb/kWUJNSs8b+6cYoR6
         RoMzlRfirkpiHAcXlOg/hpiPtHXaMjjXkYR9mrTlrk1dc32mq6k1FHi2iUj5WnqyK4jX
         x8KlbY551195/scMII92ujL7TKmBmGf5I9dL2mOvL2nbbDgA8j8C+atp5Xh20siIFrAQ
         sJBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713661493; x=1714266293;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EwiZxNeYR2dsOfUqNH+FhNResBaJwUAOM6PgWjZ96ng=;
        b=bn6q09TrBeSa/nSVMT8VYG7mHSHVE3snj5J4j/7xPCw9t9yU5Y1BIMcX+ddH+8iQcn
         SyYqU6WnHVujB1+FD7kHaUbnBTA+Qrfs3amLwMK5u99eYPSR3ikqLd31Mbs+82HlfsKy
         BcIrQnmVqTmkXT7zhVfJIEK4EyRZsjtVWt2EyyveyLEDRZ6AtWJ/L11q8w6d8PouqABY
         zE6Q18BbRzVUuoY1xrZHUxNqG8Jr2hp27llHfiq/dI/D9r1RjDOqkdeNlnvs2GctzW/p
         E9oP03G2atf4L/+U9Bs4jGjDlmgdszVTMVkXGE/srSB2Ay8C5+zpU4blxTLeWd8mCYZe
         QpIw==
X-Forwarded-Encrypted: i=1; AJvYcCVpJiNdlXI/CVaF7lLSJZPDNykbpyu4O3LynsoJdb8aW2u+gtW2zB8s7Ed4ZoJHDBJwspzb+MdrUgpCSaKGCLcEj6bKkn8pbml+hg==
X-Gm-Message-State: AOJu0YwQgynjh8p31iBc1qoWCkESG2sKvWNBES8lOJ57VwNs6apUtnQ+
	fKCYDNilQj6hPFyhJ6G5rtq/KtesuS1W6wUJj9K7wT+V7BB4ZGzXlbgH6oABDQQ=
X-Google-Smtp-Source: AGHT+IHEqlVr8XjJq/bey4tfJdpqb4xpHnlnsfP9yuzhwez6j8pGLKCeBHJDB6I2Vja1k1/DoW2S5Q==
X-Received: by 2002:a17:90b:3651:b0:2ac:e2c6:3d40 with SMTP id nh17-20020a17090b365100b002ace2c63d40mr4937324pjb.18.1713661492951;
        Sat, 20 Apr 2024 18:04:52 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d6-20020a63d646000000b005dc8702f0a9sm5249627pgj.1.2024.04.20.18.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Apr 2024 18:04:51 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Sat, 20 Apr 2024 18:04:36 -0700
Subject: [PATCH v3 04/17] riscv: vector: Use vlenb from DT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240420-dev-charlie-support_thead_vector_6_9-v3-4-67cff4271d1d@rivosinc.com>
References: <20240420-dev-charlie-support_thead_vector_6_9-v3-0-67cff4271d1d@rivosinc.com>
In-Reply-To: <20240420-dev-charlie-support_thead_vector_6_9-v3-0-67cff4271d1d@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Conor Dooley <conor.dooley@microchip.com>, Evan Green <evan@rivosinc.com>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1713661481; l=3089;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=2wg73hE7GfHtQm3h56N22EjVsvIgG2uOGknAS+HQCok=;
 b=oM9AC2pUhODrL99+ED3B1dn5wieUo9QyYC4T1kj5tzYQfCtIJrkTGR8vysGpRIw+kQlGk+mi7
 bsmO7wcPIwDB1FbAfGYW4T6Jm4ic0X5z8Xk03t1wB+GrmxR6X8cHp4S
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

If vlenb is provided in the device tree, prefer that over reading the
vlenb csr.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/cpufeature.h |  2 ++
 arch/riscv/kernel/cpufeature.c      | 26 ++++++++++++++++++++++++++
 arch/riscv/kernel/vector.c          | 13 +++++++++----
 3 files changed, 37 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm/cpufeature.h
index 347805446151..809f61ffb667 100644
--- a/arch/riscv/include/asm/cpufeature.h
+++ b/arch/riscv/include/asm/cpufeature.h
@@ -31,6 +31,8 @@ DECLARE_PER_CPU(struct riscv_cpuinfo, riscv_cpuinfo);
 /* Per-cpu ISA extensions. */
 extern struct riscv_isainfo hart_isa[NR_CPUS];
 
+extern u32 riscv_vlenb_dt[NR_CPUS];
+
 void riscv_user_isa_enable(void);
 
 #if defined(CONFIG_RISCV_MISALIGNED)
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index c6e27b45e192..48874aac4871 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -35,6 +35,8 @@ static DECLARE_BITMAP(riscv_isa, RISCV_ISA_EXT_MAX) __read_mostly;
 /* Per-cpu ISA extensions. */
 struct riscv_isainfo hart_isa[NR_CPUS];
 
+u32 riscv_vlenb_dt[NR_CPUS];
+
 /**
  * riscv_isa_extension_base() - Get base extension word
  *
@@ -656,6 +658,28 @@ static int __init riscv_isa_fallback_setup(char *__unused)
 early_param("riscv_isa_fallback", riscv_isa_fallback_setup);
 #endif
 
+static void riscv_set_vlenb_from_dt(void)
+{
+	int cpu;
+
+	for_each_possible_cpu(cpu) {
+		struct device_node *cpu_node;
+
+		cpu_node = of_cpu_device_node_get(cpu);
+		if (!cpu_node) {
+			pr_warn("Unable to find cpu node\n");
+			continue;
+		}
+
+		if (!of_property_read_u32(cpu_node, "riscv,vlenb", &riscv_vlenb_dt[cpu])) {
+			of_node_put(cpu_node);
+			continue;
+		}
+
+		of_node_put(cpu_node);
+	}
+}
+
 void __init riscv_fill_hwcap(void)
 {
 	char print_str[NUM_ALPHA_EXTS + 1];
@@ -675,6 +699,8 @@ void __init riscv_fill_hwcap(void)
 	} else {
 		int ret = riscv_fill_hwcap_from_ext_list(isa2hwcap);
 
+		riscv_set_vlenb_from_dt();
+
 		if (ret && riscv_isa_fallback) {
 			pr_info("Falling back to deprecated \"riscv,isa\"\n");
 			riscv_fill_hwcap_from_isa_string(isa2hwcap);
diff --git a/arch/riscv/kernel/vector.c b/arch/riscv/kernel/vector.c
index 6727d1d3b8f2..fb7f3ca80d9e 100644
--- a/arch/riscv/kernel/vector.c
+++ b/arch/riscv/kernel/vector.c
@@ -32,11 +32,16 @@ EXPORT_SYMBOL_GPL(riscv_v_vsize);
 int riscv_v_setup_vsize(void)
 {
 	unsigned long this_vsize;
+	int cpu = smp_processor_id();
 
-	/* There are 32 vector registers with vlenb length. */
-	riscv_v_enable();
-	this_vsize = csr_read(CSR_VLENB) * 32;
-	riscv_v_disable();
+	if (riscv_vlenb_dt[cpu]) {
+		this_vsize = riscv_vlenb_dt[cpu];
+	} else {
+		/* There are 32 vector registers with vlenb length. */
+		riscv_v_enable();
+		this_vsize = csr_read(CSR_VLENB) * 32;
+		riscv_v_disable();
+	}
 
 	if (!riscv_v_vsize) {
 		riscv_v_vsize = this_vsize;

-- 
2.44.0


