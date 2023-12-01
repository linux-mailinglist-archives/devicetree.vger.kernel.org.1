Return-Path: <devicetree+bounces-20687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F48800962
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 12:09:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7316C2819FE
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 11:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57F9D210FB;
	Fri,  1 Dec 2023 11:09:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 051DD10D8;
	Fri,  1 Dec 2023 03:09:05 -0800 (PST)
X-IronPort-AV: E=Sophos;i="6.04,241,1695654000"; 
   d="scan'208";a="185005269"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie5.idc.renesas.com with ESMTP; 01 Dec 2023 20:09:05 +0900
Received: from localhost.localdomain (unknown [10.226.93.2])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 5FE504010906;
	Fri,  1 Dec 2023 20:09:02 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 5/6] arm64: dts: renesas: rzg2ul-smarc: Enable PMIC and built-in RTC
Date: Fri,  1 Dec 2023 11:08:39 +0000
Message-Id: <20231201110840.37408-6-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231201110840.37408-1-biju.das.jz@bp.renesas.com>
References: <20231201110840.37408-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable PMIC DA9062 and the built-in RTC on the RZ/{G2UL,Five} SMARC
EVK.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/rzg2ul-smarc.dtsi | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg2ul-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg2ul-smarc.dtsi
index de590996e10a..7ef33087e6f9 100644
--- a/arch/arm64/boot/dts/renesas/rzg2ul-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg2ul-smarc.dtsi
@@ -23,6 +23,35 @@ &cpu_dai {
 &i2c0 {
 	clock-frequency = <400000>;
 
+	da9062: pmic@58 {
+		compatible = "dlg,da9062";
+		reg = <0x58>;
+
+		da9062_rtc: rtc {
+			compatible = "dlg,da9062-rtc";
+		};
+
+		da9062_onkey: onkey {
+			compatible = "dlg,da9062-onkey";
+			status = "disabled";
+		};
+
+		watchdog {
+			compatible = "dlg,da9062-watchdog";
+			status = "disabled";
+		};
+
+		thermal {
+			compatible = "dlg,da9062-thermal";
+			status = "disabled";
+		};
+
+		gpio {
+			compatible = "dlg,da9062-gpio";
+			status = "disabled";
+		};
+	};
+
 	versa3: clock-generator@68 {
 		compatible = "renesas,5p35023";
 		reg = <0x68>;
-- 
2.25.1


