Return-Path: <devicetree+bounces-15664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A3D7EB1D3
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 15:14:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 08985B20AC3
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 14:14:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E3C41210;
	Tue, 14 Nov 2023 14:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="VqDU5v+B"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AEF1405FB
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 14:14:01 +0000 (UTC)
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A4B1D6A
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:53 -0800 (PST)
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-77891670417so55612785a.0
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699971232; x=1700576032; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kebr+ZAQxQeA9gxwXsENChkHynJvuQ8x6phPFJllrto=;
        b=VqDU5v+BES95H5PeKJaA4YrnF18y6tW7P9PqO+cRuxpKxMk9UB2ppbpX4Y683vlm3T
         UjyJinfL4HCs8Ifz4uICuKxNdRQPd2YR/Gky2neggpG9gAXT+sVKN7tnQ550MeA8mopH
         VXMePpJkCRnFg4oHrt4OeiDO3HZM+4oCWDSLBsfpQcz5cuJBHCci2RYXxe4lW679UvfW
         KVd9pEjGm1M0LD8H2FjGC6DUC1exfoC35HVQslmnDJx1UvIKrNpTj4XgRFHWqx2bIx9i
         Wg9HwPaMjEnEt7YdGsGL+z0+vF0BXszjCGQwVYWmZj6WBAH2RShD8WBGlVzWfDaFxGNG
         IzDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699971232; x=1700576032;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kebr+ZAQxQeA9gxwXsENChkHynJvuQ8x6phPFJllrto=;
        b=KW9ImeseeiDoQlSNSPwIhdxutDrUFE5hnbwUsgqS80kOoQfUyfRvmGYW/iIWBxk5qA
         iRHEY1U/rYOkL2FMMkVmr1pbG89clU/e6IDmup/2bX9Mbk2LcIDXhHR/k0WwMhu0gqXt
         4D/IArn2vDALMDtVuGVW3/aOj2gbYe+5CKIDHKQZXaEzo4kQJMpaQwpM66JulpNiBEn6
         0iL/uK8F2CHEmxo0ZtbVgiSrBl4wN2Sjwq9n3glj0lVnSeYRBWFxlg0TcBVdMbUZ7ccB
         X4bhjPWh/YNcRUTj/TG0t1P/k/XFTHRTz49C2Z9i4f957RZxvtl8rdFR4K241XUnbbxV
         lSvg==
X-Gm-Message-State: AOJu0Yx+HrJq5ZYfOimTuZjH9F+XBzSuBGbm6T10YUROnn+DrK6z1pCJ
	E9S1v1t4EjUdP7Vcx87wfQvtZg==
X-Google-Smtp-Source: AGHT+IGUNDzsVyRn1cI8Qi+AL4zww1R/UAkdwGtV1FRdekOhhWQiL5gaf+3isCeURHwpf2kxBnYCXw==
X-Received: by 2002:a05:620a:461f:b0:774:17d6:31f1 with SMTP id br31-20020a05620a461f00b0077417d631f1mr2492322qkb.4.1699971232036;
        Tue, 14 Nov 2023 06:13:52 -0800 (PST)
Received: from carbon-x1.. ([12.186.190.2])
        by smtp.gmail.com with ESMTPSA id m2-20020a05620a220200b00777611164c5sm2701263qkh.106.2023.11.14.06.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 06:13:50 -0800 (PST)
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
Subject: [PATCH v4 15/20] riscv: add ISA extension parsing for Zvfh[min]
Date: Tue, 14 Nov 2023 09:12:51 -0500
Message-ID: <20231114141256.126749-16-cleger@rivosinc.com>
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

Add parsing for Zvfh[min] ISA extension[1] which were ratified in
june 2023 around commit e2ccd0548d6c ("Remove draft warnings from
Zvfh[min]") in riscv-v-spec[2].

Link: https://drive.google.com/file/d/1_Yt60HGAf1r1hx7JnsIptw0sqkBd9BQ8/view [1]
Link: https://github.com/riscv/riscv-v-spec/commits/e2ccd0548d6c [2]
Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Evan Green <evan@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 2 ++
 arch/riscv/kernel/cpufeature.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 97d106fa0f54..103d4f0aaf15 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -81,6 +81,8 @@
 #define RISCV_ISA_EXT_ZFH		66
 #define RISCV_ISA_EXT_ZFHMIN		67
 #define RISCV_ISA_EXT_ZIHINTNTL		68
+#define RISCV_ISA_EXT_ZVFH		69
+#define RISCV_ISA_EXT_ZVFHMIN		70
 
 #define RISCV_ISA_EXT_MAX		128
 #define RISCV_ISA_EXT_INVALID		U32_MAX
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index e73ee4cfd84a..623a5fa48cf4 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -280,6 +280,8 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zksh, RISCV_ISA_EXT_ZKSH),
 	__RISCV_ISA_EXT_SUPERSET(zvbb, RISCV_ISA_EXT_ZVBB, riscv_zvbb_exts),
 	__RISCV_ISA_EXT_DATA(zvbc, RISCV_ISA_EXT_ZVBC),
+	__RISCV_ISA_EXT_DATA(zvfh, RISCV_ISA_EXT_ZVFH),
+	__RISCV_ISA_EXT_DATA(zvfhmin, RISCV_ISA_EXT_ZVFHMIN),
 	__RISCV_ISA_EXT_DATA(zvkb, RISCV_ISA_EXT_ZVKB),
 	__RISCV_ISA_EXT_DATA(zvkg, RISCV_ISA_EXT_ZVKG),
 	__RISCV_ISA_EXT_BUNDLE(zvkn, riscv_zvkn_bundled_exts),
-- 
2.42.0


