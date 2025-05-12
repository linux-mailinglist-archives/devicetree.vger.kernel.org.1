Return-Path: <devicetree+bounces-176255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC66AB3494
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 12:11:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A3B2817AEE9
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 10:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D45025B1EF;
	Mon, 12 May 2025 10:11:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5971E25C83B
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 10:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747044698; cv=none; b=KP4Hnf/6qUPs92X7Is9we69Iu57oBCf7XG393w0y8GKxBKzhaUCqhmFhngymRBBDWzS/VwDhe4HFwHU18HC3nQG2UDm4NazhwxpCIlawnHrW6X31T+CmIE6+gcoIMKHYB3+uTJ2OAaDVdlGVyS8GVCKLN+vC/PF4pWcH5GIubJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747044698; c=relaxed/simple;
	bh=rUCeKGxURVXKvVYnsH7bLYyx8yDwOs+0P3WXBjzdbdU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SUEnpBgg90YlkmMZMJNkqBf2ZLHAdP6jllnXmVEu0RMQo5gRHAuucLWJvxtZq0PVtApTq8d7yQBNo8dgtWFkjcvpAd9AAq7VQ08Ixp1xUumgd84ODAcb2ppQKCIvenyyEj0BvR/+n9F+alRbP9/BHkxnPcwtV9Dd1siiRSqTJQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com; spf=none smtp.mailfrom=foss.arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=foss.arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A391B150C;
	Mon, 12 May 2025 03:11:24 -0700 (PDT)
Received: from usa.arm.com (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 745753F673;
	Mon, 12 May 2025 03:11:34 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] arm64: dts: arm: Drop the clock-frequency property from timer nodes
Date: Mon, 12 May 2025 11:11:32 +0100
Message-Id: <20250512101132.1743920-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop the clock-frequency property from the timer nodes, since it must be
configured by the boot/secure firmware.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/boot/dts/arm/corstone1000.dtsi  | 1 -
 arch/arm64/boot/dts/arm/foundation-v8.dtsi | 1 -
 arch/arm64/boot/dts/arm/juno-base.dtsi     | 1 -
 arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts | 1 -
 4 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/corstone1000.dtsi b/arch/arm64/boot/dts/arm/corstone1000.dtsi
index 56ada8728b60..f35a5c96f3da 100644
--- a/arch/arm64/boot/dts/arm/corstone1000.dtsi
+++ b/arch/arm64/boot/dts/arm/corstone1000.dtsi
@@ -109,7 +109,6 @@ timer@1a220000 {
 			reg = <0x1a220000 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
-			clock-frequency = <50000000>;
 			ranges;
 
 			frame@1a230000 {
diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
index 083be35495b3..a4b2b78d4df3 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
@@ -77,7 +77,6 @@ timer {
 			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
 			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
 			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
-		clock-frequency = <100000000>;
 	};
 
 	pmu {
diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 055764d0b9e5..9ccb80821bdb 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -10,7 +10,6 @@ / {
 	memtimer: timer@2a810000 {
 		compatible = "arm,armv7-timer-mem";
 		reg = <0x0 0x2a810000 0x0 0x10000>;
-		clock-frequency = <50000000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
 		ranges = <0 0x0 0x2a820000 0x20000>;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
index 7f7226711d4b..a4a29193d4eb 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
@@ -116,7 +116,6 @@ timer {
 			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
 			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
 			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
-		clock-frequency = <100000000>;
 	};
 
 	pmu {
-- 
2.34.1


