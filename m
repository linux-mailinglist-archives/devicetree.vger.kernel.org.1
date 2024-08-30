Return-Path: <devicetree+bounces-98561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DFC966987
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 21:27:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ABC60B22F70
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 19:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C1881BD4E9;
	Fri, 30 Aug 2024 19:26:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCCE61BD035
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 19:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725046017; cv=none; b=K1UK/4vr0pDz9jryorhlob+aFbXjc8/0Mj/Rs+sP2k9IqYrCAqIKpS5eHQoznNhv4qrj/WM7/LkuYQwzxzH+bCk6CGPcKI9y34XnkNrbcRKxsWUHPYGuVy06xu3dhPHPPl/l9k/oOuvcz+EgCTTUZnuQvNQxjNcoHlpzhF9Gxp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725046017; c=relaxed/simple;
	bh=/43WQkD/aOspCMpFsSYyeeyjs8I9iRRZnlZFYBAuYEU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZQ0AGwrLK/ibazfa8g9VJ4N831tFeUW/nIAQQzlF3bf0qnxUWfUkQq1y8kITH/LWiMS+HgZmbUOZ8TnXvO8OudM09sTAn/Sk+7IMIZpG0DrTeZPVKxpTougTo+e7bm9Rnm2VQqF09XdmVvORcQvOEIe6XH3bUd6fo9TqDstuJys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sk7Gn-00068g-K8
	for devicetree@vger.kernel.org; Fri, 30 Aug 2024 21:26:53 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sk7Gk-004Den-SR
	for devicetree@vger.kernel.org; Fri, 30 Aug 2024 21:26:50 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 8454832E159
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 19:26:50 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 18AF132E0EF;
	Fri, 30 Aug 2024 19:26:46 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id a3fe34c3;
	Fri, 30 Aug 2024 19:26:45 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri, 30 Aug 2024 21:25:59 +0200
Subject: [PATCH can-next v3 02/20] arm64: dts: rockchip: add CAN-FD
 controller nodes to rk3568
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240830-rockchip-canfd-v3-2-d426266453fa@pengutronix.de>
References: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
In-Reply-To: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
To: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, 
 David Jander <david.jander@protonic.nl>
Cc: Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, 
 netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>, 
 David Jander <david@protonic.nl>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=openpgp-sha256; l=2004; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=hsRqfgdlLKDhtXJmoP6WFcH3+AxgGwl/ZeSBxntK4ss=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm0hzZlcMMB9MmqDH2wzfEbm7tio2J3Zd9tJqhD
 EkKfkAOYqKJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtIc2QAKCRAoOKI+ei28
 b3DlB/9omU/3gf7SfVCIev3i0XhU3s95dm/ZkAXX4q1HpoUSzJhjRr5x5iyDcuV+7Ec4s4vqzwk
 yK4qvRjhuCDSFoLSrGkK3BE5FH3ieW3MUf+f+MaQPwOvodW/qJSSSQoZKY0ni6gZkrhNShF34hB
 77WHBYyFo+lgpEiTA3gERb+9rFcmLx7HQj6eXHp5Pu3Er3UjWDJ6+pwJ+uidlP9sjv2rpt7rsaw
 LYa35GOcHM/nW+rLj/zHR0JKaiXGiHO39ves7PkhTo/xU2DFZsr/n6yla9CIDRXn33Qy5aZdDVB
 QEfSmzWqa5s+InWtU5fOvEXrGm4VZLJsZxzNzOz7aqP2hHhU
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: David Jander <david@protonic.nl>

Add nodes to the rk3568 devicetree to support the CAN-FD controllers.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 39 ++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index f1be76a54ceb..70847556627d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -213,6 +213,45 @@ gmac0_mtl_tx_setup: tx-queues-config {
 		};
 	};
 
+	can0: can@fe570000 {
+		compatible = "rockchip,rk3568v2-canfd";
+		reg = <0x0 0xfe570000 0x0 0x1000>;
+		interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_CAN0>, <&cru PCLK_CAN0>;
+		clock-names = "baud", "pclk";
+		resets = <&cru SRST_CAN0>, <&cru SRST_P_CAN0>;
+		reset-names = "core", "apb";
+		pinctrl-names = "default";
+		pinctrl-0 = <&can0m0_pins>;
+		status = "disabled";
+	};
+
+	can1: can@fe580000 {
+		compatible = "rockchip,rk3568v2-canfd";
+		reg = <0x0 0xfe580000 0x0 0x1000>;
+		interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_CAN1>, <&cru PCLK_CAN1>;
+		clock-names = "baud", "pclk";
+		resets = <&cru SRST_CAN1>, <&cru SRST_P_CAN1>;
+		reset-names = "core", "apb";
+		pinctrl-names = "default";
+		pinctrl-0 = <&can1m0_pins>;
+		status = "disabled";
+	};
+
+	can2: can@fe590000 {
+		compatible = "rockchip,rk3568v2-canfd";
+		reg = <0x0 0xfe590000 0x0 0x1000>;
+		interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_CAN2>, <&cru PCLK_CAN2>;
+		clock-names = "baud", "pclk";
+		resets = <&cru SRST_CAN2>, <&cru SRST_P_CAN2>;
+		reset-names = "core", "apb";
+		pinctrl-names = "default";
+		pinctrl-0 = <&can2m0_pins>;
+		status = "disabled";
+	};
+
 	combphy0: phy@fe820000 {
 		compatible = "rockchip,rk3568-naneng-combphy";
 		reg = <0x0 0xfe820000 0x0 0x100>;

-- 
2.45.2



