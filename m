Return-Path: <devicetree+bounces-1252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC4A7A5808
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 05:54:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 933EC281904
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 03:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8999915BF;
	Tue, 19 Sep 2023 03:53:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1CE20F1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:53:58 +0000 (UTC)
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CDE610E
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:53:56 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-3ab2436b57dso3650440b6e.0
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695095635; x=1695700435; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rvg3SR+EIFOsYy/qoodlQ+dG3JVvlqb84MODfhL50Kc=;
        b=JbPJU5nnSbZaYZRt/oSridjA3Sc5nGiFWsmhl2f4b9Scu0J0+1j+n46ahtGANrMbf9
         3430+ft1eqOnzQdd5Y016/Co+b35IwhN9oyoxmw6Uy8y/EEH+vnxFWBwRk3fL+QkXxCS
         OAFpeE83shtFUk6E2B8Mz2dji+brCY8PUJBEtCtrxZbUnoJUh1eqe6Js7w1gB7+M6S/A
         RL4knlAjhS4knF40tpkS+AMYTw4nZL51u/JoHGFfhid3JSrvTlV+7OCNACimSRs1f278
         jl/fsewlsqJ6Rf4591gOqOSwmAh4ce2ZtGSdqReZomoft1xZJ7GG/FIG8ConRuL2VLKe
         ipbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695095635; x=1695700435;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rvg3SR+EIFOsYy/qoodlQ+dG3JVvlqb84MODfhL50Kc=;
        b=vFzVQ8t5xRz1f8150CHgm2nRHoQwowTQzxng8mJDeRcfMdgeRsFOHafY0WYXLIohR1
         bI7aiHZQTtvhpjTkl/+U3iV4YaNAPIL+yglt7oGAdR4MsNBq6vUqVRy8BAHK1qcPFVeX
         getHJkK/F+xlRF2jcfOEXH+Yw5yEaCNpQhC1/b9TRF6hQg65IB+oJsP7dpTdjX3ZDIeY
         is+BxGuGboA8S7ssFbL1F8ztzhFBhTFugxdnAVvgwthP+uFPKo+MWyQfzRHpJBEP7kKH
         QrXobHQTDmuQSnMbQ/t8qLg7ujeGCbrzQgh5Kdk05Ovo+2TUoHuTm8liRQeq2tRk+ZgC
         IpNg==
X-Gm-Message-State: AOJu0YwVQUWEiRSPTRFQM9MCjMkGJ5L0DMMUPqrU4HWTqoaPQlf8tczB
	rFtltkX2BemkWQIl7vLlEthMPA==
X-Google-Smtp-Source: AGHT+IHSFRjaMNl5z6gZsQCX5N7BoHMId7wpAKCC/vOe9wh+dDpFGMxbeXkA8oaPp9V2562aa7na1w==
X-Received: by 2002:a05:6808:b0c:b0:3a9:c25d:176a with SMTP id s12-20020a0568080b0c00b003a9c25d176amr12387561oij.36.1695095635453;
        Mon, 18 Sep 2023 20:53:55 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id 3-20020a17090a034300b00273fc850342sm4000802pjf.20.2023.09.18.20.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 20:53:54 -0700 (PDT)
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
Subject: [PATCH 0/7] KVM RISC-V Conditional Operations
Date: Tue, 19 Sep 2023 09:23:36 +0530
Message-Id: <20230919035343.1399389-1-apatel@ventanamicro.com>
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
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This series extends KVM RISC-V to allow Guest/VM discover and use
conditional operations related ISA extensions (namely XVentanaCondOps
and Zicond).

To try these patches, use KVMTOOL from riscv_zbx_zicntr_smstateen_condops_v1
branch at: https://github.com/avpatel/kvmtool.git

These patches are based upon the latest riscv_kvm_queue and can also be
found in the riscv_kvm_condops_v1 branch at:
https://github.com/avpatel/linux.git

Anup Patel (7):
  RISC-V: Detect XVentanaCondOps from ISA string
  RISC-V: Detect Zicond from ISA string
  RISC-V: KVM: Allow XVentanaCondOps extension for Guest/VM
  RISC-V: KVM: Allow Zicond extension for Guest/VM
  KVM: riscv: selftests: Add senvcfg register to get-reg-list test
  KVM: riscv: selftests: Add smstateen registers to get-reg-list test
  KVM: riscv: selftests: Add condops extensions to get-reg-list test

 .../devicetree/bindings/riscv/extensions.yaml | 13 ++++++
 arch/riscv/include/asm/hwcap.h                |  2 +
 arch/riscv/include/uapi/asm/kvm.h             |  2 +
 arch/riscv/kernel/cpufeature.c                |  2 +
 arch/riscv/kvm/vcpu_onereg.c                  |  4 ++
 .../selftests/kvm/riscv/get-reg-list.c        | 41 +++++++++++++++++++
 6 files changed, 64 insertions(+)

-- 
2.34.1


