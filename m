Return-Path: <devicetree+bounces-19606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2902C7FB6CE
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 11:10:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9370282BFB
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 10:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8BBF4D588;
	Tue, 28 Nov 2023 10:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="CfcbSztL"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 361D010A;
	Tue, 28 Nov 2023 02:10:46 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3ASAAZdw023076;
	Tue, 28 Nov 2023 04:10:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701166235;
	bh=Qm78XzrRYE6dT0oIbU5WDgyx6hn0YmjpOZVu9WaEDzA=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=CfcbSztL22xRlJ+Q7aQIibriYQnteggB2w+4c+kI/m42BAJnw534NiQCGWceK6ht5
	 k8bp5sxFScXkLzNsXlBTiKXcRrBhJPAK1xX3c2a0JO3q3jUPbYVD7tnhDTDVLbURJa
	 Jr7AY9K9uoetcISEptzi1Qq4cCVY7rQo6YsFK8H0=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3ASAAZ54070686
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 28 Nov 2023 04:10:35 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 28
 Nov 2023 04:10:34 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 28 Nov 2023 04:10:34 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3ASAAXZB125468;
	Tue, 28 Nov 2023 04:10:34 -0600
From: Jai Luthra <j-luthra@ti.com>
Date: Tue, 28 Nov 2023 15:39:49 +0530
Subject: [PATCH v3 7/9] arm64: dts: ti: k3-am62a7-sk: Enable camera
 peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231128-csi_dts-v3-7-0bb11cfa9d43@ti.com>
References: <20231128-csi_dts-v3-0-0bb11cfa9d43@ti.com>
In-Reply-To: <20231128-csi_dts-v3-0-0bb11cfa9d43@ti.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, Aradhya Bhatia <a-bhatia1@ti.com>,
        Devarsh
 Thakkar <devarsht@ti.com>,
        Vaishnav Achath <vaishnav.a@ti.com>,
        Julien Massot
	<julien.massot@collabora.com>,
        Martyn Welch <martyn.welch@collabora.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
        Jai Luthra
	<j-luthra@ti.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1291; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=s5NY99U26dYVT2Xd40MgpPFPJ01pwWoG1kV6T+WuzsM=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlZbyEaYwrLbe2rCCbxCp+I03KmJ2QVONsp9TG5
 PCZJ48LoWuJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZWW8hAAKCRBD3pH5JJpx
 RVaTD/9izTRAPvFTgvnCkUDpPJpVMVm2BO/f+etxdXxhSAbHyec6+2NbvQTWM0Q0goROBWgMnXk
 sQSF68nGKZuatUs3vEVcokQc5mu6+tZjUfYK/gzTMPxzpD83WuECm9P+GpS7HMDMAaRQy/Ra30X
 HzaK5So5RgISHpztvwxb7LXA0SEr9vnBK3rJmIh7vAyT8UC8DFFay/3AowQEKWkUPJqbhfVsjTC
 Y/xQ+GA+5ROAC3/C7CWW8NHxTMXufXfjjiiJHiQp/jHZmYkzwl0JOHWFxHatEFQhZRp+zcmry1y
 rzbB4C7XuQjIy1aK2kpKv8yCZm6GS2hYBxutuRwMow1zEj59tGZa8alPAsbJ+LhXpGfOujra6th
 x3DF6FqixNcNMB1L1e7Npkt8owDRYt5UD2TnZxooNeO9Pig6HjRSfD5Y38C7slJpBOgKzHuF+LO
 AtFEFvjoESZCHNVUj5srRykFSv1emw9JLJW/KieIl3H63xspIXh0nsDeHk9Vn0CaULJHUHnjPve
 g+b/es0IKbB+oRaZDJsKHzrv6Q91GMKbz+bBxRrqQP9qMcou8lYKZtyUdoC4sPrHYOkSMKV+v9r
 m6Ru9L2arkVYuLpVqaTssrct6p6SRP9OtZFFdgS5ET0w8HUKS/H90s4iLResMdkcbO0cdhWdM5n
 izoXJSxQ3/QsXhQ==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Enable I2C-2 as it is used to control CSI based sensors. Also enable
IO-EXP-2 as it controls the mux between different CSI-2 connectors.

Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index 8f64ac2c7568..eb2f45a6ba23 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -434,6 +434,33 @@ tlv320aic3106: audio-codec@1b {
 		DRVDD-supply = <&vcc_3v3_sys>;
 		DVDD-supply = <&buck5>;
 	};
+
+	exp2: gpio@23 {
+		compatible = "ti,tca6424";
+		reg = <0x23>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		gpio-line-names = "", "",
+				  "", "",
+				  "", "",
+				  "", "",
+				  "WL_LT_EN", "CSI_RSTz",
+				  "", "",
+				  "", "",
+				  "", "",
+				  "SPI0_FET_SEL", "SPI0_FET_OE",
+				  "RGMII2_BRD_CONN_DET", "CSI_SEL2",
+				  "CSI_EN", "AUTO_100M_1000M_CONFIG",
+				  "CSI_VLDO_SEL", "SoC_WLAN_SDIO_RST";
+	};
+};
+
+&main_i2c2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c2_pins_default>;
+	clock-frequency = <400000>;
 };
 
 &sdhci1 {

-- 
2.42.1


