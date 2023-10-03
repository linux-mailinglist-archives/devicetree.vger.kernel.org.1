Return-Path: <devicetree+bounces-5319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5BC7B5F91
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 05:53:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7DBFD2815BE
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 03:53:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69CF5EC8;
	Tue,  3 Oct 2023 03:53:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0929AA59
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 03:53:07 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E0B6C4
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 20:53:00 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1c3d6d88231so3530395ad.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 20:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1696305180; x=1696909980; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qPmuiSFVvpuLv2dpw8j40AU0MURCdJR8iWnmtgcJS7I=;
        b=nBqT1V8Yesyrd0U06mYSOfd7mgYTFRnLheFr0ZLaZ+iNG4gFv+B4U91dDjdCh/x6be
         CFKWr6ZuiUQr+BAGD7VK7X8fxnzeuezgwqn9+q0tqW5a2x8kwTf59Vnrer5OZ7l7jG+k
         i6Dwx/63Vj0u39qBGL+vtxEeS7lPE5Uk5G9ghxEaHn7zAKjs2pUX5Tu1uK6wMmSc0JvR
         jcSAccOUinzBh9xCNWDoRfGos+YSL4o98N0bwuBtsu8b4kjsxW9gXAFM4rP1mejSgbD0
         ZsjeFRxg+1VZMClQHFY6pNvXbYcGY2PsFfoLip+g3ROk7NFcIgfosGvyuoNxd6oOPR16
         6DRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696305180; x=1696909980;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qPmuiSFVvpuLv2dpw8j40AU0MURCdJR8iWnmtgcJS7I=;
        b=bCHciBtf7uuEfZnjxatkhErw9AHA9QWRCjfZlSewb0a7dP4Lx2tHnfCfGazrC+UQXE
         s5foCwn8I2P1nL4qsUkN4Zz7GNL0Br9QtZO6CZzJgasGIJYgoiL5uGKyb5sKXW7tqp/x
         y0ZjT5ZdcNyAtpNloqITX6O5xZnEToRksN+Pn+ARYUikp2FGReiU9H5xyPeWBgwd5lEe
         y980DpGEGNqTB47HZnHWz6xRrzowcNp79maS1DErfeh5UxSFa1aaLwzgUWYz09zwG/rx
         2deBoBvVRp7a8rWT2JsGpyQmr8EgiKdNF/Jf+4TMhibXhR7LL3OixWmGQ1Y/rD0oLdts
         6OKw==
X-Gm-Message-State: AOJu0Yw8rFlOXWIF41jKhlVAGjmQUOQnsGAgjr6xGSmnTePhFiBxsyHF
	QTOV4VknGBDdh7jEiiTjm7v0Tw==
X-Google-Smtp-Source: AGHT+IHam7uEpuZxRNzndfsTMEK/VL2fjCzPC87o5phTd4UvXj5ySMEaSTGduC8zgkkya1ayeGrlQQ==
X-Received: by 2002:a17:903:2305:b0:1c6:e4b:bbeb with SMTP id d5-20020a170903230500b001c60e4bbbebmr13020119plh.56.1696305180186;
        Mon, 02 Oct 2023 20:53:00 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.132])
        by smtp.gmail.com with ESMTPSA id ja7-20020a170902efc700b001bf846dd2d0sm277381plb.13.2023.10.02.20.52.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 20:52:59 -0700 (PDT)
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
Subject: [PATCH v3 4/6] KVM: riscv: selftests: Add senvcfg register to get-reg-list test
Date: Tue,  3 Oct 2023 09:22:24 +0530
Message-Id: <20231003035226.1945725-5-apatel@ventanamicro.com>
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

We have a new senvcfg register in the general CSR ONE_REG interface
so let us add it to get-reg-list test.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 tools/testing/selftests/kvm/riscv/get-reg-list.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
index a61b706a8778..6cec0ef75cc7 100644
--- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
+++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
@@ -211,6 +211,8 @@ static const char *general_csr_id_to_str(__u64 reg_off)
 		return RISCV_CSR_GENERAL(satp);
 	case KVM_REG_RISCV_CSR_REG(scounteren):
 		return RISCV_CSR_GENERAL(scounteren);
+	case KVM_REG_RISCV_CSR_REG(senvcfg):
+		return RISCV_CSR_GENERAL(senvcfg);
 	}
 
 	TEST_FAIL("Unknown general csr reg: 0x%llx", reg_off);
@@ -540,6 +542,7 @@ static __u64 base_regs[] = {
 	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_GENERAL | KVM_REG_RISCV_CSR_REG(sip),
 	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_GENERAL | KVM_REG_RISCV_CSR_REG(satp),
 	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_GENERAL | KVM_REG_RISCV_CSR_REG(scounteren),
+	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_GENERAL | KVM_REG_RISCV_CSR_REG(senvcfg),
 	KVM_REG_RISCV | KVM_REG_SIZE_U64 | KVM_REG_RISCV_TIMER | KVM_REG_RISCV_TIMER_REG(frequency),
 	KVM_REG_RISCV | KVM_REG_SIZE_U64 | KVM_REG_RISCV_TIMER | KVM_REG_RISCV_TIMER_REG(time),
 	KVM_REG_RISCV | KVM_REG_SIZE_U64 | KVM_REG_RISCV_TIMER | KVM_REG_RISCV_TIMER_REG(compare),
-- 
2.34.1


