Return-Path: <devicetree+bounces-19696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 726277FBD74
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 15:55:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 130C0B22157
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 14:55:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B57A85CD23;
	Tue, 28 Nov 2023 14:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="M4rWykJP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17F941BFF
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 06:55:17 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1cfc3f50504so21137925ad.3
        for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 06:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1701183316; x=1701788116; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hkGfNv4MRWM+/ohqvIrTgVS2Seh7FR6OjZNHRMq6/PQ=;
        b=M4rWykJPIoBaXrpqL9YaNfrWcbRDFTv+V5JMzGlinePKCQ91x8NvswN9+nXWnXyRv/
         D/qtq9ZCXDHcOYcGVeeJ2tZiQIvAZNZy05hZ8Iu8ZRON4tXcj11GCJKjOQul4HEqCaig
         JUfBJ6UoIgDCJ1XdUdDMYht6XI/CZhdlapnDCn9cFI46NLOCUbPj4Cx90VZhqsFiAsFm
         +PSi2M8AhtvFG+/d6xlXpvDYYCebZ/gFT//FDSWuxPNaYj4shReq9CsoIUexVOoV+3v5
         2+uzkGfOUdmEET+lW63n/WfWVzKvPRQNSiFxBrgwRCrESnZC6ai3kBRZ2/FMPHhKnmub
         7WHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701183316; x=1701788116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hkGfNv4MRWM+/ohqvIrTgVS2Seh7FR6OjZNHRMq6/PQ=;
        b=RLXgV85RDWHI2j1J6vEkUXvVtJFzGeiDA/46OfYKZStD7+LQhWvVGFAWCPayDG6KuQ
         wY57XPAt9/qbnl2HFYpc9tFQBht2NkDdBnFTXH8SKXPVM5V/4qzO4YFQNMNXVt7xBpF2
         AfnWNMcoGKMiX4hH4u9i6UrSOxpdsE2HNAb05123a8nc6zmODj4Nu+ltj5RagEby4whP
         erIFgYphClcEIsMovpbuY/m/wdlQNIB+kQ3ZlMU8UBhsat1jS5Y4P2Nha7Qy41l0f0mR
         jNG2XGqnB32gPx2Rd5lZziMcl7UwJeDWyf1d0MHTNq6+UvRUcDRv/zzm7qw744XohFZS
         RMpQ==
X-Gm-Message-State: AOJu0YzK8Y3DMM97WOS2tye5iHPBsCsl/+YleODEX1f1T9jUFsS/87VY
	t/TH/jgJ39nEmmQpwUgr3580bw==
X-Google-Smtp-Source: AGHT+IHha1V/+lGe74ulF5vndgORIT1jhXH9iyKmg5JY+8yLgvt+PCD6lksk87FC5mErYuRTqwnFCg==
X-Received: by 2002:a17:902:da84:b0:1cf:ea64:f501 with SMTP id j4-20020a170902da8400b001cfea64f501mr4453347plx.9.1701183316449;
        Tue, 28 Nov 2023 06:55:16 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id u11-20020a170902e80b00b001bf11cf2e21sm10281552plg.210.2023.11.28.06.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 06:55:16 -0800 (PST)
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
Subject: [PATCH 13/15] KVM: riscv: selftests: Add Zvfh[min] extensions to get-reg-list test
Date: Tue, 28 Nov 2023 20:23:55 +0530
Message-Id: <20231128145357.413321-14-apatel@ventanamicro.com>
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

The KVM RISC-V allows Zvfh[min] extensions for Guest/VM so let us
add these extensions to get-reg-list test.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 tools/testing/selftests/kvm/riscv/get-reg-list.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
index e1d43cc9da16..df03bc511fbf 100644
--- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
+++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
@@ -69,6 +69,8 @@ bool filter_reg(__u64 reg)
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZKT:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZVBB:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZVBC:
+	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZVFH:
+	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZVFHMIN:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZVKB:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZVKG:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZVKNED:
@@ -410,6 +412,8 @@ static const char *isa_ext_id_to_str(const char *prefix, __u64 id)
 		KVM_ISA_EXT_ARR(ZKT),
 		KVM_ISA_EXT_ARR(ZVBB),
 		KVM_ISA_EXT_ARR(ZVBC),
+		KVM_ISA_EXT_ARR(ZVFH),
+		KVM_ISA_EXT_ARR(ZVFHMIN),
 		KVM_ISA_EXT_ARR(ZVKB),
 		KVM_ISA_EXT_ARR(ZVKG),
 		KVM_ISA_EXT_ARR(ZVKNED),
@@ -812,6 +816,8 @@ KVM_ISA_EXT_SIMPLE_CONFIG(zksh, ZKSH);
 KVM_ISA_EXT_SIMPLE_CONFIG(zkt, ZKT);
 KVM_ISA_EXT_SIMPLE_CONFIG(zvbb, ZVBB);
 KVM_ISA_EXT_SIMPLE_CONFIG(zvbc, ZVBC);
+KVM_ISA_EXT_SIMPLE_CONFIG(zvfh, ZVFH);
+KVM_ISA_EXT_SIMPLE_CONFIG(zvfhmin, ZVFHMIN);
 KVM_ISA_EXT_SIMPLE_CONFIG(zvkb, ZVKB);
 KVM_ISA_EXT_SIMPLE_CONFIG(zvkg, ZVKG);
 KVM_ISA_EXT_SIMPLE_CONFIG(zvkned, ZVKNED);
@@ -858,6 +864,8 @@ struct vcpu_reg_list *vcpu_configs[] = {
 	&config_zkt,
 	&config_zvbb,
 	&config_zvbc,
+	&config_zvfh,
+	&config_zvfhmin,
 	&config_zvkb,
 	&config_zvkg,
 	&config_zvkned,
-- 
2.34.1


