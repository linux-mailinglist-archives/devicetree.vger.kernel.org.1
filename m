Return-Path: <devicetree+bounces-3182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE7F7AD95D
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:40:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 15AC31C2037C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90FB01BDD1;
	Mon, 25 Sep 2023 13:40:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA49125D8
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 13:40:12 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 165D61B9
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:40:07 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1c61bde0b4bso14714805ad.3
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695649206; x=1696254006; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uNHkjMM9HHYX8X83JcKOMwoHgKf/W4d95vsynq44CKo=;
        b=DcPfR/9E9VIPS1KbhspDAtONK1QO7eCSq9YKJW/V31SnY0ALc1hafseuwAifZZ3zlc
         ILC5PMi6e8eBlnnHfR3H7hNH3iaS2krL5aKqxy8E+bPbXHk1+neCoqn3nFUp6eGOwLsu
         bGq63E8omdmTzQKn+q+k9iyLCGUHCxsepV81iLrDBMJtl0tgKVXyIJwpcFAY/Cq48Iai
         iozTYONBEmDY+0NVUN/wTo3TjL3DW99sqEa7twTAfTl0L35IDQHn0m7H+Mt+1mCG/k2f
         5S87FVsMKy9EQ1BzuqCtB2CojIMGkLZk08EmQKNoNfV9NK+8jdV7Pm93GLauRB0rKFC7
         B8GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695649206; x=1696254006;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uNHkjMM9HHYX8X83JcKOMwoHgKf/W4d95vsynq44CKo=;
        b=fITaFXA3KlHR2/aRZjMeqfNHjewP1uAn+GO0W2jL37RUDtrGdZQta5gPg/UzixJumm
         pPpAYuPTXVr5mpcAGJA2wmLhVcR5s4PiPxsL335bn08aXgdSwK2uxPuF/G6+4rbFQ1cz
         4h2rUJvkAkFmIAbYfzXf/vbhCa7rQt497UQ5TRt4sbsr+LdzZaV7PeKSw6/qvnr4ig4x
         AsCBukNK8ZrOFrsLU9hcNRUeRGxxSy6PH4h1lM96rTKpwsrmyanWAYOFzOpgXNH3WXWj
         K0SJ1Xjsbk/+4xczn6m/x82jvfJ0cTB/QDIEBKUTqKlGGQL1zsoBPQZHvaR7clWWRNnP
         NELg==
X-Gm-Message-State: AOJu0YwQ+2HykLefgSDWvF5cEAWSWS5AinJ0/dGqwtal2cg8iEqFtrr3
	mnx0hVufaH30ln7T8OEw0JTniA==
X-Google-Smtp-Source: AGHT+IGU21ACNUey6DzMiWsfg977IabscEjcD4GfNCnNUexJxmWmu1U36ws4l5wFoYxptLxUg/E8xA==
X-Received: by 2002:a17:902:d50e:b0:1c5:74db:dc8b with SMTP id b14-20020a170902d50e00b001c574dbdc8bmr8353875plg.58.1695649206310;
        Mon, 25 Sep 2023 06:40:06 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id p11-20020a170902eacb00b001c625d6ffccsm969433pld.129.2023.09.25.06.40.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 06:40:05 -0700 (PDT)
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
Subject: [PATCH v2 8/9] KVM: riscv: selftests: Add smstateen registers to get-reg-list test
Date: Mon, 25 Sep 2023 19:08:58 +0530
Message-Id: <20230925133859.1735879-9-apatel@ventanamicro.com>
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

We have a new smstateen registers as separate sub-type of CSR ONE_REG
interface so let us add these registers to get-reg-list test.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 .../selftests/kvm/riscv/get-reg-list.c        | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
index 6cec0ef75cc7..625118d53b74 100644
--- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
+++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
@@ -36,6 +36,7 @@ bool filter_reg(__u64 reg)
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_I:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_M:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_V:
+	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_SMSTATEEN:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_SSAIA:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_SSTC:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_SVINVAL:
@@ -186,6 +187,8 @@ static const char *core_id_to_str(const char *prefix, __u64 id)
 	"KVM_REG_RISCV_CSR_GENERAL | KVM_REG_RISCV_CSR_REG(" #csr ")"
 #define RISCV_CSR_AIA(csr) \
 	"KVM_REG_RISCV_CSR_AIA | KVM_REG_RISCV_CSR_REG(" #csr ")"
