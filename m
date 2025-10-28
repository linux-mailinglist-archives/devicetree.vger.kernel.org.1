Return-Path: <devicetree+bounces-231934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3F1C1324C
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 07:28:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1FA344ED6C5
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 06:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C96022BE047;
	Tue, 28 Oct 2025 06:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dzDC5idH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0EA929293D
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761632897; cv=none; b=BA1JHLhcMLtzQD+T7354NNBnk8vtFGAZS+i85Xagwb8APVDjrLt3x3/dhLHFdQxBtrzb9IiVpJrx/RLjKc5vhk3qgT217piRjClZ1iWrMlRo8oZynVYExEqOOcbDbLzDZS0LNr1Hm3t+EIvBygUmZt4QKUUHa8xsI7etjUdUStg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761632897; c=relaxed/simple;
	bh=6PnlglbBdA+sT72qw9FSQQcvFbM5sLJUf0oCBFAlNsY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DA0rBisnXwWh675fgYi9rkfHKTA3CQe/6t+LpbY8sHfxLfnT/Dr5iKb2EQv4HQVjQbvPi7Mi+dgi7FHU6alG8Os/0QZ9Mdc4p1v3fwqKjZqN3F/HiHidAGBqUEv4sq3ED5Vi7LUVAz1OZY0KLuyxrFekAi0oYFh1zrk4Q3aWUfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dzDC5idH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59S1M0XV2963114
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:28:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=JLnYbqr9msvD1/79xuZ9kB
	CdhSNS4ncRjKXElM3L+tA=; b=dzDC5idHe0Jxo91n7QH8zNFdFHQw4ZgpsTIOv1
	Q0pHCZGi+FzlQQjUK26QRIxsY2drrWPIF9SSqFmZfy35UpyYFD73HJgs4t8l6m1n
	pZ4Vl8O5xqLJgoyNbaK7wtluIydB0eroX4WqEK+3MSTv+01ZyzbbwmjTQeet2kmp
	YVMEQxWppgkrKtzf8rM6mPUqz1MdoRAW8qPiUK52qSlEB2aCMsVjM9PGjV0HSqUu
	zV9i5BvMYbt4xizCzFcsSkfDxhqnzJVQNzCcC8P0KIntjd1/M61Vs8921aL82YZ9
	IJs24ENyZtBkKdt34z3hUcyEwFlsl4G7T9VbqoO2aY2ALBSg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a29v9tnue-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:28:13 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2698b5fbe5bso75921245ad.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 23:28:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761632892; x=1762237692;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JLnYbqr9msvD1/79xuZ9kBCdhSNS4ncRjKXElM3L+tA=;
        b=TDi5Gj2WVSYtqWeRpDhlJtNllDcQR3kAVgpigEyK34TM+22C9fYN2X3+qy57XqwjGw
         z1uFjm6tH2I0DX4ebWitG2P9mZE9V656yAINND2y/nKbZhj1Jfvm7t8BgBvpvA8dyfS6
         TLPiQegm/knpl+95anNYGtzOHmZo7ac98nEwWLrLyo1l/1RRMBt0U4X//eXr/aCTfNY2
         3oYW5AJJSZuhuxm7IznEDjtfieiVtGgcQrjDL3Agl5UGcyed7BOJi731rYuQib/euKYG
         5xOZO/HQTi44rL2D4/u5zcid/HADaLJoBWLmp/EwUwSnJU9atKsaT9qv7a6Hfnn+rv1A
         8LzQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6X7nFvbgsM5F+nquOsyYR1eogrL/KIV0pDR81oxqoGMRhW5bMT5A9dTdSb/dLGCnc2D2uSzr/Hhlo@vger.kernel.org
X-Gm-Message-State: AOJu0YwZDtg7amQRd53/4SE9w6Nxk5j52QSubbIC7gsRuqzuWdr00psC
	DjLt7/rvdC6+S1fqpAKpsbp3nJQIVvhGZHxS5E0QCvs/FF9LQoKV92xMp5tYu1OjDbFH8a4gGEW
	lSnKpMpHG2nGqZeYNRykVFSUHGDygIZtWm13A0TkHCjCOrEjOgLQ/8lNllq93Ek1L
X-Gm-Gg: ASbGncs9jviZtfJ7X9w8iivGSYPXbHzlkYkVuj+2lGYV1xau5fFEaS3TuJLwn2rvjyS
	VggHgsTCjIh3qxMyBJxU94CgBBUeTK0eQjjCv9d9hmGbz8rJkqKcqaiJ9xPF7Fwv/16sceahFWo
	k0a1rRDPkEhE/V7jHfsjVHVw3oZG+AqKMTmTccw00WgUfvVUS7ArP/5dsjx2z8pCnBn8ppJYOeg
	ZH3v1YWzEYaiygVwE6pRRgGWORLiv9mz0rpsh3kbUZ+ArkSfbIp1JhPNRxBoSlaFLy2lzMU9vhz
	vXrsBe0Elqu+lHRW0Ayz5AbWBdg3yLWU46FRJpOLvHJGNMxup2mGoUQbnByx5GByTMSTHjpvw2F
	gX90MBm+Sf2aJD+vK/YyJmxkYnAADDn30YN5lv6S++GAZ8zLE0D8qcAcM
