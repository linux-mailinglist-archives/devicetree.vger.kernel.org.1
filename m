Return-Path: <devicetree+bounces-16505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 497CA7EEE90
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:30:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C11971F22343
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:30:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BFD912E6D;
	Fri, 17 Nov 2023 09:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="R7ZzeWnO"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62C5FD6D;
	Fri, 17 Nov 2023 01:29:59 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AH9TZia071048;
	Fri, 17 Nov 2023 03:29:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700213375;
	bh=Y2KXqIr6GkpmWHFBYq5JG+pjs0o2T4SLW2pvUSdpvKA=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=R7ZzeWnOoATd14IFmL4x2Ftv3pvlE3QvrZYhkHfCY/q53Uo1khJ7uy0GJcIJhsa1L
	 5UK+WuTTUReYfTaYApcVHAhIKeCx5+xAiPwRZkx1+e5Z9HF8/g6wYmw0IVzDd7O19v
	 i8n7Zyut8x2as8WW8swVqTV1Z/V0Y3FSeOe+wPbo=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AH9TZ5n023835
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Nov 2023 03:29:35 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Nov 2023 03:29:35 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Nov 2023 03:29:35 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AH9TYcj105746;
	Fri, 17 Nov 2023 03:29:34 -0600
From: Jai Luthra <j-luthra@ti.com>
Date: Fri, 17 Nov 2023 14:58:10 +0530
Subject: [PATCH v2 2/9] arm64: dts: ti: Enable CSI-RX on AM62
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231117-csi_dts-v2-2-bf4312194a6b@ti.com>
References: <20231117-csi_dts-v2-0-bf4312194a6b@ti.com>
In-Reply-To: <20231117-csi_dts-v2-0-bf4312194a6b@ti.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2229; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=kqPUeOQSnHjljHs1KFWbF01F+dO4ppTwew4BygHBqvc=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlVzJt0DfH+zXwBK4dGaeNu22y4EW7Hcqmn+gmn
 uO3GwA1PoGJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZVcybQAKCRBD3pH5JJpx
 RX5JEAChITq4bueV82r7M9nWdos1s520pHWw8IkIh2aX+QSlYnwbJOO/jCX0mykuEiVNUaOZhbZ
 DtXdgB/5xHeJHza5xaISlGjbsYfnMwRzkBSOvPWIqXvzpMn3UlwczPfeFKvM/hiz3oIZMx9ZKaI
 NmFRoCydgVBjMDEe4t2ibw0zGGNnAHCZpMaGnGRAnIaUsSCMjLgkQS0jAI5LCA1Mw/mny13XzNJ
 3NQfXPhXI81VAf0ubD7mIWifxoJpXP4CoXnK2NXBWvIdbNT+tzgnm5MYvQ86m0B+Afr2GeWVnv/
 aQILwGm46WLnjrQvWhacGhk1tP9U67K+RL8LhncmM38xzgnuhw2lYWQaFXOq3R1kE8ZMO7LSMnG
 f2IH4k+hkxRfDOGL0fmQ5ebaj3yRhJXxDWtdOrmGxzEll/5kdbTpoxnSKBWKqBiT9y8+g+M/I9u
 JYnPDuWdiYwKuLe3Di7T9BXfScjp8iT0K5agjnhV58MjCD9D/8bc3wnxUGDy6JRSur9leS/t8F/
 quBcq8ZQPH1MNDg2OWoxRaBeG4AVpsEIwwTX0s4YA6L7xQXsa5tmSLb3SCQvyPVq8hJoVid+RTR
 86yzqUx3Qo/0vbFdYnruJAvT7oj8/klo/oCgJVRBSNjrWH2tZFa3JdeI1UF5S9HaaB42Oa0VGuf
 qgDYmPhpEj8pvNw==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

The CSI2RX subsystem can be used to capture video frames from CSI-2
cameras. Add nodes for the CSI core, SHIM layer, and the DPHY.

Tested-by: Martyn Welch <martyn.welch@collabora.com>
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


