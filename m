Return-Path: <devicetree+bounces-6235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A5E7BA4A5
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 18:10:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 69D56281CC8
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1475E347AE;
	Thu,  5 Oct 2023 16:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="UvRfEuBr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12008339BD
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 16:10:12 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F9E71FC19;
	Thu,  5 Oct 2023 09:10:05 -0700 (PDT)
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4c53:5fd0:f25b:b0dd])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E8665660733A;
	Thu,  5 Oct 2023 17:10:03 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696522204;
	bh=MS3ouzfxPge6VQw34LqgJIvXVcUvybR31bUNy63VMFE=;
	h=From:To:Cc:Subject:Date:From;
	b=UvRfEuBrzq3bFekdh91Yo8rKZQeI9iC3Ym2AgINk2TWrzuYDtFjVoTWtNK6Eyh8ej
	 xC7DoMMlRR2r15aYl8MLCaIdeIGECTQu9RneHGeY4A+8f8ZeCs3j4TALNxb3xwPHNu
	 66GJDJA6zFjp2LS3KaAERz+tIejMrLsqgcUKj/8Yt6t6COg4TdJOG7Mdp4bzRs8LCR
	 uXe2HtJFr+qVUgNpjgVFngFyGy0kc+lx/Vq0AWc4Svp0gPGFfyceHbKdILR31zym1a
	 VvRh5aPrUH/Q/K8bB28Ss+qLo8CKO8zHnaSL3zeBmQETcOxYRv/CjnAoD+SoyOROrT
	 fe6IKSv4N0jSg==
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
Subject: [PATCH v2] arm64: dts: rockchip: rk3588s: Add AV1 decoder node
Date: Thu,  5 Oct 2023 18:09:57 +0200
Message-Id: <20231005160957.269202-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add node for AV1 video decoder.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
version 2:
- change node name to video-codec
- fix typo in commit header

 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5544f66c6ff4..1a50da77c7c6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -2304,6 +2304,20 @@ gpio4: gpio@fec50000 {
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
+		status = "okay";
+	};
 };
 
 #include "rk3588s-pinctrl.dtsi"
-- 
2.39.2


