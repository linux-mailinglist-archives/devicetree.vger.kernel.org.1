Return-Path: <devicetree+bounces-1254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5507A5811
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 05:54:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CFD141C20A16
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 03:54:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 226E130F93;
	Tue, 19 Sep 2023 03:54:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B8D20F1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:54:10 +0000 (UTC)
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C33C9119
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:54:08 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-274b9b7b033so1609378a91.3
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695095648; x=1695700448; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8pGeVEek9zT+aYZ/+OSRrTZDDVu3TufzzCdFbAdNAEQ=;
        b=CXKmj+fFCTrJ5tMwFTkY4VyojqBaM92ah6p50kTd5iJKd0DgZKUzDs/JFWljKtR3wZ
         nvQkMGegZKzVNYbLGPXxU5gmcfSmBUha9uOU0xtW/GR4kdwPNp4RjDeKsHClwl9Zv7ON
         JIY+3CKvhRADrhlkzxkoiz5RZgmwakPbQoiy/bLgCLa0/qQ66u9Df92GFcEK/R+JZ8+4
         Ss/ySIyoHcVfPj2cFM72NdZTOtGqer6COWmNcCEmD2iW/9mlS8dwVNC/DaDSNt/1l6me
         qfF7A4q6/GWFY8wDbpBEaLV5X769blx1aPgk3/Jty5Hp3VLsN7P+uw58SFWoOzjspyj2
         kLCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695095648; x=1695700448;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8pGeVEek9zT+aYZ/+OSRrTZDDVu3TufzzCdFbAdNAEQ=;
        b=aFDKdbc57ssOje+WThYqwYBpE+uaRoDdLpeUHyY2f2V3xUQLhV6FDMJ+jyFuwkMPAz
         DWj1ec2ZcUPMJvBKzP8b5pff9aGso5WmkYdG+D38Q82zuFBbeYO38jaQ+4gp4pYz6rbG
         N5SuAD2XvZWsBppxc1y08P03JF3y9yIxZqYQ8auLKVNTFi8nWUTMBMpWBwxfR9VyONgM
         zhwtZwxwnZ80Kww5vVdrST6CR/Jg6is57DJMtR5Cg0pzRo5WwZ+uy9b6Hp5YCZge5rMU
         djxtBHAGscBQf0zQxgea8Fg6AKDXNHdVk/dhux6MVjTbDc2EIYaRaA8Jt3DYvxHG6FWY
         l4pQ==
X-Gm-Message-State: AOJu0Ywz/5MMhRMdprEfSdzoLto1z3PtQgFGWHePidTZe1oHSK7V3gqo
	qjqLZoLlTAMNTsS228YdK7irQQ==
X-Google-Smtp-Source: AGHT+IFVL/Ha/V4JMQzZkv55SENS0Zz+GUGtyg2g1JkO21tp4+OerPk/8icamZrt62rtdL0jxnul+w==
X-Received: by 2002:a17:90a:cc17:b0:26d:61:3aad with SMTP id b23-20020a17090acc1700b0026d00613aadmr8451172pju.4.1695095648198;
        Mon, 18 Sep 2023 20:54:08 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id 3-20020a17090a034300b00273fc850342sm4000802pjf.20.2023.09.18.20.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 20:54:07 -0700 (PDT)
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
Subject: [PATCH 2/7] RISC-V: Detect Zicond from ISA string
Date: Tue, 19 Sep 2023 09:23:38 +0530
Message-Id: <20230919035343.1399389-3-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230919035343.1399389-1-apatel@ventanamicro.com>
References: <20230919035343.1399389-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
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
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 arch/riscv/include/asm/hwcap.h                          | 1 +
 arch/riscv/kernel/cpufeature.c                          | 1 +
 3 files changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index cad8ef68eca7..7ea90e2dbc5b 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -225,6 +225,12 @@ properties:
             ratified in the 20191213 version of the unprivileged ISA
             specification.
 
+        - const: zicond
+          description:
+            The standard Zicond extension for conditional arithmetic and
+            conditional-select/move operations as ratified in commit 8fb6694
+            ("Update Gemfile") of riscv-zicond.
+
         - const: zicsr
           description: |
             The standard Zicsr extension for control and status register
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
index 3a31d34fe709..49b6551f3347 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -174,6 +174,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zba, RISCV_ISA_EXT_ZBA),
 	__RISCV_ISA_EXT_DATA(zbb, RISCV_ISA_EXT_ZBB),
 	__RISCV_ISA_EXT_DATA(zbs, RISCV_ISA_EXT_ZBS),
+	__RISCV_ISA_EXT_DATA(zicond, RISCV_ISA_EXT_ZICOND),
 	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
 	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
 	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
-- 
2.34.1


