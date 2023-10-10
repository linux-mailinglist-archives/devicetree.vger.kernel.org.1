Return-Path: <devicetree+bounces-7163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AEE7BF746
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 11:27:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7A8D281BE9
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 09:27:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9931D171DB;
	Tue, 10 Oct 2023 09:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="CMXjPxEE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E218E171CB
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 09:27:24 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF79694;
	Tue, 10 Oct 2023 02:27:22 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39A9R5tl107121;
	Tue, 10 Oct 2023 04:27:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696930025;
	bh=D2IGiPDYKpC0zOzjj5FGs/m5JW+z/i2Nu5bmrKfakq8=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=CMXjPxEEip6I+SASk7Cyh0ShknYBPJf0owDpZtN6H8laJgdxbiuofelL15kqpuqSa
	 IvgklUNZKernw8e+V5EmytyaeZU9/ps7PW7RibfsnqgAszmHjKTDAjSBg31Bo4B7XC
	 w2PM6lTVYNutWHd8H3M5gTjx3wJ6b8IxQpXHq0SQ=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39A9R5u7096963
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 10 Oct 2023 04:27:05 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 10
 Oct 2023 04:27:05 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 10 Oct 2023 04:27:05 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39A9R4HT079451;
	Tue, 10 Oct 2023 04:27:05 -0500
From: Vaishnav Achath <vaishnav.a@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <vaishnav.a@ti.com>, <u-kumar1@ti.com>
Subject: [PATCH 2/2] arm64: dts: ti: k3-j784s4-main: Add BCDMA instance for CSI2RX
Date: Tue, 10 Oct 2023 14:57:00 +0530
Message-ID: <20231010092700.2089-3-vaishnav.a@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231010092700.2089-1-vaishnav.a@ti.com>
References: <20231010092700.2089-1-vaishnav.a@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

J784S4 has a dedicated BCDMA controller for the Camera Serial Interface.
Events from the BCDMA controller instance are routed through the
main UDMA interrupt aggregator as unmapped events. Add the node for
the DMA controller and keep it disabled by default.

See J784S4 Technical Reference Manual (SPRUJ52)
for further details: http://www.ti.com/lit/zip/spruj52

Signed-off-by: Vaishnav Achath <vaishnav.a@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
index efed2d683f63..a772f563c1ed 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
@@ -703,6 +703,7 @@
 			ti,sci = <&sms>;
 			ti,sci-dev-id = <321>;
 			ti,interrupt-ranges = <0 0 256>;
+			ti,unmapped-event-sources = <&main_bcdma_csi>;
 		};
 
 		secure_proxy_main: mailbox@32c00000 {
@@ -1000,6 +1001,22 @@
 			ti,sci-rm-range-rflow = <0x00>; /* GP RFLOW */
 		};
 
+		main_bcdma_csi: dma-controller@311a0000 {
+			compatible = "ti,j721s2-dmss-bcdma-csi";
+			reg = <0x00 0x311a0000 0x00 0x100>,
+				<0x00 0x35d00000 0x00 0x20000>,
+				<0x00 0x35c00000 0x00 0x10000>,
+				<0x00 0x35e00000 0x00 0x80000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt", "ringrt";
+			msi-parent = <&main_udmass_inta>;
+			#dma-cells = <3>;
+			ti,sci = <&sms>;
+			ti,sci-dev-id = <281>;
+			ti,sci-rm-range-rchan = <0x21>;
+			ti,sci-rm-range-tchan = <0x22>;
+			status = "disabled";
+		};
+
 		cpts@310d0000 {
 			compatible = "ti,j721e-cpts";
 			reg = <0x00 0x310d0000 0x00 0x400>;
-- 
2.17.1


