Return-Path: <devicetree+bounces-69902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E22D88D1E86
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 16:23:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3E8ACB22AB3
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 14:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55C7516F8FC;
	Tue, 28 May 2024 14:23:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F73216F829
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 14:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716906192; cv=none; b=jU/LXH4MsS1D4uR7jtG6xm/tuam0doRUUnjh6vKkoM4k4FHKOu2lDz8Z1BZYBN4VxK0ERa84TcMxVEx/OnRXvQhg8E3gr9XeIXOw46fWgyPPZOBiFfWUzBhbdxFFlgE9jRrvc+gImgCNUaBXsRls4iIqMfjY6LEqFyuQlNksv54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716906192; c=relaxed/simple;
	bh=OqAH9A6jysQMzmD2Slv1gfmgh34rslfP5aU4pCwM94s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dsOMsFg1wjbGosZ5cxLTIEnJS+arNjut+rM3Z+PbCKznwnZKDZkUM93vUXL5ZPOKLfHlPCFWdj7JBdBQfggbPWDqlK61iH2QLP4wLeTlk1ay1t4fh7YbeeTx3RysVuh1jZtzOgCcFLMhVyw9oiRPVxD7wo+TEXABLaEUKhvVAJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1sBxjB-0008WT-1P; Tue, 28 May 2024 16:23:01 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 28 May 2024 16:22:53 +0200
Subject: [PATCH 1/2] arm64: zynqmp: Align nvmem-firmware with dt-binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240528-zynqmp-dt-v1-1-a5db9054885a@pengutronix.de>
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

The xlnx,zynqmp-firmware.yaml binding defines the soc-nvmem property
instead of firmware-nvmem:

	zynqmp-firmware: 'nvmem-firmware' does not match any of the regexes: 'pinctrl-[0-9]+'

Furthermore, the xlnx,zynqmp-nvmem.yaml uses an nvmem-layout subnode for
the layout definition:

	nvmem-firmware: Unevaluated properties are not allowed ('soc-revision@0' was unexpected)

Align the node with the specified dt-binding.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index d99830c9b85f..511a786c4b8b 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -207,13 +207,16 @@ zynqmp_power: power-management {
 				mbox-names = "tx", "rx";
 			};
 
-			nvmem-firmware {
+			soc-nvmem {
 				compatible = "xlnx,zynqmp-nvmem-fw";
-				#address-cells = <1>;
-				#size-cells = <1>;
-
-				soc_revision: soc-revision@0 {
-					reg = <0x0 0x4>;
+				nvmem-layout {
+					compatible = "fixed-layout";
+					#address-cells = <1>;
+					#size-cells = <1>;
+
+					soc_revision: soc-revision@0 {
+						reg = <0x0 0x4>;
+					};
 				};
 			};
 

-- 
2.39.2


