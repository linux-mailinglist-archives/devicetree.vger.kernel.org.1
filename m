Return-Path: <devicetree+bounces-5315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C1F7B5F88
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 05:52:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 15C0C2815BF
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 03:52:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 710B3EBD;
	Tue,  3 Oct 2023 03:52:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14584EA3
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 03:52:41 +0000 (UTC)
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D19A0C4
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 20:52:40 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1c60f1a2652so3329475ad.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 20:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1696305160; x=1696909960; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=epBeEg3WHOewkDN8nsgY1zC5qxutdS0j0M6jR1cFpqU=;
        b=RE8VoxdzUpPfalKyMxsp6gHZVX3AmSVBJ4JadEQLmD3H0lRR+JCl4JotVXjhICb9Kv
         8idlXnvCPBP9s0AV3vsqqYti6FFKxCTzO8s/Z1tt9tnIDN8RutJi66rIpt+NXN2Bs7Ks
         PBR5I22Q7ZggPTn2AkIbqKXjGUcywf9plfbxtNcm5+rOITKX4xh4vj+WX8TGaIpsszif
         +3v/7ZEi1b34g/UwsfBgqKINMCvqV3K47gGnrn8c4PkXQF7L5/8hLN9NjSbNAdrzYm4V
         7AZ7DDmHiEJo1YC59LZ8G6SrpZ2ScgAqIiuzUbtMMBZv1Ja5Sc6arcOtvjnPWvpuXZME
         t2iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696305160; x=1696909960;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=epBeEg3WHOewkDN8nsgY1zC5qxutdS0j0M6jR1cFpqU=;
        b=kNY2cmBG1rNianLzKYSdGUPSw4fZ5R4OpRJgtkTZczERNYyHuHa1gUXZw5TeUoYab4
         Cc/F6YqQbFzubOflMjGh77P8lijQ9IGBhMLs4RBIt4Lm/qlYnSiAu301iVb0HkuaPqu7
         BAVvR25zsCPyHk0eY9FlL7uIzQ4ZHYjmuXUcLg9hr5y8KX1X7VCYyGsLeVp8xbAod1Nw
         ZOt3Yt4hBlNA8tiqT1SiyD+O9T+wYUcsIlfA+tGgVqlyd57VpgA4viCRYUUdb6KcBjOa
         xiqvvHY4zGHHKTy8LSG5050g7GxRfug26aBYSDX4yeKNTDqKIrVQ2Ut1kky1Xp0LDIrc
         K3UQ==
X-Gm-Message-State: AOJu0YwlNdbMZNhOPy9CYgy0ymOg4QbH85OUlWJCNtBYxiBY/8Yh5Z7z
	NkhK5RrRJ+THIgm2vwS21Xi1/w==
X-Google-Smtp-Source: AGHT+IFtHb+0ETHelhV6xmk1EC8fik9/FCmsu2/7CTguN41JmL5+gZAs2r18pIEdY+h0A7UNl7J3PA==
X-Received: by 2002:a17:903:1c7:b0:1c0:afda:7707 with SMTP id e7-20020a17090301c700b001c0afda7707mr2146645plh.34.1696305160116;
        Mon, 02 Oct 2023 20:52:40 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.132])
        by smtp.gmail.com with ESMTPSA id ja7-20020a170902efc700b001bf846dd2d0sm277381plb.13.2023.10.02.20.52.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 20:52:39 -0700 (PDT)
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
Subject: [PATCH v3 0/6] KVM RISC-V Conditional Operations
Date: Tue,  3 Oct 2023 09:22:20 +0530
Message-Id: <20231003035226.1945725-1-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
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

This series extends KVM RISC-V to allow Guest/VM discover and use
conditional operations related ISA extensions (namely XVentanaCondOps
and Zicond).

To try these patches, use KVMTOOL from riscv_zbx_zicntr_smstateen_condops_v1
branch at: https://github.com/avpatel/kvmtool.git

These patches are based upon the latest riscv_kvm_queue and can also be
found in the riscv_kvm_condops_v3 branch at:
https://github.com/avpatel/linux.git

Changes since v2:
 - Dropped patch1, patch2, and patch5 since these patches don't meet
   the requirements of patch acceptance policy.

Changes since v1:
 - Rebased the series on riscv_kvm_queue
 - Split PATCH1 and PATCH2 of v1 series into two patches
 - Added separate test configs for XVentanaCondOps and Zicond in PATCH7
   of v1 series.

Anup Patel (6):
  dt-bindings: riscv: Add Zicond extension entry
  RISC-V: Detect Zicond from ISA string
  RISC-V: KVM: Allow Zicond extension for Guest/VM
  KVM: riscv: selftests: Add senvcfg register to get-reg-list test
  KVM: riscv: selftests: Add smstateen registers to get-reg-list test
  KVM: riscv: selftests: Add condops extensions to get-reg-list test

 .../devicetree/bindings/riscv/extensions.yaml |  6 +++
 arch/riscv/include/asm/hwcap.h                |  1 +
 arch/riscv/include/uapi/asm/kvm.h             |  1 +
 arch/riscv/kernel/cpufeature.c                |  1 +
 arch/riscv/kvm/vcpu_onereg.c                  |  2 +
 .../selftests/kvm/riscv/get-reg-list.c        | 54 +++++++++++++++++++
 6 files changed, 65 insertions(+)

-- 
2.34.1


