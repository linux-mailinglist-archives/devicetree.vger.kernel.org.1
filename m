Return-Path: <devicetree+bounces-16181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 820127EDF1C
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 12:05:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 22FF9B20A96
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 11:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80BC22DF68;
	Thu, 16 Nov 2023 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="SpDzrZCd"
X-Original-To: devicetree@vger.kernel.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::221])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1978AA;
	Thu, 16 Nov 2023 03:04:49 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 206E5240012;
	Thu, 16 Nov 2023 11:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1700132688;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O38TB7h/YzOAey2sGfW287IT4IVL6B3BrPOAPkm8UIo=;
	b=SpDzrZCd24lR3EPOnxgpWnIgvfmbgaXMbFGcvTgtC0E7Msp6ljPnHOl+a+MjopmtZobtWS
	4attyOei61tSnJ8J7jO69bBwFm0t+b/tUptOI7A0SFyKIaD37KVqA/2mHC49LnJInBsnjq
	yHAXhWK8EwbYQDgg2q/8GRJa4w7MDSJ/EVolmL+Ehl+RAe+n3QhsCxAy0xDa55s7Z8hPkm
	VV9K/D1XDdATLj99RWDAAG7sp5xOuF9X6wfYa8QfHBPDCCXH+LIGZhuqSf3yBx9twdOCGH
	/C5f8WlYQRs4hkqepFL1cxg2yczg8aSX5OuCGokryvZGDbJLcAqQOjPZK8Vt6g==
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: mchehab@kernel.org,
	heiko@sntech.de,
	hverkuil-cisco@xs4all.nl,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	thomas.petazzoni@bootlin.com,
	alexandre.belloni@bootlin.com,
	maxime.chevallier@bootlin.com,
	paul.kocialkowski@bootlin.com,
	michael.riesch@wolfvision.net,
	Mehdi Djait <mehdi.djait@bootlin.com>
Subject: [PATCH v11 3/3] arm64: dts: rockchip: Add the camera interface
Date: Thu, 16 Nov 2023 12:04:40 +0100
Message-ID: <3566c176d1ef5ae93aa54587a14ccfa80974e872.1700132457.git.mehdi.djait@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <cover.1700132457.git.mehdi.djait@bootlin.com>
References: <cover.1700132457.git.mehdi.djait@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: mehdi.djait@bootlin.com

The PX30 has a video capture component, supporting the BT.656
parallel interface. Add a DT description for it.

Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 42ce78beb413..3a4e859e5a49 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1281,6 +1281,18 @@ isp_mmu: iommu@ff4a8000 {
 		#iommu-cells = <0>;
 	};
 
+	cif: video-capture@ff490000 {
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


