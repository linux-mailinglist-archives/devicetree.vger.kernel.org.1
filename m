Return-Path: <devicetree+bounces-9250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 122DE7CC44E
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 15:16:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 431FE1C20C0D
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 13:16:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA1C742C1B;
	Tue, 17 Oct 2023 13:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ComVT4Rg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EBA43691
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 13:15:47 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD96D10D
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 06:15:44 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4064e3c7c07so11476245e9.1
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 06:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697548542; x=1698153342; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U2m+45j3rbdaE2NY5Ol9kX9V97sFwlFvtbz4uSqqCuM=;
        b=ComVT4RglsIdNqywtVJS5Xicunw98kWgC3QgQOl67r8wz5l50QaQQNivyIux9OSGPJ
         ptUs/R6spZLljlX3hZHi9ySrk2d1FQR210DUIfEtPjJwaUbvZ/hwDJxsEWns6F/eP9t4
         0R/XkGHdTjj4n363g45uerHPqTYxYQJlOpVSQyTkiaqBAUEl2wAl+k9JpCj3Km+OpJxN
         0fzRRYwxhv0PITyl0MzHm1ijLr1PGVx+G8B43Xg0Kk/BMw3glkC9OIT+11tC34SoSQfb
         K2KXkJmOc6wdX0df4EL8VCT3XyNF6caMIExbzQr3ullS2KN5Ge/CqHJsVFRHvnhodwFZ
         OTew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697548542; x=1698153342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U2m+45j3rbdaE2NY5Ol9kX9V97sFwlFvtbz4uSqqCuM=;
        b=pR3soT2YcxIWSHG37+FBEJejMwB19AB8rFN8INQXPsrQ6BPn3LEPMcNQ/H8f3TzJJx
         lQMvC9VhHonpsZQeKX9BWonA8qkpQrywqeVgbOfi/lHzLYbmMwE359YpFt2ACZnDBWaA
         OfWqexebZwsqmT0aXPA2zeMh98f1vcCCRWXcOledsD2Z2/GOYyDSJcGeqLJ5LuBLKCC7
         9yIUlUdZWaTUCSfEPMQaYh/DCNBG75HSN9MdqBEgDuo5AsPmuOKrNyApsVHF2Xi1aZih
         ZZ7BWeyqHDYom6buwNn8JURs0U4aQZ02cwvW6uxOJnMfmh4jEPQ1hKFf7DGXAgLgX1IC
         YVlQ==
X-Gm-Message-State: AOJu0Yy5MFFQq9HbM/RJMR476hnErpX9lATPJJSbrYfpzmU/EeVsX2Qm
	PX25Kf+bVN/O3CYEwBGlDm90YIwNeJECNdL9OmirEQ==
X-Google-Smtp-Source: AGHT+IGl5sTERYXS8gZHY5M+sSNt7WnBezruA/vUWy9wkpbAVX1cnbpzCqcAtWiC4jzRoXD25NnTVg==
X-Received: by 2002:a05:600c:929:b0:405:39bb:38a8 with SMTP id m41-20020a05600c092900b0040539bb38a8mr1653730wmp.2.1697548541300;
        Tue, 17 Oct 2023 06:15:41 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:96:820c:ecf7:a817])
        by smtp.gmail.com with ESMTPSA id fj7-20020a05600c0c8700b0040772138bb7sm9873393wmb.2.2023.10.17.06.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 06:15:40 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Palmer Dabbelt <palmer@rivosinc.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jonathan Corbet <corbet@lwn.net>,
	Andrew Jones <ajones@ventanamicro.com>,
	Evan Green <evan@rivosinc.com>,
	Conor Dooley <conor@kernel.org>,
	Samuel Ortiz <sameo@rivosinc.com>
Subject: [PATCH v2 15/19] riscv: hwprobe: export Zvfh[min] ISA extensions
Date: Tue, 17 Oct 2023 15:14:52 +0200
Message-ID: <20231017131456.2053396-16-cleger@rivosinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231017131456.2053396-1-cleger@rivosinc.com>
References: <20231017131456.2053396-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Export Zvfh[min] ISA extension[1] through hwprobe.

Link: https://drive.google.com/file/d/1_Yt60HGAf1r1hx7JnsIptw0sqkBd9BQ8/view [1]
Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 Documentation/riscv/hwprobe.rst       | 8 ++++++++
 arch/riscv/include/uapi/asm/hwprobe.h | 2 ++
 arch/riscv/kernel/sys_riscv.c         | 2 ++
 3 files changed, 12 insertions(+)

diff --git a/Documentation/riscv/hwprobe.rst b/Documentation/riscv/hwprobe.rst
index 9c909e0d5316..782ac26cb92a 100644
--- a/Documentation/riscv/hwprobe.rst
+++ b/Documentation/riscv/hwprobe.rst
@@ -146,6 +146,14 @@ The following keys are defined:
   * :c:macro:`RISCV_HWPROBE_EXT_ZIHINTNTL`: The Zihintntl extension version 1.0
        is supported as defined in the RISC-V ISA manual.
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZVFH`: The Zvfh extension is supported as
+       defined in the RISC-V Vector manual starting from commit e2ccd0548d6c
+       ("Remove draft warnings from Zvfh[min]").
+
+  * :c:macro:`RISCV_HWPROBE_EXT_ZVFHMIN`: The Zvfhmin extension is supported as
+       defined in the RISC-V Vector manual starting from commit e2ccd0548d6c
+       ("Remove draft warnings from Zvfh[min]").
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index dc4eaa978ad1..79407010952a 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -52,6 +52,8 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZFH		(1 << 26)
 #define		RISCV_HWPROBE_EXT_ZFHMIN	(1 << 27)
 #define		RISCV_HWPROBE_EXT_ZIHINTNTL	(1 << 28)
+#define		RISCV_HWPROBE_EXT_ZVFH		(1 << 29)
+#define		RISCV_HWPROBE_EXT_ZVFHMIN	(1 << 30)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index 84daaf6ed4a1..8d6edd721627 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -185,6 +185,8 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 			CHECK_ISA_EXT(ZVKSED);
 			CHECK_ISA_EXT(ZVKSH);
 			CHECK_ISA_EXT(ZVKT);
+			CHECK_ISA_EXT(ZVFH);
+			CHECK_ISA_EXT(ZVFHMIN);
 		}
 
 		if (has_fpu()) {
-- 
2.42.0


