Return-Path: <devicetree+bounces-5321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 601597B5F93
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 05:53:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 87FE51C2074E
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 03:53:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46998ECF;
	Tue,  3 Oct 2023 03:53:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9D3A59
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 03:53:21 +0000 (UTC)
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93524CC8
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 20:53:10 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-5859b06509cso267431a12.2
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 20:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1696305190; x=1696909990; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wscE/VATjNkVY1Hz8a3BGt+QWcAqJYfhFG+cRpEMwCY=;
        b=V5cqu9hKtsprSisU/UDECgPeMnk6LWXOOvjNGR3+PVsLfJjKJGg6MmbYeOXQeLf8dN
         IfUP0yRsHiKnvDVu203+WhzHe6HLYqTqbKaJB3hweaqwaP0sHx+t8g8acaZIkYngwLUt
         1nvZ79qym+KsARkqGVAovFQOb2jWIkR77HUQCRahR1lNa7sprrd4RFAvqE13Fk8bUqWr
         QKtvvLCrvI8ZDtfhD6dwFeCYbKucxT3MaJlzxtb7F8/4oKOtiyHfG1C2T7Ny+bdGUOxJ
         /uAYJbJPVQsuI4dGdzidN1vXUcsFwsBEigrhlSSon6TpVOz8OpB6rDNrAIGNchfIs1Td
         O7kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696305190; x=1696909990;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wscE/VATjNkVY1Hz8a3BGt+QWcAqJYfhFG+cRpEMwCY=;
        b=L+c+vP+bxZbEPYwMVUPX3W2vSU6x1lcmOrxKEg6wiIimtdIuByyICw9AsOcthsOEEB
         ZUp3IB7FgyIlsNIhqgbSV+B9hvGSRm9ZuyPaHUGiyTDOUSzd7dn00ozlFS7UOwgITSGI
         CMC6Xs/Jd4iGFsF7a0vFiZeAt4QUEkrKSIqoa4ToDdATJCgnU7NjdhF8mTT+A4v9ozam
         J4B6L9TCIH3UathjrbSwMVeXcYc4oQ3IUE5DbhdLhVr+T4ncg61y8xMReEYGDZqzzEI2
         E0TFQVn2Od5gRuMaiSbZgiNmWnYVWtzUAq6ByPtvhEm5LHVlBsX+C0OjllKSd5/EjV2y
         5V7Q==
X-Gm-Message-State: AOJu0YysiIzmlLVVw0KpMoHz8vEpDL9GMFMbuzZw2Hrp8JECVV4/TiB7
	+CIkrrjp4oDNXHC8JXqtoZgo8Q==
X-Google-Smtp-Source: AGHT+IGkzr82JWDhLVFUCV6JSAUgaCxQMIRqm/FYTV446+qx3qJIHp1jBs7+mM31fhfiKw48k352OQ==
X-Received: by 2002:a17:902:c40a:b0:1c7:5a63:43bb with SMTP id k10-20020a170902c40a00b001c75a6343bbmr7861019plk.8.1696305190011;
        Mon, 02 Oct 2023 20:53:10 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.132])
        by smtp.gmail.com with ESMTPSA id ja7-20020a170902efc700b001bf846dd2d0sm277381plb.13.2023.10.02.20.53.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 20:53:09 -0700 (PDT)
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
Subject: [PATCH v3 6/6] KVM: riscv: selftests: Add condops extensions to get-reg-list test
Date: Tue,  3 Oct 2023 09:22:26 +0530
Message-Id: <20231003035226.1945725-7-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231003035226.1945725-1-apatel@ventanamicro.com>
References: <20231003035226.1945725-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

We have a new conditional operations related ISA extensions so let us
add these extensions to get-reg-list test.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 .../testing/selftests/kvm/riscv/get-reg-list.c  | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
index 625118d53b74..77dc5221c465 100644
--- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
+++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
@@ -48,6 +48,7 @@ bool filter_reg(__u64 reg)
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZICBOM:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZICBOZ:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZICNTR:
+	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZICOND:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZICSR:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZIFENCEI:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZIHINTPAUSE:
@@ -361,6 +362,7 @@ static const char *isa_ext_id_to_str(__u64 id)
 		KVM_ISA_EXT_ARR(ZICBOM),
 		KVM_ISA_EXT_ARR(ZICBOZ),
 		KVM_ISA_EXT_ARR(ZICNTR),
+		KVM_ISA_EXT_ARR(ZICOND),
 		KVM_ISA_EXT_ARR(ZICSR),
 		KVM_ISA_EXT_ARR(ZIFENCEI),
 		KVM_ISA_EXT_ARR(ZIHINTPAUSE),
@@ -632,6 +634,10 @@ static __u64 zicntr_regs[] = {
 	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZICNTR,
 };
 
+static __u64 zicond_regs[] = {
+	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZICOND,
+};
+
 static __u64 zicsr_regs[] = {
 	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZICSR,
 };
@@ -759,6 +765,8 @@ static __u64 fp_d_regs[] = {
 	{"zbs", .feature = KVM_RISCV_ISA_EXT_ZBS, .regs = zbs_regs, .regs_n = ARRAY_SIZE(zbs_regs),}
 #define ZICNTR_REGS_SUBLIST \
 	{"zicntr", .feature = KVM_RISCV_ISA_EXT_ZICNTR, .regs = zicntr_regs, .regs_n = ARRAY_SIZE(zicntr_regs),}
+#define ZICOND_REGS_SUBLIST \
+	{"zicond", .feature = KVM_RISCV_ISA_EXT_ZICOND, .regs = zicond_regs, .regs_n = ARRAY_SIZE(zicond_regs),}
 #define ZICSR_REGS_SUBLIST \
 	{"zicsr", .feature = KVM_RISCV_ISA_EXT_ZICSR, .regs = zicsr_regs, .regs_n = ARRAY_SIZE(zicsr_regs),}
 #define ZIFENCEI_REGS_SUBLIST \
@@ -864,6 +872,14 @@ static struct vcpu_reg_list zicntr_config = {
 	},
 };
 
+static struct vcpu_reg_list zicond_config = {
+	.sublists = {
+	BASE_SUBLIST,
+	ZICOND_REGS_SUBLIST,
+	{0},
+	},
+};
+
 static struct vcpu_reg_list zicsr_config = {
 	.sublists = {
 	BASE_SUBLIST,
@@ -932,6 +948,7 @@ struct vcpu_reg_list *vcpu_configs[] = {
 	&zbb_config,
 	&zbs_config,
 	&zicntr_config,
+	&zicond_config,
 	&zicsr_config,
 	&zifencei_config,
 	&zihpm_config,
-- 
2.34.1


