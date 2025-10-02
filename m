Return-Path: <devicetree+bounces-223270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 653EFBB294A
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 08:08:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A0FB3BBADE
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 06:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28C1327AC34;
	Thu,  2 Oct 2025 06:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="fzwWJriE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D64C246795
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 06:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759385305; cv=none; b=URrUoiH7+Aq1APFetkkro8qHKqx8+JtJMT/EDsR5zI1M763UPrsuGqRennwec1P1mSuHwVJ9RokewA+amyXBO0AXb+cSaddcnQh61Ol58rOy7AfiQjS7qFHKVUWMI+JOKNKq9Ew7HWqFe4FBwzT1NVJ4/Zr4Xrch/3ETok0MQqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759385305; c=relaxed/simple;
	bh=BS+vJqhdCP6ZTBMXv5Fcb0BNkl2MOks2yJBfSgi82Io=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sCkUO+QKN1pHQBApWVfItaLW3HUmUjJYUlqXltnlKWZx17wyLNJCz8m705D4nt5Xl5HsCASpkWN1w/va371OR4oPr+d+LGgN+jo+j6UfTbbmqEYcEFYtvCdPHUxFDtMNmSCOeQdlbAd5HKnyR7QBwp8plrgRWIUee/pDvu0ssDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=fzwWJriE; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-78af743c232so704339b3a.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 23:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1759385303; x=1759990103; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2sr1Hj8RYXUqowJ/luorrsraS2wOxt6c5HA/zSdYBaw=;
        b=fzwWJriEWrcWe4a3b4cFOqNnoTeb5aENqWpysL2MwTfverD5s6TQzWgqgeDDrR9am5
         KBjDob5x2M7A/CNe2SKpi2iPgrvvhxymPCv0FmT/Ez2WBNwvZ+qV6Fgqpl8mROhhWdAX
         8mbCR0cZ2RR4qZElPmgMaZKHzV4g0/IqjfHqfTR/5SsmF2lZPNUkHdcKgYKhn5AT+hvG
         B2fh2Vf7iSOzELv9r9Qo6D7kxySwMQ9+P07sHFkHFxMbldi81lQBzKyf7YbL05ZctnxP
         zvnJ+FukNjvfABn7H8v6V0PiX8XGUAR6nalqKGs+PtDk7eX7mnYsk2tpn+Qo/Weae1sd
         6ZOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759385303; x=1759990103;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2sr1Hj8RYXUqowJ/luorrsraS2wOxt6c5HA/zSdYBaw=;
        b=L2Q4B78kY+RuSkfmG7Lene9bwVzQ+twe4ETYoBrnJ5ux/+IywwQ7+uMTcI00DQLLWW
         HEhYsmbZFZsPZvNF0HqKDvlLqMpYkJd5D06+ji/7m3k4jKZ66WIiZ3HcJOC2lZZ0ZYK2
         gp+2s1sUvqV6mP/wnYv3PyBIMUwTAUDSSTGZg6YcoDvxpjYJHVpuTtFhBbR83awDTaD1
         lLTPTNqzufyFztnFO3lW+mAtWQusErIPEX9r5ir1Ww2vyBhWERLD5RPHJ6/kAH8YZAlM
         /Uo6gHcXM3Gzlv9+BUauzY7Sxm+9X3huUFThMD+VnXgA36yFB84NoCbSORcXQ1UwlxPQ
         T98A==
X-Forwarded-Encrypted: i=1; AJvYcCWP94zyj8qcXRJyPNubB5+Wqhrel8LLbfXI+Vr2+bmFLQPyDTT+lwWN7GXRoiHJEAQGVgmKy/RmXXIC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/1NFqddlJ3E1NWEFdzD5W2gwoMb3bHlw4veJ33rspUTt5VZVA
	0yrpYGLtDLLj7OgZMn47hqu7lntuNEuq9OP1KrwQKVqzbolOZqM/W8u/WYXxdOQQQB4=
