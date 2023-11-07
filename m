Return-Path: <devicetree+bounces-14375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF8C7E3DC1
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 13:30:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1980B1C20B91
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 12:30:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27A9F2D7A9;
	Tue,  7 Nov 2023 12:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAYEOZAc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDE32FE31
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 12:30:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A420FC433C7;
	Tue,  7 Nov 2023 12:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699360240;
	bh=FCraxpZ/ln5cZ32lci7Dq7LGqWdWc8yhBgLj5dz5k+Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mAYEOZAczWsw1fnIs8fPaBoxVyoQfL4e49vc7vTS/0JH4Q0summAgREES5nI5sRkS
	 U8NJSzYaBpNMcryXYrof+l9O0z7AE17sbD0lLrYvzDXlzGNXNjCqjfXe3QcSgT3Oiu
	 Y9vBZCUGSnrLBm36lXPZblWi8LbCgirWqznIdzMBjUPm2jkx/MvDjX5RTJo/dMB1tv
	 VhPNCChuX48wZc2Y2y9xs0egNj19BFcfAKU/8uZgHBdirpJtqt58LFCzY/+h2BptlB
	 8I7tJhc2ptd2QHcBg7PfDz2QpYG2GbMBi2bA6SRMVdLGi/epPA8qjr5oETugqw20T7
	 7GiqoP63LKLRA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Laurentiu Tudor <laurentiu.tudor@nxp.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	leoyang.li@nxp.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 5.15 19/20] arm64: dts: ls208xa: use a pseudo-bus to constrain usb dma size
Date: Tue,  7 Nov 2023 07:29:13 -0500
Message-ID: <20231107122940.3762228-19-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107122940.3762228-1-sashal@kernel.org>
References: <20231107122940.3762228-1-sashal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.15.137
Content-Transfer-Encoding: 8bit

From: Laurentiu Tudor <laurentiu.tudor@nxp.com>

[ Upstream commit b39d5016456871a88f5cd141914a5043591b46f3 ]

Wrap the usb controllers in an intermediate simple-bus and use it to
constrain the dma address size of these usb controllers to the 40b
that they generate toward the interconnect. This is required because
the SoC uses 48b address sizes and this mismatch would lead to smmu
context faults [1] because the usb generates 40b addresses while the
smmu page tables are populated with 48b wide addresses.

[1]
xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 1
xhci-hcd xhci-hcd.0.auto: hcc params 0x0220f66d hci version 0x100 quirks 0x0000000002000010
xhci-hcd xhci-hcd.0.auto: irq 108, io mem 0x03100000
xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 2
xhci-hcd xhci-hcd.0.auto: Host supports USB 3.0 SuperSpeed
arm-smmu 5000000.iommu: Unhandled context fault: fsr=0x402, iova=0xffffffb000, fsynr=0x0, cbfrsynra=0xc01, cb=3

Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../arm64/boot/dts/freescale/fsl-ls208xa.dtsi | 46 +++++++++++--------
 1 file changed, 27 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
index 12e59777363fe..9bb360db6b195 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
@@ -1179,26 +1179,34 @@ sata1: sata@3210000 {
 			dma-coherent;
 		};
 
-		usb0: usb@3100000 {
-			status = "disabled";
-			compatible = "snps,dwc3";
-			reg = <0x0 0x3100000 0x0 0x10000>;
-			interrupts = <0 80 0x4>; /* Level high type */
-			dr_mode = "host";
-			snps,quirk-frame-length-adjustment = <0x20>;
-			snps,dis_rxdet_inp3_quirk;
-			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
-		};
+		bus: bus {
+			#address-cells = <2>;
+			#size-cells = <2>;
+			compatible = "simple-bus";
+			ranges;
+			dma-ranges = <0x0 0x0 0x0 0x0 0x100 0x00000000>;
+
+			usb0: usb@3100000 {
+				compatible = "snps,dwc3";
+				reg = <0x0 0x3100000 0x0 0x10000>;
+				interrupts = <0 80 0x4>; /* Level high type */
+				dr_mode = "host";
+				snps,quirk-frame-length-adjustment = <0x20>;
+				snps,dis_rxdet_inp3_quirk;
+				snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
+				status = "disabled";
+			};
 
-		usb1: usb@3110000 {
-			status = "disabled";
-			compatible = "snps,dwc3";
-			reg = <0x0 0x3110000 0x0 0x10000>;
-			interrupts = <0 81 0x4>; /* Level high type */
-			dr_mode = "host";
-			snps,quirk-frame-length-adjustment = <0x20>;
-			snps,dis_rxdet_inp3_quirk;
-			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
+			usb1: usb@3110000 {
+				compatible = "snps,dwc3";
+				reg = <0x0 0x3110000 0x0 0x10000>;
+				interrupts = <0 81 0x4>; /* Level high type */
+				dr_mode = "host";
+				snps,quirk-frame-length-adjustment = <0x20>;
+				snps,dis_rxdet_inp3_quirk;
+				snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
+				status = "disabled";
+			};
 		};
 
 		ccn@4000000 {
-- 
2.42.0


