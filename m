Return-Path: <devicetree+bounces-135714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0405A01E84
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 05:28:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8C5087A1CAD
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 04:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F9A114D456;
	Mon,  6 Jan 2025 04:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="VnTa3iVn"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B198522A;
	Mon,  6 Jan 2025 04:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736137729; cv=none; b=uobX7xDJE90pQMxSL8g+Oiz5x8Z63CGwPShErxJIH15rgVptilUoc5USj6hhDWBEELzaq8hDNQs9SI0nOo8JvAphNoKfs+gaicffvf1Jbhm2KItTDgjfKI2YSogEyR4gY10TCkxqQ4NnU1s8UbB6aVZFovAj0C646UeXdUJg6lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736137729; c=relaxed/simple;
	bh=QM2FKT6L8MA2QOw5HbhCAaYSi5AJdIE5XYBLlXYjgh4=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=q/teQXSELdjxYxUuZleaCjKuNHHsxDArAX00miHOPhGCWF6xG4YobMtvS36Hy2FqJR7Uamw7pEQxo8MkeIZZFOJ/CWW6DcnBOG80zISfC0y1oMZ8dswBXKaTwe1EtCXI3Ks2VxeKrzfanzmv2ldu3Di01R3wQyRno/2yzYpJlBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=VnTa3iVn; arc=none smtp.client-ip=198.175.65.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736137728; x=1767673728;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=QM2FKT6L8MA2QOw5HbhCAaYSi5AJdIE5XYBLlXYjgh4=;
  b=VnTa3iVnCWHpshf9AVZLxcQHkU7bCh+YGn6LOzYOWE7UY2zDrdw/t520
   E0VXqiLOiXonjTfMrdHpaYJHkXk5fqFDsVRvGsbuZyrYEEUlG/8ZG5Bzd
   x1cVCe9jMh56mDCCyMOP0n+Nh1nFOLRjAeR5V7rnvVoIh7Dup9bPZLmR+
   bAHuLBMozsTWfAXKXjIvIHrJnNr1HU+9Dh5M6VyQs7uf98+TG2kEePHGo
   cGLaY1qFegEF7Vgs4C97XYTwi4PSEotYdON07QMxKWan7KjUJ6QH0O1GC
   T8ewXoMM+3KuzZbhhAW0NA8iUCUsUxEMpeauBU02lX/gZ8R0x3+HGK3im
   g==;
X-CSE-ConnectionGUID: pVSFChD5SGCnGRcSIgQ1HQ==
X-CSE-MsgGUID: 9wr676eeTTurhIFh9GaQmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="47632033"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; 
   d="scan'208";a="47632033"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jan 2025 20:28:47 -0800
X-CSE-ConnectionGUID: 1MBrvQt8QR2p83cdbn0q+A==
X-CSE-MsgGUID: nek36s9aTNKLJtkXvyCGdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; 
   d="scan'208";a="102519230"
Received: from pg15swiplab1181.png.altera.com ([10.244.232.167])
  by fmviesa008.fm.intel.com with ESMTP; 05 Jan 2025 20:28:44 -0800
From: niravkumar.l.rabara@intel.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	niravkumar.l.rabara@intel.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: socfpga: agilex: Add dma channel id for spi
Date: Mon,  6 Jan 2025 12:25:25 +0800
Message-Id: <20250106042525.2365520-1-niravkumar.l.rabara@intel.com>
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
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 1235ba5a9865..925b01f5c017 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -457,6 +457,8 @@ spi0: spi@ffda4000 {
 			reg-io-width = <4>;
 			num-cs = <4>;
 			clocks = <&clkmgr AGILEX_L4_MAIN_CLK>;
+			dmas = <&pdma 16>, <&pdma 17>;
+			dma-names ="tx", "rx";
 			status = "disabled";
 		};
 
@@ -471,6 +473,8 @@ spi1: spi@ffda5000 {
 			reg-io-width = <4>;
 			num-cs = <4>;
 			clocks = <&clkmgr AGILEX_L4_MAIN_CLK>;
+			dmas = <&pdma 20>, <&pdma 21>;
+			dma-names ="tx", "rx";
 			status = "disabled";
 		};
 
-- 
2.25.1


