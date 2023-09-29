Return-Path: <devicetree+bounces-4535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 306827B2FBA
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 12:08:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 6038A1C208E5
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D351D156CB;
	Fri, 29 Sep 2023 10:08:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614D4156C1
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:08:44 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB9D81AA;
	Fri, 29 Sep 2023 03:08:40 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id F07DE1BF212;
	Fri, 29 Sep 2023 10:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1695982119;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5U2Vlzghfoo774zsU4ZxMClCDoCsWFp/EPSf+mUw5k4=;
	b=ZqoTeFAP3E8F+25el4dBzWpPEEhI8mZi0bGc8SduHVIzMKD9XAr19EaAo1a5b7VqUHcaSy
	jtaZR61vmdWR97C/3oKY2YIVflRVZpbMOYmKAZHWcg12T11pHunx79L7RwRjWEjgya0BcX
	uZv/6MUEIEZsn0iyQdyfQhandwyEyVWJO/Uqgo9uB1Vro+DgRoFmTFskN5M3D6u8Y15YbU
	kG7g9EhEy7Z9cSDmyy7b4LjJlruV6Q89chSWsIlV+Dijy7FcYsaidKF1jfTFvmGB/pFUXn
	1KaTxCQ72Ms3QJwK7R9RRK40emdI4HtPLAciQl15AuzMFavoDbSEXPN9scPfmw==
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: mchehab@kernel.org,
	heiko@sntech.de,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: paul.kocialkowski@bootlin.com,
	miquel.raynal@bootlin.com,
	maxime.chevallier@bootlin.com,
	luca.ceresoli@bootlin.com,
	thomas.petazzoni@bootlin.com,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Mehdi Djait <mehdi.djait@bootlin.com>
Subject: [PATCH v6 3/3] arm64: dts: rockchip: Add the camera interface
Date: Fri, 29 Sep 2023 12:08:02 +0200
Message-ID: <e1de802514c7a955583641a5fb197c75d8e1f6a9.1695981374.git.mehdi.djait@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <cover.1695981374.git.mehdi.djait@bootlin.com>
References: <cover.1695981374.git.mehdi.djait@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: mehdi.djait@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The PX30 has a camera interface, supporting CSI2 and BT656
modes. Add a DT description for this interface.

Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 42ce78beb413..7aaa88a15d07 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1281,6 +1281,18 @@ isp_mmu: iommu@ff4a8000 {
 		#iommu-cells = <0>;
 	};
 
+	vip: vip@ff490000 {
+		compatible = "rockchip,px30-vip";
+		reg = <0x0 0xff490000 0x0 0x200>;
+		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>;
+		clock-names = "aclk", "hclk", "pclk";
+		power-domains = <&power PX30_PD_VI>;
+		resets = <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN>;
+		reset-names = "axi", "ahb", "pclkin";
+		status = "disabled";
+	};
+
 	qos_gmac: qos@ff518000 {
 		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff518000 0x0 0x20>;
-- 
2.41.0


