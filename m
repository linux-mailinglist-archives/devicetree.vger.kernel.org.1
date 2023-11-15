Return-Path: <devicetree+bounces-15824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6B57EBFBF
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 10:52:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C63CF1F26C63
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 09:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 584439463;
	Wed, 15 Nov 2023 09:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Y80Q7x2B"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B0249465
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 09:52:26 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A851120;
	Wed, 15 Nov 2023 01:52:24 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AF9qA0Z027067;
	Wed, 15 Nov 2023 03:52:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700041930;
	bh=kxbQ/hRc7Q4aD40Sxi+FHzPEYPOdcxP2qr3BfgtMY7o=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=Y80Q7x2BWuu1Cpz9/3aEpcuUvVeo3yw+v2WsMFxDO1Xph5XUmd6XJJ2chrSDHEVxf
	 A8F0kJWV8OVA42kQiQKJHl5gaWk7l48zsuadZU8VlscKbiFtUrui1Q7nJ1Ji1Xtjdo
	 yqhPP11ufykWDVywSOwsG63LOhQreEoAJEF4RDPQ=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AF9qAmn109170
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 15 Nov 2023 03:52:10 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 15
 Nov 2023 03:52:10 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 15 Nov 2023 03:52:10 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AF9q9hf009700;
	Wed, 15 Nov 2023 03:52:10 -0600
From: Jai Luthra <j-luthra@ti.com>
Date: Wed, 15 Nov 2023 15:21:10 +0530
Subject: [PATCH 2/8] arm64: dts: ti: Enable CSI-RX on AM62
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231115-csi_dts-v1-2-99fc535b2bde@ti.com>
References: <20231115-csi_dts-v1-0-99fc535b2bde@ti.com>
In-Reply-To: <20231115-csi_dts-v1-0-99fc535b2bde@ti.com>
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
        Jai
 Luthra <j-luthra@ti.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2175; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=Ygo3DMdffwbzu3W24FhQXSDCuiW/4zp9AmLaS/aTiyk=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlVJS5K58USh8mBD3DC3jzqtI6iwmtg6IcPoD/W
 2rgL9AGiLeJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZVSUuQAKCRBD3pH5JJpx
 RaqmD/9rxFCqMJtUlFUV/4S/uzP/3qTmJag8aliPz2OXZivPWQ7uLxDniA+osdaRrlg32f8cSAd
 YJeWfANcBTRFi6qxAcuYA7ln+yklxL+sVq1ubsm7kqFXop2R+gDcEB2zLEsT28+R0tPH+z0QmsO
 pn8HqRb/1sjuwUYZJEhaaASAghwUmwQ9ACS0KKXq9aWcRl9rgAwZwF7leF47Pg+USvjc5Dt9AE2
 ZhXeB2MOe4hd2NOy7Od+Q/T0OpRKPWWvw6mzWWAfozIWGrx8W1bONRWuvD5iAV0wDbEpPPIf0rm
 aU7IOmGZFy54Obr6vcTkSz+AH/CgzsxrtD6S9Uvl5F8PpXCjus+kvYAeWEho2SNf4OCWVw0CnkW
 Wwug4wIgG4yn/j2j2/vg2FjiI2JYd8o7lwA7MNlUBfOUAx+OdT5IgTG+EfMrYe8XlLq6cw0yFXf
 nTmRR6RP/rfzrTz4/AQmjlbQhswktVP8QuWTPEJt95RBbgLIxqKNlMmEqVaNKQB402sCQGjrZBi
 7IsSCqh/8TkYQeMaaGCJPlMhi7QkM+yFBQNrO/UZ/aGc+dPNSAzoPW7nR9k40CTrakcGofbflrs
 KpfXWD0uSB0uTw5R/ppHPI/3U3sU+KKDZCYYY5OEWLiD35TddRJEkIDReUJngoRiLofMyXucQQh
 g5rjSKKa2JsbdhQ==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

The CSI2RX subsystem can be used to capture video frames from CSI-2
cameras. Add nodes for the CSI core, SHIM layer, and the DPHY.

Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62-main.dtsi | 62 ++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
index e5c64c86d1d5..c0a95f6aff5e 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
@@ -965,4 +965,66 @@ mcasp2: audio-controller@2b20000 {
 		power-domains = <&k3_pds 192 TI_SCI_PD_EXCLUSIVE>;
 		status = "disabled";
 	};
+
+	ti_csi2rx0: ticsi2rx@30102000 {
+		compatible = "ti,j721e-csi2rx-shim";
+		dmas = <&main_bcdma 0 0x4700 0>;
+		dma-names = "rx0";
+		reg = <0x00 0x30102000 0x00 0x1000>;
+		power-domains = <&k3_pds 182 TI_SCI_PD_EXCLUSIVE>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		status = "disabled";
+
+		cdns_csi2rx0: csi-bridge@30101000 {
+			compatible = "ti,j721e-csi2rx", "cdns,csi2rx";
+			reg = <0x00 0x30101000 0x00 0x1000>;
+			clocks = <&k3_clks 182 0>, <&k3_clks 182 3>, <&k3_clks 182 0>,
+				<&k3_clks 182 0>, <&k3_clks 182 4>, <&k3_clks 182 4>;
+			clock-names = "sys_clk", "p_clk", "pixel_if0_clk",
+				"pixel_if1_clk", "pixel_if2_clk", "pixel_if3_clk";
+			phys = <&dphy0>;
+			phy-names = "dphy";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csi0_port0: port@0 {
+					reg = <0>;
+					status = "disabled";
+				};
+
+				csi0_port1: port@1 {
+					reg = <1>;
+					status = "disabled";
+				};
+
+				csi0_port2: port@2 {
+					reg = <2>;
+					status = "disabled";
+				};
+
+				csi0_port3: port@3 {
+					reg = <3>;
+					status = "disabled";
+				};
+
+				csi0_port4: port@4 {
+					reg = <4>;
+					status = "disabled";
+				};
+			};
+		};
+	};
+
+	dphy0: phy@30110000 {
+		compatible = "cdns,dphy-rx";
+		reg = <0x00 0x30110000 0x00 0x1100>;
+		#phy-cells = <0>;
+		power-domains = <&k3_pds 185 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
 };

-- 
2.42.1


