Return-Path: <devicetree+bounces-15665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 451557EB1D2
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 15:14:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F362A281243
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 14:14:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE293405F3;
	Tue, 14 Nov 2023 14:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="PRNAoTpu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357B2405DB
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 14:14:06 +0000 (UTC)
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com [IPv6:2607:f8b0:4864:20::72b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D73ED19AD
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:54 -0800 (PST)
Received: by mail-qk1-x72b.google.com with SMTP id af79cd13be357-77773d3246aso14495785a.1
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699971233; x=1700576033; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mTkSM9bAUTwt3Wciw9Vfs7ckFoeuejbzVqs+azlN9Lg=;
        b=PRNAoTpuJ0hj9DjaSfnckoXrSem82++xC1+wfZJXtd3oWVQlPOgCp6VYjcCq/TALUP
         OyHOdOvqB2Wf+yjKRCbBuFDIhebSnDgtwJEG/ZvmIh8tVGB6T809Fby8bc871rY2HsP1
         QXYlGB7h3GZX/ooZcYUAbkvn3BfU1768Y+SSbQEuvIlq0TOINkqdy1xRABzRgxYxY/9s
         5lA9BBUE/ME+bmF9AR4aagARsUqYpH1nFM0lUNobt8Hd2F+/tSSAOs5wkn3LnbK1OF9d
         wS8GtwNKbcvKNn8UwkInUCzI8pYjugXp6kF+mheBlGFpDW+ow/6wh+buLNaRl6Exi35x
         n6rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699971233; x=1700576033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mTkSM9bAUTwt3Wciw9Vfs7ckFoeuejbzVqs+azlN9Lg=;
        b=t2qwtOKzcb+JfoCCXcDJcD0NyxOthJG9PvKE/ZApH909jDK/HYrKyY7uGy/uUfZE46
         RgSEulRfTNb/k/57r0x23Kzqc9PPoaYIwriQCtG6m40+N+5aJXfgv6UelnXRGy2G2wi1
         ZfvQywZ0mxFhOy0H0mvkOn+NUdvtGuhXvWXz5jg2Fp/9PFFHt+9hcTEaYpBx139NFaNx
         M6HyqrMr1SOkXgjvNp2KAXYdzX/ZgVlLKHm8dSXIHTFzwpHYC5k6moYsYO0INng8t30I
         U6CNn3BQ1rQi3Vj4Lp3wLBNVn/ZFe0Z20B686V+cnkjHWeqbfLYrOUVi0mfRfOiprpFW
         mKeQ==
X-Gm-Message-State: AOJu0Yy7zSK+8YukI47uJaJhgyrqUpZY4937qAvrPBmjvHASqoDyg9/5
	4MVXkGOAsSvibQ2NDTRydPtkSA==
X-Google-Smtp-Source: AGHT+IH10FrNz5wJfdEN4PWoaaLBM1zx/8nZEqjt+rAkZMedk134cZsiD1LAwi+cZemn3bnj/q1syg==
X-Received: by 2002:a05:620a:d94:b0:775:82e2:dc19 with SMTP id q20-20020a05620a0d9400b0077582e2dc19mr2498746qkl.2.1699971233218;
        Tue, 14 Nov 2023 06:13:53 -0800 (PST)
Received: from carbon-x1.. ([12.186.190.2])
        by smtp.gmail.com with ESMTPSA id m2-20020a05620a220200b00777611164c5sm2701263qkh.106.2023.11.14.06.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 06:13:52 -0800 (PST)
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
	Samuel Ortiz <sameo@rivosinc.com>,
	Jerry Shih <jerry.shih@sifive.com>
Subject: [PATCH v4 16/20] riscv: hwprobe: export Zvfh[min] ISA extensions
Date: Tue, 14 Nov 2023 09:12:52 -0500
Message-ID: <20231114141256.126749-17-cleger@rivosinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231114141256.126749-1-cleger@rivosinc.com>
References: <20231114141256.126749-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Export Zvfh[min] ISA extension[1] through hwprobe.

Link: https://drive.google.com/file/d/1_Yt60HGAf1r1hx7JnsIptw0sqkBd9BQ8/view [1]
Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Evan Green <evan@rivosinc.com>
---
 Documentation/arch/riscv/hwprobe.rst  | 8 ++++++++
 arch/riscv/include/uapi/asm/hwprobe.h | 2 ++
 arch/riscv/kernel/sys_riscv.c         | 2 ++
 3 files changed, 12 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index aa8ebeeddfe6..896ecfbbe5f4 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -149,6 +149,14 @@ The following keys are defined:
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
index d72c69ea0740..fffc69d9f6ba 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -53,6 +53,8 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZFH		(1 << 27)
 #define		RISCV_HWPROBE_EXT_ZFHMIN	(1 << 28)
 #define		RISCV_HWPROBE_EXT_ZIHINTNTL	(1 << 29)
+#define		RISCV_HWPROBE_EXT_ZVFH		(1 << 30)
+#define		RISCV_HWPROBE_EXT_ZVFHMIN	(1 << 31)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index a46e4f6821dd..e90537593f5f 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -186,6 +186,8 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 			EXT_KEY(ZVKSED);
 			EXT_KEY(ZVKSH);
 			EXT_KEY(ZVKT);
+			EXT_KEY(ZVFH);
+			EXT_KEY(ZVFHMIN);
 		}
 
 		if (has_fpu()) {
-- 
2.42.0


