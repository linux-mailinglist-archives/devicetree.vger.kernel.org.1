Return-Path: <devicetree+bounces-15104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 122EF7E87FB
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 02:49:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 88DEF1F20F05
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 01:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFBF233D8;
	Sat, 11 Nov 2023 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="fudsWKeW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DCF259B
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 01:49:51 +0000 (UTC)
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E4D5448C
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 17:49:49 -0800 (PST)
Received: by mail-yb1-xb49.google.com with SMTP id 3f1490d57ef6-da3dd6a72a7so3173725276.0
        for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 17:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1699667388; x=1700272188; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xSVkGOQ6Je2Nvd4/Iw08tctHiARRNVZTWxkSrnRPly4=;
        b=fudsWKeWi/4dJZzg/r2Z+mvQOKy6Vo45qFSELBv1xieC8SBgTOR1yowiwqOcn98Owr
         XMGfqwo87qxugnqTOenu4Gm9Vk1iluFbAjqFYkGNwEOfVCNbRBJwG8ILG4rJHs0S7ICK
         Ch/NAta3CETcWIgsrLhW7UVA6ROk8ABDcvxYEb1H4Qw5EkynG9aea1ig20XhWv07A9Mr
         jaK3aOxOPM9FWaqFU23QMsOkb11D/5SgrSApsLqHvU2rc4MWRt0+4lmO5etvzSv4Eftk
         ZvX67vj0LdxJ8R7bYvlooqZhDj6sb7PtTVsl6yAcwDggBz/eeobE1DVT+doXXu0OUlcO
         RZhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699667388; x=1700272188;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xSVkGOQ6Je2Nvd4/Iw08tctHiARRNVZTWxkSrnRPly4=;
        b=R57wB0WWmIkYTbVzkLJYCscKuqadvQQrChuWvCDVLoidmim4wvNlrpSMvOUuFrVScy
         btws/+7U6dpl8tdgTPSaFBKsMDC5CUKHFldQjXLYTLQHJkMlnADs7MMrZMncSh4m03pF
         rKTR9BqwrLiOv750WwGR+v3PgDZkHbzWbANVGQg/6fx8Bdt7P2jfBqaIW7XgUVqM8kMx
         8CaLT4J8TMWbOkyf8qB1DGVTjWfzMdQRbHheQl/qr3zAOWi38I8AvE61oCUW85YoNaUh
         YkkuUYCS1i8p1UCOj013A65ja9UXOpmBIjq28agzA4BZxqvm/hDU631GVVc2217gw5HS
         cqrw==
X-Gm-Message-State: AOJu0YxHLY2GR2/TiHV+jbPudlMVJ220c4UQonKl4V7tAVs7nDWDsL88
	XWnmb1CQbrUGU6eGfdkyfkMmL2Elq/Pq
X-Google-Smtp-Source: AGHT+IFSKHK8rNVtGq6xSzwzFHWKLOlchqnfAcYRbzjW2Gxy8VQh38Q0Vvu6iYAwEy08vUf+okshZZlASqdj
X-Received: from davidai2.mtv.corp.google.com ([2620:15c:211:201:77fa:5ee:8100:77])
 (user=davidai job=sendgmr) by 2002:a25:318a:0:b0:d9a:36cd:482e with SMTP id
 x132-20020a25318a000000b00d9a36cd482emr19289ybx.13.1699667388440; Fri, 10 Nov
 2023 17:49:48 -0800 (PST)
Date: Fri, 10 Nov 2023 17:49:28 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
Message-ID: <20231111014933.1934562-1-davidai@google.com>
Subject: [PATCH v4 0/2] Improve VM CPUfreq and task placement behavior
From: David Dai <davidai@google.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sudeep Holla <sudeep.holla@arm.com>, David Dai <davidai@google.com>, 
	Saravana Kannan <saravanak@google.com>
Cc: Quentin Perret <qperret@google.com>, Masami Hiramatsu <mhiramat@google.com>, 
	Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Vincent Guittot <vincent.guittot@linaro.org>, Marc Zyngier <maz@kernel.org>, 
	Oliver Upton <oliver.upton@linux.dev>, Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Pavan Kondeti <quic_pkondeti@quicinc.com>, Gupta Pankaj <pankaj.gupta@amd.com>, 
	Mel Gorman <mgorman@suse.de>, kernel-team@android.com, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

This patch series is a continuation of the talk Saravana gave at LPC 2022
titled "CPUfreq/sched and VM guest workload problems" [1][2][3]. The gist
of the talk is that workloads running in a guest VM get terrible task
placement and CPUfreq behavior when compared to running the same workload
in the host. Effectively, no EAS(Energy Aware Scheduling) for threads
inside VMs. This would make power and performance terrible just by running
the workload in a VM even if we assume there is zero virtualization
overhead.

