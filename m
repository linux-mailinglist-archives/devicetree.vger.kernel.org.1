Return-Path: <devicetree+bounces-9245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 228317CC441
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 15:16:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5D601F23156
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 13:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75953436AF;
	Tue, 17 Oct 2023 13:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="u5ZkaH2b"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83745436A0
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 13:15:38 +0000 (UTC)
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 032A1102
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 06:15:37 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c51774da07so6837781fa.1
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 06:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697548535; x=1698153335; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3obtZPNOKP8LH+KjJEwDeimcpj3eT+9Cd34xi+FsYNw=;
        b=u5ZkaH2bN/ItQa1WQ4P8FXFoAITbBqWQIulaDtndjIOMQShIKOLFu0FcM5qBO4URTj
         g6Hgaft8g3okguJy/haY3vpj9LeNY9cUe5ROcpiHEMhIJ2f2p1B+v8nIhR/VPf/Rczsz
         v3hv9mTEPBnqcgI28wW7uPsKwRzocHA96gFk3/P3RuzUdigvu6Wela8JUb3RuXODoKL9
         jxVuPaSXuUK9f3bOWw5dnn5zNpMgbTGtPRiWXf8dbKJ826OI6fjJ7fQODs3sq8x7k4TE
         dCjV9z97j7r5xI/W016egpc/UpHKYDQA864Cd03cGZ+Oa/4p45TX69HOOkdbYVKSet5t
         iD1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697548535; x=1698153335;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3obtZPNOKP8LH+KjJEwDeimcpj3eT+9Cd34xi+FsYNw=;
        b=hXwuelpkDQUXine6CeSqC3Gtg6h5VsHOBxFMlASRe9tiH7FODi8pVuq8hUqraozWCE
         R+oyxE7HpBf5yL/ezmm1NEx437vNbWJ27m8hx8qeHGMqJJIFjBgMTkJXRIUdhGEcRRxX
         nSEElx2M/Gi9iY2XTZyLKqo6ZCb1coedQH0LKmbeCqgetKTmWJ4jg541/JFEbHscu2dO
         AWug9UDkzTJGOeUo/hxkgLwHewdoguuzVeV/AENgD2qB0lsXwHRi3oTc5/EcZqToJUE7
         p4LugG95FkvL9WCuy7abhCXDJnVs6ZuqgfZHQozVzV5zxyzzlA9dLDYIqLEbLDsrbkjR
         g2Ig==
X-Gm-Message-State: AOJu0Yy76c5qwOxQ3lNz8HC/j1aLoU2Zk58ioEPQYyyXouNXWyF7OIo+
	UptxhzHhvKh8N3I1aRgGF+cRDA==
X-Google-Smtp-Source: AGHT+IF341BXCev0oxtaNbakkAnO4ZAxajhUcsSm+LPtv73PBIJRAamKmYX/PlGez1RMG9nLGmAzPA==
X-Received: by 2002:a05:651c:c8c:b0:2bf:b0d3:20f9 with SMTP id bz12-20020a05651c0c8c00b002bfb0d320f9mr1924875ljb.5.1697548535010;
        Tue, 17 Oct 2023 06:15:35 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:96:820c:ecf7:a817])
        by smtp.gmail.com with ESMTPSA id fj7-20020a05600c0c8700b0040772138bb7sm9873393wmb.2.2023.10.17.06.15.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 06:15:34 -0700 (PDT)
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
Subject: [PATCH v2 09/19] riscv: hwprobe: export Zfh/Zfhmin ISA extensions
Date: Tue, 17 Oct 2023 15:14:46 +0200
Message-ID: <20231017131456.2053396-10-cleger@rivosinc.com>
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
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Export Zfh/Zfhmin ISA extensions[1] through hwprobe only if FPU support
is available.

Link: https://drive.google.com/file/d/1z3tQQLm5ALsAD77PM0l0CHnapxWCeVzP/view [1]
Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 Documentation/riscv/hwprobe.rst       | 6 ++++++
 arch/riscv/include/uapi/asm/hwprobe.h | 2 ++
 arch/riscv/kernel/sys_riscv.c         | 5 +++++
 3 files changed, 13 insertions(+)

diff --git a/Documentation/riscv/hwprobe.rst b/Documentation/riscv/hwprobe.rst
index 8681fb601500..35aedfff5049 100644
--- a/Documentation/riscv/hwprobe.rst
+++ b/Documentation/riscv/hwprobe.rst
@@ -137,6 +137,12 @@ The following keys are defined:
   * :c:macro:`RISCV_HWPROBE_EXT_ZVKT`: The Zvkt extension is supported as
        defined in version 1.0 of the RISC-V Cryptography Extensions Volume II.
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZFH`: The Zfh extension version 1.0 is supported
+       as defined in the RISC-V ISA manual.
+
+  * :c:macro:`RISCV_HWPROBE_EXT_ZFHMIN`: The Zfhmin extension version 1.0 is
+       supported as defined in the RISC-V ISA manual.
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 2529cee323db..390805c49674 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -49,6 +49,8 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZVKSED	(1 << 23)
 #define		RISCV_HWPROBE_EXT_ZVKSH		(1 << 24)
 #define		RISCV_HWPROBE_EXT_ZVKT		(1 << 25)
+#define		RISCV_HWPROBE_EXT_ZFH		(1 << 26)
+#define		RISCV_HWPROBE_EXT_ZFHMIN	(1 << 27)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index 25d35800809f..4cca8b982a7a 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -185,6 +185,11 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 			CHECK_ISA_EXT(ZVKSH);
 			CHECK_ISA_EXT(ZVKT);
 		}
+
+		if (has_fpu()) {
+			CHECK_ISA_EXT(ZFH);
+			CHECK_ISA_EXT(ZFHMIN);
+		}
 #undef CHECK_ISA_EXT
 	}
 
-- 
2.42.0


