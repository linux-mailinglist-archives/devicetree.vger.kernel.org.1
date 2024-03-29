Return-Path: <devicetree+bounces-54522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 482CD8915FE
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 10:31:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0B2A281731
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 09:31:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 782B982D73;
	Fri, 29 Mar 2024 09:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Z8YTS1mX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77BD81AA3
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 09:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711704502; cv=none; b=UkIroBisRPFcMxNpj+kOXXXwYF4UXrrfMQ1qdP/VsYASoajuDfeGpRc+5dbhxfetJt2/WZyeU71bgdgHssxyWazO/FYm9J2N6lzA5+oCYn1uHp/PbguF7QlWs/sqrZDlRZCtJFuSZlYks0uvTstOvZg0+eUYXp2r5QWm2EUICr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711704502; c=relaxed/simple;
	bh=wCFKSKMKTlZBWK3ZXaR4BvVSeSCHMmEnNsjJo8lvTyY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=da7rh150cxPwS73LUuwo13/Scye4bvllkT/5PdEyrEzlm5weIpq81kgR9h59bjl2v59s9vG1P07ylKJHhq3IaT2Qx3rDbHm4YLOIY+2JCHvl+w9hP/Rv95yz6rt48txtQT8BTcC8QnxO7xXKWFy1OXcK7r8ME3iHpT36nL2r95c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Z8YTS1mX; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1e2235c630aso7620495ad.2
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 02:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1711704500; x=1712309300; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PDqUNVfVcL5Rx2dx6lOA54ZEoR9Eohs4e4oftX2EMwM=;
        b=Z8YTS1mXlorb4QJ+VKgpjh1j737YZEyXRBcxuYkfsv+qaXxJpKTIyvzJfVZ667X5sb
         Dfv68oz+XWbhqUqPo2xOON/WfvfwXXlyIS6A8bsPD2l3f1ws6/S/JyCTY+Dwl3QMI9L3
         4X2tfogzJb1Mmw3qWnYQnQBZ3ByTp9K7RHH1HRiqS+0aC5Rkc8HMNtrPox+Uev0HV3be
         YRag0tagInmGSKgX9Qx+GzmdRBssG2sUn0ce5X1We9K9j9tHrxcX+bRXY8tf87XaVqgM
         RgPiBH5JHeb/y+cr9IprPEjqF5PIQ2KNg29Qen7oEiKgdDaU69oLlmxoFIPr4fkC7Hj+
         YtCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711704500; x=1712309300;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PDqUNVfVcL5Rx2dx6lOA54ZEoR9Eohs4e4oftX2EMwM=;
        b=M/QIEg+2uc7HsnBN61P2v1HBbQ2HFMH5sOQUbuF/ynmsyrMXLJ9uQjERiuq9LY1ma5
         iOVTl9WyB3ZqdDq7EUzBGA1MwI5aYbEVZgntjTeyxLCrHTQUF/hXGoLwq1kbBDzVe1Ak
         q14u+4V3pCeHfWZ4/vywWCHe0DPeOmUJF+9bvgLF9EpWvweDkcwdDF+FPabc68N6r6Rq
         uTxfRg0N75X/F3R5g7a/EgXhVIL9ZlVB5eFG6AxrvXWBOviHZbzwY4FgnxH0bvQUXoAu
         q0WzxrVFQ9SzXxD+CvQHh/scjGQQ+ENMqofYDkvPbpBN8lqmWwBVl7HwVZE4j0lrbedB
         xFUA==
X-Forwarded-Encrypted: i=1; AJvYcCXIy73A4cCnTQsbdlXKfu2u6Sn/LsMGdgMbb8b2OMqgoiis8vQtuHs/mxIbDuLJIIUJpG3ZrdKeQdMsV8nJ3td6/PmFCGm032uzVw==
X-Gm-Message-State: AOJu0YyOg4b8dbGFuLkn8xBacfGlPOA0ajNddTvELvorr/lyDpCBjEre
	LERqs9zfV6NXWRcAL8ApfYEl6vp3CWh/P8XFOrknlvtwmanYCjaPvs6jQBNtJ5w=
