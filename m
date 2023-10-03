Return-Path: <devicetree+bounces-5318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E47207B5F90
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 05:53:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 96BB32815BA
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 03:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BB2A7F5;
	Tue,  3 Oct 2023 03:53:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D769A59
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 03:52:59 +0000 (UTC)
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31FE4C4
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 20:52:56 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1c3d6d88231so3530185ad.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 20:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1696305175; x=1696909975; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PR9YD+pr7hv0tmO2NOz2gpQmVbaE/cJ/IAsO/LYC7Pc=;
        b=XndW1qrhTVSGZgMXpNzg31W8cUV7jQiFtUtpcG8iZmQmgibFRs4af+6llaF/WgscTR
         bhJU3jLvF+1MzNzf9MvoXDAIRAaGy0ZCx34pMBVh0fmoN+p+Xl7GxQ9CZDg69mXsglzz
         K4JAYafHcHA8Xr4efF83MALAK0eOgEy779VYsKIqwLwfjt8BK16vzHq1XcC01lXA/g3C
         sDHOQmdxdYvWocjiPuKgXiDg1n8544wAEOIxl6Lk1SN8oD39k5AdClp3DLMlW7lZZ/Wb
         bRVVBsobZ0hYOdI5ruv6WejKVSNrCpn90ar8weL6zY7dRQ6tEtoFMdm5VRtp9om0PEnh
         29Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696305175; x=1696909975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PR9YD+pr7hv0tmO2NOz2gpQmVbaE/cJ/IAsO/LYC7Pc=;
        b=gJJsC30Y91eV0tgSlvKqf/W7k7IvHhGDpjbUB5/LgdKdCTRCFkY6TeGGNK1Oy50iOX
         /gB0szRb9Gb8aDpEDGgConZ3aGoQdowGQAe1kI0rxe0qFtefHNc8FuaYvXPrxk0x93X+
         iapsbMKymZN+wWXvNYM7rrSwrXK8j4m5TrRCmZG3VeFTZ8Tc5OcC8YXxikPehb6SI21j
         PWF0cv7sM/O5BbWF2dzkOgJCAGRSQD8oC1ehxa+rIakMfNfUyMiiV+Uk1h1MSSxmuBpQ
         Z2McbOYP7b4F+4ToRYGVzTCI8ZM5uQdMuu3G0R5RXBQU4Pk3FcXlQVOLvCRi8AIeVxdI
         q3Cw==
X-Gm-Message-State: AOJu0Yzttwg3JtAmpQw4i6Mn1qayUhhYLQ1Yc4MWycTA6/DcY3p5YFcX
	jlT4SN1v53FCkRSznfn8TynjXw==
X-Google-Smtp-Source: AGHT+IHVWdwg/sK94Dq4Rgb1USUh5bXBpGZ0ZnKGbSP+03oAaRBZUxn2NXa8Zq60ZS2d7KJ4sbaXhg==
X-Received: by 2002:a17:903:244d:b0:1c3:2ee6:3802 with SMTP id l13-20020a170903244d00b001c32ee63802mr13278709pls.47.1696305175387;
        Mon, 02 Oct 2023 20:52:55 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.132])
        by smtp.gmail.com with ESMTPSA id ja7-20020a170902efc700b001bf846dd2d0sm277381plb.13.2023.10.02.20.52.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 20:52:54 -0700 (PDT)
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
Subject: [PATCH v3 3/6] RISC-V: KVM: Allow Zicond extension for Guest/VM
Date: Tue,  3 Oct 2023 09:22:23 +0530
Message-Id: <20231003035226.1945725-4-apatel@ventanamicro.com>
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
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

We extend the KVM ISA extension ONE_REG interface to allow KVM
user space to detect and enable Zicond extension for Guest/VM.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/uapi/asm/kvm.h | 1 +
 arch/riscv/kvm/vcpu_onereg.c      | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index b1baf6f096a3..917d8cc2489e 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -138,6 +138,7 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZIFENCEI,
 	KVM_RISCV_ISA_EXT_ZIHPM,
 	KVM_RISCV_ISA_EXT_SMSTATEEN,
+	KVM_RISCV_ISA_EXT_ZICOND,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index 388599fcf684..c6ebce6126b5 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -46,6 +46,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(ZICBOM),
 	KVM_ISA_EXT_ARR(ZICBOZ),
 	KVM_ISA_EXT_ARR(ZICNTR),
+	KVM_ISA_EXT_ARR(ZICOND),
 	KVM_ISA_EXT_ARR(ZICSR),
 	KVM_ISA_EXT_ARR(ZIFENCEI),
 	KVM_ISA_EXT_ARR(ZIHINTPAUSE),
@@ -93,6 +94,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_ZBB:
 	case KVM_RISCV_ISA_EXT_ZBS:
 	case KVM_RISCV_ISA_EXT_ZICNTR:
+	case KVM_RISCV_ISA_EXT_ZICOND:
 	case KVM_RISCV_ISA_EXT_ZICSR:
 	case KVM_RISCV_ISA_EXT_ZIFENCEI:
 	case KVM_RISCV_ISA_EXT_ZIHINTPAUSE:
-- 
2.34.1


