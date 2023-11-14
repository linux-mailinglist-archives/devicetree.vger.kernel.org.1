Return-Path: <devicetree+bounces-15659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC74C7EB1C7
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 15:14:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6658F281245
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 14:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F8DF405FA;
	Tue, 14 Nov 2023 14:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="EjOWHAfp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2CAB4121D
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 14:13:49 +0000 (UTC)
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63F4A1702
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:46 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-3b40bf434a3so639866b6e.1
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699971225; x=1700576025; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iEYEszCfp8f2sFaBAy4eKryQQU+hp7kZpXxy9sdi/dQ=;
        b=EjOWHAfp2Aag2afsEE/uNUpIVu7TqXlONdoGrToLFxc9zjKOx3D3aE88OnEZ2fFpjx
         B2dgdMiJq1aqAg6RXWsQJVJjXByzmHDNM1ulWT6+3PPnfnbUuBgVZFyQAuFfMdERBRpH
         WY6rJxm2v5Cji12S7jjw9ny4v592FHg+94PR667cc2YJVJoX6AM1VrEdlR+r1L1sNbDF
         NsP6rVu+CmKjws2QyUOFxkldQ09L+6qLrWmt2Dw1eQhvxkXQqSzF6N3RaSu617sph3kN
         FtcIiI/LzdplztCq/cTdZYo4jDoG696ifD1MQiY2PQ162VfgRQYuYytjbJlMUdbRHey+
         riqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699971225; x=1700576025;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iEYEszCfp8f2sFaBAy4eKryQQU+hp7kZpXxy9sdi/dQ=;
        b=YqU9Ux7UpPympPfNhaYWrQaW/lqMzNKlYnvO/zP7eknM/BQ3SCFFt6fq5ctffEd3S2
         US+W7FKsyqzMEQyta8a/U3EGDkPqIImPyiT1/WFAjGB+vOjyvvzAnWWg+Qf7A/0FZ0yx
         FImUe84vkwWe6l5fE2dfxBOkiWWo8Mhu1vBZjnyA5ZHuqMBs5n/Djuvx7A4CpGDmGjIR
         /5VSbuONUHs6DKrQC56C4q9z5/Fmg13KrI1OJdshquj3hm/gN7AdtTBsHQLl+layP51W
         JBv75ZGE22XHoU5yA1eEhTTbnqrDtRgCeamPF9EvGgxboQ6INV6qPWYuQoIItOtDy0Ev
         gVvg==
X-Gm-Message-State: AOJu0YzD4oWGnEiaZNtGPETpLcvFv04em8z7/XKw9/5tpfPi827NBv7Y
	9p+FS12Q72nysKMjR6gPoeptjA==
X-Google-Smtp-Source: AGHT+IGZDXgDf7Oyda/sT4+/a1oolhnnDFVdqByG3o5P/z09X4SwtY07cxiO09aQ9LMMrzbgtkqFGw==
X-Received: by 2002:a54:4688:0:b0:3b2:ef4e:23e1 with SMTP id k8-20020a544688000000b003b2ef4e23e1mr2189020oic.1.1699971225384;
        Tue, 14 Nov 2023 06:13:45 -0800 (PST)
Received: from carbon-x1.. ([12.186.190.2])
        by smtp.gmail.com with ESMTPSA id m2-20020a05620a220200b00777611164c5sm2701263qkh.106.2023.11.14.06.13.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 06:13:44 -0800 (PST)
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
Subject: [PATCH v4 10/20] riscv: hwprobe: export Zfh[min] ISA extensions
Date: Tue, 14 Nov 2023 09:12:46 -0500
Message-ID: <20231114141256.126749-11-cleger@rivosinc.com>
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
index a08fcd899b6d..397d53195f49 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -140,6 +140,12 @@ The following keys are defined:
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
index 89628a76ca04..2d960777ea43 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -50,6 +50,8 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZVKSED	(1 << 24)
 #define		RISCV_HWPROBE_EXT_ZVKSH		(1 << 25)
 #define		RISCV_HWPROBE_EXT_ZVKT		(1 << 26)
+#define		RISCV_HWPROBE_EXT_ZFH		(1 << 27)
+#define		RISCV_HWPROBE_EXT_ZFHMIN	(1 << 28)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index 9bbcd7334d96..d776c6c39fcd 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -186,6 +186,11 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 			EXT_KEY(ZVKSH);
 			EXT_KEY(ZVKT);
 		}
+
+		if (has_fpu()) {
+			EXT_KEY(ZFH);
+			EXT_KEY(ZFHMIN);
+		}
 #undef EXT_KEY
 	}
 
-- 
2.42.0


