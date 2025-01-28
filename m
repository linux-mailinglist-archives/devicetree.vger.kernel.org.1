Return-Path: <devicetree+bounces-141268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7DFA20394
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 06:00:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F0943A6AF6
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 04:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00BE51D8A0D;
	Tue, 28 Jan 2025 04:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="P27GOcGh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EFE1D47B5
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 04:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738040391; cv=none; b=OscVH8uOMU0WZPLlle4SRfRVB3Z3hXO5Zz0i1QVCeoQR2YBNIIIMO04Mf3HLtdkHj9jrkjwz+7Ndna6gOzZlBu6DiNv1neKCe3Vx9hpFLWRVEYFqQu7cUQvZGXu/Uvp661EzwQ/r3au/P6Wjm3FR+SB/K/2O0DPCR4h8v7RVwG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738040391; c=relaxed/simple;
	bh=KNywYsyMf5hFy9Q1DA+7waHOwPARggQZ5VYLzlOTpBU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=sWgCruUJERSr7xmtEVATVMeMeKL6ig9qfdAUNcNpZtpD6skN1BoSNhIWdOWbvS39NGFF8ywdBulaxYggTuw37r5mrgRmiuC0La+SapTVWX/BaY0xX/3Pt2QrpOl83UOZ2YXQuC69I9miaqajcPo3vqM4OOYs99CiZWwtg3mJIDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=P27GOcGh; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2f441791e40so6858610a91.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 20:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738040389; x=1738645189; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p0VPANAVsmLrSTrh0M1s3VKUcJkfJU2MjXNzNzDCh8s=;
        b=P27GOcGhKbEGs5dRUImsck4usPgQIsAxJ8jxEN2ukZVhKwBmWTm8CDsEoFFrgddF+g
         C5tYxQ+KKUY62DCgbLqCS5FFGhpWAQibluzCEUIPlUCYgUQUngVbQo5NNiws7WFwWPTu
         AjYlSqEI5tbv0hLAzlbBv2oUBBK3j2RuCWBQLGxVpvYgcxQM5RkiAcuVmLGkcaWKY0k2
         Cl08y5nzyLEdqCX9m88KGTP45xp5P/v7hLkEW2gVpDMOHyBy1OjrmJr6rYDG+mk764xU
         +6mRsdN7p3LB5MZrzCThgfq/t3LmpjuzC/daMoXQGVjeCWqEsepVpG+Q/D7jpdhh8F7+
         geOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738040389; x=1738645189;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p0VPANAVsmLrSTrh0M1s3VKUcJkfJU2MjXNzNzDCh8s=;
        b=wW1Qys8jmLG9Rpzv7gjGkIFpj0C6eKx+HaGKuQITw/5oDh1XE19Mb2tq7j9ely9uJ3
         UTcLU6YxJkdUSliEj9v5I8FwAKF0zIk18Rt2KAzmCsg68/NaoPHBaoI5V3236lo4icYd
         OPNd9TPr4yvX4A69zsjCsNlYHgxugQSd/W3JTyrw/ZUoV7XGW22jLgJpNEGaDCzcLM+H
         T8qErul3d3HW4oL+tTO0dFJKwnSNB4G3kkCqtc2fBstXG8r9EG42TunCNAjQXBuDdWgb
         SOItSd4Iahfj0vitP8F52ryQ9D5u6O5YPZC6GNJT1Tkw7cMq027fckAp2XeNwQ5OC6rI
         ns3g==
X-Forwarded-Encrypted: i=1; AJvYcCX0B05m1hC2ri8++A5nQ13RyF6IbjFn6aTXiJP6v24f17UyTKyIh2WDmLEg7h7PLhjQsCnjF7dDqxTi@vger.kernel.org
X-Gm-Message-State: AOJu0Yz55auhTYEX5uxKch5jOvnU2F6Tk3rufuHfbD/fedGxII2CwRva
	wMH/rK3Wl3jniKYFbJyl2fXsRoh7vBMJ70DHPCMpeLdXs+KZ/xCxe+w8ICuSnPemj+IwCqzdemf
	5