X-Google-Smtp-Source: AGHT+IEFn6lnpp94KNj8bwQ5NgWC2ILdPrLL6jG7Xd8BF08mkXal/x6HNlt14p0P0bkYq09hEnt/mA==
X-Received: by 2002:a17:90a:ea06:b0:2a0:310b:2cac with SMTP id w6-20020a17090aea0600b002a0310b2cacmr1663501pjy.25.1711704499969;
        Fri, 29 Mar 2024 02:28:19 -0700 (PDT)
Received: from [127.0.1.1] (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id cv17-20020a17090afd1100b002a02f8d350fsm2628830pjb.53.2024.03.29.02.28.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 02:28:19 -0700 (PDT)
From: Max Hsu <max.hsu@sifive.com>
Date: Fri, 29 Mar 2024 17:26:27 +0800
Subject: [PATCH RFC 11/11] KVM: riscv: selftests: Add Sdtrig Extension to
 get-reg-list test
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240329-dev-maxh-lin-452-6-9-v1-11-1534f93b94a7@sifive.com>
References: <20240329-dev-maxh-lin-452-6-9-v1-0-1534f93b94a7@sifive.com>
In-Reply-To: <20240329-dev-maxh-lin-452-6-9-v1-0-1534f93b94a7@sifive.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Pavel Machek <pavel@ucw.cz>, 
 Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>, 
 Paolo Bonzini <pbonzini@redhat.com>, Shuah Khan <shuah@kernel.org>
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, kvm@vger.kernel.org, 
 kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org, 
 Max Hsu <max.hsu@sifive.com>, Yong-Xuan Wang <yongxuan.wang@sifive.com>
X-Mailer: b4 0.13.0

From: Yong-Xuan Wang <yongxuan.wang@sifive.com>

Update the get-reg-list test to test the Sdtrig Extension is available
for guest OS.

Signed-off-by: Yong-Xuan Wang <yongxuan.wang@sifive.com>
Co-developed-by: Max Hsu <max.hsu@sifive.com>
Signed-off-by: Max Hsu <max.hsu@sifive.com>
---
 tools/testing/selftests/kvm/riscv/get-reg-list.c | 27 ++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
index b882b7b9b785..f2696e308509 100644
--- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
+++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
@@ -41,6 +41,7 @@ bool filter_reg(__u64 reg)
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_I:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_M:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_V:
+	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SDTRIG:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SMSTATEEN:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SSAIA:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SSTC:
@@ -247,6 +248,8 @@ static const char *core_id_to_str(const char *prefix, __u64 id)
 	"KVM_REG_RISCV_CSR_AIA | KVM_REG_RISCV_CSR_REG(" #csr ")"
 #define RISCV_CSR_SMSTATEEN(csr) \
 	"KVM_REG_RISCV_CSR_SMSTATEEN | KVM_REG_RISCV_CSR_REG(" #csr ")"
+#define RISCV_CSR_SDTRIG(csr) \
+	"KVM_REG_RISCV_CSR_SDTRIG | KVM_REG_RISCV_CSR_REG(" #csr ")"
 
 static const char *general_csr_id_to_str(__u64 reg_off)
 {
@@ -314,6 +317,18 @@ static const char *smstateen_csr_id_to_str(__u64 reg_off)
 	return NULL;
 }
 
+static const char *sdtrig_csr_id_to_str(__u64 reg_off)
+{
+	/* reg_off is the offset into struct kvm_riscv_smstateen_csr */
+	switch (reg_off) {
+	case KVM_REG_RISCV_CSR_SDTRIG_REG(scontext):
+		return RISCV_CSR_SDTRIG(scontext);
+	}
+
+	TEST_FAIL("Unknown sdtrig csr reg: 0x%llx", reg_off);
+	return NULL;
+}
+
 static const char *csr_id_to_str(const char *prefix, __u64 id)
 {
 	__u64 reg_off = id & ~(REG_MASK | KVM_REG_RISCV_CSR);
@@ -330,6 +345,8 @@ static const char *csr_id_to_str(const char *prefix, __u64 id)
 		return aia_csr_id_to_str(reg_off);
 	case KVM_REG_RISCV_CSR_SMSTATEEN:
 		return smstateen_csr_id_to_str(reg_off);
+	case KVM_REG_RISCV_CSR_SDTRIG:
+		return sdtrig_csr_id_to_str(reg_off);
 	}
 
 	return strdup_printf("%lld | %lld /* UNKNOWN */", reg_subtype, reg_off);
@@ -406,6 +423,7 @@ static const char *isa_ext_single_id_to_str(__u64 reg_off)
 		KVM_ISA_EXT_ARR(I),
 		KVM_ISA_EXT_ARR(M),
 		KVM_ISA_EXT_ARR(V),
+		KVM_ISA_EXT_ARR(SDTRIG),
 		KVM_ISA_EXT_ARR(SMSTATEEN),
 		KVM_ISA_EXT_ARR(SSAIA),
 		KVM_ISA_EXT_ARR(SSTC),
@@ -764,6 +782,11 @@ static __u64 smstateen_regs[] = {
 	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SMSTATEEN,
 };
 
+static __u64 sdtrig_regs[] = {
+	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_SDTRIG | KVM_REG_RISCV_CSR_SDTRIG_REG(scontext),
+	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SDTRIG,
+};
+
 static __u64 fp_f_regs[] = {
 	KVM_REG_RISCV | KVM_REG_SIZE_U32 | KVM_REG_RISCV_FP_F | KVM_REG_RISCV_FP_F_REG(f[0]),
 	KVM_REG_RISCV | KVM_REG_SIZE_U32 | KVM_REG_RISCV_FP_F | KVM_REG_RISCV_FP_F_REG(f[1]),
@@ -853,6 +876,8 @@ static __u64 fp_d_regs[] = {
 	{"zicboz", .feature = KVM_RISCV_ISA_EXT_ZICBOZ, .regs = zicboz_regs, .regs_n = ARRAY_SIZE(zicboz_regs),}
 #define SUBLIST_AIA \
 	{"aia", .feature = KVM_RISCV_ISA_EXT_SSAIA, .regs = aia_regs, .regs_n = ARRAY_SIZE(aia_regs),}
+#define SUBLIST_SDTRIG \
+	{"sdtrig", .feature = KVM_RISCV_ISA_EXT_SDTRIG, .regs = sdtrig_regs, .regs_n = ARRAY_SIZE(sdtrig_regs),}
 #define SUBLIST_SMSTATEEN \
 	{"smstateen", .feature = KVM_RISCV_ISA_EXT_SMSTATEEN, .regs = smstateen_regs, .regs_n = ARRAY_SIZE(smstateen_regs),}
 #define SUBLIST_FP_F \
@@ -930,6 +955,7 @@ KVM_ISA_EXT_SUBLIST_CONFIG(aia, AIA);
 KVM_ISA_EXT_SUBLIST_CONFIG(fp_f, FP_F);
 KVM_ISA_EXT_SUBLIST_CONFIG(fp_d, FP_D);
 KVM_ISA_EXT_SIMPLE_CONFIG(h, H);
+KVM_ISA_EXT_SUBLIST_CONFIG(sdtrig, SDTRIG);
 KVM_ISA_EXT_SUBLIST_CONFIG(smstateen, SMSTATEEN);
 KVM_ISA_EXT_SIMPLE_CONFIG(sstc, SSTC);
 KVM_ISA_EXT_SIMPLE_CONFIG(svinval, SVINVAL);
@@ -985,6 +1011,7 @@ struct vcpu_reg_list *vcpu_configs[] = {
 	&config_fp_f,
 	&config_fp_d,
 	&config_h,
+	&config_sdtrig,
 	&config_smstateen,
 	&config_sstc,
 	&config_svinval,

-- 
2.43.2


