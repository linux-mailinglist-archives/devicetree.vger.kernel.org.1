Return-Path: <devicetree+bounces-175174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F318CAB0031
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 18:19:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F4C91C21120
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 325E5280A52;
	Thu,  8 May 2025 16:19:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 861D422422D
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 16:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746721187; cv=none; b=QYC0d98prThqIR+SRp9uK1dj4hC//XxkqOfBVPd5U95fIm6dTponYAN4lXteNF00/RtlRpwgVq+Hu7X8wvglfTh7X48jKpe1gQ9VXH4A0y6yyc1/NCGdPSGOhk1AU22dMs3HYRAutVwJiidKbUAIpgRpURK6QdwLk5pftbyIk1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746721187; c=relaxed/simple;
	bh=GCo99rAVV51BJs+TcyAcxFUvi2UziSRVtSc8R79GV+E=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=L5uc+DDilW1IcrTQCWn/QHNri5fUs70acvLyrqiQn4vCtnxzEKIWDsRf0+bCdzXnbbvYzvQYBVxuke6vVYyr4kH2zsOn5sNXIZUwEC+2aysmy+2WiUlOy6pmvo6+HH8+RehCSTBoGyB5wo0ahBePFBklqoHV9CFtUxIW34tSBvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 52B141E2F;
	Thu,  8 May 2025 09:19:33 -0700 (PDT)
Received: from e132581.cambridge.arm.com (e132581.arm.com [10.1.196.87])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CF97A3F5A1;
	Thu,  8 May 2025 09:19:42 -0700 (PDT)
From: Leo Yan <leo.yan@arm.com>
To: Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: fvp: Add ETE and TRBE nodes for Rev C model
Date: Thu,  8 May 2025 17:19:07 +0100
Message-Id: <20250508161907.1152054-1-leo.yan@arm.com>
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
 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 62 +++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 2c2c9f45b3fe..d090badbdbd7 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -273,6 +273,68 @@ spe-pmu {
 		interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	ete0 {
+		compatible = "arm,embedded-trace-extension";
+		arm,coresight-loses-context-with-cpu;
+		cpu = <&cpu0>;
+		status = "disabled";
+	};
+
+	ete1 {
+		compatible = "arm,embedded-trace-extension";
+		arm,coresight-loses-context-with-cpu;
+		cpu = <&cpu1>;
+		status = "disabled";
+	};
+
+	ete2 {
+		compatible = "arm,embedded-trace-extension";
+		arm,coresight-loses-context-with-cpu;
+		cpu = <&cpu2>;
+		status = "disabled";
+	};
+
+	ete3 {
+		compatible = "arm,embedded-trace-extension";
+		arm,coresight-loses-context-with-cpu;
+		cpu = <&cpu3>;
+		status = "disabled";
+	};
+
+	ete4 {
+		compatible = "arm,embedded-trace-extension";
+		arm,coresight-loses-context-with-cpu;
+		cpu = <&cpu4>;
+		status = "disabled";
+	};
+
+	ete5 {
+		compatible = "arm,embedded-trace-extension";
+		arm,coresight-loses-context-with-cpu;
+		cpu = <&cpu5>;
+		status = "disabled";
+	};
+
+	ete6 {
+		compatible = "arm,embedded-trace-extension";
+		arm,coresight-loses-context-with-cpu;
+		cpu = <&cpu6>;
+		status = "disabled";
+	};
+
+	ete7 {
+		compatible = "arm,embedded-trace-extension";
+		arm,coresight-loses-context-with-cpu;
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


