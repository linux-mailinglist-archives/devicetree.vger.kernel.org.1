Return-Path: <devicetree+bounces-139336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8C5A15312
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 16:46:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 06D9B7A1AFE
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 15:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC6ED17E8E2;
	Fri, 17 Jan 2025 15:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="C9lc6Z2v"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC20C13AA20;
	Fri, 17 Jan 2025 15:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737128769; cv=none; b=HokF4pKKGOjAcGbX0DaNdIydii1SSclkVBTiEOk0Hj+yUMJ92/8tec7yOUtRMWjboZjPJFTBcH0jZZ3UI1hghco6uyuen2+FMigdp/RFH9BG7LGszqXvkPL2iHzxoKB086l4nYraNPmrmERWYZ3+igL1REwFOUSN7XxkyzwuJVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737128769; c=relaxed/simple;
	bh=hzNdisU+40M6HEH6Ov9u9ww44tOCxEnupR43avUDKac=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=M0vrYkHcgV5mWkeg0pgXA5P8UHjLiQ8ZI0aCxeqBxAjuUDyuKctn14rjNWOhiiSVGWMTnKBIuQIOUlTGI8jDPfp29Xd5+sThuZB+l7fxhTT12kPYEd5y36+pPA8v2p3fHJQ5Iets8eXv7sBFV7tfIYMok7MDo5kmz2JJv382mTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=C9lc6Z2v; arc=none smtp.client-ip=198.175.65.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1737128768; x=1768664768;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=hzNdisU+40M6HEH6Ov9u9ww44tOCxEnupR43avUDKac=;
  b=C9lc6Z2vBKyVJzDw6O6ANzmV/8B+wfVtPa/gQDJ3NHqO0s5Q8F8WbqIq
   TmrdXzCeC243cg+BwPwAhvoRwstLq8Ms49wPNyqsCtk9gN/osAc/x4ZjH
   Ss3RnDgBa6MI82B2H8CmdtrsWDqUi2+D6uwALmyhIl03LdbyQwDuJgJY9
   9X674ai5vsg7SPvKnKEQM5BcDFW2cKITr2dI6gTTlYmD+oWsQUXiHlIRM
   C2YEpDDSvSNBkdF3XUNccxyFMTKFhRTSDzxdBrYow+m7ErksSAnQxQqHv
   TT3ovgENaKykYSQpryfsdx8tNRZUs/do/tvRJxF8r5lhbO0CS0wB8vz2B
   w==;
X-CSE-ConnectionGUID: vDNghX3fQ7q9BENymFWw7Q==
X-CSE-MsgGUID: 0ZO/VGacTESEpA0NocAO8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="48054831"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; 
   d="scan'208";a="48054831"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jan 2025 07:46:07 -0800
X-CSE-ConnectionGUID: qwyK7pPFRca+P2T7VmEw3Q==
X-CSE-MsgGUID: c0vdm9NVQxq0dkdWoH0FXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208";a="143115783"
Received: from pg15swiplab1181.png.altera.com ([10.244.232.167])
  by orviesa001.jf.intel.com with ESMTP; 17 Jan 2025 07:46:04 -0800
From: niravkumar.l.rabara@intel.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	niravkumar.l.rabara@intel.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: kernel test robot <lkp@intel.com>
Subject: [PATCH] ARM: dts: socfpga: remove syscon compatible string for sysmgr node
Date: Fri, 17 Jan 2025 23:42:44 +0800
Message-Id: <20250117154244.4079614-1-niravkumar.l.rabara@intel.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>

The SoCFPGA System Manager(sysmgr) dt bindings do not use the syscon
compitible, nor does the Linux system manager driver rely on it.
Remove "syscon" for Arria5, Arria10 and Cyclon5 sysmgr node and fixed
dtbs_check warnings like:

socfpga_arria5_socdk.dtb: sysmgr@ffd08000: compatible: 'oneOf' conditional failed, one must be fixed:
   ['altr,sys-mgr', 'syscon'] is too long
   'altr,sys-mgr-s10' was expected
   'altr,sys-mgr' was expected
   from schema $id: http://devicetree.org/schemas/soc/altera/altr,sys-mgr.yaml#

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202501102323.Xnte2yhi-lkp@intel.com/
Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
---
 arch/arm/boot/dts/intel/socfpga/socfpga.dtsi         | 2 +-
 arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
index 35be14150f41..f124fb72e260 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
@@ -853,7 +853,7 @@ spi1: spi@fff01000 {
 		};
 
 		sysmgr: sysmgr@ffd08000 {
-			compatible = "altr,sys-mgr", "syscon";
+			compatible = "altr,sys-mgr";
 			reg = <0xffd08000 0x4000>;
 		};
 
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
index 6b6e77596ffa..015120fb4b02 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
@@ -792,7 +792,7 @@ scu: snoop-control-unit@ffffc000 {
 		};
 
 		sysmgr: sysmgr@ffd06000 {
-			compatible = "altr,sys-mgr", "syscon";
+			compatible = "altr,sys-mgr";
 			reg = <0xffd06000 0x300>;
 			cpu1-start-addr = <0xffd06230>;
 		};
-- 
2.25.1


