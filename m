Return-Path: <devicetree+bounces-6366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6777BB1C7
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 08:53:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0C811C208DE
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 06:53:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DE6F539C;
	Fri,  6 Oct 2023 06:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Ya3dxMsz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245944414
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 06:53:45 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26AA1EB;
	Thu,  5 Oct 2023 23:53:43 -0700 (PDT)
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:40dd:1541:8234:4d16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 009216607336;
	Fri,  6 Oct 2023 07:53:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696575221;
	bh=lxJjyV/iMvcHmNqd0VGLIe+5rW3S6hUI6UcED93hyTo=;
	h=From:To:Cc:Subject:Date:From;
	b=Ya3dxMsz3yXH4nuNnydhrYwXRinFUR/TJJYZ2h2HNQlkfeO1497C4raGKAhtEUygp
	 1H0WzPmXABuaB/OOCl58KG3MDtWRz47YsN9bFhlo7Z88GKKD2MA4ah2xRF3v9XrZDu
	 nXCMdxmWR3tMTLeF0c0qJO2HFfnStkHDRPMDAQYYdev7JE3YqiDlaOAat/f33UHLne
	 OzfKau+q0b9i00z7E29FAMIOCeyH+qIv+yL16DDOK/sPLSfrLKRacai5/65epDRj9h
	 qUyR+jntfMeXcAdmaJZMG6IAwJA7SaiThsUyv39Qy6JV0A5lFA6i7cjx6T+cY8m8Zi
	 /3UHA6pK7MkEg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v3] arm64: dts: rockchip: rk3588s: Add AV1 decoder node
Date: Fri,  6 Oct 2023 08:53:34 +0200
Message-Id: <20231006065334.8117-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add node for AV1 video decoder.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
version 3:
- remove status = "okay"

version 2:
- change node name to video-codec
- fix typo in commit header

 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5544f66c6ff4..5481f59f551f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -2304,6 +2304,19 @@ gpio4: gpio@fec50000 {
 			#interrupt-cells = <2>;
 		};
 	};
+
+	av1d: video-codec@fdc70000 {
+		compatible = "rockchip,rk3588-av1-vpu";
+		reg = <0x0 0xfdc70000 0x0 0x800>;
+		interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vdpu";
+		clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
+		clock-names = "aclk", "hclk";
+		assigned-clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
+		assigned-clock-rates = <400000000>, <400000000>;
+		resets = <&cru SRST_A_AV1>, <&cru SRST_P_AV1>, <&cru SRST_A_AV1_BIU>, <&cru SRST_P_AV1_BIU>;
+		power-domains = <&power RK3588_PD_AV1>;
+	};
 };
 
 #include "rk3588s-pinctrl.dtsi"
-- 
2.39.2


