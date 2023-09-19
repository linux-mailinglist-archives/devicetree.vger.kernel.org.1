Return-Path: <devicetree+bounces-1256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E13827A5816
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 05:54:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9AB5B281960
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 03:54:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F66520F1;
	Tue, 19 Sep 2023 03:54:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96F4110B
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:54:25 +0000 (UTC)
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 243AA133
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:54:21 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-68fb79ef55eso4739206b3a.0
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695095660; x=1695700460; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qG0THHfqd29pFm5IKGVp9LhjXXrDBkkPoZXxS9VdOEc=;
        b=TZ5xxNnGjVRaLITJk3VaXZt0svnu+dsuSNrWUWMrrRCj1qJ8qH6SaI7xv/32I9oWxn
         o8aaWxjf973SBHkiewutc38hEcYTyWxsLV5iXy/Ed/hDcRzQ1FJq8oSgRqe6CXnfGrUC
         KA7/3ID8NjKCk61avxOuetX7QwIl4yQYrmEqmig1tMTUBeX568kiQbE/euK+50KQbLJT
         aOevDDNdnrwO0UO+5SbwYxrW41oCbtFAON1gW1ROL03Isz0MRq6KOJEtdtXTqqwy67nt
         Vi54KQ9482+kmbekMOtYicgs4ke5YXO//DwZaDjXsg71TFERrlZAxlfUJAG3KdWvmXGh
         T1RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695095660; x=1695700460;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qG0THHfqd29pFm5IKGVp9LhjXXrDBkkPoZXxS9VdOEc=;
        b=GjfvtBiFnhBIhwkmS8mczQdTu7cN86Zm8QhObjkxE07MbPC4HL9xk4mNFHNiP5YlaC
         oXgyEx0758TJmOM7axFaGEVwXa1+lA2HiAvJMaHUmBLLAIyFapRCCFlLOarXHa5nJk8h
         4MHvWzUZsvOIVO/9p4g86wxbD3bn+GcPABkAy+5N1ER40IzNIE7mBae7KxjSon+KgeIx
         KvJksfcNWMwHafTLOISYrVCpWar4jfdEfYHmLO6VUDnN/Vd1MywUZ9QIYYJ4sLAWb3Vz
         vkt7XH5NGWBnjbJjqpgrmIBJzwXZFQy/TebJUIXGl+cMrPeB9BoL8zpuJ2BzIx/wuq4s
         W4ZQ==
X-Gm-Message-State: AOJu0Yx8ooyTst1BPzdKPD9YtM3rQ4gR5IQmALJfL1C9MKnK9xJjUBWe
	v1UTZxCxnZOcIJ/XIBLkftmUnA==
X-Google-Smtp-Source: AGHT+IHwzyVCSxSfbot4344shbzr2uf/C2yvQ6tC3JEnX6sYep3WTmCTb6K0EpxLdSLw7odC/FlDig==
X-Received: by 2002:a05:6a20:7288:b0:135:7975:f55 with SMTP id o8-20020a056a20728800b0013579750f55mr13927437pzk.47.1695095660280;
        Mon, 18 Sep 2023 20:54:20 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id 3-20020a17090a034300b00273fc850342sm4000802pjf.20.2023.09.18.20.54.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 20:54:19 -0700 (PDT)
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
Subject: [PATCH 4/7] RISC-V: KVM: Allow Zicond extension for Guest/VM
Date: Tue, 19 Sep 2023 09:23:40 +0530
Message-Id: <20230919035343.1399389-5-apatel@ventanamicro.com>
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
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

We extend the KVM ISA extension ONE_REG interface to allow KVM
user space to detect and enable Zicond extension for Guest/VM.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/include/uapi/asm/kvm.h | 1 +
 arch/riscv/kvm/vcpu_onereg.c      | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index e030c12c7dfc..35ceb38a4eff 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -139,6 +139,7 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZIHPM,
 	KVM_RISCV_ISA_EXT_SMSTATEEN,
 	KVM_RISCV_ISA_EXT_XVENTANACONDOPS,
+	KVM_RISCV_ISA_EXT_ZICOND,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index 17a847a1114b..d3ca4969c985 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -47,6 +47,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(ZICBOM),
 	KVM_ISA_EXT_ARR(ZICBOZ),
 	KVM_ISA_EXT_ARR(ZICNTR),
+	KVM_ISA_EXT_ARR(ZICOND),
 	KVM_ISA_EXT_ARR(ZICSR),
 	KVM_ISA_EXT_ARR(ZIFENCEI),
 	KVM_ISA_EXT_ARR(ZIHINTPAUSE),
@@ -95,6 +96,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_ZBB:
 	case KVM_RISCV_ISA_EXT_ZBS:
 	case KVM_RISCV_ISA_EXT_ZICNTR:
+	case KVM_RISCV_ISA_EXT_ZICOND:
 	case KVM_RISCV_ISA_EXT_ZICSR:
 	case KVM_RISCV_ISA_EXT_ZIFENCEI:
 	case KVM_RISCV_ISA_EXT_ZIHINTPAUSE:
-- 
2.34.1