X-Gm-Gg: ASbGnctBzqH0jNdRNXyw+WUNJIpSJ1gO8d0t8qpw/SEdJjYuVkCy2gAxzAHo5fcMWwH
	P5r63pRvgnpA+gOxg8R08m2txQjmhfNDizDptcwa/w9szkEJBR+m9b/BG7vakB0/mpsTJ5Jrd36
	UYhQATlPD49k6iZfmDdJXcsUi1g8UiHCuqLBkA2i+Oc6AANS2TtQj1mz+HUo7+f6cztH+wwFNaD
	wa/jhdKlMaWia3CWkBtRy8VweiAvOCjCVBoyzSfI5gZDTtXxGPIt+KKlpiPvgAx4L67LDHzyVyz
	HY5I6MRoErHQQCKKfpfv2z3UsiqZ
X-Google-Smtp-Source: AGHT+IFPGgOxK6VYw4cmT+KcEasibxJkcY5RNWPc5OADe+V6z3nA1ybzeqTJtl+4i3AcrPmRb3y4eA==
X-Received: by 2002:a17:90b:520d:b0:2ee:8e75:4ae1 with SMTP id 98e67ed59e1d1-2f782cbfcadmr57678716a91.21.1738040388983;
        Mon, 27 Jan 2025 20:59:48 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa5a7f7sm8212776a91.11.2025.01.27.20.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 20:59:48 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Subject: [PATCH v3 00/21] Add Counter delegation ISA extension support
Date: Mon, 27 Jan 2025 20:59:41 -0800
Message-Id: <20250127-counter_delegation-v3-0-64894d7e16d5@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD1kmGcC/22Oyw7CIBBFf6VhLQ3DQ9CV/2GMoZS2JAoNVKJp+
 u/SGjfG5bmZe+7MKNnobELHakbRZpdc8AXYrkJm0L632LWFESWUEwkCm/Dwk43X1t5sr6dyjvd
 UaUY7ZQ7GoFIco+3cc5OeL4UHl6YQX9tGhjX96ChIQoRkqmaSc6CAARdjGsZTdDkk501twh2tj
 ky/PUEA+L83MsUEq0ZLbtpGCWh+LMuyvAH0pZjY7wAAAA==
To: Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anup Patel <anup@brainfault.org>, 
 Atish Patra <atishp@atishpatra.org>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>, 
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Namhyung Kim <namhyung@kernel.org>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
 Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, 
 Adrian Hunter <adrian.hunter@intel.com>, weilin.wang@intel.com
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-perf-users@vger.kernel.org, 
 Atish Patra <atishp@rivosinc.com>, Kaiwen Xue <kaiwenx@rivosinc.com>, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.15-dev-13183

This series adds the counter delegation extension support. It is based on
very early PoC work done by Kevin Xue and mostly rewritten after that.
The counter delegation ISA extension(Smcdeleg/Ssccfg) actually depends
on multiple ISA extensions.

1. S[m|s]csrind : The indirect CSR extension[1] which defines additional
   5 ([M|S|VS]IREG2-[M|S|VS]IREG6) register to address size limitation of
   RISC-V CSR address space.
2. Smstateen: The stateen bit[60] controls the access to the registers
   indirectly via the above indirect registers.
3. Smcdeleg/Ssccfg: The counter delegation extensions[2]

The counter delegation extension allows Supervisor mode to program the
hpmevent and hpmcounters directly without needing the assistance from the
M-mode via SBI calls. This results in a faster perf profiling and very
few traps. This extension also introduces a scountinhibit CSR which allows
to stop/start any counter directly from the S-mode. As the counter
delegation extension potentially can have more than 100 CSRs, the specification
leverages the indirect CSR extension to save the precious CSR address range.

Due to the dependency of these extensions, the following extensions must be
enabled in qemu to use the counter delegation feature in S-mode.

"smstateen=true,sscofpmf=true,ssccfg=true,smcdeleg=true,smcsrind=true,sscsrind=true"
or Virt machine users can just "max" cpu instead.

When we access the counters directly in S-mode, we also need to solve the
following problems.

