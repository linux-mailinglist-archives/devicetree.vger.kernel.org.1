Return-Path: <devicetree+bounces-15662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E8F7EB1CE
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 15:14:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 568B4B20B22
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 14:14:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 850E141226;
	Tue, 14 Nov 2023 14:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="hUSQzEYx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F86541212
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 14:13:54 +0000 (UTC)
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 435211989
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:49 -0800 (PST)
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-3b41132c33aso801400b6e.1
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699971229; x=1700576029; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mh7tTRDZwkplFE7US+z6W8VzyVO8RyK0Ie0Y8NEIF5E=;
        b=hUSQzEYxSqtpXhZryoDQyf6T2bwSWy2PezPYVtkDwdSNoPNwng/3so7MU1XDNjeA/w
         QvOI5lXvI28bs3RpdVkrJALKQiwBDDaGa8CScHXgtByUAn1F3pJkGKtJxHWKd8lde5mv
         W4WfqkWKG8Vw15QMAiRNOD4hUv6kSAf8dAtwMW06N7C8j4XXB/Z+WFscmSyDTqWfcSrv
         ifteDEfNtrIBbKfjPv6itTdjBL2sBnR6DuZTmzd8GJaRa4i6t7PTkDioqF5VrDr4IDuG
         oy8GSFb5VO6vBT7WO+AdMgo89i+VVkubA3rsssc+efvpau06eP98/FSCPV0VYPQudjW9
         HMCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699971229; x=1700576029;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mh7tTRDZwkplFE7US+z6W8VzyVO8RyK0Ie0Y8NEIF5E=;
        b=hiNt9UPtusaKBLhNqwdYWowZTblxOBMlhBW/VBS6Hk4c8+t4Wg/lV5pX0sUkq2+wlx
         Hx4nvS5sPwD8HHig1Tsz6Ms+G+Zn7YcTwL0OxoddEimtVwfwHcd4hUamq8NoNWAXL/5m
         JtX60fL3jjg3prJNZ4uXLLlB7p04921X7yFDrZTHehpAT98gFL5L5mspN0TO5NoxwyLT
         F0fgu3t6BfgOrhXN65l+zsL55JEIS5kqXAQrUV6DUwKexkY1boO7gJ1gkyQSdozo3hAJ
         AduXmyWjQ0mr0YgISyPeTZJ0nVLtjQpn7RLZQit2fTL6uTon5BuD2sucY41DN0jW4hPq
         vKWw==
X-Gm-Message-State: AOJu0YzYhqCXnuAOaybsMGfpiGcNVy0SEpf46KBD5UnTmyQRe5rmLdKM
	fVo8yDR4XsZ6h8FycWCPMRi6hQ==
X-Google-Smtp-Source: AGHT+IGkxt/nZ/twmuaXiKz9xS1+QSbiEolPjI0eAyguNp2BxYnPRpCdPEUVfljS4ZnrA7PBhdlykg==
X-Received: by 2002:a05:6808:1a2a:b0:3b5:65c2:fef4 with SMTP id bk42-20020a0568081a2a00b003b565c2fef4mr2571171oib.5.1699971229027;
        Tue, 14 Nov 2023 06:13:49 -0800 (PST)
Received: from carbon-x1.. ([12.186.190.2])
        by smtp.gmail.com with ESMTPSA id m2-20020a05620a220200b00777611164c5sm2701263qkh.106.2023.11.14.06.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 06:13:48 -0800 (PST)
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
Subject: [PATCH v4 13/20] riscv: hwprobe: export Zhintntl ISA extension
Date: Tue, 14 Nov 2023 09:12:49 -0500
Message-ID: <20231114141256.126749-14-cleger@rivosinc.com>
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

Export Zihintntl extension[1] through hwprobe.

Link: https://drive.google.com/file/d/13_wsN8YmRfH8YWysFyTX-DjTkCnBd9hj/view [1]
Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Evan Green <evan@rivosinc.com>
---
 Documentation/arch/riscv/hwprobe.rst  | 3 +++
 arch/riscv/include/uapi/asm/hwprobe.h | 1 +
 arch/riscv/kernel/sys_riscv.c         | 1 +
 3 files changed, 5 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 397d53195f49..aa8ebeeddfe6 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -146,6 +146,9 @@ The following keys are defined:
   * :c:macro:`RISCV_HWPROBE_EXT_ZFHMIN`: The Zfhmin extension version 1.0 is
        supported as defined in the RISC-V ISA manual.
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZIHINTNTL`: The Zihintntl extension version 1.0
+       is supported as defined in the RISC-V ISA manual.
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 2d960777ea43..d72c69ea0740 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -52,6 +52,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZVKT		(1 << 26)
 #define		RISCV_HWPROBE_EXT_ZFH		(1 << 27)
 #define		RISCV_HWPROBE_EXT_ZFHMIN	(1 << 28)
+#define		RISCV_HWPROBE_EXT_ZIHINTNTL	(1 << 29)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index d776c6c39fcd..a46e4f6821dd 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -173,6 +173,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZKSED);
 		EXT_KEY(ZKSH);
 		EXT_KEY(ZKT);
+		EXT_KEY(ZIHINTNTL);
 
 		if (has_vector()) {
 			EXT_KEY(ZVBB);
-- 
2.42.0


