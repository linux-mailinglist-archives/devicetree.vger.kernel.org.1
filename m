Return-Path: <devicetree+bounces-9243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6A37CC43A
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 15:15:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05C32281A29
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 13:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 162613D3AF;
	Tue, 17 Oct 2023 13:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="GteNGw0R"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E98DC42BFC
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 13:15:37 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3322EED
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 06:15:36 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-406aaccb41dso18299475e9.0
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 06:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697548534; x=1698153334; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bR5zOKPIIXQcPWK7Zwi8IMehempNxAt19rgFARaEstc=;
        b=GteNGw0RyWD1HuywyBU6lGdXgWwjSMmPz29vOwc5ZrGHlIXHkjILVC4xB2YK0ClVvk
         lisCpEVBhIBS9usDRQI4TYmIKjfIp7nJTp91u01Ign+hpxpgxcJrTHfshw1jRQ8MAxPL
         NTL2eV7XIqX7rZJS4Jm23Uer25LMLMBQsIiqqvOOqdSnVFB4TdtUETT7TI2hOAqlGzkm
         MwWR5/Rzuw2Wnq5i+z303MLPuibrZ5LVyRBbJlYh/PyHOwVk9Pi/NEenW2RQ4Af/t8hI
         diinzbTnqdxI7pz3KtcaRXr3/d4BkOx1qQzZ8TIfF/5SqkIuos21CpcRYxwaNB4x7HW5
         jV+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697548534; x=1698153334;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bR5zOKPIIXQcPWK7Zwi8IMehempNxAt19rgFARaEstc=;
        b=EWSafgamuLVCp/QG89l7eMrXkorlxDCh15NiUlIBiAw0/DrW2CmPc2I+IozmrFMh7w
         qy0vcuK46mDwrpYBR/JDOG+4EhcZU5nz1QuC7C3rkq1PD8dADdEITIYj5ROQqxFJQ8lo
         5JwgcVfUNsqDrbY2zAbVMechnWcp2stLgpAgwDEvBSJ4f4417ndXJRDL1bY2oIP9/Hvu
         06/KTEz3iIslpQO2xp3i16OO3FqTygSQvPlolgbPUyQdxAHF19O7P2/M5PKN2nIXDfXu
         hbneekP7QjgixuDAuAB7hiU4W53VJrvDsAniByo72C1bM24l254sl8kMC0pQ11n2c1Vp
         1N2g==
X-Gm-Message-State: AOJu0YyDxFNmBJN1V+CE8WVtqKg7bbqdD9Z7qLMfsbGyj3Z7o7z3rSFV
	iRXqRyKT78/w6NNEmkOobsGeBQ==
X-Google-Smtp-Source: AGHT+IGuYusZwm6bjTLUUAItFdrqDbC+bP3ybiFs6S3KZJ9w+kFoW0BT9EJNwe19ok8MCE/47d64Qg==
X-Received: by 2002:a05:600c:2145:b0:406:513d:738f with SMTP id v5-20020a05600c214500b00406513d738fmr1640332wml.2.1697548534165;
        Tue, 17 Oct 2023 06:15:34 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:96:820c:ecf7:a817])
        by smtp.gmail.com with ESMTPSA id fj7-20020a05600c0c8700b0040772138bb7sm9873393wmb.2.2023.10.17.06.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 06:15:33 -0700 (PDT)
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
Subject: [PATCH v2 08/19] riscv: add ISA extension parsing for Zfh/Zfhmin
Date: Tue, 17 Oct 2023 15:14:45 +0200
Message-ID: <20231017131456.2053396-9-cleger@rivosinc.com>
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

Add parsing for Zvfh/Zfhmin ISA extensions[1].

Link: https://drive.google.com/file/d/1z3tQQLm5ALsAD77PM0l0CHnapxWCeVzP/view [1]
Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 4 +++-
 arch/riscv/kernel/cpufeature.c | 2 ++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index a2fac23b0cc0..bead05cb0df2 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -79,8 +79,10 @@
 #define RISCV_ISA_EXT_ZVKSED		61
 #define RISCV_ISA_EXT_ZVKSH		62
 #define RISCV_ISA_EXT_ZVKT		63
+#define RISCV_ISA_EXT_ZFH		64
+#define RISCV_ISA_EXT_ZFHMIN		65
 
-#define RISCV_ISA_EXT_MAX		64
+#define RISCV_ISA_EXT_MAX		128
 
 #ifdef CONFIG_RISCV_M_MODE
 #define RISCV_ISA_EXT_SxAIA		RISCV_ISA_EXT_SMAIA
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 8cf0b8b442ae..68914b5e2df9 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -244,6 +244,8 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zifencei, RISCV_ISA_EXT_ZIFENCEI),
 	__RISCV_ISA_EXT_DATA(zihintpause, RISCV_ISA_EXT_ZIHINTPAUSE),
 	__RISCV_ISA_EXT_DATA(zihpm, RISCV_ISA_EXT_ZIHPM),
+	__RISCV_ISA_EXT_DATA(zfh, RISCV_ISA_EXT_ZFH),
+	__RISCV_ISA_EXT_DATA(zfhmin, RISCV_ISA_EXT_ZFHMIN),
 	__RISCV_ISA_EXT_DATA(zba, RISCV_ISA_EXT_ZBA),
 	__RISCV_ISA_EXT_DATA(zbb, RISCV_ISA_EXT_ZBB),
 	__RISCV_ISA_EXT_DATA(zbc, RISCV_ISA_EXT_ZBC),
-- 
2.42.0


