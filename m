Return-Path: <devicetree+bounces-247051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A652CC39CB
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:33:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F1F813008850
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A390E315D37;
	Tue, 16 Dec 2025 13:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="JFta1mT7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4794630F53E
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765892422; cv=pass; b=blyVBoA9v1ST90/Dvnu1sLUKacKLVvuF2E/FGBKZUKH4fzjoLQVlBjLizIr88pjQe/z/Eov8kxqmKB/STddMJatCIn0X/ROjg3+1Du3H2HMBXd+JIaBOQG1zEVsDH54wZ5tQWIx78do6RAkpmh6nhl/jkNm0F+YYdn0nP6IuvDk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765892422; c=relaxed/simple;
	bh=49VSRrVcBPSy1/Oih3t0eek8eEzBy93wgD6v1sGdvTk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=I75P1TrV7/fP1KSVY3wDHcTYSOCR7+JBpo4jfxzQ3GQlMGS8mMvP62Du3GiBgcfM7FE9NTADNr3nY3TNDcbC4IrpD/nxpKUKWfQoZ00dY02j5s84k18W/S28yya09XfWLMHMQ5L3AGkWoAijHmkydtzOdCwfglr7K9KJKMS86mI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=JFta1mT7; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=Zho2kDWL8J6XWsKmcJQhJUsDkOCGRd6yWhy2/tVl1AA=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765892400;
 b=qlUYiRO7d6AG0Qk/NBWmtzyd8f9BAqkQd8ZTTMm+ySZPrWLBm5NUfzlv8XRb+Jvg4VQg78pA
 8YFqZu5TkZZVniOJ+Dsr1EMaZMXCOXiH6hjiVihRR2DJuHL0Lt7bGa1nxFITHRzn0QsLBLZQzmz
 8vi6m3wdJfFTocWlRRPhQYwg5NVumiJ/yF5ajH2TjpJQ0ZX4Hp5p+s5ASLncGjShgMQSivWeDg1
 i9a20wLTc9JOQdMZ9SiZB/LbOZmv2xNI7ysNYvhg6D7V3XNNjoRRBKHzUuQwfl6HDRIZ3KiB3tP
 8yQ+v778ysLsk6cOHqN+stN1hEMnT1MxFqxQbP1vPKb9w==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765892400;
 b=Q2Jk+WT8hftZpg095/YHWlAp7aMsy+9pGKoMBMdywYy4XOfO8Nfl5+vgLF4lVig/WJDCg5ur
 VXXSJ5C+X8jzsD6yN02MhFhOd3QiPG3+V8G+VQGwgXx6DoGeQpCet/wMRQ0DqszwqZeQ2y3s9d3
 9q6ZMox8NctsZFQg/R58l/JDbpET5+Sta1KJWN23+gi3v4HK6RQDhCYY/h0FDVGogQEf9A1lbGO
 wvYvWGfHaw5J6qjleL2lgAyDN5LYgf2HAHCW79DOaoC/NJz6bbRAL/efJsLS1elG356CjcBf38J
 iePRY1ICgaTv1CUAsMiMB+37a8jjS7DGBo1u5rTaB3qiw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Tue, 16 Dec 2025 14:40:00 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id C47625A1600;
	Tue, 16 Dec 2025 14:39:43 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH 1/3] arm64: dts: imx8mn-tqma8mqnl: remove virtual 3.3V regulator
Date: Tue, 16 Dec 2025 14:39:23 +0100
Message-ID: <20251216133927.913039-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4dVyj56Nzmz3yc8W
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:b6a3cc6271770ced19cc5cbfdde1669a
X-cloud-security:scantime:1.858
DKIM-Signature: a=rsa-sha256;
 bh=Zho2kDWL8J6XWsKmcJQhJUsDkOCGRd6yWhy2/tVl1AA=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765892399; v=1;
 b=JFta1mT7Ov41PohGRZQcuQN6jY6K02sRxdUzSBAukEWl3C+FR59q8oWEDV0co4b+ySqTpkW+
 9OF8mKxGs1qOcE33RK2SW/y/m1vHNQ7z/qsFDHDogZ/PNOsUCsuLfh1OLRomQXqq2mE82DUboJy
 6ffMaehX5DzxfDBlFza8vqVQl4w/Uu7ahcOzxHVaEvhPmKwTd3JBDQ25AgfeJFjMABS9dnesMb6
 HtYWExiEOD7041GI3SHlimqtVt5GyNnOEg7X8m/VnzdKr/P7FjOkNrYbzojh7ONnI5b5TSWiSQu
 2OJU0UL3yF1wgki4iAGonuDV9FMH7+MZcbDoL7UVNvYhw==

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

BUCK4 rail supplies the 3.3V rail. Use the actual regulator
instead of a virtual fixed regulator.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
index 1d23814e11cd3..34d6415348f8c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
@@ -23,13 +23,6 @@ reg_vcc1v8: regulator-vcc1v8 {
 		regulator-max-microvolt = <1800000>;
 	};
 
-	reg_vcc3v3: regulator-vcc3v3 {
-		compatible = "regulator-fixed";
-		regulator-name = "TQMA8MXNL_VCC3V3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-	};
-
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -217,14 +210,14 @@ eeprom1: eeprom@53 {
 		read-only;
 		reg = <0x53>;
 		pagesize = <16>;
-		vcc-supply = <&reg_vcc3v3>;
+		vcc-supply = <&buck4_reg>;
 	};
 
 	eeprom0: eeprom@57 {
 		compatible = "atmel,24c64";
 		reg = <0x57>;
 		pagesize = <32>;
-		vcc-supply = <&reg_vcc3v3>;
+		vcc-supply = <&buck4_reg>;
 	};
 };
 
@@ -242,7 +235,7 @@ &usdhc3 {
 	non-removable;
 	no-sd;
 	no-sdio;
-	vmmc-supply = <&reg_vcc3v3>;
+	vmmc-supply = <&buck4_reg>;
 	vqmmc-supply = <&reg_vcc1v8>;
 	status = "okay";
 };
-- 
2.43.0


