Return-Path: <devicetree+bounces-137419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F30A08F77
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 12:32:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C3A6A1888A18
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 11:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAF3A20C47A;
	Fri, 10 Jan 2025 11:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="OE3U2qC9"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F5920ADFF;
	Fri, 10 Jan 2025 11:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736508617; cv=none; b=RAaQ/J38E1iEpz2rCquedGrTyPDqr/56y9zax0xrsMYZy2m4Irw/9aslOi1QfpJyh1B56T+mwdgSHcfAPeWtQBKXyWO6M9ruWdfFhy8NOGbtCTzAcWRKbjWp3a48K/3WmZp1fsdi5jcmx9rf1YV886+F+csKoD09mo22L4cEekg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736508617; c=relaxed/simple;
	bh=ncvOBp1G28yV0qvok4auutoNJFjt8SDloW3TqJL32T0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=LMdVU3++XmpBVv11I36Mvdpej1Z2WJe5pskeFBNlxLRDcX/EE9EZ/Ch6wF09/vfTJ/mlNfHGh2Xlb1rJylwHVj7O7vuhYsYBtoDjhXOXr47BNkH+XfvIU/FB0jRi517CIQx32GW7suNVcKgspGQmHFpW9oe4g4cRU85j/DZj5TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=OE3U2qC9; arc=none smtp.client-ip=192.198.163.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736508616; x=1768044616;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=ncvOBp1G28yV0qvok4auutoNJFjt8SDloW3TqJL32T0=;
  b=OE3U2qC9nRAHCQurW7pr/f9wOWzvua058683v7LkGDfpmICIm6i+Syv3
   n2fTg9Wu0llkMmW057t1QHe+efT/7Y9G4obAnbXfXmeqljrKpGPYSvjLT
   KBT/9D/MXfZMDWINMrd+imziKc14J1uzjKGh+aVUJvLuQLeSd3XowlrqH
   ovhG2gw5EAJatv77xhu5o8KhnSl7IiVCNqSVJ3gkiCow9/hpHlKg/hiz0
   QMGIfCIx6goiHdQJbsfISzcon9WvaiVod0Y1z7yd8L+QQTbeT1lQiwR2l
   5CWcCFShU6GhR4dKJl5o164w9FbTRme6sbaQZSzJFktH4gE/7UoM1y2DK
   g==;
X-CSE-ConnectionGUID: x0EYRv7TQGejjXH1Q2kmtQ==
X-CSE-MsgGUID: 7R8UvKwfTIKAJz4eR4N96g==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="54339653"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; 
   d="scan'208";a="54339653"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jan 2025 03:30:15 -0800
X-CSE-ConnectionGUID: E0xe+VlcTRmNfCkwAqHz8w==
X-CSE-MsgGUID: /RwU2LvMS0OGbTPHxHr5Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; 
   d="scan'208";a="103897410"
Received: from pg15swiplab1181.png.altera.com ([10.244.232.167])
  by fmviesa008.fm.intel.com with ESMTP; 10 Jan 2025 03:30:13 -0800
From: niravkumar.l.rabara@intel.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	niravkumar.l.rabara@intel.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: kernel test robot <lkp@intel.com>
Subject: [PATCH] arm64: dts: socfpga: stratix10_swvp: remove invalid sysmgr properties
Date: Fri, 10 Jan 2025 19:26:54 +0800
Message-Id: <20250110112654.3475361-1-niravkumar.l.rabara@intel.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>

Removed invalid sys-mgr properties for stratix10 and fixed
dtbs_check warnings like:

socfpga_stratix10_swvp.dtb: sysmgr@ffd12000: cpu1-start-addr: False schema
does not allow 4291846704
from schema $id:
http://devicetree.org/schemas/soc/altera/altr,sys-mgr.yaml#
socfpga_stratix10_swvp.dtb: sysmgr@ffd12000: 'interrupts' does not match
any of the regexes: 'pinctrl-[0-9]+'
from schema $id:
http://devicetree.org/schemas/soc/altera/altr,sys-mgr.yaml#

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202501091748.L2W2RwE5-lkp@intel.com/
Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
---
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


