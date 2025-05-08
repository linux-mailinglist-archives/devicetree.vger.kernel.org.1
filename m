Return-Path: <devicetree+bounces-174996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 703A4AAF7D8
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 12:32:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58A769E20E9
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 10:32:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED2D220C005;
	Thu,  8 May 2025 10:32:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AED617A310
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 10:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746700359; cv=none; b=H20mnqiV+5Z+H5PmJoMuG7bQh52dzvN1P3wkIjmx7cl42kgXC2ljkxvdhd/FKEuFhGkQmYKU51ewWVUSmkGApX7bn5WOhBbQ2PDtdzbYMKxgAyGnTIVcmahYNJBqo6Qx1w7AZuL2s7yMVzJvL6rR137M6b6+3uYEe4NS+K8NUfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746700359; c=relaxed/simple;
	bh=m8BA9jW+uCD4Jac/bzo5nRkgLSJsGA1ijeytPQgeIdI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=M3XQC9wcPz997QsfY7BrVl1otXGhtrfXbyoi6m1COoYZhVBtpbaLuON9s+2W8IxYucGMWynbvRv2H7IWL+lPEjCZq5Mx7zIZenDk1V4Yk/uDaVkVr2V2gcG3ws7gCbZlECX6n+nly4vLM1V/VfV/zA04vhPaeWa9jUd9CYPn6jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com; spf=none smtp.mailfrom=foss.arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=foss.arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 38411106F;
	Thu,  8 May 2025 03:32:27 -0700 (PDT)
Received: from usa.arm.com (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 717DC3F5A1;
	Thu,  8 May 2025 03:32:36 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Leo Yan <leo.yan@arm.com>
Subject: [PATCH 2/3] arm64: dts: fvp: Add system timer for broadcast during CPU idle
Date: Thu,  8 May 2025 11:32:24 +0100
Message-Id: <20250508103225.354925-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250508103225.354925-1-sudeep.holla@arm.com>
References: <20250508103225.354925-1-sudeep.holla@arm.com>
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

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index ff4e6f4d8797..c1e22ffca623 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -249,6 +249,20 @@ timer {
 			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
 	};
 
+	timer@2a810000 {
+		compatible = "arm,armv7-timer-mem";
+		reg = <0x0 0x2a810000 0x0 0x10000>;
+		clock-frequency = <100000000>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		frame@2a830000 {
+			frame-number = <1>;
+			interrupts = <0 26 4>;
+			reg = <0x0 0x2a830000 0x0 0x10000>;
+		};
+	};
+
 	pmu {
 		compatible = "arm,armv8-pmuv3";
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1


