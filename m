Return-Path: <devicetree+bounces-15118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3D47E89A5
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 08:50:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 97F06B20BEB
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 07:50:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04BE179E3;
	Sat, 11 Nov 2023 07:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0E17496
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 07:50:34 +0000 (UTC)
Received: from mail-m17245.xmail.ntesmail.com (mail-m17245.xmail.ntesmail.com [45.195.17.245])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4D93111
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 23:50:31 -0800 (PST)
Received: from Vostro-3710.lan (unknown [58.61.140.31])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 5E1B98000A3;
	Sat, 11 Nov 2023 15:50:15 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Andy Gross <agross@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 1/1] arm64: dts: qcom: ipq6018: Add QUP5 SPI node
Date: Sat, 11 Nov 2023 15:50:03 +0800
Message-Id: <20231111075004.40478-2-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231111075004.40478-1-amadeus@jmu.edu.cn>
References: <20231111075004.40478-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZTEpOVhpJTRpKGk8aGE5DSVUTARMWGhIXJBQOD1
	lXWRgSC1lBWU5DVU1KVUpPS1VISllXWRYaDxIVHRRZQVlLVUtVS1VLWQY+
X-HM-Tid: 0a8bbd5c293db03akuuu5e1b98000a3
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PRg6Lzo5ODwxOQJOHRw1PhUR
	GhxPC0lVSlVKTUJCTUNCS0pNT0NLVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWU5D
	VU1KVUpPS1VISllXWQgBWUFJT0JPNwY+

Add node to support the QUP5 SPI controller inside of IPQ6018.
Some routers use this bus to connect SPI TPM chips.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index ec0a0ce1849e..2399d16f147e 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -527,6 +527,20 @@ blsp1_spi2: spi@78b6000 {
 			status = "disabled";
 		};
 
+		blsp1_spi5: spi@78b9000 {
+			compatible = "qcom,spi-qup-v2.2.1";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x0 0x078b9000 0x0 0x600>;
+			interrupts = <GIC_SPI 299 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&gcc GCC_BLSP1_QUP5_SPI_APPS_CLK>,
+				 <&gcc GCC_BLSP1_AHB_CLK>;
+			clock-names = "core", "iface";
+			dmas = <&blsp_dma 20>, <&blsp_dma 21>;
+			dma-names = "tx", "rx";
+			status = "disabled";
+		};
+
 		blsp1_i2c2: i2c@78b6000 {
 			compatible = "qcom,i2c-qup-v2.2.1";
 			#address-cells = <1>;
-- 
2.25.1


