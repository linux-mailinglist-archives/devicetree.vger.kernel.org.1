Return-Path: <devicetree+bounces-16685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAE17EF43C
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 15:14:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB1511C20986
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 14:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B3CF34CEF;
	Fri, 17 Nov 2023 14:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Ohk4aDsD"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BDB3210D;
	Fri, 17 Nov 2023 06:14:41 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AHEEZGe025317;
	Fri, 17 Nov 2023 08:14:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700230475;
	bh=5IZGhD8qiFLW80/WHs2uw+ggCMSQKu+5yarcT+OzTAc=;
	h=From:To:CC:Subject:Date;
	b=Ohk4aDsDRYD/guA8NnXaPmbvUWd4Sdvx0oHagMlEZnGaNVjhSEuFf+tdUMYOesx3y
	 U/VkilShuVFp2oNAYOcEZn5BRmPmxz9W+CdU+ig6mrxL9dgr+UigWB3ipszmgFBhSV
	 XEhaqASUHumufC848C1/YomuA0UPuMENm9f29/6w=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AHEEZku075515
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Nov 2023 08:14:35 -0600
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Nov 2023 08:14:35 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Nov 2023 08:14:35 -0600
Received: from fllv0039.itg.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AHEEYG2018120;
	Fri, 17 Nov 2023 08:14:34 -0600
From: Andrew Davis <afd@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Andrew Davis
	<afd@ti.com>
Subject: [PATCH v3] arm64: dts: ti: k3-am65: Add full compatible to dss-oldi-io-ctrl node
Date: Fri, 17 Nov 2023 08:14:33 -0600
Message-ID: <20231117141433.9461-1-afd@ti.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

This matches the binding for this register region which fixes a couple
DTS check warnings.

While here trim the leading 0s from the "reg" definition.

Signed-off-by: Andrew Davis <afd@ti.com>
Reviewed-by: Aradhya Bhatia <a-bhatia1@ti.com>
---

Changes for v3:
 - Resend now that dt-binding is merged

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 5ebb87f467de5..7eacb74498a75 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -498,8 +498,8 @@ serdes_mux: mux-controller {
 		};
 
 		dss_oldi_io_ctrl: dss-oldi-io-ctrl@41e0 {
-			compatible = "syscon";
-			reg = <0x000041e0 0x14>;
+			compatible = "ti,am654-dss-oldi-io-ctrl", "syscon";
+			reg = <0x41e0 0x14>;
 		};
 
 		ehrpwm_tbclk: clock-controller@4140 {
-- 
2.39.2


