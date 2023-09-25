Return-Path: <devicetree+bounces-3174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF93D7AD943
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:39:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C7E901C20403
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:39:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FE2A1BDC7;
	Mon, 25 Sep 2023 13:39:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF01C125D8
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 13:39:16 +0000 (UTC)
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57433FE
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:39:15 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1c61bde0b4bso14696745ad.3
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695649155; x=1696253955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eKlzTcjLE8dmyYbSp67mSfFAcCqOvfM8wch2jpInsyI=;
        b=IwlgH3JaVqRgAfe5QvA4D82+ZQ+nIPNE0MP8Q/Rirgaup/3e0cwODR80PQem3A57/u
         R4m5kbxmkB3js5vwIpuPPMbhVKc6ZZIYCDcz+VfYwNLnUaMYekV1e9mQ4qWuabHTB4JA
         Dpv6vsWCPffnq6BhhtFTf7DUy3uX6eqO9I6j8qpS7aRkfrOaZ5TNWH9AOcIobTyzCxxG
         PuqFXhO5tf/8X9Ncbxe4xgf2/ZPsV68W84ZgR9m6nJFibdaQKrDb6zv9G+Izm++Yl1XL
         t3XN4UAY6nDajWDVZNacq6XtmZg6VlX2uR7QEE0wR97+r1FwNpPLcQr6u/1GMsTwEK9S
         lRmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695649155; x=1696253955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eKlzTcjLE8dmyYbSp67mSfFAcCqOvfM8wch2jpInsyI=;
        b=Eb9eGSq4Bf2hlckHKAHLw/gB4ZnR/q59Mhgyqc0pkGR8mpdYac9nhFpUCJ3dW5Wq/P
         9WcmpTkfBAB67KGGJ9nDUVFaATpoOyA/8EAIOFeMPgpjTEf4qEBIX1HnqiHODLWlDeaK
         lbvvTCsGQRnyL/n+fh/96KxEDSAFr7or66yq/vxB3IvE+C4/8hp5ODV4pYcDDyXcvSA/
         OOZaX3sTvdSH6/vEYihnS/M9lHPJ1Ew1EzAL3zB62Tv7hlc8PLHtzQNpAtQO0LEvK2mU
         JbY8ei1/pNaogwcdBYIF+lkLHOt1ywVaEq9Xt5MJYhk2Nw2AVdI/BWkUZimQGjKuNGZL
         KtJA==
X-Gm-Message-State: AOJu0YwUf0P394eotDBBU+NH4N6DejoxZUUZy65i+Q+bi7bWAw2AUNPp
	KJBZF0mSQLTGo3kZpT0Nw0zB1w==
X-Google-Smtp-Source: AGHT+IHS8Wv/g/qamJVplasJy8yBOlFgPURiUvskvgySyTGlNOySwwqAtel1reKcngtN7Jgwh6mD8A==
X-Received: by 2002:a17:902:c950:b0:1c5:db4e:bb2c with SMTP id i16-20020a170902c95000b001c5db4ebb2cmr9270815pla.64.1695649154596;
        Mon, 25 Sep 2023 06:39:14 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id p11-20020a170902eacb00b001c625d6ffccsm969433pld.129.2023.09.25.06.39.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 06:39:14 -0700 (PDT)
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
Subject: [PATCH v2 0/9] KVM RISC-V Conditional Operations
Date: Mon, 25 Sep 2023 19:08:50 +0530
Message-Id: <20230925133859.1735879-1-apatel@ventanamicro.com>
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
found in the riscv_kvm_condops_v2 branch at:
https://github.com/avpatel/linux.git

Changes since v1:
 - Rebased the series on riscv_kvm_queue
 - Split PATCH1 and PATCH2 of v1 series into two patches
 - Added separate test configs for XVentanaCondOps and Zicond in PATCH7
   of v1 series.

Anup Patel (9):
  dt-bindings: riscv: Add XVentanaCondOps extension entry
  RISC-V: Detect XVentanaCondOps from ISA string
  dt-bindings: riscv: Add Zicond extension entry
  RISC-V: Detect Zicond from ISA string
  RISC-V: KVM: Allow XVentanaCondOps extension for Guest/VM
  RISC-V: KVM: Allow Zicond extension for Guest/VM
  KVM: riscv: selftests: Add senvcfg register to get-reg-list test
  KVM: riscv: selftests: Add smstateen registers to get-reg-list test
  KVM: riscv: selftests: Add condops extensions to get-reg-list test

 .../devicetree/bindings/riscv/extensions.yaml | 13 ++++
 arch/riscv/include/asm/hwcap.h                |  2 +
 arch/riscv/include/uapi/asm/kvm.h             |  2 +
 arch/riscv/kernel/cpufeature.c                |  2 +
 arch/riscv/kvm/vcpu_onereg.c                  |  4 ++
 .../selftests/kvm/riscv/get-reg-list.c        | 71 +++++++++++++++++++
 6 files changed, 94 insertions(+)

-- 
2.34.1


