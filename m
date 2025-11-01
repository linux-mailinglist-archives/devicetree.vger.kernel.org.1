Return-Path: <devicetree+bounces-234057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC06C2817C
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 16:43:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A88C63B0386
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 15:43:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8CB622A4D6;
	Sat,  1 Nov 2025 15:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="YTb0rAyj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B85260B8A
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 15:43:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762011784; cv=none; b=Jc2z3C3/ewbSMSEjPAqn6fS3asm1WO+2TPH97pFRceQYu2XEjXBYufeG2yokFWL/LtiBktkO38Dw5Naq+C8+A+xCm2/k6kSFvJLq/jg8mOSp+qlFIDybPwtwFbViGVYB9Dfbe6On2ap2+IN6pubLfi+pgbFy3ojxFc8hOFsglps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762011784; c=relaxed/simple;
	bh=/BUHD+TqBUu2u7lzEzSO1RxlvB0Via63D0fVHgQ3CRY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=amyoisMbxlQxnN+JsKEx7nO484TT2s+gFMhw/cO7HhC1+e2jkF74hdUYG2H7hING+gDIkapVdpFtqVtO+7YdnUKVNfjK/Um9hLGzq1ILbw424RswC5+2Y70k1X4MesW4lQhqtTVNiCVwj+Tg0v3Inlrf/lEfJrnZ8k9QRAddlss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=YTb0rAyj; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2953e415b27so11704015ad.2
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 08:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1762011782; x=1762616582; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qzSxlietdv08Nz41XlGqZnExJjtZBryEPCo4y1RIDZc=;
        b=YTb0rAyj3IT+yHKWHCQswOITrOyROZGQnPrQuo7w2MciIniv5TMtuPi1KSv/z4eG67
         K25dI7kNvvFrYES5qtWqfAHU2XbAT5tRXhBkg+/z31bdJCGzQQXvo2YBQd5SrPuLOILt
         /k9Clf510imFt5eMKq9icsaWKqZe0Oh3Liyq3BwotdG/eZT/sPdLJY0tJokCsO7NvjhJ
         1mvOT8sTUxabFnYUxxwnTA89uCHvOSuWuSaPVaW/LxijmmJVPpVFWu6NQIzSjcgEyXPY
         SXOzoyA/caK8d1o2GCFmB9bgDobDYKrlPxt9H8KQ8/0ay4/nkxPGwrlI94Bbi4wvqP1G
         Ebsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762011782; x=1762616582;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qzSxlietdv08Nz41XlGqZnExJjtZBryEPCo4y1RIDZc=;
        b=SAOwqWtXjQqVMlKAG355CYHx7zQLe89b6tIFJp7ta5aIATSuQst7LkcaUfAmdDuKFl
         nacjl0HxW84btBpNs+2EGZpoZYfihTGbsjK5dyCoz48DR5Bt+z/c6XMOk76EhJ3VOtAY
         IWRDET1muSmvJ9Z4d1zFRdn/W2sQ1bl+ZGB3DFEGvfJBknVRFE6ggSaiEJwguDj3rits
         Sw0qRvXNfSV0dKu8M2rqAm/K2r5+Ckoh2drg/KBgkgHr8NbOIXq43ZRBehDrclUkcKZE
         B0pIZMojx4pFJb11Q7ki8A00STQMb0p6I9PRUF63LQ1OiTX+CAB+2XtcOeR1RYh3dKjI
         f+Ug==
X-Forwarded-Encrypted: i=1; AJvYcCV4ElTgKV8M5r9HEaZ9ImhbE+sE4KOwTRWXps8ri4dS6fDjfhsEQYLEfLdAi+wSEJ34oACcELKqkPS/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+rwazXip56qOWfIz9UBrI2bqJbCdcOCQK1Q3xJzwJ9pMmmKOb
	qJq1DmpBXrYfXcMogd9MoNehdHSsRUB6HfZprHBVVAPjAN3xuDj4lPi0QqDlIeVmKKI=
