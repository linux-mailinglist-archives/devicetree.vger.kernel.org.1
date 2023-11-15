Return-Path: <devicetree+bounces-13943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C467E17F6
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 00:37:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 17522B20E0C
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 23:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 687FA6AD6;
	Sun,  5 Nov 2023 23:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="B7C6swaB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F88199D1
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 23:37:16 +0000 (UTC)
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E85110CF;
	Sun,  5 Nov 2023 15:37:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1699227433; bh=lwv4Dikhxy25O18egd5yTFSrEBYSBkOsdKQ7nX6VsKs=;
 b=B7C6swaBQFQSIxCMkRIiHOtBleUZKdIuNo2E4XTTuN/gzYueGRE1ZeaOv+HRgNWXBBf56ElaN
 38OGuiOUwOu33WFXKYt41JrCY7IOPUd0ofskkRL79KrBTls+1Mgjj/3CNO0ay18GJMDHkfOBdwE
 A7vi2xuEVBD12dNes3m+gzgMPL1Vu5Dy/3F8ukT3RLSqquuq8nqWdYNNN0z6nCuukv/VIACGaOR
 dLgyOotKRuKkWMxufmSTIob2yP67zaRQr8h4nD/dbjF/aVQIGyqIrHmpMDXQSy2/oqV+y75Pz1b
 VOdrGLFRT1s6qX7f9WqavpexJa5Inwpc9row4kv5YuHQ==
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Christopher Obbard
 <chris.obbard@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 7/9] ARM: dts: rockchip: Add vdec node for RK3288
Date: Sun,  5 Nov 2023 23:36:14 +0000
Message-ID: <20231105233630.3927502-8-jonas@kwiboo.se>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231105233630.3927502-1-jonas@kwiboo.se>
References: <20231105233630.3927502-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 654827281b004d4cddbe0cab

From: Alex Bee <knaerzche@gmail.com>

RK3288 contains a Rockchip VDEC block that only support HEVC
decoding. Add a vdec node for this.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm/boot/dts/rockchip/rk3288.dtsi | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi b/arch/arm/boot/dts/rockchip/rk3288.dtsi
index cb9cdaddffd4..cdeb9c72dae1 100644
--- a/arch/arm/boot/dts/rockchip/rk3288.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288.dtsi
@@ -1277,6 +1277,21 @@ vpu_mmu: iommu@ff9a0800 {
 		power-domains = <&power RK3288_PD_VIDEO>;
 	};
 
+	hevc: video-codec@ff9c0000 {
+		compatible = "rockchip,rk3288-vdec";
+		reg = <0x0 0xff9c0000 0x0 0x440>;
+		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_HEVC>, <&cru HCLK_HEVC>,
+			 <&cru SCLK_HEVC_CABAC>, <&cru SCLK_HEVC_CORE>;
+		clock-names = "axi", "ahb", "cabac", "core";
+		assigned-clocks = <&cru ACLK_HEVC>, <&cru HCLK_HEVC>,
+				  <&cru SCLK_HEVC_CABAC>, <&cru SCLK_HEVC_CORE>;
+		assigned-clock-rates = <400000000>, <100000000>,
+				       <300000000>, <300000000>;
+		iommus = <&hevc_mmu>;
+		power-domains = <&power RK3288_PD_HEVC>;
+	};
+
 	hevc_mmu: iommu@ff9c0440 {
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff9c0440 0x0 0x40>, <0x0 0xff9c0480 0x0 0x40>;
@@ -1284,7 +1299,7 @@ hevc_mmu: iommu@ff9c0440 {
 		clocks = <&cru ACLK_HEVC>, <&cru HCLK_HEVC>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
-		status = "disabled";
+		power-domains = <&power RK3288_PD_HEVC>;
 	};
 
 	gpu: gpu@ffa30000 {
-- 
2.42.0


