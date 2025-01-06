Return-Path: <devicetree+bounces-135745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A9488A01FF1
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 08:34:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 296E018848E7
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 07:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56B252FC52;
	Mon,  6 Jan 2025 07:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="IICE27q7"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5494184F;
	Mon,  6 Jan 2025 07:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736148871; cv=none; b=pAjDpdwDw5jaDaQOGFI0/b9P/gyOibaIXg5N+s88q85xIZvndrUTt4s5rAmXUbLL28kteIynjIJbQ7PebN+SJN1Q+YGhe41i5CaNat+M0gZIO1P6jQDEd5s0AYA6CjSJaXrAZfbctP8IpFrJekbE4feX+AFpWNDKJVRfr7Qv2Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736148871; c=relaxed/simple;
	bh=oNAfYWZHFhfq9gPblM5T/IQkg/S7CkyveCZjO12PMik=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=CENxrpeuL8pvMXKuYIJWMwFKvp/D/VyhtB19oC4X7rUb40XaIlO3151hKS/Nmw9GmBTtLBT2pVxhRg310yrSYn7CPNTtDhEuuemIAHtCZvbXvnSapPs8Ps82GBEpWA1ZcoAv+pS2ZDUqvtqpkoYY0wXifrFGp9YTEgtCSQzQwPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=IICE27q7; arc=none smtp.client-ip=198.175.65.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736148870; x=1767684870;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=oNAfYWZHFhfq9gPblM5T/IQkg/S7CkyveCZjO12PMik=;
  b=IICE27q7ilflyB6dfwXhSQLf6Jc/rgsAQ/JxZawVkSoWBrx6IhIpBTpU
   roBJXW6r7mxXY0K6Hrv2VBrswv6JiyF9GjJ6aG1P2gJkM4D1cdqBXhcne
   dgHdU0Ab2MfcB3iDv0A1bgSO+6qNrYCMCfpGSPTpWjm+QJxUwMgB2Jnlg
   kMHALTattexxlkH13oEz4DN2uJp/iePGl20YOfGbbAKhoLe4dXrcT5tE6
   XFv0lfjuuZLgky3H3pdUUDqvlotNuAhTmeNhKEvkuHEM8Zz3ZU5H0rpLT
   u4K65u+v6pmEkQGdwI6eKqTaBHFD+H1kDGKvMYTeHwXDqmCt+5dfLa3If
   w==;
X-CSE-ConnectionGUID: FxZwzw88QVyrftmHZ5nbCw==
X-CSE-MsgGUID: JEouuj9TRcCNUPqq+kHbkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="47275568"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; 
   d="scan'208";a="47275568"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jan 2025 23:34:29 -0800
X-CSE-ConnectionGUID: xMA/V/MUSquiMoRJMzfGlw==
X-CSE-MsgGUID: BfXJZZGBTnmrze7F+7GMQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; 
   d="scan'208";a="102556729"
Received: from pg15swiplab1181.png.altera.com ([10.244.232.167])
  by fmviesa008.fm.intel.com with ESMTP; 05 Jan 2025 23:34:27 -0800
From: niravkumar.l.rabara@intel.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	niravkumar.l.rabara@intel.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: socfpga: agilex: Add dma channel id for spi
Date: Mon,  6 Jan 2025 15:31:10 +0800
Message-Id: <20250106073110.2460870-1-niravkumar.l.rabara@intel.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>

Add DMA channel ids for spi0 and spi1 nodes in device tree.

Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
---

changes in v2:
- Include missing space.

 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 1235ba5a9865..616259447c6f 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -457,6 +457,8 @@ spi0: spi@ffda4000 {
 			reg-io-width = <4>;
 			num-cs = <4>;
 			clocks = <&clkmgr AGILEX_L4_MAIN_CLK>;
+			dmas = <&pdma 16>, <&pdma 17>;
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -471,6 +473,8 @@ spi1: spi@ffda5000 {
 			reg-io-width = <4>;
 			num-cs = <4>;
 			clocks = <&clkmgr AGILEX_L4_MAIN_CLK>;
+			dmas = <&pdma 20>, <&pdma 21>;
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
-- 
2.25.1


