Return-Path: <devicetree+bounces-136598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38770A05A01
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:35:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1C4D165552
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A61F61F8F17;
	Wed,  8 Jan 2025 11:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="R2NgBcMr"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC951F8F0C;
	Wed,  8 Jan 2025 11:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736335922; cv=none; b=ktybabkvbLFbrDdWCXslWGTCYKXDLYDoLEtoCBaNC4BJIjYTwsv8cme8XWujF7pIkmXF5xHMlitHrbWZUrtFzjMPmNIWBCV9SKDtUDriQhS7S/bg+uUojQmO28qrO+vVp3uQXtzAtwTPP6KL208FSHfsaW/iuru9vhygWaaZRXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736335922; c=relaxed/simple;
	bh=2zjG6/bakJO84dJ/C/Jn7YMZICkD1bL5ayIM5qinDuc=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=F9Ce+DbtrVPs86AjkA3/mGk2wOos3KIxkysBjmFV/vHj6ZSyOeguOCSbWNpJza7ozyd7x6lKJJLgBuWaKfKEia2Y0NjutguUVwKHtogrWRK0IxIu9LLfyRim8lVN2ZZh1jP5x1WKo9Zaryhq9NzsxF3puNElX7Xa0VU21nvTihY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=R2NgBcMr; arc=none smtp.client-ip=192.198.163.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736335918; x=1767871918;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=2zjG6/bakJO84dJ/C/Jn7YMZICkD1bL5ayIM5qinDuc=;
  b=R2NgBcMrq+I0yKE5FCh9tbUU6fINNTKNXi8lDS/MeB0Qh+CRADBn31e4
   wwGi9j2DqEFCPj0Qt6MBcpPKgSbdQRu/Bjd77YlW+umV4fauOCl6SnYWn
   RoZCRDXjX/oSaqpePs5oK3cD7WazmjsxqwhUrTNe/DVKNkYuwc21ibFsw
   HWbaveCv8vVxkDSexiR3MN2RmLQMxX5/7hW9xfX5aDncYpiILTGDcgdpq
   ugykBUjZvvAoUE+1y9A1L3GrCHiuVYiT13zTqA9eHGTetQl09WrRMgwh5
   godVRvfWOYv/70rVLyMB8surlwZGTKEthk7Xhqlyz381YusxAjS0IoE8n
   A==;
X-CSE-ConnectionGUID: JnCBsXC3RGiiQdPo08Cx4Q==
X-CSE-MsgGUID: e87clBKlQkaBvQigP9NA+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="36455962"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; 
   d="scan'208";a="36455962"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jan 2025 03:31:48 -0800
X-CSE-ConnectionGUID: f3ceqF8dRie1eIIIUJ42MQ==
X-CSE-MsgGUID: XGGrbwuMRqy2t91NuAz8kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; 
   d="scan'208";a="103563484"
Received: from pg15swiplab1181.png.altera.com ([10.244.232.167])
  by fmviesa009.fm.intel.com with ESMTP; 08 Jan 2025 03:31:47 -0800
From: niravkumar.l.rabara@intel.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	niravkumar.l.rabara@intel.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: socfpga: agilex5: add qspi flash node
Date: Wed,  8 Jan 2025 19:28:34 +0800
Message-Id: <20250108112834.2880709-1-niravkumar.l.rabara@intel.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>

Add Micron qspi nor flash node for Intel SoCFPGA Agilex5.

Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
---
 .../boot/dts/intel/socfpga_agilex5_socdk.dts  | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts
index c533e5a3a610..6760c088f174 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts
@@ -37,3 +37,36 @@ &usb0 {
 &watchdog0 {
 	status = "okay";
 };
+
+&qspi {
+	status = "okay";
+	flash@0 {
+		compatible = "micron,mt25qu02g", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <100000000>;
+		m25p,fast-read;
+		cdns,page-size = <256>;
+		cdns,block-size = <16>;
+		cdns,read-delay = <2>;
+		cdns,tshsl-ns = <50>;
+		cdns,tsd2d-ns = <50>;
+		cdns,tchsh-ns = <4>;
+		cdns,tslch-ns = <4>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			qspi_boot: partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x04200000>;
+			};
+
+			root: partition@4200000 {
+				label = "root";
+				reg = <0x04200000 0x0be00000>;
+			};
+		};
+	};
+};
-- 
2.25.1


