Return-Path: <devicetree+bounces-1259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E66A7A5825
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 05:55:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 978CF1C20832
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 03:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBEAD8489;
	Tue, 19 Sep 2023 03:54:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9598331A9C
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:54:57 +0000 (UTC)
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9A87CFE
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:54:40 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-274928c74b0so3167845a91.3
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695095679; x=1695700479; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F8aNxqk/Fio7uz5AQcGG5V7O/R7HCZdIqvfTNBjv5gM=;
        b=R53BJzpDqdwq9Yn3bRu7+0S41nDwtisEOCg6gjrqHqMHW/D42vT3W7QBctOF27UdL6
         28F/YKFsFRiz5erDk+2Xfq9TT/fxF7gkllP2zhr2Tbh2Cte4DXMBz9NzdIDZ2nBwhDgf
         rSk7knd9TFK0h6fvHeGEkTVdNwS6ohLqE87n3K21ynnN47gcRbBtKUImSXWjrAK/+a3L
         PLZO/r1B5x/Ffk12pusWO8Y39GTLks0r5+j+T+/5K71XCdGmgD4tw5X6vEo27ZI9riIs
         EWWv5KoOd+tNasPpgtFLTVrAaZk2+HFF0ZHpikj5TbC8ig1/GUlogT84NcmlAP0zMwRR
         8wqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695095679; x=1695700479;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F8aNxqk/Fio7uz5AQcGG5V7O/R7HCZdIqvfTNBjv5gM=;
        b=onPQV9enJ7AAO8gqtl+9cEHmSSWB15UEPjI5HdfT1nk1VQ+pjPUmivWm8unEAEsJij
         s8iTtLmydZdM/cHHkwIQyng1EcOMlcrOuVb5HEkMw0KNuwHDGT35n6R/5dLmf9C675zO
         IPhaHPpZfgXnt69QL2ZZCFZTYsoM3UMEMUAflDra3Hqw22pAOQl/lu2/V8ZcbkFnwdOq
         wVw/HqoCMlsItSwcJIP8oQMQ0lKTtWzOXXS2Kl4R84RRPC5cXsLs6wv0EYA1Yi128bAs
         nIIsPgEyCYBwb0slWT4PaY8hZSmnu7b+dlBZxJaRaDSl7L5mZ/GGbppOkl8cdgSmFxRi
         aukg==
X-Gm-Message-State: AOJu0YwFXnVNOHBSYbIUXsKhCyKo2yWOgAO9CtfF2agM/AxBi5wizjdg
	lc7JFGXd6TTPviNjCTXpsaiVug==
X-Google-Smtp-Source: AGHT+IEiYF6goUFLSD0qNIvl8mZDssbeUh0IABgs8W5u4Ug/kGe3A2Yvna7zl18arf+5N6NDqFqfWQ==
X-Received: by 2002:a17:90a:5901:b0:268:b7a2:62e8 with SMTP id k1-20020a17090a590100b00268b7a262e8mr10313711pji.7.1695095678874;
        Mon, 18 Sep 2023 20:54:38 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id 3-20020a17090a034300b00273fc850342sm4000802pjf.20.2023.09.18.20.54.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 20:54:38 -0700 (PDT)
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
Subject: [PATCH 7/7] KVM: riscv: selftests: Add condops extensions to get-reg-list test
Date: Tue, 19 Sep 2023 09:23:43 +0530
Message-Id: <20230919035343.1399389-8-apatel@ventanamicro.com>
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

We have a new conditional operations related ISA extensions so let us add
these extensions to get-reg-list test.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 tools/testing/selftests/kvm/riscv/get-reg-list.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
index 9f464c7996c6..4ad4bf87fa78 100644
--- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
+++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
@@ -50,6 +50,8 @@ bool filter_reg(__u64 reg)
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZIFENCEI:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZIHPM:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_SMSTATEEN:
+	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_XVENTANACONDOPS:
+	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZICOND:
 		return true;
 	/* AIA registers are always available when Ssaia can't be disabled */
 	case KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_AIA | KVM_REG_RISCV_CSR_AIA_REG(siselect):
@@ -360,6 +362,8 @@ static const char *isa_ext_id_to_str(__u64 id)
 		"KVM_RISCV_ISA_EXT_ZIFENCEI",
 		"KVM_RISCV_ISA_EXT_ZIHPM",
 		"KVM_RISCV_ISA_EXT_SMSTATEEN",
+		"KVM_RISCV_ISA_EXT_XVENTANACONDOPS",
+		"KVM_RISCV_ISA_EXT_ZICOND",
 	};
 
 	if (reg_off >= ARRAY_SIZE(kvm_isa_ext_reg_name)) {
-- 
2.34.1


