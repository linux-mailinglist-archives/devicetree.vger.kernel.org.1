Return-Path: <devicetree+bounces-14332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 956997E3A70
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 11:56:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B8C811C20B6B
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 10:56:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 848B329CF2;
	Tue,  7 Nov 2023 10:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="lsLou0d5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F1D2C87F
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 10:56:12 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D42EEA
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 02:56:10 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-32f9baca5bcso817401f8f.0
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 02:56:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699354568; x=1699959368; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wyYMJgRzMjwrKO5L5hSYe/4Gc/T+AURoIx9X2Um34ac=;
        b=lsLou0d5OutzxgvAP5UGYwnVPIgspUfp/+5mxTGZXWrP4t93Yun+xVMMBUOfD0Y8Wx
         H8TlVmSm63Ry6D6QNtzui9v+rY23A4wRo9XGvno9YVOdGGXOtmY4wyLEP3iWquE06tki
         s3ukKN7NxzU4N5XPeKuyBdD4mUJnlR3C1SoyswF6k9L7WVDm+0rZUpt+iEEIE+pCzaqx
         IaEEOrrCwN8OuwtB03AG26T9/nJG5H/YiESXT+1Gp9CYRfu465XEIn9W46Pgq6Pwytla
         a2bEwJF+H/b2FA7NapdrzprkzdkynF0T8+VoRhV9w3Qmr8iqf7s5UNbXSL+HZFSMud9S
         qWqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699354568; x=1699959368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wyYMJgRzMjwrKO5L5hSYe/4Gc/T+AURoIx9X2Um34ac=;
        b=pkSWv/uW5AjMM4I5XdsWSg5+6KZLbuoLrmZb2Sv41vrmDDpqZzDb/h1sq9Uc8SjIkW
         C46qKSykfaAxasOG1CmOC3NiPhAdeUROlGEwmRX2Nhxb0xd2A+j5/jwdQEsITE7/JnQT
         Y67ugu8XW2flL6b5hiNS9Th5vZz1nFsjOQFNEdzUaBsi0Z7qI19KuPZw2p2FnfJBrOdV
         7qYi849Y27KpxeCNX/iPWoS+0vJ7PzmwxbCP5TBBQv1Jh/sWeq2It4R0fnU7N6vWMYaC
         lyeqgTbpm9wg7LDHj8GaoKqLVHSVUxJC/Ai3mKUpOK9a3aN+uWRGSTI0Y3boY2owxOVT
         A3ZA==
X-Gm-Message-State: AOJu0Yy69iKc3GkI+CuD6h/XoBI2tTkWKqt9ue+MCU01jjinVQm0cuNw
	CU8unozdE48m6f4HPmim4vam/w==
X-Google-Smtp-Source: AGHT+IFyFFeGXMuHqpYj47DkgB8JLp7nUxjM9lX3FEcMg/41/OmRaYpLLNof5//xRHlJ5upcdLIHaQ==
X-Received: by 2002:a05:600c:4fcc:b0:405:4721:800 with SMTP id o12-20020a05600c4fcc00b0040547210800mr26080850wmq.1.1699354567943;
        Tue, 07 Nov 2023 02:56:07 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:7db3:bdd9:4cab:2ee3])
        by smtp.gmail.com with ESMTPSA id n30-20020a05600c501e00b00405442edc69sm15396853wmr.14.2023.11.07.02.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 02:56:07 -0800 (PST)
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
Subject: [PATCH v3 06/20] riscv: add ISA extension parsing for vector crypto
Date: Tue,  7 Nov 2023 11:55:42 +0100
Message-ID: <20231107105556.517187-7-cleger@rivosinc.com>
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

Add parsing of some Zv* vector crypto ISA extensions that are mentioned
in "RISC-V Cryptography Extensions Volume II" [1]. These ISA extensions
are the following:

- Zvbb: Vector Basic Bit-manipulation
- Zvbc: Vector Carryless Multiplication
- Zvkb: Vector Cryptography Bit-manipulation
- Zvkg: Vector GCM/GMAC.
- Zvkned: NIST Suite: Vector AES Block Cipher
- Zvknh[ab]: NIST Suite: Vector SHA-2 Secure Hash
- Zvksed: ShangMi Suite: SM4 Block Cipher
- Zvksh: ShangMi Suite: SM3 Secure Hash
- Zvkn: NIST Algorithm Suite
- Zvknc: NIST Algorithm Suite with carryless multiply
- Zvkng: NIST Algorithm Suite with GCM.
- Zvks: ShangMi Algorithm Suite
- Zvksc: ShangMi Algorithm Suite with carryless multiplication
- Zvksg: ShangMi Algorithm Suite with GCM.
- Zvkt: Vector Data-Independent Execution Latency.

Link: https://drive.google.com/file/d/1gb9OLH-DhbCgWp7VwpPOVrrY6f3oSJLL/view [1]
Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 14 ++++++-
 arch/riscv/kernel/cpufeature.c | 68 ++++++++++++++++++++++++++++++++++
 2 files changed, 80 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 69cc659cf65e..556d1da02877 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -71,8 +71,18 @@
 #define RISCV_ISA_EXT_ZKSED		53
 #define RISCV_ISA_EXT_ZKSH		54
 #define RISCV_ISA_EXT_ZKT		55