X-Received: by 2002:a17:903:38c5:b0:24c:da3b:7376 with SMTP id d9443c01a7336-294cb3a11dfmr30302255ad.26.1761632892464;
        Mon, 27 Oct 2025 23:28:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkoJ0/BWbeULjwvKLuQumjd4K3ei4AcaGQDzrzd6IcSgDpV2RBGOWAbR62jWKf3T2tuscaCw==
X-Received: by 2002:a17:903:38c5:b0:24c:da3b:7376 with SMTP id d9443c01a7336-294cb3a11dfmr30301865ad.26.1761632892019;
        Mon, 27 Oct 2025 23:28:12 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf359asm102503265ad.12.2025.10.27.23.28.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 23:28:11 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Subject: [PATCH 00/12] coresight: Add CPU cluster funnel/replicator/tmc
 support
Date: Mon, 27 Oct 2025 23:28:02 -0700
Message-Id: <20251027-cpu_cluster_component_pm-v1-0-31355ac588c2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAHJiAGkC/x2MQQqAIBAAvxJ7TsjKiL4SIbFttVAqmhFIf086D
 sxMgkCeKcBQJPB0c2BrMsiyANxns5HgJTPUVa1kJTuBLmo8YrjIa7Sns4bMpd0pkJTs1yy1TQM
 5d55Wfv71OL3vB2Lq3UJqAAAA
X-Change-ID: 20251016-cpu_cluster_component_pm-ce518f510433
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761632890; l=5210;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=6PnlglbBdA+sT72qw9FSQQcvFbM5sLJUf0oCBFAlNsY=;
 b=LALf6twg1OIvxPNPoUXNnYLUruCA2bLqVPFCSjxVHlq0x8jHuF1l0snyO9zy7Y4Zt8YntjTkp
 Oh08LcncK+5DapwYzG0b/O8jyAPAEAGclo9D7j34geQ6cr5DLet7C3r
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-GUID: Xiji8mounbmzDntJTUEEEMbuX3s0uRHj
X-Authority-Analysis: v=2.4 cv=D/VK6/Rj c=1 sm=1 tr=0 ts=6900627d cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=6muaAK4ZDRYgKIjbAQEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: Xiji8mounbmzDntJTUEEEMbuX3s0uRHj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDA1NCBTYWx0ZWRfXyBMHaDcR/5wQ
 9nUskgTKRJB/4V5RdGfkY/JKDHvrcKZSe83bWfeIe1DGzg0gu3PoOQIrCR+zpHkW4vaXzOI5L4r
 Fj3bvBc31ZbtxObnD5ORbrQY1QUSXxdE/6XYz4BiqcHxoSWbChdxUDc4bT0uhmXWZFcLccjMppu
 uZ+vhDLe+RHmnDG22JD9/hfAvSdLLDdfrw07R1htOPnz1zbp54jIwq9S8hM81ZP0diiRRi1jbDE
 gSBAcWMk6HgakIF5iHSF05QvZ8x6o9Ysq+wuMfCcyALZdAOT3vbuNXXfcVrFTwbFii7uoAQU6vn
 3BKWiXbMckQYXfZaP/RQ8j5l0dom6J6BslgoBnyVXjvUc+b5tMF0jHs6VTZkIu5+WMO8Il3xQQo
 IcXYsFO9IFzviimkX6e6ZOtvRlQbOg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280054

This patch series introduces support for CPU cluster local CoreSight components,
including funnel, replicator, and TMC, which reside inside CPU cluster
power domains. These components require special handling due to power
domain constraints.

Unlike system-level CoreSight devices, CPU cluster local components share the
power domain of the CPU cluster. When the cluster enters low-power mode (LPM),
the registers of these components become inaccessible. Importantly, `pm_runtime_get`
calls alone are insufficient to bring the CPU cluster out of LPM, making
standard register access unreliable in such cases.

To address this, the series introduces:
- Device tree bindings for CPU cluster local funnel, replicator, and TMC.
- Introduce a cpumask to record the CPUs belonging to the cluster where the
  cpu cluster local component resides.
- Safe register access via smp_call_function_single() on CPUs within the
  associated cpumask, ensuring the cluster is power-resident during access.