+#define RISCV_CSR_SMSTATEEN(csr) \
+	"KVM_REG_RISCV_CSR_SMSTATEEN | KVM_REG_RISCV_CSR_REG(" #csr ")"
 
 static const char *general_csr_id_to_str(__u64 reg_off)
 {
@@ -243,6 +246,18 @@ static const char *aia_csr_id_to_str(__u64 reg_off)
 	return NULL;
 }
 
+static const char *smstateen_csr_id_to_str(__u64 reg_off)
+{
+	/* reg_off is the offset into struct kvm_riscv_smstateen_csr */
+	switch (reg_off) {
+	case KVM_REG_RISCV_CSR_SMSTATEEN_REG(sstateen0):
+		return RISCV_CSR_SMSTATEEN(sstateen0);
+	}
+
+	TEST_FAIL("Unknown smstateen csr reg: 0x%llx", reg_off);
+	return NULL;
+}
+
 static const char *csr_id_to_str(const char *prefix, __u64 id)
 {
 	__u64 reg_off = id & ~(REG_MASK | KVM_REG_RISCV_CSR);
@@ -255,6 +270,8 @@ static const char *csr_id_to_str(const char *prefix, __u64 id)
 		return general_csr_id_to_str(reg_off);
 	case KVM_REG_RISCV_CSR_AIA:
 		return aia_csr_id_to_str(reg_off);
+	case KVM_REG_RISCV_CSR_SMSTATEEN:
+		return smstateen_csr_id_to_str(reg_off);
 	}
 
 	TEST_FAIL("%s: Unknown csr subtype: 0x%llx", prefix, reg_subtype);
@@ -332,6 +349,7 @@ static const char *isa_ext_id_to_str(__u64 id)
 		KVM_ISA_EXT_ARR(I),
 		KVM_ISA_EXT_ARR(M),
 		KVM_ISA_EXT_ARR(V),
+		KVM_ISA_EXT_ARR(SMSTATEEN),
 		KVM_ISA_EXT_ARR(SSAIA),
 		KVM_ISA_EXT_ARR(SSTC),
 		KVM_ISA_EXT_ARR(SVINVAL),
@@ -637,6 +655,11 @@ static __u64 aia_regs[] = {
 	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_SSAIA,
 };
 
+static __u64 smstateen_regs[] = {
+	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_SMSTATEEN | KVM_REG_RISCV_CSR_SMSTATEEN_REG(sstateen0),
+	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_SMSTATEEN,
+};
+
 static __u64 fp_f_regs[] = {
 	KVM_REG_RISCV | KVM_REG_SIZE_U32 | KVM_REG_RISCV_FP_F | KVM_REG_RISCV_FP_F_REG(f[0]),
 	KVM_REG_RISCV | KVM_REG_SIZE_U32 | KVM_REG_RISCV_FP_F | KVM_REG_RISCV_FP_F_REG(f[1]),
@@ -744,6 +767,8 @@ static __u64 fp_d_regs[] = {
 	{"zihpm", .feature = KVM_RISCV_ISA_EXT_ZIHPM, .regs = zihpm_regs, .regs_n = ARRAY_SIZE(zihpm_regs),}
 #define AIA_REGS_SUBLIST \
 	{"aia", .feature = KVM_RISCV_ISA_EXT_SSAIA, .regs = aia_regs, .regs_n = ARRAY_SIZE(aia_regs),}
+#define SMSTATEEN_REGS_SUBLIST \
+	{"smstateen", .feature = KVM_RISCV_ISA_EXT_SMSTATEEN, .regs = smstateen_regs, .regs_n = ARRAY_SIZE(smstateen_regs),}
 #define FP_F_REGS_SUBLIST \
 	{"fp_f", .feature = KVM_RISCV_ISA_EXT_F, .regs = fp_f_regs, \
 		.regs_n = ARRAY_SIZE(fp_f_regs),}
@@ -871,6 +896,14 @@ static struct vcpu_reg_list aia_config = {
 	},
 };
 
+static struct vcpu_reg_list smstateen_config = {
+	.sublists = {
+	BASE_SUBLIST,
+	SMSTATEEN_REGS_SUBLIST,
+	{0},
+	},
+};
+
 static struct vcpu_reg_list fp_f_config = {
 	.sublists = {
 	BASE_SUBLIST,
@@ -903,6 +936,7 @@ struct vcpu_reg_list *vcpu_configs[] = {
 	&zifencei_config,
 	&zihpm_config,
 	&aia_config,
+	&smstateen_config,
 	&fp_f_config,
 	&fp_d_config,
 };
-- 
2.34.1


