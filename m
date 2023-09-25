Return-Path: <devicetree+bounces-3178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 708BA7AD952
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:39:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id DEAC81F24BE8
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B78221BDCB;
	Mon, 25 Sep 2023 13:39:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B84125D8
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 13:39:42 +0000 (UTC)
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36FB1112
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:39:41 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1c60f1a2652so16003405ad.0
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695649180; x=1696253980; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G0o9lQ4GgOP7dFq6KPsGtVotlHRRQlDwzXlKCC3Ypps=;
        b=ZQB63PmMZx3tf9Lzotp/7jqmTkeArhlhJmFx+R3ZmyCQn4gZmKC26wi/MDaPbvTh9a
         E8lQBohJCh0vz7DvNrvnrpK6ZcEEb/jgCwbW6W08kmSTncPnNZZ8asG5xXIdAXztzd7/
         N5YZLMKNbxos2nZGH2pvhkpeNXayTZhHGPqgEt2uE7Ar9gxUQnzjHVgFOoucUz2FgcUY
         abagfCMYCRaZpnyaN60z4jrJFwH6YiLm4yT/FloMD04N0braiD8mH+QKiuabrjbBYD6X
         PtenvReLIF4OenYQtCQLZe+4fipxN3V5mS5VfjXCPFvL/MUlC/J03PfQWauKBpciU8jd
         Zjrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695649180; x=1696253980;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G0o9lQ4GgOP7dFq6KPsGtVotlHRRQlDwzXlKCC3Ypps=;
        b=bZfF8/OpcxJW97iTcMvazvpqWp2gFFFexr0G9zjgoGeHrIgo5tpFhQyXXKdwBuOSLu
         dVow3P8Xa/QvR4jHRwRreul9X8XC1+l6D8AwBy5pyIYEmF0uHiCgT/5oO4EoDdu+sW79
         edtjZPF/Q7ExQ6tKvbyrmIkVutAN0sgCX6cEl0uDxR7DT7v5e5CGlqyrciMOoM27cLOZ
         0FrCqLbVF6M1oacL+hN7E6kiIf7B7lwM41hte2PkcnpOSuLveOMhvlILwI20BRFCxioA
         XhsWez4SdB+ONqpPTx0iftXP2TWfIP2Oi+BWsLHFZKMCYMBw2oLOfRjK2Y86MhWTenss
         q82w==
X-Gm-Message-State: AOJu0YzvvzcuOTnOqFQJ1EanN/hnJ5XKd02WqS0QuTPyRIcp0RxLpqpC
	VzPzsWkOWIp06SmmLgSOD9HvEA==
X-Google-Smtp-Source: AGHT+IHWCYspI/fUj+Ig0k3L9hYf5Uzb2FzPkjigw9xzhpmfqfpqTqSt/ibnnqx7qGmYx7Sty1gsrA==
X-Received: by 2002:a17:902:e5d1:b0:1c3:868f:5958 with SMTP id u17-20020a170902e5d100b001c3868f5958mr14239969plf.20.1695649180488;
        Mon, 25 Sep 2023 06:39:40 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id p11-20020a170902eacb00b001c625d6ffccsm969433pld.129.2023.09.25.06.39.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 06:39:40 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
	Atish Patra <atishp@atishpatra.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Shuah Khan <shuah@kernel.org>
Cc: Andrew Jones <ajones@ventanamicro.com>,
	Mayuresh Chitale <mchitale@ventanamicro.com>,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v2 4/9] RISC-V: Detect Zicond from ISA string
Date: Mon, 25 Sep 2023 19:08:54 +0530
Message-Id: <20230925133859.1735879-5-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230925133859.1735879-1-apatel@ventanamicro.com>
References: <20230925133859.1735879-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The RISC-V integer conditional (Zicond) operation extension defines
standard conditional arithmetic and conditional-select/move operations
which are inspired from the XVentanaCondOps extension. In fact, QEMU
RISC-V also has support for emulating Zicond extension.

Let us detect Zicond extension from ISA string available through
DT or ACPI.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index b7efe9e2fa89..15bafc02ffd4 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -60,6 +60,7 @@
 #define RISCV_ISA_EXT_ZIHPM		42
 #define RISCV_ISA_EXT_SMSTATEEN		43
 #define RISCV_ISA_EXT_XVENTANACONDOPS	44
+#define RISCV_ISA_EXT_ZICOND		45
 
 #define RISCV_ISA_EXT_MAX		64
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 3a31d34fe709..7f683916f2c2 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -167,6 +167,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zicbom, RISCV_ISA_EXT_ZICBOM),
 	__RISCV_ISA_EXT_DATA(zicboz, RISCV_ISA_EXT_ZICBOZ),
 	__RISCV_ISA_EXT_DATA(zicntr, RISCV_ISA_EXT_ZICNTR),
+	__RISCV_ISA_EXT_DATA(zicond, RISCV_ISA_EXT_ZICOND),
 	__RISCV_ISA_EXT_DATA(zicsr, RISCV_ISA_EXT_ZICSR),
 	__RISCV_ISA_EXT_DATA(zifencei, RISCV_ISA_EXT_ZIFENCEI),
 	__RISCV_ISA_EXT_DATA(zihintpause, RISCV_ISA_EXT_ZIHINTPAUSE),
-- 
2.34.1