- Delayed probe support for CPU cluster local components when all CPUs of
  this CPU cluster are offline, re-probe the component when any CPU in the
  cluster comes online.
- Introduce `cs_mode` to link enable interfaces to avoid the use
  smp_call_function_single() under perf mode.

Patch summary:
Patch 1: Adds device tree bindings for CPU cluster funnel/replicator/TMC devices.
Patches 2–3: Add support for CPU cluster funnel.
Patches 4-6: Add support for CPU cluster replicator.
Patches 7-10: Add support for CPU cluster TMC.
Patch 11: Add 'cs_mode' to link enable functions.
Patches 12-13: Add Coresight nodes for APSS debug block for x1e80100 and
fix build issue.

Verification:

This series has been verified on sm8750.

Test steps for delay probe:

1. limit the system to enable at most 6 CPU cores during boot.
2. echo 1 >/sys/bus/cpu/devices/cpu6/online.
3. check whether ETM6 and ETM7 have been probed.

Test steps for sysfs mode:

echo 1 >/sys/bus/coresight/devices/tmc_etf0/enable_sink
echo 1 >/sys/bus/coresight/devices/etm0/enable_source
echo 1 >/sys/bus/coresight/devices/etm6/enable_source
echo 0 >/sys/bus/coresight/devices/etm0/enable_source
echo 0 >/sys/bus/coresight/devicse/etm6/enable_source
echo 0 >/sys/bus/coresight/devices/tmc_etf0/enable_sink

echo 1 >/sys/bus/coresight/devices/tmc_etf1/enable_sink
echo 1 >/sys/bus/coresight/devcies/etm0/enable_source
cat /dev/tmc_etf1 >/tmp/etf1.bin
echo 0 >/sys/bus/coresight/devices/etm0/enable_source
echo 0 >/sys/bus/coresight/devices/tmc_etf1/enable_sink

echo 1 >/sys/bus/coresight/devices/tmc_etf2/enable_sink
echo 1 >/sys/bus/coresight/devices/etm6/enable_source
cat /dev/tmc_etf2 >/tmp/etf2.bin
echo 0 >/sys/bus/coresight/devices/etm6/enable_source
echo 0 >/sys/bus/coresight/devices/tmc_etf2/enable_sink

Test steps for sysfs node:

cat /sys/bus/coresight/devices/tmc_etf*/mgmt/*

cat /sys/bus/coresight/devices/funnel*/funnel_ctrl

cat /sys/bus/coresight/devices/replicator*/mgmt/*

Test steps for perf mode:

perf record -a -e cs_etm//k -- sleep 5

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
Yuanfang Zhang (12):
      dt-bindings: arm: coresight: Add cpu cluster tmc/funnel/replicator support
      coresight-funnel: Add support for CPU cluster funnel
      coresight-funnel: Handle delay probe for CPU cluster funnel
      coresight-replicator: Add support for CPU cluster replicator
      coresight-replicator: Handle delayed probe for CPU cluster replicator
      coresight-replicator: Update mgmt_attrs for CPU cluster replicator compatibility
      coresight-tmc: Add support for CPU cluster ETF and refactor probe flow
      coresight-tmc-etf: Refactor enable function for CPU cluster ETF support
      coresight-tmc: Update tmc_mgmt_attrs for CPU cluster TMC compatibility
      coresight-tmc: Handle delayed probe for CPU cluster TMC
      coresight: add 'cs_mode' to link enable functions
      arm64: dts: qcom: x1e80100: add Coresight nodes for APSS debug block

 .../bindings/arm/arm,coresight-dynamic-funnel.yaml |  23 +-
 .../arm/arm,coresight-dynamic-replicator.yaml      |  22 +-
 .../devicetree/bindings/arm/arm,coresight-tmc.yaml |  22 +-
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 885 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/x1p42100.dtsi             |  12 +
 drivers/hwtracing/coresight/coresight-core.c       |   7 +-
 drivers/hwtracing/coresight/coresight-funnel.c     | 260 +++++-
 drivers/hwtracing/coresight/coresight-replicator.c | 343 +++++++-
 drivers/hwtracing/coresight/coresight-tmc-core.c   | 396 +++++++--
 drivers/hwtracing/coresight/coresight-tmc-etf.c    | 105 ++-
 drivers/hwtracing/coresight/coresight-tmc.h        |  10 +
 drivers/hwtracing/coresight/coresight-tnoc.c       |   3 +-
 drivers/hwtracing/coresight/coresight-tpda.c       |   3 +-
 include/linux/coresight.h                          |   3 +-
 14 files changed, 1912 insertions(+), 182 deletions(-)
---
base-commit: 01f96b812526a2c8dcd5c0e510dda37e09ec8bcd
change-id: 20251016-cpu_cluster_component_pm-ce518f510433

Best regards,
-- 
Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>


