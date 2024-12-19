Return-Path: <devicetree+bounces-132663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C979F7B83
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 13:37:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BAC2A1895312
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:37:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C1C3226191;
	Thu, 19 Dec 2024 12:35:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7446D22618F
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734611711; cv=none; b=tfBu5p+/Q0GLZlGfyA9O1RNgLVDsymTFzXowL3uehGYd50lhDOpcmdevNZGcRWoelWOVUCFkePQmvtkua2m82pooKcHKLfXGv3/XNAqvbOuNcilbpAy4NOTecMmmEHJaFZHaYa7Eu10bP9Y/tk1GkVUp7VMdlJ1ck7Lk63PM2Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734611711; c=relaxed/simple;
	bh=qAhPdZAVz66bKOe4FYK+ZANvPT8yIB0HR1SRLnLmHwE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YPAABp1xm0tv4V0Mx0vgnXS/MOg+I3ZScgD6w3l6xV4uMaxUFhM6YIKKYE8WVz4ZP1hJjIptKYnHfVgAAI50rfuzNruXAd8fD3iYkVEZvsev04YPT4W0+EhD7sFWBeCSS6s6C/YYYl5jn+x+lb6GiKq4AU3xwXr0jzaTuGKjrtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tOFk3-0007aQ-Um; Thu, 19 Dec 2024 13:34:59 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 19 Dec 2024 13:34:57 +0100
Subject: [PATCH 2/2] arm64: dts: rockchip: MECSBC: Add FRAM MB85RS128TY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241219-mb85rs128ty-mecsbc-v1-2-77a0e851ef19@pengutronix.de>
References: <20241219-mb85rs128ty-mecsbc-v1-0-77a0e851ef19@pengutronix.de>
In-Reply-To: <20241219-mb85rs128ty-mecsbc-v1-0-77a0e851ef19@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jonas Rebmann <jre@pengutronix.de>, David Jander <david@protonic.nl>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1087; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=E1s4a2ms1r/LLu9PQwkbyMglWJ/KeTIY1ewv3e06R4U=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkhPEfo8/b14sfHXt6rHT7Z98xL0WLJg6U2N8z63lpwN5
 56enm64vqOUhUGMg0FWTJElVk1OQcjY/7pZpV0szBxWJpAhDFycAjCRZA5GhmVdWW+NJa//FzjG
 LOH/udVJzv0YT6u/0TaZukk6BotlDjMyHCz+xX3LStkq4djvbOej95b0GZYoaRuf6WXu1C2af+c
 yMwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: David Jander <david@protonic.nl>

The board features a Fujitsu MB85RS128TY FRAM chip connected to spi0 CS
0. Add support for the MB85RS128TY to the device tree.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
index ca041b4d2d38a4e06cd0a54a806fed2ab723c94d..c70f6df537596a85528e4e0b499e59d71f05b4a3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
@@ -240,6 +240,18 @@ rtc@51 {
 	};
 };
 
+&spi0 {
+	/* use hardware chipselect on cs0 (cs1 unconnected) */
+	pinctrl-0 = <&spi0m0_pins>, <&spi0m0_cs0>;
+	status = "okay";
+
+	fram@0 {
+		compatible = "fujitsu,mb85rs128ty";
+		reg = <0>;
+		spi-max-frequency = <33000000>;
+	};
+};
+
 &i2s1_8ch {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_lrcktx &i2s1m0_sdi0 &i2s1m0_sdo0>;

-- 
2.39.5