X-Gm-Gg: ASbGncuoG4VkiJw9//kVzIRrW2QoTKVqqfb57BRhggo8pibV4visBkZVAg91NrPGo1q
	oBkZAYHdV7Y99GVcaxZ+bZrBIUaEqCH0FEani+Rd2JllYQ7tFvcOgypcZFbai4ej7ferTYPMarR
	A1tQbt7NMguGp6f0kxdOmho47d9QyeKHBMJ+BGBKDLkBl/YbIVSVc8MKiH/jvft/0wjH44IRk6t
	76//noHhDTtP7M12xGWd2TcdTUPjOrKb5GHT3rZkHlC8mIwIoLhekzNOLgnHHhcv4ILz+J8Kphp
	Q+uAjEqs/L1jZvh/6zN79/5lBgfECPvxpXpnoxmSYGhYv1J8ouFsmJp1g1dVarqozuLywkg4qnD
	llNAk/OKBplRH/+U6QP9eOB4OxJzAm7XV19Bda9cktWFqeJTLEBe+iRnPvqMos5UcdE7LcINrAJ
	S8xMFFiC+chF3G3DcA4fMqI6puNL5AI/4=
X-Google-Smtp-Source: AGHT+IG9sjo4xwPEkzo6ctV338QETzcZ1vLZmEK24hr2B/GgahZDtRfJJ0dMRkfnA3yh0prDVDGKIw==
X-Received: by 2002:a17:902:e749:b0:295:7f1d:b034 with SMTP id d9443c01a7336-2957f1db313mr4827205ad.4.1762011782049;
        Sat, 01 Nov 2025 08:43:02 -0700 (PDT)
Received: from localhost.localdomain ([122.171.20.36])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295269bd2fesm59990105ad.105.2025.11.01.08.42.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Nov 2025 08:43:01 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Ian Rogers <irogers@google.com>
Cc: Alexandre Ghiti <alex@ghiti.fr>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Liang Kan <kan.liang@linux.intel.com>,
	Mayuresh Chitale <mchitale@gmail.com>,
	Anup Patel <anup@brainfault.org>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v2 00/12] Linux RISC-V trace framework and drivers
Date: Sat,  1 Nov 2025 21:12:33 +0530
Message-ID: <20251101154245.162492-1-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds initial support for RISC-V trace framework and drivers.
The RISC-V trace v1.0 specification is already ratified and can be found at:
https://github.com/riscv-non-isa/e-trace-encap/releases/tag/v1.0.0-ratified
https://github.com/riscv-non-isa/tg-nexus-trace/releases/tag/1.0_Ratified

The RISC-V trace framework and drivers are designed to be agnostic to the
underlying trace protocol hence both RISC-V E-trace and RISC-V N-trace should
work fine. The discovery of trace protocl parameters are left to user-space
trace decoder.

In ther future, there will be subsequent series adding:
1) Sysfs support
2) ACPI support
3) More trace drivers (such as funnel, ATB, etc)
4) Support for upcoming self-hosted trace specification
5) ... and more ...

These patches can also be found in the riscv_trace_support_v2 branch at:
https://github.com/avpatel/linux.git

To test the patches, we need QEMU virt machine with RISC-V trace support
which can be found in rv-etrace branch at:
https://gitlab.com/danielhb/qemu.git

To capture rvtrace data using perf on QEMU virt machine do the following:
1) Launch QEMU virt machine
   $ qemu-system-riscv64 -nographic -M virt -smp 2 -bios fw_dynamic.bin \
     -kernel Image -append "root=/dev/vda rw console=ttyS0 earlycon=sbi" \
     -drive file=/path/to/rootfs.img,id=disk1,if=none,format=raw \
     -device virtio-blk-device,drive=disk1
2) Run perf record to capture rvtrace data
   $ perf record --all-cpus -e rvtrace/event=0x1/ <command>
