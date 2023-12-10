Return-Path: <devicetree+bounces-23618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE1C80BBE6
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 16:20:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 214A61C20862
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 15:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E52FC15E95;
	Sun, 10 Dec 2023 15:20:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m17244.xmail.ntesmail.com (mail-m17244.xmail.ntesmail.com [45.195.17.244])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 382D3F0;
	Sun, 10 Dec 2023 07:20:37 -0800 (PST)
Received: from amadeus-Vostro-3710.lan (unknown [113.118.189.146])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 4F7F08000A2;
	Sun, 10 Dec 2023 23:20:18 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Andy Gross <agross@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 1/1] arm64: dts: qcom: ipq8074: add MicroSD node
Date: Sun, 10 Dec 2023 23:20:15 +0800
Message-Id: <20231210152015.2243310-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTUIfVk1NSUJITBgZQkgeTVUTARMWGhIXJBQOD1
	lXWRgSC1lBWUpKSFVKSkNVSkNCVUpPTVlXWRYaDxIVHRRZQVlPS0hVSkpLSEpDVUpLS1VLWQY+
X-HM-Tid: 0a8c54509dc1b03akuuu4f7f08000a2
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OlE6TTo5TjwwFkwPFypKGBcp
	IxRPCy5VSlVKTEtJSUlKTUpCSUJKVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	SFVKSkNVSkNCVUpPTVlXWQgBWUFJT05CNwY+

Enable MicroSD card found on ipq8074 devices.
Tested fine when SD card IO voltage is 3.3v.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index a4f7ae35be27..4f23c4459112 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -422,6 +422,26 @@ sdhc_1: mmc@7824900 {
 			status = "disabled";
 		};
 
+		sdhc_2: mmc@7864900 {
+			compatible = "qcom,sdhci-msm-v4";
+			reg = <0x7864900 0x500>, <0x7864000 0x800>;
+			reg-names = "hc", "core";
+
+			interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hc_irq", "pwr_irq";
+
+			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
+				 <&gcc GCC_SDCC2_APPS_CLK>,
+				 <&xo>;
+			clock-names = "iface", "core", "xo";
+			resets = <&gcc GCC_SDCC2_BCR>;
+			max-frequency = <192000000>;
+			bus-width = <4>;
+
+			status = "disabled";
+		};
+
 		blsp_dma: dma-controller@7884000 {
 			compatible = "qcom,bam-v1.7.0";
 			reg = <0x07884000 0x2b000>;
-- 
2.25.1


