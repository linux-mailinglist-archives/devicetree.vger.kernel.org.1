Return-Path: <devicetree+bounces-3181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 531217AD95C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:40:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id ABFDE1F24C1C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:40:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F4A01BDD0;
	Mon, 25 Sep 2023 13:40:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0A7125D8
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 13:40:05 +0000 (UTC)
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 121891AD
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:40:00 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1bf55a81eeaso42691695ad.0
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695649200; x=1696254000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qPmuiSFVvpuLv2dpw8j40AU0MURCdJR8iWnmtgcJS7I=;
        b=Eolm0CPlYy4qFbYnNb0ip3AmbXTB+DoXYK2pdUUNmQoTnzzpvh1Cfa4hF813Uz4oSa
         5hZ4Nh8mnsfh63Mv43mPt8rPVWJeroj4zVsuiomUBLF2WITfsRJYpjVqE/sg4yjigXhY
         qvHw7jgIr5f0N/0s3rxl8GX4jP1uYJigWPAxGQqChr/45hOc6LVQzkEks5UMKtsEstWq
         hjTNDYCQXuvHPFzi/KnfZz1pdm8e1jT/QeiTZ3bksuA6kvHlgOtO4KsnQ6mlikGDQ8bM
         yF8CD73UX0mhZIYWBVsuTz91G7S+GdYxvnvkG39Zi1gtzrhzAixV2IQSWu3T+ct4qrLd
         HHYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695649200; x=1696254000;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qPmuiSFVvpuLv2dpw8j40AU0MURCdJR8iWnmtgcJS7I=;
        b=GkzZ+mzkDA7EC1WOqKHpuSm+5ewqI4Zt84C2QBp1tQ3oEBYDyfWXHMSrKXD0dCxPAE
         8dQhKhamu/bMTqxrh5YuOLcAk2EghJ5lqJhjglqqe+URvSv1QI7Z4shAuiDLMHwSVTYq
         C3AfJbBLR+srd+UG/My/In9d561rc/MdKtDiqeL0bEm+myEhdEIOKpGDcJ9MoWwoWWh6
         aXQHFFYy7c7AAoEZqlVcLQmrBgXpgkcGpKhLvkE/+fblpo89nlSBBurMJsX9Xgr2uAxN
         /OKaAj6yFfvejcjYGNihApToTYXowsRfYv48h3Ubu7v0tZRTa1dC8FV+yfxneFfV5wNs
         StEg==
X-Gm-Message-State: AOJu0YyIX0S/PRxVbwex5S+p//pOZA6O32tKJELoh13FADupjZMX0k2u
	uFZb92Jp78DVDeWjJWDiTFgn/w==
X-Google-Smtp-Source: AGHT+IFcuHzEISHYsqsS06loJdvpvAdx2H/wZhHiDFd7zyQzTLbkzrgn8lJvzMwd/tIHrKUQmQk5+g==
X-Received: by 2002:a17:902:6941:b0:1c6:124b:6158 with SMTP id k1-20020a170902694100b001c6124b6158mr2189641plt.30.1695649199941;
        Mon, 25 Sep 2023 06:39:59 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id p11-20020a170902eacb00b001c625d6ffccsm969433pld.129.2023.09.25.06.39.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 06:39:59 -0700 (PDT)
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
Subject: [PATCH v2 7/9] KVM: riscv: selftests: Add senvcfg register to get-reg-list test
Date: Mon, 25 Sep 2023 19:08:57 +0530
Message-Id: <20230925133859.1735879-8-apatel@ventanamicro.com>
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


