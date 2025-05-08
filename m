Return-Path: <devicetree+bounces-174995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EC2AAF7D7
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 12:32:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23B399E1FC2
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 10:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B4EC21147F;
	Thu,  8 May 2025 10:32:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3FAB17A310
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 10:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746700354; cv=none; b=tpIceruyXNKIo7RcegG8Xt335LPqvKbV4uh/mNkrqLt2px6LmG59WxvQP2LBsBCjD4TjE8RKcn7NQNZcqmyPWw9RHw+WCPCVnpybZrtx4/ShkX222IWeGDkqfhgJQa/pC5VqACKi3Fsac2FftM58lYMgLp/1n5FJa8s/1Dtpegw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746700354; c=relaxed/simple;
	bh=hYN/0JTDvjLy7dlSj+jRaAXPMiJDhkTF0KL32P3c38I=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=L5NoVZhzAsG/qP4TRC+ngIuYL7vBhDJ9loAN8/YshMWw+cGvlcxiy+BG7xmO3EZ69XhYDO99dmlIF6y3RM0Nbg01WdYxLad7PBvR8tiIPuXcNuKz1g8r4d286t2KRlVWE2bXXnMZcY1RXhEsjBO72nnT9KtyC+KDjy5eNcCTcDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com; spf=none smtp.mailfrom=foss.arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=foss.arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC40C106F;
	Thu,  8 May 2025 03:32:21 -0700 (PDT)
Received: from usa.arm.com (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 187BF3F5A1;
	Thu,  8 May 2025 03:32:30 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Leo Yan <leo.yan@arm.com>
Subject: [PATCH 1/3] arm64: dts: fvp: Add CPU idle states for Rev C model
Date: Thu,  8 May 2025 11:32:23 +0100
Message-Id: <20250508103225.354925-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add CPU idle state definitions to the FVP Rev C device tree to enable
support for CPU lower power modes. This allows the system to properly
enter low power states during idle. It is disabled by default as it is
know to impact performance on the models.

Note that the power_state parameter(arm,psci-suspend-param) doesn't use
the Extended StateID format for compatibility reasons on FVP.

Tested on the FVP Rev C model with PSCI support enabled firmware.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 32 +++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 9e10d7a6b5a2..ff4e6f4d8797 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -44,6 +44,30 @@ cpus {
 		#address-cells = <2>;
 		#size-cells = <0>;
 
+		idle-states {
+			entry-method = "arm,psci";
+
+			CPU_SLEEP_0: cpu-sleep-0 {
+				compatible = "arm,idle-state";
+				local-timer-stop;
+				arm,psci-suspend-param = <0x0010000>;
+				entry-latency-us = <40>;
+				exit-latency-us = <100>;
+				min-residency-us = <150>;
+				status = "disabled";
+			};
+
+			CLUSTER_SLEEP_0: cluster-sleep-0 {
+				compatible = "arm,idle-state";
+				local-timer-stop;
+				arm,psci-suspend-param = <0x1010000>;
+				entry-latency-us = <500>;
+				exit-latency-us = <1000>;
+				min-residency-us = <2500>;
+				status = "disabled";
+			};
+		};
+
 		cpu0: cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,armv8";
@@ -56,6 +80,7 @@ cpu0: cpu@0 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&C0_L2>;
+			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
 		};
 		cpu1: cpu@100 {
 			device_type = "cpu";
@@ -69,6 +94,7 @@ cpu1: cpu@100 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&C0_L2>;
+			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
 		};
 		cpu2: cpu@200 {
 			device_type = "cpu";
@@ -82,6 +108,7 @@ cpu2: cpu@200 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&C0_L2>;
+			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
 		};
 		cpu3: cpu@300 {
 			device_type = "cpu";
@@ -95,6 +122,7 @@ cpu3: cpu@300 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&C0_L2>;
+			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
 		};
 		cpu4: cpu@10000 {
 			device_type = "cpu";
@@ -108,6 +136,7 @@ cpu4: cpu@10000 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&C1_L2>;
+			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
 		};
 		cpu5: cpu@10100 {
 			device_type = "cpu";
@@ -121,6 +150,7 @@ cpu5: cpu@10100 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&C1_L2>;
+			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
 		};
 		cpu6: cpu@10200 {
 			device_type = "cpu";
@@ -134,6 +164,7 @@ cpu6: cpu@10200 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&C1_L2>;
+			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
 		};
 		cpu7: cpu@10300 {
 			device_type = "cpu";
@@ -147,6 +178,7 @@ cpu7: cpu@10300 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&C1_L2>;
+			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
 		};
 		C0_L2: l2-cache0 {
 			compatible = "cache";
-- 
2.34.1