With this series, a workload running in a VM gets the same task placement
and CPUfreq behavior as it would when running in the host.

The idea is to improve VM CPUfreq/sched behavior by:
- Having guest kernel do accurate load tracking by taking host CPU
  arch/type and frequency into account.
- Sharing vCPU frequency requirements with the host so that the
  host can do proper frequency scaling and task placement on the host side.

Based on feedback from RFC v1 proposal[4], we've revised our
implementation to using MMIO reads and writes to pass information
from/to host instead of using hypercalls. In our example, the
VMM(Virtual Machine Manager) translates the frequency requests into
Uclamp_min and applies it to the vCPU thread as a hint to the host
kernel.

To achieve the results below, configure the host to:
- Affine vCPUs to specific clusters.
- Set vCPU capacity to match the host CPU they are running on.

To make it easy for folks to try this out with CrosVM, we have put up
userspace patches[5][6]. With those patches, you can configure CrosVM
correctly by adding the options "--host-cpu-topology" and "--virt-cpufreq".

Results:
=3D=3D=3D=3D=3D=3D=3D=3D

Here are some side-by-side comparisons of RFC v1 proposal vs the current
patch series and are labelled as follows.

- (RFC v1) UtilHyp =3D hypercall + util_guest
- (current) UClampMMIO =3D MMIO + UClamp_min

Use cases running a minimal system inside a VM on a Pixel 6:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

FIO
Higher is better
+-------------------+----------+---------+--------+------------+--------+
| Usecase(avg MB/s) | Baseline | UtilHyp | %delta | UClampMMIO | %delta |
+-------------------+----------+---------+--------+------------+--------+
| Seq Write         |     13.3 |    16.4 |   +23% |       13.4 |    +1% |
+-------------------+----------+---------+--------+------------+--------+
| Rand Write        |     11.2 |    12.9 |   +15% |       11.2 |     0% |
+-------------------+----------+---------+--------+------------+--------+
| Seq Read          |      100 |     168 |   +68% |        136 |   +36% |
+-------------------+----------+---------+--------+------------+--------+
| Rand Read         |     20.5 |    35.6 |   +74% |       29.5 |   +44% |
+-------------------+----------+---------+--------+------------+--------+

CPU-based ML Inference Benchmark
Lower is better
+----------------+----------+------------+--------+------------+--------+
| Test Case (ms) | Baseline | UtilHyp    | %delta | UClampMMIO | %delta |
+----------------+----------+------------+--------+------------+--------+
| Cached Sample  |          |            |        |            |        |
| Inference      |     3.40 |       2.37 |   -30% |       2.97 |   -13% |
+----------------+----------+------------+--------+------------+--------+
| Small Sample   |          |            |        |            |        |
| Inference      |     9.87 |       6.78 |   -31% |       7.92 |   -20% |
+----------------+----------+------------+--------+------------+--------+
| Large Sample   |          |            |        |            |        |
| Inference      |    33.35 |      26.74 |   -20% |      31.48 |    -6% |
+----------------+----------+------------+--------+------------+--------+

Use cases running Android inside a VM on a Chromebook:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

PCMark (Emulates real world usecases)
Higher is better
+-------------------+----------+---------+--------+------------+--------+
| Test Case (score) | Baseline | UtilHyp | %delta | UClampMMIO | %delta |
+-------------------+----------+---------+--------+------------+--------+
| Weighted Total    |     5970 |    7162 |   +20% |       6782 |   +14% |
+-------------------+----------+---------+--------+------------+--------+
| Web Browsing      |     5558 |    5877 |    +6% |       5729 |    +3% |
+-------------------+----------+---------+--------+------------+--------+
| Video Editing     |     4921 |    5140 |    +4% |       5079 |    +3% |
+-------------------+----------+---------+--------+------------+--------+
| Writing           |     6864 |    9111 |   +33% |       8171 |   +10% |
+-------------------+----------+---------+--------+------------+--------+
| Photo Editing     |     7983 |   11349 |   +42% |      10313 |   +29% |
+-------------------+----------+---------+--------+------------+--------+
| Data Manipulation |     5814 |    6051 |    +4% |       6051 |    +1% |
+-------------------+----------+---------+--------+------------+--------+

PCMark Performance/mAh
Higher is better
+-------------------+----------+---------+--------+------------+--------+
|                   | Baseline | UtilHyp | %delta | UClampMMIO | %delta |
+-------------------+----------+---------+--------+------------+--------+
| Score/mAh         |       85 |     102 |   +20% |         94 |    10% |
+-------------------+----------+---------+--------+------------+--------+