3) The step2 would create a perf.data file which has the rvtrace data.
   Now run perf report -D and look for PERF_RECORD_AUXTRACE event
   section(s) which point(s) to the actual rvtrace data offset.

Changes since v1:
 - Rebased on Linux-6.18-rc3
 - Addressed Rob's comments in dt-bindings added by PATCH1
 - Get reference of conn->dest_fwnode and add missing break in
   rvtrace_of_parse_outconns() of rvtrace-platform drivers added
   by PATCH2
 - Added new inline function rvtrace_comp_is_empty() in PATCH2
   and used it in rvtrace_encoder_stop() added by PATCH5
 - Fixed trRamWPLow usage in PATCH7
 - Determine RAM sink buffer size based on component implementation
   ID and reduce default RAM sink buffer size to 1MB
 - Add new PATCH8 to enable DMA_RESTRICTED_POOL in RISC-V defconfig
   so that implementations with RAM sink address restrictions can
   be handled.

Anup Patel (6):
  dt-bindings: Add RISC-V trace component bindings
  rvtrace: Initial implementation of driver framework
  rvtrace: Add functions to create/destroy a trace component path
  rvtrace: Add function to copy into perf AUX buffer
  riscv: Enable DMA_RESTRICTED_POOL in defconfig
  MAINTAINERS: Add entry for RISC-V trace framework and drivers

Mayuresh Chitale (6):
  rvtrace: Add functions to start/stop tracing on a component path
  rvtrace: Add trace encoder driver
  rvtrace: Add trace ramsink driver
  rvtrace: Add perf driver for tracing using perf tool
  perf tools: Add RISC-V trace PMU record capabilities
  perf tools: Initial support for RISC-V trace decoder

 .../bindings/riscv/riscv,trace-component.yaml | 112 +++
 MAINTAINERS                                   |  11 +
 arch/riscv/configs/defconfig                  |   1 +
 drivers/Makefile                              |   1 +
 drivers/hwtracing/Kconfig                     |   2 +
 drivers/hwtracing/rvtrace/Kconfig             |  33 +
 drivers/hwtracing/rvtrace/Makefile            |   6 +
 drivers/hwtracing/rvtrace/rvtrace-core.c      | 798 ++++++++++++++++++
 drivers/hwtracing/rvtrace/rvtrace-encoder.c   | 107 +++
 drivers/hwtracing/rvtrace/rvtrace-perf.c      | 343 ++++++++
 drivers/hwtracing/rvtrace/rvtrace-platform.c  | 192 +++++
 drivers/hwtracing/rvtrace/rvtrace-ramsink.c   | 262 ++++++
 include/linux/rvtrace.h                       | 349 ++++++++
 tools/perf/arch/riscv/util/Build              |   1 +
 tools/perf/arch/riscv/util/auxtrace.c         | 218 +++++
 tools/perf/util/Build                         |   1 +
 tools/perf/util/auxtrace.c                    |   4 +
 tools/perf/util/auxtrace.h                    |   1 +
 tools/perf/util/rvtrace-decoder.c             |  91 ++
 tools/perf/util/rvtrace.h                     |  20 +
 20 files changed, 2553 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml
 create mode 100644 drivers/hwtracing/rvtrace/Kconfig
 create mode 100644 drivers/hwtracing/rvtrace/Makefile
 create mode 100644 drivers/hwtracing/rvtrace/rvtrace-core.c
 create mode 100644 drivers/hwtracing/rvtrace/rvtrace-encoder.c
 create mode 100644 drivers/hwtracing/rvtrace/rvtrace-perf.c
 create mode 100644 drivers/hwtracing/rvtrace/rvtrace-platform.c
 create mode 100644 drivers/hwtracing/rvtrace/rvtrace-ramsink.c
 create mode 100644 include/linux/rvtrace.h
 create mode 100644 tools/perf/arch/riscv/util/auxtrace.c
 create mode 100644 tools/perf/util/rvtrace-decoder.c
 create mode 100644 tools/perf/util/rvtrace.h

-- 
2.43.0