X-Gm-Gg: ASbGncuOrV9HHNlrwe2UkuBY73LLfJV/Erx9/V+c/qNkbyOP2f/EG7vyQyBCaLQprMS
	eQbnkMWMoFnh/gVzmc2LAEz/nU7gceNDOIWte9XqbI/xjI1EskvSNaGKLXxjsPFWWJTpq1wVyJj
	m+z7MbGq55GKxdB8uWCouX/8MM/brVrmugWJNWU6K5T7AqfZ/zO2vbdK2eGTzCs3YozoZkSZqT5
	fk37AhNNKIoedS7VttOAUd/koSXhOUFzIkkIrEMTtjUQa/yVLvoetUFJ0DZHABIP7yaHCAlVB4H
	nOWKkayr/X68PH9OUvZUK4jvA/sH5JecaQCpLuqp8Px7/gsQSDeuAWRMYQr3Xqo/O39w7Uc4qB9
	FxmNQ7XmGMzxRX5xK2zAuJcxnWqJAMgstj7Ggow5mPJfitz+G334o//D54OiqjVi4/5oti3aadp
	1hGmg=
X-Google-Smtp-Source: AGHT+IE/P3CYgcBDFzRCkFb9v11QtqWlSsUw+KrLc7ikzxnSyndvWks/J4/8QFBSVDLBkg6UpMZ8bg==
X-Received: by 2002:a05:6a20:9f99:b0:262:9451:c648 with SMTP id adf61e73a8af0-321e3edc7a6mr8232285637.37.1759385302495;
        Wed, 01 Oct 2025 23:08:22 -0700 (PDT)
Received: from localhost.localdomain ([122.171.19.158])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099f594afsm1205029a12.37.2025.10.01.23.08.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 23:08:21 -0700 (PDT)
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
Subject: [PATCH 00/11] Linux RISC-V trace framework and drivers
Date: Thu,  2 Oct 2025 11:37:21 +0530
Message-ID: <20251002060732.100213-1-apatel@ventanamicro.com>
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

These patches can also be found in the riscv_trace_support_v1 branch at:
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

Anup Patel (5):
  dt-bindings: Add RISC-V trace component bindings
  rvtrace: Initial implementation of driver framework
  rvtrace: Add functions to create/destroy a trace component path
  rvtrace: Add function to copy into perf AUX buffer
  MAINTAINERS: Add entry for RISC-V trace framework and drivers

Mayuresh Chitale (6):
  rvtrace: Add functions to start/stop tracing on a component path
  rvtrace: Add trace encoder driver
  rvtrace: Add trace ramsink driver
  rvtrace: Add perf driver for tracing using perf tool
  perf tools: Add RISC-V trace PMU record capabilities
  perf tools: Initial support for RISC-V trace decoder

 .../bindings/riscv/riscv,trace-component.yaml | 110 +++
 MAINTAINERS                                   |  11 +
 drivers/Makefile                              |   1 +
 drivers/hwtracing/Kconfig                     |   2 +
 drivers/hwtracing/rvtrace/Kconfig             |  32 +
 drivers/hwtracing/rvtrace/Makefile            |   6 +
 drivers/hwtracing/rvtrace/rvtrace-core.c      | 781 ++++++++++++++++++
 drivers/hwtracing/rvtrace/rvtrace-encoder.c   | 107 +++
 drivers/hwtracing/rvtrace/rvtrace-perf.c      | 343 ++++++++
 drivers/hwtracing/rvtrace/rvtrace-platform.c  | 174 ++++
 drivers/hwtracing/rvtrace/rvtrace-ramsink.c   | 198 +++++
 include/linux/rvtrace.h                       | 341 ++++++++
 tools/perf/arch/riscv/util/Build              |   1 +
 tools/perf/arch/riscv/util/auxtrace.c         | 218 +++++
 tools/perf/util/Build                         |   1 +
 tools/perf/util/auxtrace.c                    |   4 +
 tools/perf/util/auxtrace.h                    |   1 +
 tools/perf/util/rvtrace-decoder.c             |  91 ++
 tools/perf/util/rvtrace.h                     |  20 +
 19 files changed, 2442 insertions(+)
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


