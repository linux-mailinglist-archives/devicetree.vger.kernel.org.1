Return-Path: <devicetree+bounces-15823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 746417EBFBE
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 10:52:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EAB41F26C17
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 09:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 036B8946F;
	Wed, 15 Nov 2023 09:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ilhqxYXw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4359463
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 09:52:25 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FC16106;
	Wed, 15 Nov 2023 01:52:24 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AF9qF1B105004;
	Wed, 15 Nov 2023 03:52:15 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700041935;
	bh=Sy2cqL5S5oxFfbE7V7ZjL7hiD86FRrhKijn9W4cm3aQ=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=ilhqxYXwzdc3Z/GwCvKtsV+6lyvRCHiERxQIlnn5geotQ13GDj0+N7PDJ+cJob7ZA
	 d+w2WHHSt1R/HCwdG0WWjB9Gxn8ibiK3Atgb0lyq8CNIGTcv8dvjye5mLvAApIBRPQ
	 woMVcfhC9ouNAXmime99mB/RSuoAkiQ45uWhIUwA=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AF9qF85109197
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 15 Nov 2023 03:52:15 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 15
 Nov 2023 03:52:15 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 15 Nov 2023 03:52:15 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AF9qELp015908;
	Wed, 15 Nov 2023 03:52:14 -0600
From: Jai Luthra <j-luthra@ti.com>
Date: Wed, 15 Nov 2023 15:21:13 +0530
Subject: [PATCH 5/8] arm64: dts: ti: k3-am62x-sk: Enable camera peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231115-csi_dts-v1-5-99fc535b2bde@ti.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1094; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=u6T5A1bh0HbjqVMvmWnZa1mJiyWBQtuXf9p93arc/0M=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlVJS8eRD4W4OrTF2JZ/HlxgUAuCM8fSqhlnBHm
 hD59HPVp2KJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZVSUvAAKCRBD3pH5JJpx
 RQc+D/9oT6DHx2HuteewUaSm2cSTSm6XaepiV7wh/SqBpZoOGdDQZazTTfFV49fjiRlDAUDM9oy
 WCh4YfUckPSPvr0dbWyBNfzF3RBs3o+MRa/2NMrhRD7iX2bGOGHVrNvotoHAigw3a3FOnstPDlN
 /4Tt6J57dDxfnq9G9YwVS/grTPuKsopg0Inx9d+7LXDIriwYCJ5AZNyV07BRYSO2oF2ClIbbucN
 sSxA4qHSrcefXziVpQnCAm6mjGDp/Vac3KrlqBtLKd+eyE171w1IAFUx37Ua2hf4n/zuvf8PaJ+
 SI8Vc4xCE/XAaWodbsVhifZeEp7On/VGuGcd4bN+fRUu1gHJESVCPKbh46X3VIkpRiGQqEkiKDK
 /n95r3SqdtdTgWL4CpFc9/3Mlwvlzjew08vrjwd6thgBwoMmCBsTAzUiPCMKlxvLyzInWPz3TrO
 cJy8Kr3r8XyfRiW6d4sDLfiq9u6NiX2ytBQdCO8/Xid7YngZCzGldn1t63Ggjh2WFa8y7b1Z50w
 8youzsIoI0Pop04D82I9vPbsumQuSg76ShFTF/WA4j8DV3Ap3bG2uoJssrjqtoqJRFlOVzunWvw
 mEP1Xs48OiPOy/Y6bAMzGCQ8qQ+OJLNl/Pw0ncNvACxOOnGCgrPa8tqdWhuHkG8sNjDM3ToIUJV
 2x0+0tJKywqTl8g==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

CSI cameras are controlled using I2C, on SK-AM62 and derivative boards
this is routed to I2C-2, so enable that bus. Also enable the nodes for
CSI-RX and DPHY-RX IPs.

Specific sensor connected to this bus will be described in the DT
overlay for each sensor.

Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
index 19f57ead4ebd..21658f811307 100644
--- a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
@@ -399,6 +399,13 @@ sii9022_out: endpoint {
 	};
 };
 
+&main_i2c2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c2_pins_default>;
+	clock-frequency = <400000>;
+};
+
 &sdhci0 {
 	bootph-all;
 	status = "okay";
@@ -517,3 +524,11 @@ dpi1_out: endpoint {
 		};
 	};
 };
+
+&ti_csi2rx0 {
+	status = "okay";
+};
+
+&dphy0 {
+	status = "okay";
+};

-- 
2.42.1


