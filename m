Return-Path: <devicetree+bounces-61152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EE68ABDEB
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 03:05:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B362281831
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 01:05:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB74D1FAA;
	Sun, 21 Apr 2024 01:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="XZzJnvTT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A4B1FA4
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 01:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713661489; cv=none; b=EglxY3q7iF3cqm++hlQwVPPaemdSW2w+2YMw0BUM1SX/CQi8EjlK4XxA2+hEM28WMNHUWgGK9vSJerSfQva1OBCo0wWOYvqR+hhPp49jnwKPNiyCWOZMuZ0u6ZAW8jE/9zCwlN+uaGIR+FiM9Zh5A3HA/34aZ2pYXs368hqga3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713661489; c=relaxed/simple;
	bh=PYZfCtA79Xr5VNJKr9n7fy84USLuN54khgYv4wgcjQo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gMZyv6M/KVNOckaHWBR7Q2Kraa0vMPMVYP48OxtpprIc6sgrvyn1RNHvJHG/N1QGgrEFW2HqhbUGWsRMJNuXdEbUNhhjyiY6DyN0VWneIMOb10J8lXnbeIXW0kDgnERaHeWdbGZMlQHBlDX+f8nxKnP9qyrOh+JGjnbmTch91KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=XZzJnvTT; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3c70e46f3caso1921189b6e.2
        for <devicetree@vger.kernel.org>; Sat, 20 Apr 2024 18:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713661486; x=1714266286; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BENOyooeW2luxuF+LXOR9WbhBmtYhQIWC+pDPXsnnYI=;
        b=XZzJnvTTmkRLXk549C5zGn6WDZ3wqW+aSuKtK/fk0itBvkWWTVRig9hXGWr9RZ1ykH
         hEXhy+1ZMT1agHbSbSurG9g14lWrA1Sw/v1UvtPXaTqZn+K+06S0lyL3ryQKeb2kW1Ml
         fqsYxX2BWjUlPZamDayAW0IDYXQpHgQYbK+ActBJvKCx8mglDLOUBAR+x/n2hWi0QWg/
         Meg7ymA++teYmzP2gmz0lSK9yJ8mci4R3pMRDwD3ZZr7UGoaXWJZYwKcczLMC/Z1XukN
         fInlD87zRqQYd2ldhWQv5SfnXO3EDJuoz/1OWcKZj+jsZqGfEAeYVnUfThlWb0Uborv6
         UKBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713661486; x=1714266286;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BENOyooeW2luxuF+LXOR9WbhBmtYhQIWC+pDPXsnnYI=;
        b=raXT8PJx3HbZFBnmCHBgdWTmPlbrO20TTao209FLK1wfFSjOqKRT+N/w0fj3ZjNHoH
         mMA6ggtRnLkp7q1nLVCh2Zsffk4K9DkK+ORQxdv0DV5lfvrjbQg5LzcN4Sbzu6TvKzt7
         D7RZLVYII6zesMgtoHH+26aEXMI9HEWd+HBCASSSPQ0l6YxJ7QyDbbaF142GpVmRQxXa
         WNUD0lk9jSF7SdYK8JMVvjDB1iAoFdDw3sT4r0N9oYKZMVsnKw0nJ82G/8VHYXkLMNGA
         f5fUvi/VVtllGuB0CZtTwY436InVjeugaD6IXVxfqfaJ4uxNqdv/P//g79jaNQ0atUMO
         okow==
X-Forwarded-Encrypted: i=1; AJvYcCVviuZbb5Lf8WnuyD2W/0vja1woNjTsX7F3EEENaeyR2p+CyEA9fm+mj1i03MffH4jM+TrF2aC85k3mKoHvnz9phdmxOD0Szf8Yzg==
X-Gm-Message-State: AOJu0Yx8+v0EZmHItJ5TAkI6ScncrWulXtZqF4UGb/kJjngT52QrltRk
	bFrPe2Sj9ZCALed3S+5nXOqFpuQO8FwkMdV9mAzyZDOSDZWV0cFtaEmwRT/BZQU=
X-Google-Smtp-Source: AGHT+IGrdsUBbUNaYaTgeVCuweBER9UFyLrbmgFxXR5eBCGw1LXvTiyR+5eLw/bwpgv5LNi8Gc35tg==
X-Received: by 2002:a05:6871:1c7:b0:229:f8c1:dd5f with SMTP id q7-20020a05687101c700b00229f8c1dd5fmr7724775oad.48.1713661486477;
        Sat, 20 Apr 2024 18:04:46 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d6-20020a63d646000000b005dc8702f0a9sm5249627pgj.1.2024.04.20.18.04.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Apr 2024 18:04:45 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Sat, 20 Apr 2024 18:04:33 -0700
Subject: [PATCH v3 01/17] riscv: cpufeature: Fix thead vector hwcap removal
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240420-dev-charlie-support_thead_vector_6_9-v3-1-67cff4271d1d@rivosinc.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1713661481; l=4740;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=PYZfCtA79Xr5VNJKr9n7fy84USLuN54khgYv4wgcjQo=;
 b=OcTvTlaszxhp9BNuXtnQu2pVt/RdfpklD29f64tz1Ed7d8HfGyFzl+qtx6DltFKhMgNGpaguT
 GfM+xY5CiXMA/LnwQfpDsEPpc+msSxZcYdyyR/3kR3Y288H8iwj91xl
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

The riscv_cpuinfo struct that contains mvendorid and marchid is not
populated until all harts are booted which happens after the DT parsing.
Use the vendorid/archid values from the DT if available or assume all
harts have the same values as the boot hart as a fallback.

