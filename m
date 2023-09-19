Return-Path: <devicetree+bounces-1255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 481957A5812
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 05:54:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58D0A1C209F9
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 03:54:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39E7D8489;
	Tue, 19 Sep 2023 03:54:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7D0110B
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:54:17 +0000 (UTC)
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3E33138
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:54:15 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-2769920fa24so390299a91.1
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695095654; x=1695700454; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l4XXbW7JTA+rX6h2wllSUbALMsH935/QgdVn7NuGhB8=;
        b=SZUfbmyXa9kHcmrS6PWs/XaUTkBZbQTOIGPglqhn6Lo2zx9S7C+r2XWrl28jajAjOw
         bCAdVYfrmchzZ5tL06KzgzlnqLAHmhTkpTj/dMDodFy7RhYv3zb7CP1oR+nG0j8Efyt6
         CmXrUBfguYYWDef5x5GkXBYBKCNTfcDcSYoYhSJvlzoeXraxM3/8WH4+q17MkC7vkQmD
         EjvEmFIYdVWB3m+4uzMcsR6HWHDwsXLret6PBHINAXlCAodkTGoHNcbqTp4GgXZe94r8
         MmDyXUbE9W8rp+fX2a9sztrIvh+c62yAXrX1amP6KpnyjuldUWaElR7cFEXcgn35CSHm
         YOuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695095654; x=1695700454;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l4XXbW7JTA+rX6h2wllSUbALMsH935/QgdVn7NuGhB8=;
        b=JfoExrgQ8V7j1iEtD74jJ2D7ilKOBiNw2hU9hAxI0h2CUFbBlwUf0CU8jlHDQWsk4J
         Us2Vx416Hqp+1mqroo27UVP6ydxl3V2hkDK7IIfXzUOJ7k5e32Fg0fOHaNoQz2RfuCWb
         oIU+gLZqWF4dkcvYsz1DRo6TpYVa9QadFAh9FXjd0HCzytvwsqd0zAlaoZVjfmckOAF0
         p2Q8MvOqWPu45mgetmWtENCCfSzF97LCyppodfi/+bYMAbNXR4UoVC5V+li3TIGub9VT
         I9OKlUDc2oQTHaKxf8uBhCW+4L+uptX5NcEsb4DtdNOBVoyp/A1VIfMjusvQYr/cJqaF
         bTxA==
X-Gm-Message-State: AOJu0YwCqMr37fzqfrKf9TisncXwWdEb4dEAU2F20mvCOrydCDhUjx/D
	8OHE4WtsJW4LhtnBQpZTSMgUmw==
X-Google-Smtp-Source: AGHT+IER7aDasNv4HryZXs+OqFjdWVOMVvC9oosimk80Dhx9t1V5Xr51sadYHq9bBP2SmlwGRGTGig==
X-Received: by 2002:a17:90a:c0f:b0:274:3a86:4c10 with SMTP id 15-20020a17090a0c0f00b002743a864c10mr9217500pjs.29.1695095654352;
        Mon, 18 Sep 2023 20:54:14 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id 3-20020a17090a034300b00273fc850342sm4000802pjf.20.2023.09.18.20.54.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 20:54:14 -0700 (PDT)
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
Subject: [PATCH 3/7] RISC-V: KVM: Allow XVentanaCondOps extension for Guest/VM
Date: Tue, 19 Sep 2023 09:23:39 +0530
Message-Id: <20230919035343.1399389-4-apatel@ventanamicro.com>
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

We extend the KVM ISA extension ONE_REG interface to allow KVM
user space to detect and enable XVentanaCondOps extension for
Guest/VM.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/include/uapi/asm/kvm.h | 1 +
 arch/riscv/kvm/vcpu_onereg.c      | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index b1baf6f096a3..e030c12c7dfc 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -138,6 +138,7 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZIFENCEI,
 	KVM_RISCV_ISA_EXT_ZIHPM,
 	KVM_RISCV_ISA_EXT_SMSTATEEN,
+	KVM_RISCV_ISA_EXT_XVENTANACONDOPS,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index 388599fcf684..17a847a1114b 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -40,6 +40,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(SVINVAL),
 	KVM_ISA_EXT_ARR(SVNAPOT),
 	KVM_ISA_EXT_ARR(SVPBMT),
+	KVM_ISA_EXT_ARR(XVENTANACONDOPS),
 	KVM_ISA_EXT_ARR(ZBA),
 	KVM_ISA_EXT_ARR(ZBB),
 	KVM_ISA_EXT_ARR(ZBS),
@@ -89,6 +90,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_SSTC:
 	case KVM_RISCV_ISA_EXT_SVINVAL:
 	case KVM_RISCV_ISA_EXT_SVNAPOT:
+	case KVM_RISCV_ISA_EXT_XVENTANACONDOPS:
 	case KVM_RISCV_ISA_EXT_ZBA:
 	case KVM_RISCV_ISA_EXT_ZBB:
 	case KVM_RISCV_ISA_EXT_ZBS:
-- 
2.34.1


