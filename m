Return-Path: <devicetree+bounces-24730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD48811026
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:33:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 435D02820D1
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:33:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AACC24217;
	Wed, 13 Dec 2023 11:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="IUo7/JGk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7500D12E
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:22 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40c192f488cso11231145e9.1
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1702467201; x=1703072001; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OT3PabJ+SN8OyyxUlhRHLBK2j0fBOpZosf39djft3/Y=;
        b=IUo7/JGkBETfO8Q9lydWp0aYgF9OQQ17gd2BRelk3R0jbu0S/T0iSw+u/L/iGTEZKV
         bbOn0pe/QxzsGeLHYBbjklqbhxYk8hM4QBmJZFXG+bXyXcyIVcF279xvQctN7pwBaiLH
         NndsjHrUsEnWMfq2VRwarQ2LFGgnKkWFKZVGQxz6svm6U9S2XScu2AHnUUEeo/g+b/JE
         RNk4ub/5x06qa8CV6FHZJoTEgnarsV4dRHYV2MjcqqbNEkZ6CSXE3KXyETrPsY6W3y3N
         7wQ8EeP75RriRnCUAXMMdr509/lpotQ1ugHOEB5/kdlHBK3Z/ceJdpNU8//cuFHH9X/m
         7oKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702467201; x=1703072001;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OT3PabJ+SN8OyyxUlhRHLBK2j0fBOpZosf39djft3/Y=;
        b=md9D5BlOyoAk45KlG9EWJmmLjIfrlLsVZei5FbtRy3/IMrwFfmnw2EO9rejTsNjS8s
         RCZWq0FNKIgK86raQKQ4jEWfXPIHo83ZfJFz1Vts7iATCdeeIilIa6GXCZJ6E8aZoEGC
         zEr70q2/i0xpHNVGbmyb31eiT4pRUqnnoOSZ8J4B0HonwcKvnTAzcLm1hi//Pc22L0t1
         Gh51tyURsFExUyZUNOS99PqBv7wlSqLWbwimjffbSh8sgn2Db330N2GlE7OzFxFgIsG3
         oDlVWfzBf2DxbNL4ca33WV6aE14qFmMIExCK9Tfkme5TuJUMQRAJOve9smsvY8ckeTDX
         j8kA==
X-Gm-Message-State: AOJu0YyrYFKU3uGav1RxMLcIbGriG6rrkkAAXOH2uobe5zGDlgHvCgOY
	QldflPOETx4W35x/CEUwiLHY4w==
X-Google-Smtp-Source: AGHT+IH9GmoMwESHe8vAwJ7aLTEGq8Q2sisRnckD+tr/gJXlhQQcanfZ3+mQWdFY8OH3kjBBZTEQBA==
X-Received: by 2002:a05:600c:35d6:b0:40c:b81:c640 with SMTP id r22-20020a05600c35d600b0040c0b81c640mr9664241wmq.0.1702467200958;
        Wed, 13 Dec 2023 03:33:20 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:c564:f167:d072:5672])
        by smtp.gmail.com with ESMTPSA id m27-20020a05600c3b1b00b0040b38292253sm22433137wms.30.2023.12.13.03.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 03:33:20 -0800 (PST)
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
Subject: [PATCH 8/9] riscv: hwprobe: export Zacas ISA extension
Date: Wed, 13 Dec 2023 12:33:04 +0100
Message-ID: <20231213113308.133176-9-cleger@rivosinc.com>
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

Export Zacas ISA extension through hwprobe.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 Documentation/arch/riscv/hwprobe.rst  | 4 ++++
 arch/riscv/include/uapi/asm/hwprobe.h | 1 +
 arch/riscv/kernel/sys_riscv.c         | 1 +
 3 files changed, 6 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 9b19ca3433de..510e49878834 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -168,6 +168,10 @@ The following keys are defined:
   * :c:macro:`RISCV_HWPROBE_EXT_ZAM`: The Zam extension v0.1 is supported as
        defined in the RISC-V ISA manual.
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZACAS`: The Zacas extension is supported as
+       defined in the Atomic Compare-and-Swap (CAS) instructions manual starting
+       from commit 5059e0ca641c ("update to ratified").
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 2350c45741a6..7ec4331122e7 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -58,6 +58,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZFA		(1ULL << 32)
 #define		RISCV_HWPROBE_EXT_ZTSO		(1ULL << 33)
 #define		RISCV_HWPROBE_EXT_ZAM		(1ULL << 34)
+#define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 35)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index a8473d7f9d1e..abb0eea3ee08 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -176,6 +176,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZIHINTNTL);
 		EXT_KEY(ZTSO);
 		EXT_KEY(ZAM);
+		EXT_KEY(ZACAS);
 
 		if (has_vector()) {
 			EXT_KEY(ZVBB);
-- 
2.43.0


