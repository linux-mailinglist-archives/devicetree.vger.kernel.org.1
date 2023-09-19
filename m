Return-Path: <devicetree+bounces-1257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FE77A581C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 05:54:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BDE251C20AA5
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 03:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07D41F503;
	Tue, 19 Sep 2023 03:54:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1A1D110B
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:54:36 +0000 (UTC)
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1D981AB
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:54:26 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-578b407045bso265425a12.0
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695095666; x=1695700466; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZfvmhBSCKy1EtjBZwA/dMnNMj/Sq3SnHobn1iIDa23k=;
        b=CVlwW+v4ozsvUCXqToXkiNqpHqEKOTWO+P+exSrUP1X9KQCS6R6/Q3DW93TDVuvR9O
         WpaDr553Xt+fufYlNriKSVt8TZB2EG4Vvvh3d1Dp1bCuT2JkB0J7Xd9Q5bD8MSddNqC0
         mZ6dH4oO1kozxpFFzcDa9f1szXHHnjmG5ROp5A7qDBawFW8CfMFQ+XU0xdJSmswlW+S5
         ymo37x5KAxwqpXQ9iZeqkpUonJXMBWADuMveDVQ15ROA3EV/HvjH/aucEuU10IFfh8T/
         4zmBBKi1MXXWgpteQTLm1nAV3SPihASotfKSkYc+rlvLM442wT/Zq0JhQe1keEZFPno+
         ZT0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695095666; x=1695700466;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZfvmhBSCKy1EtjBZwA/dMnNMj/Sq3SnHobn1iIDa23k=;
        b=lBlnT6hmqP1TGw8LYk9An36AP9Kpl1YoHpiwDrEl+C3EjG+DJQW/uS1L+qje+R1oPp
         Q6qAK9GqqZ07KpkzjWQBjarDNhz5vM6E+CcuDwKjcnTAXjBhKCVl6pYWv4nB+x+wCsm6
         d0jEitRgEb2HF2mcNBo5DFKXmpuec61DE/e88mLC7skZ8e+cucIVpAZPlzxb3v57GktY
         uXswfBb+iYQZtwbLnODeVn2koR/cGbDsNNsR4uSYha53sy9IsymAiEsLyyYGBDfreJwI
         V5VEP6wBObJFwYOHuxbLta9iDhdYh0LdBBwhW0OlRsnOStUIjqVu9EvwB3ZyVyjB/v8F
         PQWw==
X-Gm-Message-State: AOJu0YzCbbmqJ0FU40Lm8ONf8jeq2T0Nbd9qh64PJUXbnQPL/W1+X6Er
	iQHCCG5zFdakwszZO8IJnBM3OA==
X-Google-Smtp-Source: AGHT+IFWOuCFmAAL9BpJh0Ux9/VFPokWaaBfZihC75JvOcaJslymvgs6sdUGv9tDlKZqw185zQ04Vw==
X-Received: by 2002:a17:90a:4e81:b0:262:f449:4497 with SMTP id o1-20020a17090a4e8100b00262f4494497mr9895737pjh.2.1695095666229;
        Mon, 18 Sep 2023 20:54:26 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id 3-20020a17090a034300b00273fc850342sm4000802pjf.20.2023.09.18.20.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 20:54:25 -0700 (PDT)
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
Subject: [PATCH 5/7] KVM: riscv: selftests: Add senvcfg register to get-reg-list test
Date: Tue, 19 Sep 2023 09:23:41 +0530
Message-Id: <20230919035343.1399389-6-apatel@ventanamicro.com>
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

We have a new senvcfg register in the general CSR ONE_REG interface
so let us add it to get-reg-list test.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 tools/testing/selftests/kvm/riscv/get-reg-list.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
index 85907c86b835..0928c35470ae 100644
--- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
+++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
@@ -209,6 +209,8 @@ static const char *general_csr_id_to_str(__u64 reg_off)
 		return RISCV_CSR_GENERAL(satp);
 	case KVM_REG_RISCV_CSR_REG(scounteren):
 		return RISCV_CSR_GENERAL(scounteren);
+	case KVM_REG_RISCV_CSR_REG(senvcfg):
+		return RISCV_CSR_GENERAL(senvcfg);
 	}
 
 	TEST_FAIL("Unknown general csr reg: 0x%llx", reg_off);
@@ -532,6 +534,7 @@ static __u64 base_regs[] = {
 	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_GENERAL | KVM_REG_RISCV_CSR_REG(sip),
 	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_GENERAL | KVM_REG_RISCV_CSR_REG(satp),
 	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_GENERAL | KVM_REG_RISCV_CSR_REG(scounteren),
+	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_GENERAL | KVM_REG_RISCV_CSR_REG(senvcfg),
 	KVM_REG_RISCV | KVM_REG_SIZE_U64 | KVM_REG_RISCV_TIMER | KVM_REG_RISCV_TIMER_REG(frequency),
 	KVM_REG_RISCV | KVM_REG_SIZE_U64 | KVM_REG_RISCV_TIMER | KVM_REG_RISCV_TIMER_REG(time),
 	KVM_REG_RISCV | KVM_REG_SIZE_U64 | KVM_REG_RISCV_TIMER | KVM_REG_RISCV_TIMER_REG(compare),
-- 
2.34.1


