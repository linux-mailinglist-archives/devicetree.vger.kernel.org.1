Return-Path: <devicetree+bounces-51786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B761D8806FC
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 22:59:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46D7B283B70
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 21:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4781A4EB55;
	Tue, 19 Mar 2024 21:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="gpnpnNQt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C63240BFE
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 21:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710885559; cv=none; b=naZQeyYlsbgR4k8vBGpOFiOs9OCvm+DFKr4sWGD0pDMJOk5n4KL+Kro7qZreRtm9Pha803KGOdmw2Apax4OVjvwJrqr5dFEkt5+BQ5Hnqg/UqEAm59kPKlcxwozOAZj7Ie8TDgMUlBZC2TP+uc0dO1I8Hp2ewFHw9dp/FH8FrOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710885559; c=relaxed/simple;
	bh=JrhTzLNU7JDIXj1MsuBxCmEsCkl39IGeWPNJ9ltYd2U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rZWcELOisKkCQZYdLgLghIzAL+0RncU5jRgKOf3CJr8xA0PJmCXYpv/6xPConr+WcvOVLjv9DOqEQ9Ie9hRXNOy0p9HCgRDsO7N/Cc8gJGC+qTP7w53k0gvTRcLRZEN/6ev+SJigvBMXPFIfMF0sb88k4EimyQHUyk0wpe+NuDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=gpnpnNQt; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6e73e8bdea2so1554157b3a.0
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 14:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1710885557; x=1711490357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rmlb8dkFyYxdz94/c3CDo0QI5YbaWEmRF37tY2/vORM=;
        b=gpnpnNQtlGY4/QW2SSNOxZiMmeVOK4pkFOqn8wUWwX5IDIGbQ23tgl/KyXWJmfL9EW
         Ha4Wrgtw0X3K2uN33bdvaG/pno+QAi9ynJSyYmfgPU8VK6u0eu7DkNOmQC4/0/dDCfNd
         uBM5l6Flc1faxubX3ncCt2/Av8HzHfmljsOy9qL+w9a5cIGTT4k/zRo1xs2+xknQO4Vv
         W9wkF4Ejp/Pce2WpFZ3gGtKvM3irz3pN3w5g5E6e4fMVFi/iMPHRfNlrI1QxMn+Yt4uN
         vgYHoy7bP4ItlejmelK8ZYl5nZNGbdzV2TjwwUZ9BYKYBwR2fAI6UaI9PR03+s/lD0Vx
         Ek4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710885557; x=1711490357;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rmlb8dkFyYxdz94/c3CDo0QI5YbaWEmRF37tY2/vORM=;
        b=Sxn9uPgYTqy0uUS1CWRMu5y44Um4dMAx2EDV2DM7kTb2m3hJzDvyHTgVcilpMOZJhh
         YgNO53slHk8mXwZQFjCwqa7KjYdXvrUUmIlsV8pJD/vQ7Yus62Szy5akA7CedwITPMwV
         iUxzgUa1kfe9Z8dTIjKP0czmmiCkcsLjVf6ljFkiLdeTDGS6Gl1sehQSA/F2lBRgvhrW
         W8M3mEdvCkqH8Hr3JHrgdoPqvVp9G0z293eMLxsTWG9YPaootvhJqEU260FvDEFncsPf
         Wm5UcyiH4pqftOesOKUr9vR/yq2+UlD+KRPS68IYwK75ASRwMDexqCUnCWURDKZungtw
         HhOw==
X-Gm-Message-State: AOJu0Ywp0SMML6OgTZ76aeUtTVxQVz/u3mpi793XHx5mziiCLjd51EGG
	74eJdmeeqa060Tj9ZI0K/M2E7IuJzpW3jtUXQqNcrdXn52zqK0PKvkwdfSwSCbo=
