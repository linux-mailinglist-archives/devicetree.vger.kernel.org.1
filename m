Return-Path: <devicetree+bounces-7698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 462BB7C51A5
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:19:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3B2328250B
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 345DA1E524;
	Wed, 11 Oct 2023 11:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="N04xmegZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998D91E508
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:19:26 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADC65D7
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:19:24 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-405e48d8e72so11541395e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697023163; x=1697627963; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4tXTHfOF9l2oA3bnmaAaKSnwfTQRRdZhw8v+5/SMqC8=;
        b=N04xmegZV+lKKeXl1ojADZgfRibjKxsCegf6l8KNRpoOGSi1p+Or42fV/6nK/fl4h2
         HBnBgThG/fN1Bjk5KaRKmLr34uj0f0UilGBdkXNptV+oBzweekSPUXR5rbsxY5BV7Ct6
         WbIdxc9AEVnlTdrDy8sbhRNZCowdQcfB+v++gy7OwlMrdjp/cTzqUiCCf1wSe4pCBxox
         Yz9tTvd0xDr4+CW1ApvHLDciaffION4EoLEoP02vRAIrcHY7Vd17hAWG40Dt6JwKVhOt
         9YWIQyrR32R4gpnAxHXNlUU0scvqrUwR5hVnxx+eGZ9W+IuJzxb0AgeOQSLqglsuxVg7
         PGKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697023163; x=1697627963;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4tXTHfOF9l2oA3bnmaAaKSnwfTQRRdZhw8v+5/SMqC8=;
        b=n1bwCwzvSFkjQ81i69UVg0+Pvnqod5UZQNVeXIBa4l9NywMiwyLJbVM4Xw9MMY9K73
         jlY0cd6rgAMwBkVYHiaS3xVBvNY9cRaC7hsPKVxc2RUNbTKMFL3ubCNZFlGYjWLNIDF0
         ncK71aPZ6UIxkO80Qbz6PN78O4aY6X9yMd/z+7yNL1GrZMHxtrFYSiolIDQGNqaiG3Qf
         8uKZpNHKVhn5HNTvb3AU42yx4YK+R8npe3kkoY4t+VBxw188Hy497fiNrJC60d1idg4y
         FqnXlBHOZKnmLE0WoOMIwlsW7SItzLysXS+VbV1R3RK64RF1eVnJ6ZhHp+opsYYl+Cpn
         3W7g==
X-Gm-Message-State: AOJu0Yx046TOiR7qv3l29mxVSmRdAybZJ89g2pAveMjXk0HhuBfd1sZI
	bGmrVeebulHhkQwMGTd0G9253w==
X-Google-Smtp-Source: AGHT+IGArMLkH9j0nR6q6ZxQVwuBHeskjOjNvD5ZUnKc5yiKkdCwzXcWhurTv5ALmG1Vajfi3OEIlw==
X-Received: by 2002:a05:600c:3c96:b0:403:334:fb0d with SMTP id bg22-20020a05600c3c9600b004030334fb0dmr18654577wmb.4.1697023162835;
        Wed, 11 Oct 2023 04:19:22 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:9134:b302:d8b:a200])
        by smtp.gmail.com with ESMTPSA id a4-20020a05600c224400b003fe2b081661sm18945715wmm.30.2023.10.11.04.19.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 04:19:22 -0700 (PDT)
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
	Conor Dooley <conor@kernel.org>
Subject: [PATCH v1 09/13] riscv: hwprobe: export Zhintntl ISA extension
Date: Wed, 11 Oct 2023 13:14:34 +0200
Message-ID: <20231011111438.909552-10-cleger@rivosinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231011111438.909552-1-cleger@rivosinc.com>
References: <20231011111438.909552-1-cleger@rivosinc.com>
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

Export Zihintntl extension[1] through hwprobe.

[1] https://drive.google.com/file/d/13_wsN8YmRfH8YWysFyTX-DjTkCnBd9hj/view

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 Documentation/riscv/hwprobe.rst       | 3 +++
 arch/riscv/include/uapi/asm/hwprobe.h | 1 +
 arch/riscv/kernel/sys_riscv.c         | 1 +
 3 files changed, 5 insertions(+)

diff --git a/Documentation/riscv/hwprobe.rst b/Documentation/riscv/hwprobe.rst
index 06f49a095f19..a577b1d72dff 100644
--- a/Documentation/riscv/hwprobe.rst
+++ b/Documentation/riscv/hwprobe.rst
@@ -131,6 +131,9 @@ The following keys are defined:
   * :c:macro:`RISCV_HWPROBE_EXT_ZFHMIN`: The Zfhmin extension version 1.0 is
        supported as defined in the RISC-V ISA manual.
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZIHINTNTL`: The Zihintntl extension version 1.0
+       is supported as defined in the RISC-V ISA manual.
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index c9016abf099e..3c4aa5d01f93 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -47,6 +47,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZVKT		(1 << 21)
 #define		RISCV_HWPROBE_EXT_ZFH		(1 << 22)
 #define		RISCV_HWPROBE_EXT_ZFHMIN	(1 << 23)
+#define		RISCV_HWPROBE_EXT_ZIHINTNTL	(1 << 24)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index da916981934b..ca17829f3e16 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -156,6 +156,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		CHECK_ISA_EXT(ZBA);
 		CHECK_ISA_EXT(ZBB);
 		CHECK_ISA_EXT(ZBS);
+		CHECK_ISA_EXT(ZIHINTNTL);
 
 		if (has_vector()) {
 			CHECK_ISA_EXT(ZVBB);
-- 
2.42.0