Roblox
Higher is better
+-------------------+----------+---------+--------+------------+--------+
|                   | Baseline | UtilHyp | %delta | UClampMMIO | %delta |
+-------------------+----------+---------+--------+------------+--------+
| FPS               |    20.88 |   25.64 |   +23% |      24.05 |   +15% |
+-------------------+----------+---------+--------+------------+--------+

Roblox Frames/mAh
Higher is better
+-------------------+----------+---------+--------+------------+--------+
|                   | Baseline | UtilHyp | %delta | UClampMMIO | %delta |
+-------------------+----------+---------+--------+------------+--------+
| Frames/mAh        |    85.29 |  102.31 |   +20% |     94.20  |    10% |
+-------------------+----------+---------+--------+------------+--------+

We've simplified our implementation based on community feedback to make
it less intrusive and to use a more generic MMIO interface for
communication with the host. The results show that the current design
still has tangible improvements over baseline. We'll continue looking
into ways to reduce the overhead of the MMIO read/writes and submit
separate and generic patches for that if we find any good optimizations.

Thanks,
David & Saravana

Cc: Saravana Kannan <saravanak@google.com>
Cc: Quentin Perret <qperret@google.com>
Cc: Masami Hiramatsu <mhiramat@google.com>
Cc: Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Vincent Guittot <vincent.guittot@linaro.org>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Oliver Upton <oliver.upton@linux.dev>
Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>
Cc: Pavan Kondeti <quic_pkondeti@quicinc.com>
Cc: Gupta Pankaj <pankaj.gupta@amd.com>
Cc: Mel Gorman <mgorman@suse.de>

v3 -> v4:
-Fixed dt-binding formatting issues
-Added additional dt-binding descriptions for =E2=80=9CHW interfaces=E2=80=
=9D
-Changed dt-binding to =E2=80=9Cqemu,virtual-cpufreq=E2=80=9D
-Fixed Kconfig formatting issues
-Removed frequency downscaling when requesting frequency updates
-Removed ops and cpufreq driver data
-Added check to limit freq_scale to 1024
-Added KHZ in the register offset naming
-Added comments to explain FIE and not allowing dvfs_possible_from_any_cpu

v2 -> v3:
- Dropped patches adding new hypercalls
- Dropped patch adding util_guest in sched/fair
- Cpufreq driver now populates frequency using opp bindings
- Removed transition_delay_us=3D1 cpufreq setting as it was configured too
  agressively and resulted in poor I/O performance
- Modified guest cpufreq driver to read/write MMIO regions instead of
  using hypercalls to communicate with the host
- Modified guest cpufreq driver to pass frequency info instead of
  utilization of the current vCPU's runqueue which now takes
  iowait_boost into account from the schedutil governor
- Updated DT bindings for a virtual CPU frequency device
Userspace changes:
- Updated CrosVM patches to emulate a virtual cpufreq device
- Updated to newer userspace binaries when collecting more recent
  benchmark data

v1 -> v2:
- No functional changes.
- Added description for EAS and removed DVFS in coverletter.
- Added a v2 tag to the subject.
- Fixed up the inconsistent "units" between tables.
- Made sure everyone is To/Cc-ed for all the patches in the series.

[1] - https://lpc.events/event/16/contributions/1195/
[2] - https://lpc.events/event/16/contributions/1195/attachments/970/1893/L=
PC%202022%20-%20VM%20DVFS.pdf
[3] - https://www.youtube.com/watch?v=3DhIg_5bg6opU
[4] - https://lore.kernel.org/all/20230331014356.1033759-1-davidai@google.c=
om/
[5] - https://chromium-review.googlesource.com/c/crosvm/crosvm/+/4208668
[6] - https://chromium-review.googlesource.com/q/topic:%22virtcpufreq-v4%22

David Dai (2):
  dt-bindings: cpufreq: add virtual cpufreq device
  cpufreq: add virtual-cpufreq driver

 .../cpufreq/qemu,cpufreq-virtual.yaml         |  99 +++++++++
 drivers/cpufreq/Kconfig                       |  15 ++
 drivers/cpufreq/Makefile                      |   1 +
 drivers/cpufreq/virtual-cpufreq.c             | 201 ++++++++++++++++++
 include/linux/arch_topology.h                 |   1 +
 5 files changed, 317 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/cpufreq/qemu,cpufreq-=
virtual.yaml
 create mode 100644 drivers/cpufreq/virtual-cpufreq.c

--=20
2.42.0.869.gea05f2083d-goog


