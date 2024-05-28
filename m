Return-Path: <devicetree+bounces-69901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3085E8D1E84
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 16:23:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D0901C233EA
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 14:23:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A54116F8E9;
	Tue, 28 May 2024 14:23:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F77C16F84D
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 14:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716906192; cv=none; b=iV1Ax7sN10j8qcG61OWwI6dYrwyJBg7rMkAoXQ4xT+E/da+ziucyHeXkG2qwqW/3XL+S/l9x/RcnYHUDnqL5tSFmu+jkx41KXqY2ykqh4EwQg32g6O/Ujf9NzqAk/8rzp4Bp0Z5Y6btoBdrwBqigTvkv11q/K/I6gotScFqWaKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716906192; c=relaxed/simple;
	bh=Q+HUSFIaQCnoAh3HuUCVl9eO8oXc+vQzx/ITPABQ/3U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NgriCWVhZTCxhsdMuHj11qKBMvyh4oQQE6ClapgB8DZv+zZpmNK/pSxniNvDHzsaJBzfJXFuwSh/IcrXA9Z76Cx+xtNnTl0O0CLyrt5kg4xmO9eSMRQ/UQqgJQm3R/Qs9RnaPs6rkMLxDsmkgrfiMHnVqfFBJbY4LkuJlxsBSIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1sBxjB-0008WT-2M; Tue, 28 May 2024 16:23:01 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 28 May 2024 16:22:54 +0200
Subject: [PATCH 2/2] arm64: zynqmp: Rename fpga-full to fpga-region
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240528-zynqmp-dt-v1-2-a5db9054885a@pengutronix.de>
References: <20240528-zynqmp-dt-v1-0-a5db9054885a@pengutronix.de>
In-Reply-To: <20240528-zynqmp-dt-v1-0-a5db9054885a@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Michal Simek <michal.simek@amd.com>
Cc: Michael Tretter <m.tretter@pengutronix.de>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
X-Mailer: b4 0.12.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The "fpga-region" compatible expects a node name "fpga-region".

Checking the ZynqMP device trees prints the following warning:

	fpga-full: $nodename:0: 'fpga-full' does not match '^fpga-region(@.*|-([0-9]|[1-9][0-9]+))?$'

Rename the node accordingly.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 511a786c4b8b..51235e6b6b4f 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -255,7 +255,7 @@ timer {
 			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
 	};
 
-	fpga_full: fpga-full {
+	fpga_full: fpga-region {
 		compatible = "fpga-region";
 		fpga-mgr = <&zynqmp_pcap>;
 		#address-cells = <2>;

-- 
2.39.2