1. Event to counter mapping
2. Event encoding discovery

The RISC-V ISA doesn't define any standard either for event encoding or the
event to counter mapping rules. Until now, the SBI PMU implementation relies
on device tree binding[3] to discover the event to counter mapping in RISC-V
platform in the firmware. The SBI PMU specification[4] defines event encoding
for standard perf events as well. Thus, the kernel can query the appropriate
counter for an given event from the firmware.

However, the kernel doesn't need any firmware interaction for hardware
counters if counter delegation is available in the hardware. Thus, the driver
needs to discover the above mappings/encodings by itself without any assistance
from firmware.

Solution to Problem #1:
This patch series solves the above problem #1 by extending the perf tool in a
way so that event json file can specify the counter constraints of each event
and that can be passed to the driver to choose the best counter for a given
event. The perf stat metric series[5] from Weilin already extend the perf tool
to parse "Counter" property to specify the hardware counter restriction.
As that series was not revised in a while, I have rebased it and included in
this series. I can only include the necessary parts from that patch required
for this series if required. 

This series extends that support by converting comma separated string to a
bitmap. The counter constraint bitmap is passed to the perf driver via
newly introduced "counterid_mask" property set in "config2".
However, it results in the following event string which has repeated information
about the counters both in list and bitmask format. I am not sure how I can pass
the list information to the driver directly. That's why I added a
counterid_mask property.

Additionaly, the PATCH5 in [5] parses the bitmask information from the
string and puts it into the metric group structure. We can just convert it in
python easily and pass it to the metric group instead. The PATCH19 does exactly
that and sets the counterid_mask property.

@Weilin @Ian : Please let me know if there is a better way to solve the problem I
described. 

Due to the new counterid_mask property, the layout in empty-pmu-events.c got
changed which is patched in PATCH 20 based on existing script.

Possible solutions to Problem #2:

1. Extend the PMU DT parsing support to kernel as well. However, that requires
additional support in ACPI based system. It also needs more infrastructure in
the virtualization as well.

2. Rename perf legacy events to riscv specific names. This will require users to
use perf differently than other ISAs which is not ideal.

3. Define a architecture specific override function for legacy events. Earlier
RFC version did that but it is not preferred as arch specific behavior in perf
tool has other ramifications on the tests.

4. Ian graciously helped and sent a generic fix[6] for #3 that prefers json
over legacy encoding. Unfortunately, it had some regressions and the discussions
are ongoing if it is a viable solution.

5. Specify the encodings in the driver. There were earlier concerns of managing
these in the driver as these encodings are vendor specific in absence of an ISA
guidelines. However, we also need to support counter virtualization and legacy
event users (without perf tool) as described in [7]. That's why, this series
adapts this solution similar to other ISAs. The vendors can define their pmu
event encoding and event to counter mapping in the driver.

Note: This solution is still compatible with solution #4 by Ian. It gives vendors
flexibility to define legacy event encoding in either the driver or json file
if Ian's series [6] is merged. If we can get rid of the legacy events in the
future, we can just rely on the json encodings. I have not added a json file for
qemu as I have not included Ian's patches in this series. But I have verified them
with a virt machine specific json file.

The Qemu patches can be found here:
https://github.com/atishp04/qemu/tree/b4/counter_delegation_v4

The Linux kernel patches can be found here:
https://github.com/atishp04/linux/tree/b4/counter_delegation_v3

[1] https://github.com/riscv/riscv-indirect-csr-access
[2] https://github.com/riscv/riscv-smcdeleg-ssccfg
[3] https://www.kernel.org/doc/Documentation/devicetree/bindings/perf/riscv%2Cpmu.yaml
[4] https://github.com/riscv-non-isa/riscv-sbi-doc/blob/master/src/ext-pmu.adoc
[5] https://lore.kernel.org/lkml/20240412210756.309828-1-weilin.wang@intel.com/
[6] https://lore.kernel.org/lkml/20250109222109.567031-1-irogers@google.com/
[7] https://lore.kernel.org/lkml/20241026121758.143259-1-irogers@google.com/T/#m653a6b98919a365a361a698032502bd26af9f6ba

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
Changes in v3:
- Fixed the dtb binding check failures.
- Inlcuded the fix reported by Rajnesh Kanwal for guest counter overflow.
- Rearranged the overflow handling more efficiently for better modularity.
- Link to v2: https://lore.kernel.org/r/20250114-counter_delegation-v2-0-8ba74cdb851b@rivosinc.com

