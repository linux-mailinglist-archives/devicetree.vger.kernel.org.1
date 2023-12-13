Return-Path: <devicetree+bounces-24728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFF7811021
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:33:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F201DB20DFC
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BEA9249F0;
	Wed, 13 Dec 2023 11:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="RfzSBK9S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66D20131
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:23 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40c32e205fcso10694135e9.1
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1702467202; x=1703072002; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KKPObWVuIFXSRwOfIm7U25jwf++f1sQGlTYA9JTEt2I=;
        b=RfzSBK9SpNVuBJ654n3yp6K89HTEUNgLDz1Sbt6qD1ReJvEFqKJNWWjquoQuURed/7
         44oanJh4FfD1MTUJeQPIDNmOGHYMOfr3rZwDb1EWck4Hm/TM/6DOXF9J7bxb1uwvOJI7
         hmR0sqBCxhqSin/1N2o7WE9V7Qkjz5HsR2IKc+wPDvElfWdR4qHrySS82awQH0gPWgzG
         SjQhYrmxuYmJiZ7KEkg2tS0x08mZ7qU2Xo5JiXjzO7qAJwe99Mp5MUfRxG3CXhwEHqEl
         9KF8k0oRR+ccrWlyyOk++AVWrFr0TEGOuoocx30+8XMa/RDMy2RBfelCU9UmAW0IU0Es
         tfDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702467202; x=1703072002;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KKPObWVuIFXSRwOfIm7U25jwf++f1sQGlTYA9JTEt2I=;
        b=VVVvAwNV65gcnv98j4l9GMUd4B4QAQ0/TGX0SE13AGZcSA4BnPn2pq5l/W32xydYLi
         V1ggY50pH14LywKKxBhy7rTA/9HdAK+F801erkTAI42gNQ1W+JvG3FQl0sRPag5ux/eG
         w5SziK6re2dcj2SM0pJaJG3c9YqeL7L2maPZWUV/DFrUSlYPslPojnnaV0lgHLhqfodG
         BDMr+oVOs8hKSHj2ZcPJ15CgK2dRVpIvfeFjmh9GCe1a1oqMGvDdtVaPOUFrhJC60YZL
         78d/7FWr1wXesGGB4mFkmTsxm1MpwKR3Qi25r+gbIq2ZB2O2tvlnGCwaxUOBdS7T6oVH
         INow==
X-Gm-Message-State: AOJu0YzaUGZLmFiO0lMxv5VjYJfswxguNyT/yGwpHTa05ZpANsQzf4P3
	HBHnhbs+yM6+INgV4mt302zskA==
X-Google-Smtp-Source: AGHT+IFOAi6+jGGEZI3vEUxmpFwncaq2mLgc0WthEtql1NhoQKa77IbEBEbBVUbFXF2l0uTI44prGg==
X-Received: by 2002:a05:600c:3b23:b0:40c:2631:7c3d with SMTP id m35-20020a05600c3b2300b0040c26317c3dmr9593791wms.2.1702467201829;
        Wed, 13 Dec 2023 03:33:21 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:c564:f167:d072:5672])
        by smtp.gmail.com with ESMTPSA id m27-20020a05600c3b1b00b0040b38292253sm22433137wms.30.2023.12.13.03.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 03:33:21 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Robbin Ehn <rehn@rivosinc.com>
Subject: [PATCH 9/9] riscv: hwprobe: export Zicond extension
Date: Wed, 13 Dec 2023 12:33:05 +0100
Message-ID: <20231213113308.133176-10-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213113308.133176-1-cleger@rivosinc.com>
References: <20231213113308.133176-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Export the zicond extension to userspace using hwprobe.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 Documentation/arch/riscv/hwprobe.rst  | 5 +++++
 arch/riscv/include/uapi/asm/hwprobe.h | 1 +
 arch/riscv/kernel/sys_riscv.c         | 1 +
 3 files changed, 7 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 510e49878834..a42c3b5d6bc3 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -172,6 +172,11 @@ The following keys are defined:
        defined in the Atomic Compare-and-Swap (CAS) instructions manual starting
        from commit 5059e0ca641c ("update to ratified").
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZICOND`: The Zicond extension is supported as
+       defined in the RISC-V Integer Conditional (Zicond) operations extension
+       manual starting from commit 95cf1f9 ("Add changes requested by Ved
+       during signoff")
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 7ec4331122e7..4287aa391cf5 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -59,6 +59,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZTSO		(1ULL << 33)
 #define		RISCV_HWPROBE_EXT_ZAM		(1ULL << 34)
 #define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 35)
+#define		RISCV_HWPROBE_EXT_ZICOND	(1ULL << 36)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index abb0eea3ee08..d94f11534efa 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -177,6 +177,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZTSO);
 		EXT_KEY(ZAM);
 		EXT_KEY(ZACAS);
+		EXT_KEY(ZICOND);
 
 		if (has_vector()) {
 			EXT_KEY(ZVBB);
-- 
2.43.0


