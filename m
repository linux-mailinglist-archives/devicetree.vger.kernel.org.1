Return-Path: <devicetree+bounces-175727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A83CAAB1929
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 17:47:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D81352418E
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 15:46:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6DD022FE15;
	Fri,  9 May 2025 15:46:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 662C222FDE7
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 15:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746805606; cv=none; b=sMq57EnRVRDj4fIlEDCwqPu9o9svkKBSFdiDviCR1loAZTSKdGiG8oF1DLYxbzKNMhiU6XWvYOkLCvbT6TMT/83q5AqUvtTQ3BXyhSCWMTxub+qp+q40cw6U+P6aMBuDruyKDEigjc5PE0goKxQNW4mUjWVz7qrnwXu6UiWthAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746805606; c=relaxed/simple;
	bh=OgEfrEvJF0YBIBaa8gnQobHYaScrXg1Y0zS0s74tgi4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ZpGmywE+wlF72tg7HFJQkoJ3x5VgSfIYqucOU/nZcqYWzs8mGGjuCO7o/1QhfhLxBGHtHx1Lg4irk+1SW9YnoWHH8Bq4sGn92iNJpGwyEoZPHKKjVJ/q/o8RA7tHTA8PoOgHJPfGd+MBMojMo7u2ONXw9zgO57zz1bxFHCH55T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com; spf=none smtp.mailfrom=foss.arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=foss.arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B7D97175D;
	Fri,  9 May 2025 08:46:32 -0700 (PDT)
Received: from usa.arm.com (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8CC923F58B;
	Fri,  9 May 2025 08:46:42 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Leo Yan <leo.yan@arm.com>
Subject: [PATCH v2 1/3] arm64: dts: fvp: Add system timer for broadcast during CPU idle
Date: Fri,  9 May 2025 16:46:38 +0100
Message-Id: <20250509154640.836093-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce a system-level timer node in the FVP device tree to act as
a broadcast timer when CPUs are in context losing idle states where
the local timer stops on entering such low power states.

This change complements recent CPU idle state additions.

Tested-by: Leo Yan <leo.yan@arm.com>
Message-Id: <20250508103225.354925-2-sudeep.holla@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

v1->v2:
	- Dropped clock-frequency property
	- Fixed #size-cell to 1 as expected by the schema
	- Also update the ranges property and the frame reg property

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 9e10d7a6b5a2..50b5993a2460 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -217,6 +217,19 @@ timer {
 			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
 	};
 
+	timer@2a810000 {
+		compatible = "arm,armv7-timer-mem";
+		reg = <0x0 0x2a810000 0x0 0x10000>;
+		ranges = <0 0x0 0x2a820000 0x20000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		frame@2a830000 {
+			frame-number = <1>;
+			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+			reg = <0x10000 0x10000>;
+		};
+	};
+
 	pmu {
 		compatible = "arm,armv8-pmuv3";
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1