X-Google-Smtp-Source: AGHT+IFq09XmFNSIoRgARl6YR9z7iEUW5Yif2KVMNG/hMOVVaxwVphqnsk3Rt+lVEueTdkA4OIwSpQ==
X-Received: by 2002:a05:6a00:a22:b0:6e7:4abe:85a0 with SMTP id p34-20020a056a000a2200b006e74abe85a0mr457780pfh.14.1710885556934;
        Tue, 19 Mar 2024 14:59:16 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id z25-20020aa785d9000000b006e6c61b264bsm10273892pfn.32.2024.03.19.14.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 14:59:16 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org,
	tech-j-ext@lists.risc-v.org,
	Conor Dooley <conor@kernel.org>,
	kasan-dev@googlegroups.com,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Andrew Jones <ajones@ventanamicro.com>
Subject: [RFC PATCH 0/9] riscv: Userspace pointer masking and tagged address ABI
Date: Tue, 19 Mar 2024 14:58:26 -0700
Message-ID: <20240319215915.832127-1-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.43.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

RISC-V defines three extensions for pointer masking[1]:
 - Smmpm: configured in M-mode, affects M-mode
 - Smnpm: configured in M-mode, affects the next lower mode (S or U-mode)
 - Ssnpm: configured in S-mode, affects the next lower mode (U-mode)

This series adds support for configuring Smnpm or Ssnpm (depending on
which mode the kernel is running in) to allow pointer masking in
userspace by extending the existing PR_SET_TAGGED_ADDR_CTRL API from
arm64. Unlike arm64 TBI, userspace pointer masking is not enabled by
default on RISC-V. Additionally, the tag width (referred to as PMLEN) is
variable, so userspace needs to ask the kernel for a specific tag width
(which is interpreted as a minimum number of tag bits).

This series also adds support for a tagged address ABI similar to arm64.
Since accesses from the kernel to user memory use the kernel's pointer
masking configuration, not the user's, the kernel must untag user
pointers in software before dereferencing them.

This series can be tested in QEMU by applying a patch set[2].

KASAN support is not included here because there is not yet any standard
way for the kernel to ask firmware to enable pointer masking in S-mode.

[1]: https://github.com/riscv/riscv-j-extension/raw/a1e68469c60/zjpm-spec.pdf
[2]: https://patchwork.kernel.org/project/qemu-devel/list/?series=822467&archive=both


Samuel Holland (9):
  dt-bindings: riscv: Add pointer masking ISA extensions
  riscv: Add ISA extension parsing for pointer masking
  riscv: Add CSR definitions for pointer masking
  riscv: Define is_compat_thread()
  riscv: Split per-CPU and per-thread envcfg bits
  riscv: Add support for userspace pointer masking
  riscv: Add support for the tagged address ABI
  riscv: Allow ptrace control of the tagged address ABI
  selftests: riscv: Add a pointer masking test

 .../devicetree/bindings/riscv/extensions.yaml |  18 +
 arch/riscv/Kconfig                            |   8 +
 arch/riscv/include/asm/compat.h               |  16 +
 arch/riscv/include/asm/cpufeature.h           |   2 +
 arch/riscv/include/asm/csr.h                  |  16 +
 arch/riscv/include/asm/hwcap.h                |   5 +
 arch/riscv/include/asm/processor.h            |  10 +
 arch/riscv/include/asm/switch_to.h            |  12 +
 arch/riscv/include/asm/uaccess.h              |  40 ++-
 arch/riscv/kernel/cpufeature.c                |   7 +-
 arch/riscv/kernel/process.c                   | 154 +++++++++
 arch/riscv/kernel/ptrace.c                    |  42 +++
 include/uapi/linux/elf.h                      |   1 +
 include/uapi/linux/prctl.h                    |   3 +
 tools/testing/selftests/riscv/Makefile        |   2 +-
 tools/testing/selftests/riscv/tags/Makefile   |  10 +
 .../selftests/riscv/tags/pointer_masking.c    | 307 ++++++++++++++++++
 17 files changed, 646 insertions(+), 7 deletions(-)
 create mode 100644 tools/testing/selftests/riscv/tags/Makefile
 create mode 100644 tools/testing/selftests/riscv/tags/pointer_masking.c

-- 
2.43.1