Changes in v2:
- Dropped architecture specific overrides for event encoding.
- Dropped hwprobe bits.
- Added a vendor specific event encoding table to support vendor specific event
  encoding and counter mapping.
- Fixed few bugs and cleanup.
- Link to v1: https://lore.kernel.org/r/20240217005738.3744121-1-atishp@rivosinc.com

---
Atish Patra (17):
      RISC-V: Add Sxcsrind ISA extension definition and parsing
      dt-bindings: riscv: add Sxcsrind ISA extension description
      RISC-V: Define indirect CSR access helpers
      RISC-V: Add Ssccfg ISA extension definition and parsing
      dt-bindings: riscv: add Counter delegation ISA extensions description
      RISC-V: Add Smcntrpmf extension parsing
      dt-bindings: riscv: add Smcntrpmf ISA extension description
      RISC-V: perf: Restructure the SBI PMU code
      RISC-V: perf: Modify the counter discovery mechanism
      RISC-V: perf: Add a mechanism to defined legacy event encoding
      RISC-V: perf: Implement supervisor counter delegation support
      RISC-V: perf: Use config2/vendor table for event to counter mapping
      RISC-V: perf: Add legacy event encodings via sysfs
      RISC-V: perf: Add Qemu virt machine events
      tools/perf: Support event code for arch standard events
      tools/perf: Pass the Counter constraint values in the pmu events
      Sync empty-pmu-events.c with autogenerated one

Charlie Jenkins (1):
      RISC-V: perf: Skip PMU SBI extension when not implemented

Kaiwen Xue (2):
      RISC-V: Add Sxcsrind ISA extension CSR definitions
      RISC-V: Add Sscfg extension CSR definition

Weilin Wang (1):
      perf pmu-events: Add functions in jevent.py to parse counter and event info for hardware aware grouping

 .../devicetree/bindings/riscv/extensions.yaml      |  40 +
 MAINTAINERS                                        |   4 +-
 arch/riscv/include/asm/csr.h                       |  57 ++
 arch/riscv/include/asm/csr_ind.h                   |  42 +
 arch/riscv/include/asm/hwcap.h                     |   8 +
 arch/riscv/include/asm/kvm_vcpu_pmu.h              |   4 +-
 arch/riscv/include/asm/kvm_vcpu_sbi.h              |   2 +-
 arch/riscv/include/asm/sbi.h                       |   2 +-
 arch/riscv/include/asm/vendorid_list.h             |   4 +
 arch/riscv/kernel/cpufeature.c                     |   5 +
 arch/riscv/kvm/Makefile                            |   4 +-
 arch/riscv/kvm/vcpu_pmu.c                          |   2 +-
 arch/riscv/kvm/vcpu_sbi.c                          |   2 +-
 drivers/perf/Kconfig                               |  16 +-
 drivers/perf/Makefile                              |   4 +-
 drivers/perf/{riscv_pmu.c => riscv_pmu_common.c}   |   0
 drivers/perf/{riscv_pmu_sbi.c => riscv_pmu_dev.c}  | 978 +++++++++++++++++----
 include/linux/perf/riscv_pmu.h                     |  26 +-
 .../perf/pmu-events/arch/riscv/arch-standard.json  |  10 +
 tools/perf/pmu-events/empty-pmu-events.c           | 299 ++++---
 tools/perf/pmu-events/jevents.py                   | 218 ++++-
 tools/perf/pmu-events/pmu-events.h                 |  32 +-
 22 files changed, 1442 insertions(+), 317 deletions(-)
---
base-commit: 9d89551994a430b50c4fffcb1e617a057fa76e20
change-id: 20240715-counter_delegation-628a32f8c9cc
--
Regards,
Atish patra


