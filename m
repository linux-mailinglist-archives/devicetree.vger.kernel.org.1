Return-Path: <devicetree+bounces-14336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA79D7E3A7F
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 11:56:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4F5CDB20F1C
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 10:56:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73F882D058;
	Tue,  7 Nov 2023 10:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="DlFxVsLy"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151C92C87F
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 10:56:16 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14B1C1B2
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 02:56:14 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-408423fc784so3094505e9.0
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 02:56:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699354572; x=1699959372; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mpUSLH3BYgf/ktV7Sl3gBxkxzBrg1sZ+k5tb8/h2R/w=;
        b=DlFxVsLynYKCLmHoRkxR76Rxj+QHCLQClQjgyutPkl7OQiqe3c8HafHRo0+7GJQPR3
         pnO3KMpMzwJ8+p2MCVXVu/DpH7+Q7UVTlRVBIrMY+BNJNYaEbHcF1ZGpttVC/FH/3hFt
         VtPlvJ4PaChiyVWKRKKOX4Fc7e4ri5j+py3ZZGc2f43U5OdZmx0lSa9/6NyhzaG3Vhlw
         PxeG3fUtzQ9bAIYyVusLNYkGirktLX5310u4MYqWEk/sfzQXHTz4ZgbulF+vxYKwwmWA
         04Y/2PaniEXy7ILGiBrL9MWhKRDW+/+eSPlQhstmDi4z879gV/sd/Q9K8joDTNVjpSfW
         UrHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699354572; x=1699959372;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mpUSLH3BYgf/ktV7Sl3gBxkxzBrg1sZ+k5tb8/h2R/w=;
        b=aCh3S7Bg45CBIZallpqNdX/oOYIwqbLXH/cRvzenCwDzxbTnmqUO+ScjRF0Z+33W6G
         DJO7I3Sr6GUV+bS5ndpFPGfCRCWQTipqjBRe/jQvi8fmXTjr4VFls5xXQVmyfKfM5foZ
         Q0hFRjH2O/v6HrgmeApFcwKCJY1UCAJ3oOm+yxjqQUy28r2AaDbIHk5Q+Y34vuhTLDej
         SU6fePX2gMPkK/weGMxFPhGnw7IZjyqafPfRZRdIF+yZQnGthnuvV/zJqdOXUjFDmtbr
         s1ZrPEGCMFLDUvPD6hMbd4m68mBFvtFJUtLR73/xXDmF0Zgutk+XiPk8smml338JTKkG
         LU2Q==
X-Gm-Message-State: AOJu0YxirQJh5EIf3KGqZJA7PjTUs1ykkClSEQ4ML0cUpba3h42VbuFE
	VlbjowpKVdn5HeUL4bAO2ziNRw==
X-Google-Smtp-Source: AGHT+IGHgM8P/GBImCVbhEYbBPs1ObGpHO7TgPjk8/ukbJajiGwUzvQhgmr/xEO8DsJ21Emp1pseuw==
X-Received: by 2002:a05:600c:1c17:b0:405:4280:341d with SMTP id j23-20020a05600c1c1700b004054280341dmr24929672wms.4.1699354572285;
        Tue, 07 Nov 2023 02:56:12 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:7db3:bdd9:4cab:2ee3])
        by smtp.gmail.com with ESMTPSA id n30-20020a05600c501e00b00405442edc69sm15396853wmr.14.2023.11.07.02.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 02:56:12 -0800 (PST)
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
Subject: [PATCH v3 10/20] riscv: hwprobe: export Zfh[min] ISA extensions
Date: Tue,  7 Nov 2023 11:55:46 +0100
Message-ID: <20231107105556.517187-11-cleger@rivosinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107105556.517187-1-cleger@rivosinc.com>
References: <20231107105556.517187-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Export Zfh[min] ISA extensions[1] through hwprobe only if FPU support
is available.

Link: https://drive.google.com/file/d/1z3tQQLm5ALsAD77PM0l0CHnapxWCeVzP/view [1]
Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Evan Green <evan@rivosinc.com>
---
 Documentation/arch/riscv/hwprobe.rst  | 6 ++++++
 arch/riscv/include/uapi/asm/hwprobe.h | 2 ++
 arch/riscv/kernel/sys_riscv.c         | 5 +++++
 3 files changed, 13 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 2183fa6d2fc1..ce0490e3130c 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
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
index 1b85386f276b..12680081c602 100644
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
index 8e1d26659e14..486e053a0797 100644
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


