Return-Path: <devicetree+bounces-139243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 239B3A14C46
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 10:41:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 86E24188B353
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 09:42:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A60921F7912;
	Fri, 17 Jan 2025 09:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="VPqQkqPZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 927A48C11;
	Fri, 17 Jan 2025 09:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737106914; cv=none; b=uuScOfa3J7aIvALc63uRIENW/OlWYuGaNC1Aa59RnfkO0TRMOL1SZF3cDav/3t8UXEG1dAABlLiW6FmIJBWQPCS6+v8mPnsaTyO3a+6xgZr0/Zk6LHz//CTrH9KLp6SobPPV29LJ33n7NEh70LCRu/df2pgapn0JcQupmT8sK6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737106914; c=relaxed/simple;
	bh=zFEz1gM0DnvRPyPhsr2oerwFl7Th82P6SxrHrG3nW1k=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=RWB7DB3wUhKKb50Yx9gKqsyvP+Bq/uFVqF4NsDWI/Zyt1dvQq9uUbR/thTYtuNVemsNbsdOzhUu4ivlYFD5Al0KDbwdNfBk45PJ1xBxKCZvBapl0Lac04Shhv4q9zLijzyoLZMwMbb5CJaRfzaYrQmJxx7OieqmhNML57TAOJsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=VPqQkqPZ; arc=none smtp.client-ip=192.198.163.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1737106912; x=1768642912;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=zFEz1gM0DnvRPyPhsr2oerwFl7Th82P6SxrHrG3nW1k=;
  b=VPqQkqPZObdiGWqC5d4tc6aLU+xp5FRPHmHJlVWVGdv83Y2mBar2rwep
   w/SvpurEbsq0/9oqGLN4xtnn3PJaycCtpf57ferKOlqvwWFpJxNB1Z5RA
   f3bjtB5IttcjAHEnDXz5bXbvOV55gQofuh3xZ4ls6SWM8tSf8mnQb6BLO
   +5ixP1GeSN8GRiV3WkFICGoCFaUxOufzcN8JfvykOEv3F1S45lys7RWnh
   WuZPtPhuU9zglW3e8tI5ihfNcvnjUY03+SVKdkHhsDHjihgfRhdipttts
   5IRml8GNtn1T5OPoOoMzQ6lYe7yhLZmud8SluaqjjqbNbFqXg09/U5xb8
   g==;
X-CSE-ConnectionGUID: qyzZRW3fRseuatte94rt9w==
X-CSE-MsgGUID: ERPHg9GKR/+oT3vdF+rGgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="41465366"
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; 
   d="scan'208";a="41465366"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jan 2025 01:41:52 -0800
X-CSE-ConnectionGUID: yJA7x0QIRkiUb/d2KXkM1A==
X-CSE-MsgGUID: fN0MvJeHTXW4O2tZRQdDXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; 
   d="scan'208";a="105620763"
Received: from pg15swiplab1181.png.altera.com ([10.244.232.167])
  by fmviesa006.fm.intel.com with ESMTP; 17 Jan 2025 01:41:50 -0800
From: niravkumar.l.rabara@intel.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	niravkumar.l.rabara@intel.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: kernel test robot <lkp@intel.com>
Subject: [PATCH v2] arm64: dts: socfpga: stratix10_swvp: remove invalid sysmgr properties
Date: Fri, 17 Jan 2025 17:38:27 +0800
Message-Id: <20250117093827.4063125-1-niravkumar.l.rabara@intel.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>

Remove invalid sys-mgr properties for stratix10 and fixed
dtbs_check warnings like:

socfpga_stratix10_swvp.dtb: sysmgr@ffd12000: cpu1-start-addr: False schema does not allow 4291846704
   from schema $id: http://devicetree.org/schemas/soc/altera/altr,sys-mgr.yaml#

socfpga_stratix10_swvp.dtb: sysmgr@ffd12000: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
   from schema $id: http://devicetree.org/schemas/soc/altera/altr,sys-mgr.yaml#

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202501091748.L2W2RwE5-lkp@intel.com/
Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
---

changes in v2:
- Use "Remove" instead of "Removed" in the commit message.
- Warning message without text wrapping in the commit message.  

 arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
index 0d837d3e65a5..fce1dc2ebad0 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
@@ -110,6 +110,4 @@ &rst {
 
 &sysmgr {
 	reg = <0xffd12000 0x1000>;
-	interrupts = <0x0 0x10 0x4>;
-	cpu1-start-addr = <0xffd06230>;
 };
-- 
2.25.1


