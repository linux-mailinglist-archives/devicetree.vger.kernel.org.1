Return-Path: <devicetree+bounces-19695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C167FBD6D
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 15:55:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 748C12830F7
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 14:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E11A5CD13;
	Tue, 28 Nov 2023 14:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="BU3gv/si"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 128661BC7
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 06:55:11 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1cf98ffc257so41908555ad.3
        for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 06:55:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1701183311; x=1701788111; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=airu/v47wgDNqhAY8kBHQ9N6G4glvU45jZqVuvQoU4M=;
        b=BU3gv/sik7JGzsYntxTVPetFJLPNqWByjFpBs7k/3HkOMFPlL50YQw5bXzkgkMs53c
         O4xC/3PNpTJaChDbOnDw/pQ/X6BhCVjD2dyvd11iorQi1LobCsRYcLqEcCSjK+n8Dutw
         C+OU0DN+Mkx6LC0N+tWvHmFSLKeoV4IC38oetWbGx7RrLE7/MoV6j4OCGNYZ4ZX7Hgxv
         tAuCIvhkIppqMhJ/Oir/bq58QuW3IJrC+Efq52iYfuJEVLrcHVHtVWONZGub/qYuBYG4
         OIms+iC9YkWnv9ElVB1iXgxx4oAnTaMpgF7cl06YxNxegK8nozCKo+4pJmvCYSVq9DMc
         oSbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701183311; x=1701788111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=airu/v47wgDNqhAY8kBHQ9N6G4glvU45jZqVuvQoU4M=;
        b=OfCBPA4TKG+A7LYGN/k7pL8bna9Qaj/F99qtKR9sHoc+c2FVufyeU2zlmfduo+b9vc
         th/nYHhdCo//zY+sNc9YfLJ75fcA0XcnjSWbtOXKP4IiE2gQDnck37PMW2vAJQrSO0K8
         wJ7Xwcm9FzPOAC9qVtUe+gqH+d8piQRptt3yjtoq8P39FWhOsHcpNNAbGfgqFUTeJjaf
         trDXrOMPRceUwEkA9pa5mRAx3uMZtYs+9jZHm8mnMHvSuMM51s9oA/wBt1L1WnY5Uk34
         6gh7EgcWO6rCOTS55c5R16WmhbWnB8OiU1AjDZGjtKdyvZBAxr//Kxr+iXmHwMHuRrMM
         217w==
X-Gm-Message-State: AOJu0Yx2FVr94QejcSpmjj4XPaNFw6CvXYn2XZOu8aEdyZTj1wrz91Yz
	0EMJn+zA1X9bnR9W8oU8z5At7A==
X-Google-Smtp-Source: AGHT+IH4ZKbRH0sAoue+ms9u+mc6iPKravgS7x++zKnn9LjeTNQidu/8LuA2QuuAYh4M2kbbBqG+gQ==
X-Received: by 2002:a17:902:e88f:b0:1cf:cf40:3cef with SMTP id w15-20020a170902e88f00b001cfcf403cefmr6689569plg.64.1701183311308;
        Tue, 28 Nov 2023 06:55:11 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id u11-20020a170902e80b00b001bf11cf2e21sm10281552plg.210.2023.11.28.06.55.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 06:55:10 -0800 (PST)
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
Subject: [PATCH 12/15] RISC-V: KVM: Allow Zvfh[min] extensions for Guest/VM
Date: Tue, 28 Nov 2023 20:23:54 +0530
Message-Id: <20231128145357.413321-13-apatel@ventanamicro.com>
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
user space to detect and enable Zvfh[min] extensions for Guest/VM.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/include/uapi/asm/kvm.h | 2 ++
 arch/riscv/kvm/vcpu_onereg.c      | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index 0ed5b0f8a230..32c7ff23ecce 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -163,6 +163,8 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZFH,
 	KVM_RISCV_ISA_EXT_ZFHMIN,
 	KVM_RISCV_ISA_EXT_ZIHINTNTL,
+	KVM_RISCV_ISA_EXT_ZVFH,
+	KVM_RISCV_ISA_EXT_ZVFHMIN,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index ba0a44b6b757..6b2d81c8cfe7 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -67,6 +67,8 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(ZKT),
 	KVM_ISA_EXT_ARR(ZVBB),
 	KVM_ISA_EXT_ARR(ZVBC),
+	KVM_ISA_EXT_ARR(ZVFH),
+	KVM_ISA_EXT_ARR(ZVFHMIN),
 	KVM_ISA_EXT_ARR(ZVKB),
 	KVM_ISA_EXT_ARR(ZVKG),
 	KVM_ISA_EXT_ARR(ZVKNED),
@@ -139,6 +141,8 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_ZKT:
 	case KVM_RISCV_ISA_EXT_ZVBB:
 	case KVM_RISCV_ISA_EXT_ZVBC:
+	case KVM_RISCV_ISA_EXT_ZVFH:
+	case KVM_RISCV_ISA_EXT_ZVFHMIN:
 	case KVM_RISCV_ISA_EXT_ZVKB:
 	case KVM_RISCV_ISA_EXT_ZVKG:
 	case KVM_RISCV_ISA_EXT_ZVKNED:
-- 
2.34.1


