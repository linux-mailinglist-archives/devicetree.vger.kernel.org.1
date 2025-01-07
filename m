Return-Path: <devicetree+bounces-136054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C54A03A4C
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 09:53:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D338161CA3
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 08:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E5471AAA10;
	Tue,  7 Jan 2025 08:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="QL5YGQtF"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F084133CA;
	Tue,  7 Jan 2025 08:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736239994; cv=none; b=W/SXP7KBZL7GQukZ5jWV0eJCbDGtnHgqe6MzK2uYONsiba/K8euXMncW3Xe0Q2EDzVAxXma6NiyBvUOytjYkQOo6J7f+zbb+wVzPEuOJa63sF2GFcBzjQR1GwCGhYrLVzj/gLZz++2ZVpscCK4vKZBV1qGjGk15BOBJ1rSjI6h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736239994; c=relaxed/simple;
	bh=xlVyBLCpQrwUDAmx1ICRCxa4whPFZar5sI+v8OCvqxs=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=BKb2cFkuXE1NvHALjQkFxooSZ0WaVH+Vc583HTdqxU17vgWCzWl8Sy1iAzZrEHAf0SoQoTmDw6wxvHsMQj7FRlRMhLAL3DwBJW/1Rf8A7/yRoedqSo/NbMjpD756EBrQRlytjIUDVRr1qMtx/Xc8D/34u7LKOyvjoMIeYUNEC/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=QL5YGQtF; arc=none smtp.client-ip=192.198.163.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736239991; x=1767775991;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=xlVyBLCpQrwUDAmx1ICRCxa4whPFZar5sI+v8OCvqxs=;
  b=QL5YGQtFvX2odGCOKv0c06aXqxjjLvK6uBbApzxTiAAuwPzaMIePFgC4
   G+DVan3GHC880gpPqqOrdiOSk4xq6svjr8t3yfl9l8L66aQj3ZfhoreAL
   Bc2e9FFvXOfAp/hBTa/F2qzF41d49TR/3sLQmYxlPUZOQV60ZTC8oajBI
   1DMKFl+5VZmohG9S5tL9fQkDyQXSJvUnQPSQ/289te+c1WUHWz3MmgGPI
   6g5em1qf8fnpnwsZD1VAu1cm4zqz4lv4i2dvfXtGvEhc0QcEP68G+hu9r
   USwjwzdtMMaD90TjeIuVSa4AJmS1W1LZMyj/3RHow4Z6Y93XJqt+iMJ0V
   A==;
X-CSE-ConnectionGUID: iWs83Y4nT2G7NT2S8TLzHw==
X-CSE-MsgGUID: 0xqlRgHUSX+svmXC0n9p4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="53949445"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; 
   d="scan'208";a="53949445"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jan 2025 00:53:09 -0800
X-CSE-ConnectionGUID: ETCv23ooSTieFlFnGzjbAw==
X-CSE-MsgGUID: fb53ka4jRe+CRKabgfIRTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; 
   d="scan'208";a="102509282"
Received: from pg15swiplab1181.png.altera.com ([10.244.232.167])
  by fmviesa006.fm.intel.com with ESMTP; 07 Jan 2025 00:53:07 -0800
From: niravkumar.l.rabara@intel.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	niravkumar.l.rabara@intel.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: socfpga: agilex5: add clock-names property to nand node
Date: Tue,  7 Jan 2025 16:49:55 +0800
Message-Id: <20250107084955.2750154-1-niravkumar.l.rabara@intel.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>

Cadence nand controller driver requires clock-names = "nf_clk" property.

Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
---
 arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
index 51c6e19e40b8..4357572e96e3 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
@@ -272,6 +272,7 @@ nand: nand-controller@10b80000 {
 			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clkmgr AGILEX5_NAND_NF_CLK>;
 			cdns,board-delay-ps = <4830>;
+			clock-names = "nf_clk";
 			status = "disabled";
 		};
 
-- 
2.25.1


