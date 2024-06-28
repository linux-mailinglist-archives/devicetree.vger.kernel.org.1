Return-Path: <devicetree+bounces-81389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC5091C1D5
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 16:56:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBCE22819BB
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 14:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A24181C0053;
	Fri, 28 Jun 2024 14:56:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A0091C2304
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 14:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719586584; cv=none; b=GU7wqUwzfGW3c0aBF4DeyGrn7L7u/eRKTntj62Wy2idSbCaGMieWo7sHeDhP95pD4maAezm+dm116XvxrXAwVgU3xs7wZy+xaJF/CLlhswUVh1UHqgBW2chgSMbfQopCWNDunsqlGvrqIFG/APZawyXGmWbeUDjVr0MCE/VY7VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719586584; c=relaxed/simple;
	bh=zNoHEBKbb3HJ6/Y9RX11nnvX+fWgYYD7c+kjHArSX7I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=k8P+UBT7ZF7SEe4auNoaX9ktLIFam6/1hAB6Z52LMPV349bAx6szyc4fahWoZxynJo49PhXJmm0CYAuyulDfnlgImbsEzDXHn4+VW1PLdmknwQTYAAIDqOtJTDZPqKyrHB9BaNyunG/ApAkqNkVuK+MS5feE8T63UCopT+lqQFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B0001476;
	Fri, 28 Jun 2024 07:56:47 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.manchester.arm.com [10.32.101.20])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 17E343F73B;
	Fri, 28 Jun 2024 07:56:20 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jun Wu <Jun.Wu@arm.com>
Subject: [PATCH 2/2] perf: pmuv3: Add new Cortex and Neoverse PMUs
Date: Fri, 28 Jun 2024 15:56:12 +0100
Message-Id: <20240628145612.1291329-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240628145612.1291329-1-andre.przywara@arm.com>
References: <20240628145612.1291329-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the Arm Cortex-A725, Cortex-X925, Neoverse N3,
Neoverse V2, Neoverse V3 and Neoverse V3AE.
This just adds the names and connects them with their DT compatible
strings.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 drivers/perf/arm_pmuv3.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/perf/arm_pmuv3.c b/drivers/perf/arm_pmuv3.c
index 23fa6c5da82c4..9f46ce0c459eb 100644
--- a/drivers/perf/arm_pmuv3.c
+++ b/drivers/perf/arm_pmuv3.c
@@ -1340,14 +1340,20 @@ PMUV3_INIT_SIMPLE(armv9_cortex_a520)
 PMUV3_INIT_SIMPLE(armv9_cortex_a710)
 PMUV3_INIT_SIMPLE(armv9_cortex_a715)
 PMUV3_INIT_SIMPLE(armv9_cortex_a720)
+PMUV3_INIT_SIMPLE(armv9_cortex_a725)
 PMUV3_INIT_SIMPLE(armv8_cortex_x1)
 PMUV3_INIT_SIMPLE(armv9_cortex_x2)
 PMUV3_INIT_SIMPLE(armv9_cortex_x3)
 PMUV3_INIT_SIMPLE(armv9_cortex_x4)
+PMUV3_INIT_SIMPLE(armv9_cortex_x925)
 PMUV3_INIT_SIMPLE(armv8_neoverse_e1)
 PMUV3_INIT_SIMPLE(armv8_neoverse_n1)
 PMUV3_INIT_SIMPLE(armv9_neoverse_n2)
+PMUV3_INIT_SIMPLE(armv9_neoverse_n3)
 PMUV3_INIT_SIMPLE(armv8_neoverse_v1)
+PMUV3_INIT_SIMPLE(armv8_neoverse_v2)
+PMUV3_INIT_SIMPLE(armv8_neoverse_v3)
+PMUV3_INIT_SIMPLE(armv8_neoverse_v3ae)
 
 PMUV3_INIT_SIMPLE(armv8_nvidia_carmel)
 PMUV3_INIT_SIMPLE(armv8_nvidia_denver)
@@ -1379,14 +1385,20 @@ static const struct of_device_id armv8_pmu_of_device_ids[] = {
 	{.compatible = "arm,cortex-a710-pmu",	.data = armv9_cortex_a710_pmu_init},
 	{.compatible = "arm,cortex-a715-pmu",	.data = armv9_cortex_a715_pmu_init},
 	{.compatible = "arm,cortex-a720-pmu",	.data = armv9_cortex_a720_pmu_init},
+	{.compatible = "arm,cortex-a725-pmu",	.data = armv9_cortex_a725_pmu_init},
 	{.compatible = "arm,cortex-x1-pmu",	.data = armv8_cortex_x1_pmu_init},
 	{.compatible = "arm,cortex-x2-pmu",	.data = armv9_cortex_x2_pmu_init},
 	{.compatible = "arm,cortex-x3-pmu",	.data = armv9_cortex_x3_pmu_init},
 	{.compatible = "arm,cortex-x4-pmu",	.data = armv9_cortex_x4_pmu_init},
+	{.compatible = "arm,cortex-x925-pmu",	.data = armv9_cortex_x925_pmu_init},
 	{.compatible = "arm,neoverse-e1-pmu",	.data = armv8_neoverse_e1_pmu_init},
 	{.compatible = "arm,neoverse-n1-pmu",	.data = armv8_neoverse_n1_pmu_init},
 	{.compatible = "arm,neoverse-n2-pmu",	.data = armv9_neoverse_n2_pmu_init},
+	{.compatible = "arm,neoverse-n3-pmu",	.data = armv9_neoverse_n3_pmu_init},
 	{.compatible = "arm,neoverse-v1-pmu",	.data = armv8_neoverse_v1_pmu_init},
+	{.compatible = "arm,neoverse-v2-pmu",	.data = armv8_neoverse_v2_pmu_init},
+	{.compatible = "arm,neoverse-v3-pmu",	.data = armv8_neoverse_v3_pmu_init},
+	{.compatible = "arm,neoverse-v3ae-pmu",	.data = armv8_neoverse_v3ae_pmu_init},
 	{.compatible = "cavium,thunder-pmu",	.data = armv8_cavium_thunder_pmu_init},
 	{.compatible = "brcm,vulcan-pmu",	.data = armv8_brcm_vulcan_pmu_init},
 	{.compatible = "nvidia,carmel-pmu",	.data = armv8_nvidia_carmel_pmu_init},
-- 
2.25.1