-
-#define RISCV_ISA_EXT_MAX		64
+#define RISCV_ISA_EXT_ZVBB		56
+#define RISCV_ISA_EXT_ZVBC		57
+#define RISCV_ISA_EXT_ZVKB		58
+#define RISCV_ISA_EXT_ZVKG		59
+#define RISCV_ISA_EXT_ZVKNED		60
+#define RISCV_ISA_EXT_ZVKNHA		61
+#define RISCV_ISA_EXT_ZVKNHB		62
+#define RISCV_ISA_EXT_ZVKSED		63
+#define RISCV_ISA_EXT_ZVKSH		64
+#define RISCV_ISA_EXT_ZVKT		65
+
+#define RISCV_ISA_EXT_MAX		128
 #define RISCV_ISA_EXT_INVALID		U32_MAX
 
 #ifdef CONFIG_RISCV_M_MODE
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 0d78791288da..56570b838910 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -121,6 +121,10 @@ static bool riscv_isa_extension_check(int id)
 #define __RISCV_ISA_EXT_BUNDLE(_name, _bundled_exts) \
 	_RISCV_ISA_EXT_DATA(_name, RISCV_ISA_EXT_INVALID, _bundled_exts, ARRAY_SIZE(_bundled_exts))
 
+/* Used to declare extensions that are a superset of other extensions (Zvbb for instance) */
+#define __RISCV_ISA_EXT_SUPERSET(_name, _id, _sub_exts) \
+	_RISCV_ISA_EXT_DATA(_name, _id, _sub_exts, ARRAY_SIZE(_sub_exts))
+
 static const unsigned int riscv_zk_bundled_exts[] = {
 	RISCV_ISA_EXT_ZBKB,
 	RISCV_ISA_EXT_ZBKC,
@@ -147,6 +151,54 @@ static const unsigned int riscv_zks_bundled_exts[] = {
 	RISCV_ISA_EXT_ZKSH
 };
 
+#define RISCV_ISA_EXT_ZVKN	\
+	RISCV_ISA_EXT_ZVKNED,	\
+	RISCV_ISA_EXT_ZVKNHB,	\
+	RISCV_ISA_EXT_ZVKB,	\
+	RISCV_ISA_EXT_ZVKT
+
+static const unsigned int riscv_zvkn_bundled_exts[] = {
+	RISCV_ISA_EXT_ZVKN
+};
+
+static const unsigned int riscv_zvknc_bundled_exts[] = {
+	RISCV_ISA_EXT_ZVKN,
+	RISCV_ISA_EXT_ZVBC
+};
+
+static const unsigned int riscv_zvkng_bundled_exts[] = {
+	RISCV_ISA_EXT_ZVKN,
+	RISCV_ISA_EXT_ZVKG
+};
+
+#define RISCV_ISA_EXT_ZVKS	\
+	RISCV_ISA_EXT_ZVKSED,	\
+	RISCV_ISA_EXT_ZVKSH,	\
+	RISCV_ISA_EXT_ZVKB,	\
+	RISCV_ISA_EXT_ZVKT
+
+static const unsigned int riscv_zvks_bundled_exts[] = {
+	RISCV_ISA_EXT_ZVKS
+};
+
+static const unsigned int riscv_zvksc_bundled_exts[] = {
+	RISCV_ISA_EXT_ZVKS,
+	RISCV_ISA_EXT_ZVBC
+};
+
+static const unsigned int riscv_zvksg_bundled_exts[] = {
+	RISCV_ISA_EXT_ZVKS,
+	RISCV_ISA_EXT_ZVKG
+};
+
+static const unsigned int riscv_zvbb_exts[] = {
+	RISCV_ISA_EXT_ZVKB
+};
+
+static const unsigned int riscv_zvknhb_exts[] = {
+	RISCV_ISA_EXT_ZVKNHA
+};
+
 /*
  * The canonical order of ISA extension names in the ISA string is defined in
  * chapter 27 of the unprivileged specification.
@@ -225,6 +277,22 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zkt, RISCV_ISA_EXT_ZKT),
 	__RISCV_ISA_EXT_DATA(zksed, RISCV_ISA_EXT_ZKSED),
 	__RISCV_ISA_EXT_DATA(zksh, RISCV_ISA_EXT_ZKSH),
+	__RISCV_ISA_EXT_SUPERSET(zvbb, RISCV_ISA_EXT_ZVBB, riscv_zvbb_exts),
+	__RISCV_ISA_EXT_DATA(zvbc, RISCV_ISA_EXT_ZVBC),
+	__RISCV_ISA_EXT_DATA(zvkb, RISCV_ISA_EXT_ZVKB),
+	__RISCV_ISA_EXT_DATA(zvkg, RISCV_ISA_EXT_ZVKG),
+	__RISCV_ISA_EXT_BUNDLE(zvkn, riscv_zvkn_bundled_exts),
+	__RISCV_ISA_EXT_BUNDLE(zvknc, riscv_zvknc_bundled_exts),
+	__RISCV_ISA_EXT_DATA(zvkned, RISCV_ISA_EXT_ZVKNED),
+	__RISCV_ISA_EXT_BUNDLE(zvkng, riscv_zvkng_bundled_exts),
+	__RISCV_ISA_EXT_DATA(zvknha, RISCV_ISA_EXT_ZVKNHA),
+	__RISCV_ISA_EXT_SUPERSET(zvknhb, RISCV_ISA_EXT_ZVKNHB, riscv_zvknhb_exts),
+	__RISCV_ISA_EXT_BUNDLE(zvks, riscv_zvks_bundled_exts),
+	__RISCV_ISA_EXT_BUNDLE(zvksc, riscv_zvksc_bundled_exts),
+	__RISCV_ISA_EXT_DATA(zvksed, RISCV_ISA_EXT_ZVKSED),
+	__RISCV_ISA_EXT_DATA(zvksh, RISCV_ISA_EXT_ZVKSH),
+	__RISCV_ISA_EXT_BUNDLE(zvksg, riscv_zvksg_bundled_exts),
+	__RISCV_ISA_EXT_DATA(zvkt, RISCV_ISA_EXT_ZVKT),
 	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
 	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
 	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
-- 
2.42.0