Fixes: d82f32202e0d ("RISC-V: Ignore V from the riscv,isa DT property on older T-Head CPUs")
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/include/asm/sbi.h   |  2 ++
 arch/riscv/kernel/cpu.c        | 40 ++++++++++++++++++++++++++++++++++++----
 arch/riscv/kernel/cpufeature.c | 12 ++++++++++--
 3 files changed, 48 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 6e68f8dff76b..0fab508a65b3 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -370,6 +370,8 @@ static inline int sbi_remote_fence_i(const struct cpumask *cpu_mask) { return -1
 static inline void sbi_init(void) {}
 #endif /* CONFIG_RISCV_SBI */
 
+unsigned long riscv_get_mvendorid(void);
+unsigned long riscv_get_marchid(void);
 unsigned long riscv_cached_mvendorid(unsigned int cpu_id);
 unsigned long riscv_cached_marchid(unsigned int cpu_id);
 unsigned long riscv_cached_mimpid(unsigned int cpu_id);
diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index d11d6320fb0d..c1f3655238fd 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -139,6 +139,34 @@ int riscv_of_parent_hartid(struct device_node *node, unsigned long *hartid)
 	return -1;
 }
 
+unsigned long __init riscv_get_marchid(void)
+{
+	struct riscv_cpuinfo *ci = this_cpu_ptr(&riscv_cpuinfo);
+
+#if IS_ENABLED(CONFIG_RISCV_SBI)
+	ci->marchid = sbi_spec_is_0_1() ? 0 : sbi_get_marchid();
+#elif IS_ENABLED(CONFIG_RISCV_M_MODE)
+	ci->marchid = csr_read(CSR_MARCHID);
+#else
+	ci->marchid = 0;
+#endif
+	return ci->marchid;
+}
+
+unsigned long __init riscv_get_mvendorid(void)
+{
+	struct riscv_cpuinfo *ci = this_cpu_ptr(&riscv_cpuinfo);
+
+#if IS_ENABLED(CONFIG_RISCV_SBI)
+	ci->mvendorid = sbi_spec_is_0_1() ? 0 : sbi_get_mvendorid();
+#elif IS_ENABLED(CONFIG_RISCV_M_MODE)
+	ci->mvendorid = csr_read(CSR_MVENDORID);
+#else
+	ci->mvendorid = 0;
+#endif
+	return ci->mvendorid;
+}
+
 DEFINE_PER_CPU(struct riscv_cpuinfo, riscv_cpuinfo);
 
 unsigned long riscv_cached_mvendorid(unsigned int cpu_id)
@@ -170,12 +198,16 @@ static int riscv_cpuinfo_starting(unsigned int cpu)
 	struct riscv_cpuinfo *ci = this_cpu_ptr(&riscv_cpuinfo);
 
 #if IS_ENABLED(CONFIG_RISCV_SBI)
-	ci->mvendorid = sbi_spec_is_0_1() ? 0 : sbi_get_mvendorid();
-	ci->marchid = sbi_spec_is_0_1() ? 0 : sbi_get_marchid();
+	if (!ci->mvendorid)
+		ci->mvendorid = sbi_spec_is_0_1() ? 0 : sbi_get_mvendorid();
+	if (!ci->marchid)
+		ci->marchid = sbi_spec_is_0_1() ? 0 : sbi_get_marchid();
 	ci->mimpid = sbi_spec_is_0_1() ? 0 : sbi_get_mimpid();
 #elif IS_ENABLED(CONFIG_RISCV_M_MODE)
-	ci->mvendorid = csr_read(CSR_MVENDORID);
-	ci->marchid = csr_read(CSR_MARCHID);
+	if (!ci->mvendorid)
+		ci->mvendorid = csr_read(CSR_MVENDORID);
+	if (!ci->marchid)
+		ci->marchid = csr_read(CSR_MARCHID);
 	ci->mimpid = csr_read(CSR_MIMPID);
 #else
 	ci->mvendorid = 0;
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 3ed2359eae35..c6e27b45e192 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -490,6 +490,8 @@ static void __init riscv_fill_hwcap_from_isa_string(unsigned long *isa2hwcap)
 	struct acpi_table_header *rhct;
 	acpi_status status;
 	unsigned int cpu;
+	u64 boot_vendorid;
+	u64 boot_archid;
 
 	if (!acpi_disabled) {
 		status = acpi_get_table(ACPI_SIG_RHCT, 0, &rhct);
@@ -497,6 +499,13 @@ static void __init riscv_fill_hwcap_from_isa_string(unsigned long *isa2hwcap)
 			return;
 	}
 
+	/*
+	 * Naively assume that all harts have the same mvendorid/marchid as the
+	 * boot hart.
+	 */
+	boot_vendorid = riscv_get_mvendorid();
+	boot_archid = riscv_get_marchid();
+
 	for_each_possible_cpu(cpu) {
 		struct riscv_isainfo *isainfo = &hart_isa[cpu];
 		unsigned long this_hwcap = 0;
@@ -544,8 +553,7 @@ static void __init riscv_fill_hwcap_from_isa_string(unsigned long *isa2hwcap)
 		 * CPU cores with the ratified spec will contain non-zero
 		 * marchid.
 		 */
-		if (acpi_disabled && riscv_cached_mvendorid(cpu) == THEAD_VENDOR_ID &&
-		    riscv_cached_marchid(cpu) == 0x0) {
+		if (acpi_disabled && boot_vendorid == THEAD_VENDOR_ID && boot_archid == 0x0) {
 			this_hwcap &= ~isa2hwcap[RISCV_ISA_EXT_v];
 			clear_bit(RISCV_ISA_EXT_v, isainfo->isa);
 		}

-- 
2.44.0


