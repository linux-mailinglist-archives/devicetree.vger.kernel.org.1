Return-Path: <devicetree+bounces-19689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A93957FBD5B
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 15:55:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3BA0DB21E18
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 14:54:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BE5C5C08F;
	Tue, 28 Nov 2023 14:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="dyUD96rJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 302F31FD5
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 06:54:40 -0800 (PST)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1cf98ffc257so41903805ad.3
        for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 06:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1701183279; x=1701788079; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YC/uOewY1L4dDGRSRiyNDutyC8uaZPgPc5G7fpX+EZI=;
        b=dyUD96rJ+cVkzEiE+MSTiACDwT7zKEKlbzmTUqDl/QNS77QUG2z0fINqU6vBqF4/QP
         cvRSodRT0y+5NXZ7mqCCPrkg00GMvk81oUgjM3HfaiDBVGk2/+9Zkkx88Ppa4pd9MOZH
         /M0W6CKv/OiztI3l/HQNuOCfM8HlpCERTBu0RTuHHMLyqRVQ5H9i5LzK4UN7uBB+MYkL
         LbWbtc8iGxCjqoW+D6vkPH5ioMDEwD78cCBwdX/PRv9Rw94htaFTbpcqpoEW9o0QpOuq
         S8YvpoXoM7K7IkVSn8+TaTaYzlT6irBro6p06h3J91wmL20wio30zAQOtaZvcB1nuzkg
         /uuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701183279; x=1701788079;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YC/uOewY1L4dDGRSRiyNDutyC8uaZPgPc5G7fpX+EZI=;
        b=UegBo9qd7Xlmc74buGRBmOUCkPoZ34Zo1YupJeUVfjfWfbBkN74vJtST3HJtvpxnMA
         hS3HnTG+OWKkb5rPrlBGhpgSm8yYolEjmjNkoxxlILW7b+iYq1PYOV8863vWMt7Dt882
         WQvzKaJTmcDsvf+W46btgqXivhv+2iK6N7AFmG9aRXyeMc0XYQZWTAO/MUKSRxNaalaO
         pQBq7LWPfVLVQKp4Q19qnuU1V1YuX7Ds0TJxjVTMdh9y5FRmyejYJooEWvlYpOA4lnrV
         M29v2SE6bP9GHtloTjbSff7FKnWbuYhIj/lBOpGFT9SGZBuNh8hwkG08G6fGMCDiJzqG
         Rjtg==
X-Gm-Message-State: AOJu0Yx5P8g6y/FQ74SR2ws/LjZ9hChQ4zb7D46fAXp3dkLxUbMnZykk
	IqxmxaFGoX7cQpPzvWA8bWqIsnj3O7ISna76jmY=
X-Google-Smtp-Source: AGHT+IHQfhkrwCZ3ZQtybXZW2+vlSU2eF4Cj6domQu8dtDq+6mb74RlGxsLJug1buiN3Wgw0PJ7u0g==
X-Received: by 2002:a17:902:7483:b0:1cc:6ec2:d24e with SMTP id h3-20020a170902748300b001cc6ec2d24emr17051391pll.53.1701183279334;
        Tue, 28 Nov 2023 06:54:39 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id u11-20020a170902e80b00b001bf11cf2e21sm10281552plg.210.2023.11.28.06.54.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 06:54:38 -0800 (PST)
From: Anup Patel <apatel@ventanamicro.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
	Atish Patra <atishp@atishpatra.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Shuah Khan <shuah@kernel.org>
Cc: Anup Patel <anup@brainfault.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH 06/15] RISC-V: KVM: Allow vector crypto extensions for Guest/VM
Date: Tue, 28 Nov 2023 20:23:48 +0530
Message-Id: <20231128145357.413321-7-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231128145357.413321-1-apatel@ventanamicro.com>
References: <20231128145357.413321-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We extend the KVM ISA extension ONE_REG interface to allow KVM
user space to detect and enable vector crypto extensions for
Guest/VM. This includes extensions Zvbb, Zvbc, Zvkb, Zvkg,
Zvkned, Zvknha, Zvknhb, Zvksed, Zvksh, and Zvkt.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/include/uapi/asm/kvm.h | 10 ++++++++++
 arch/riscv/kvm/vcpu_onereg.c      | 20 ++++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index 7b54fa215d6d..241632f91f73 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -150,6 +150,16 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZKSED,
 	KVM_RISCV_ISA_EXT_ZKSH,
 	KVM_RISCV_ISA_EXT_ZKT,
+	KVM_RISCV_ISA_EXT_ZVBB,
+	KVM_RISCV_ISA_EXT_ZVBC,
+	KVM_RISCV_ISA_EXT_ZVKB,
+	KVM_RISCV_ISA_EXT_ZVKG,
+	KVM_RISCV_ISA_EXT_ZVKNED,
+	KVM_RISCV_ISA_EXT_ZVKNHA,
+	KVM_RISCV_ISA_EXT_ZVKNHB,
+	KVM_RISCV_ISA_EXT_ZVKSED,
+	KVM_RISCV_ISA_EXT_ZVKSH,
+	KVM_RISCV_ISA_EXT_ZVKT,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index b0beebd4f86e..4cd075f4cf9f 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -62,6 +62,16 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(ZKSED),
 	KVM_ISA_EXT_ARR(ZKSH),
 	KVM_ISA_EXT_ARR(ZKT),
+	KVM_ISA_EXT_ARR(ZVBB),
+	KVM_ISA_EXT_ARR(ZVBC),
+	KVM_ISA_EXT_ARR(ZVKB),
+	KVM_ISA_EXT_ARR(ZVKG),
+	KVM_ISA_EXT_ARR(ZVKNED),
+	KVM_ISA_EXT_ARR(ZVKNHA),
+	KVM_ISA_EXT_ARR(ZVKNHB),
+	KVM_ISA_EXT_ARR(ZVKSED),
+	KVM_ISA_EXT_ARR(ZVKSH),
+	KVM_ISA_EXT_ARR(ZVKT),
 };
 
 static unsigned long kvm_riscv_vcpu_base2isa_ext(unsigned long base_ext)
@@ -121,6 +131,16 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_ZKSED:
 	case KVM_RISCV_ISA_EXT_ZKSH:
 	case KVM_RISCV_ISA_EXT_ZKT:
+	case KVM_RISCV_ISA_EXT_ZVBB:
+	case KVM_RISCV_ISA_EXT_ZVBC:
+	case KVM_RISCV_ISA_EXT_ZVKB:
+	case KVM_RISCV_ISA_EXT_ZVKG:
+	case KVM_RISCV_ISA_EXT_ZVKNED:
+	case KVM_RISCV_ISA_EXT_ZVKNHA:
+	case KVM_RISCV_ISA_EXT_ZVKNHB:
+	case KVM_RISCV_ISA_EXT_ZVKSED:
+	case KVM_RISCV_ISA_EXT_ZVKSH:
+	case KVM_RISCV_ISA_EXT_ZVKT:
 		return false;
 	/* Extensions which can be disabled using Smstateen */
 	case KVM_RISCV_ISA_EXT_SSAIA:
-- 
2.34.1


