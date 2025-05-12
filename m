Return-Path: <devicetree+bounces-176375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB410AB3BB7
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 17:12:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77DDB17FC8F
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 15:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A21A239E96;
	Mon, 12 May 2025 15:12:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 708FA239E74
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 15:11:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747062720; cv=none; b=f2V3XAccf1Pe/IhdXYk9QqfJX+ketq5obOhSUwPFK1S5LDp1SQWii0+o/Gf/AiwPuHFk2WRoql/w/zBky2agu30TG04caPPr0VYQ9icm+o4QEUwJILcUKQK1826dXX3GbniE/uX5N5WHRgMhJ7cnvcKdAfpaN7gZY9UGGBhNT/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747062720; c=relaxed/simple;
	bh=FzN6VeH89T0VVRghod4o2nbGfx+vSsaCp0olM+9hAFA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=qZVZmwe0ydKrWv2lE3jBDG0ZwKIFmdrp6rs7WAXHdK5oyVT4xpP39SCeM39qASR51CbFqL+wzNAX5mMe/w16MzNGTNaxa0XzW9f4trAnUKDffJNJTzvuCbIDDwjwkffq+DSOqQwC2pYSxQqlP8HXn4XQxQSrLkrV+9ZHLhALPMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AECE114BF;
	Mon, 12 May 2025 08:11:47 -0700 (PDT)
Received: from e132581.cambridge.arm.com (e132581.arm.com [10.1.196.87])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 56A8A3F63F;
	Mon, 12 May 2025 08:11:57 -0700 (PDT)
From: Leo Yan <leo.yan@arm.com>
To: Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Suzuki K Poulose <suzuki.poulose@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Leo Yan <leo.yan@arm.com>
Subject: [PATCH v2] arm64: dts: fvp: Add ETE and TRBE nodes for Rev C model
Date: Mon, 12 May 2025 16:11:49 +0100
Message-Id: <20250512151149.13111-1-leo.yan@arm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The FVP Rev C model includes CoreSight ETE and TRBE support.  These
features can be enabled by specifying parameters when launching the
model:

  -C cluster0.has_ete: 1
  -C cluster1.has_ete: 1
  -C cluster0.has_trbe: 1
  -C cluster1.has_trbe: 1

This change adds device tree bindings for the ETE and TRBE nodes.  They
are disabled by default to prevent kernel warnings from failed driver
probes, as the model does not enable the features unless explicitly
specified.

Signed-off-by: Leo Yan <leo.yan@arm.com>
---

Changes from v1:
- Removed the property "arm,coresight-loses-context-with-cpu" from ETE
  nodes.
- Updated ETE node name for compliance with the DT spec.

 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 54 +++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 9e10d7a6b5a2..a71098f74609 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -227,6 +227,60 @@ spe-pmu {
 		interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	ete-0 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu0>;
+		status = "disabled";
+	};
+
+	ete-1 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu1>;
+		status = "disabled";
+	};
+
+	ete-2 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu2>;
+		status = "disabled";
+	};
+
+	ete-3 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu3>;
+		status = "disabled";
+	};
+
+	ete-4 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu4>;
+		status = "disabled";
+	};
+
+	ete-5 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu5>;
+		status = "disabled";
+	};
+
+	ete-6 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu6>;
+		status = "disabled";
+	};
+
+	ete-7 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu7>;
+		status = "disabled";
+	};
+
+	trbe {
+		compatible = "arm,trace-buffer-extension";
+		interrupts = <GIC_PPI 15 IRQ_TYPE_LEVEL_LOW>;
+		status = "disabled";
+	};
+
 	pci: pci@40000000 {
 		#address-cells = <0x3>;
 		#size-cells = <0x2>;
-- 
2.34.1


