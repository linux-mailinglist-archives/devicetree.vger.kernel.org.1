Return-Path: <devicetree+bounces-20570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9828002DB
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 06:10:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 812A22815AF
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 05:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 259925235;
	Fri,  1 Dec 2023 05:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="sh8ffomd"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 190CA1FF3;
	Thu, 30 Nov 2023 21:10:29 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B15AI5d026023;
	Thu, 30 Nov 2023 23:10:18 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701407418;
	bh=Q9GfHFzHUPAETZ8jhp2saTZ+Xv19cmZBETN28QC0nhk=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=sh8ffomd4UTdNQwmlvpLKYTDakVqriEzoCXNGIqeGUIvfQIBrsca5dfyFJK0kfeSM
	 QQVm3oS2D9yEJxUjFFGNYbiXzHiS3I6ONh6B69JJdsC7+NDF6A7XIJmVtzWkFMcAac
	 /KLh6krQC9ZpXNeV8gjTfIwtg+svcGZRQbwb8bbE=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B15AIF1016517
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 30 Nov 2023 23:10:18 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 30
 Nov 2023 23:10:18 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 30 Nov 2023 23:10:18 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B15AHLG024308;
	Thu, 30 Nov 2023 23:10:17 -0600
From: Jai Luthra <j-luthra@ti.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: Jai Luthra <j-luthra@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Aradhya Bhatia
	<a-bhatia1@ti.com>, Devarsh Thakkar <devarsht@ti.com>,
        Vaishnav Achath
	<vaishnav.a@ti.com>,
        Julien Massot <julien.massot@collabora.com>,
        Martyn
 Welch <martyn.welch@collabora.com>,
        Matthias Schiffer
	<matthias.schiffer@ew.tq-group.com>
Subject: [PATCH RESEND v3 9/9] arm64: dts: ti: Use OF_ALL_DTBS for combined blobs
Date: Fri, 1 Dec 2023 10:39:24 +0530
Message-ID: <20231201-csi_dts-v3-9-9f06f31080fe@ti.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231201-csi_dts-v3-0-9f06f31080fe@ti.com>
References: <20231201-csi_dts-v3-0-9f06f31080fe@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=4271; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=DBLMWQAFX1Tzf8/HJoNJY/8QVwt817bQEtms+t6sTDU=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlaWXyWKxL0ftZBbIl3OG304SqAIwGdcPZ1muL5
 H2sYCzafhqJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZWll8gAKCRBD3pH5JJpx
 RZcIEADQOw5yGoFrdItTs/RBqInFT05n6qVj1b3DAtZFMHVuXIolD0nNk8b3K+TPWF3g25j2xGr
 EdkmGOxcIh7sxW9Np27GAg9Jb6BdMTj1c70ZYaMNe3+mNKkb8KVKaX6sQy6FGhWukBysOjUGq6O
 7Di8YXzuB+s86nv5LZHBt4RS7sCDLhHet/l5oqu1B/zjdh0/p5yAPqPxE+mKxsNq/BfD5Yy16DQ
 ywoItVPulJWpGxVU5R5h+iF0FKrfWzTRoU0XXRDGYgRpCU2mBTY1tWKQ7oUMhHALH3v0tklimzS
 AT9NZE7ah4AM2hAYTmuIy7vfTbsGHbZjxobqTJDq/7xy9swxPYMvPpZbFYmgH7O2VxqCzrSJ/Aw
 Dvk7MFJYkj6qQcrO+IhsbNAx4orcS7smlMtfgAbtAtsZMNPYVnAeE0xw9TnIbsL9DQisjDttijz
 9WJFHusD5W84Tf/NUDPzmv80aMxhuIcRU6imaYs5pvFY4g44s+Diicnf+j1W/98L6i8KWUpheOU
 b/AQTGZNkvni79MUTXj1Al7nhr56fXRF5B0awTrzKpI6wZWXu3mn8BuSfd7endowqRGG62X3hgZ
 2/nWDLkyGLYQ6mPZjYXIfruVPRxUbiF5bAGo/tNH/TP1QfsUQCU203iOnskoA+yu2Ac3oSt3AnP
 R7qK8yJlAj35y3g==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp; fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Combined dtb builds are only useful for making sure that the overlay
applies cleanly on the base dtb.

So we move all such combined blobs under a `dtb- +=` section that is
only built when OF_ALL_DTBS config is enabled.

Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
 arch/arm64/boot/dts/ti/Makefile | 27 ++++++++++++++-------------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index fd9166497c32..5ef49b02c71f 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -9,8 +9,6 @@
 # alphabetically.
 
 # Boards with AM62x SoC
-k3-am625-sk-hdmi-audio-dtbs := k3-am625-sk.dtb k3-am62x-sk-hdmi-audio.dtbo
-k3-am62-lp-sk-hdmi-audio-dtbs := k3-am62-lp-sk.dtb k3-am62x-sk-hdmi-audio.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay-csi2-ov5640.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay-csi2-tevi-ov5640.dtbo
@@ -23,8 +21,6 @@ dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-dev.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-yavia.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am62-lp-sk.dtb
-dtb-$(CONFIG_ARCH_K3) += k3-am625-sk-hdmi-audio.dtb
-dtb-$(CONFIG_ARCH_K3) += k3-am62-lp-sk-hdmi-audio.dtb
 
 # Boards with AM62Ax SoC
 dtb-$(CONFIG_ARCH_K3) += k3-am62a7-sk.dtb
@@ -36,20 +32,15 @@ dtb-$(CONFIG_ARCH_K3) += k3-am62p5-sk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am62x-sk-csi2-ov5640.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am62x-sk-csi2-tevi-ov5640.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am62x-sk-csi2-imx219.dtbo
+dtb-$(CONFIG_ARCH_K3) += k3-am62x-sk-hdmi-audio.dtbo
 
 # Boards with AM64x SoC
 dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-rdk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am642-sk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am642-tqma64xxl-mbax4xxl.dtb
-
-k3-am642-tqma64xxl-mbax4xxl-sdcard-dtbs := \
-	k3-am642-tqma64xxl-mbax4xxl.dtb k3-am64-tqma64xxl-mbax4xxl-sdcard.dtbo
-k3-am642-tqma64xxl-mbax4xxl-wlan-dtbs := \
-	k3-am642-tqma64xxl-mbax4xxl.dtb k3-am64-tqma64xxl-mbax4xxl-wlan.dtbo
-
-dtb-$(CONFIG_ARCH_K3) += k3-am642-tqma64xxl-mbax4xxl-sdcard.dtb
-dtb-$(CONFIG_ARCH_K3) += k3-am642-tqma64xxl-mbax4xxl-wlan.dtb
+dtb-$(CONFIG_ARCH_K3) += k3-am64-tqma64xxl-mbax4xxl-sdcard.dtbo
+dtb-$(CONFIG_ARCH_K3) += k3-am64-tqma64xxl-mbax4xxl-wlan.dtbo
 
 # Boards with AM65x SoC
 k3-am654-gp-evm-dtbs := k3-am654-base-board.dtb k3-am654-base-board-rocktech-rk101-panel.dtbo
@@ -98,26 +89,36 @@ k3-am625-sk-csi2-ov5640-dtbs := k3-am625-sk.dtb \
 	k3-am62x-sk-csi2-ov5640.dtbo
 k3-am625-sk-csi2-tevi-ov5640-dtbs := k3-am625-sk.dtb \
 	k3-am62x-sk-csi2-tevi-ov5640.dtbo
+k3-am625-sk-hdmi-audio-dtbs := k3-am625-sk.dtb k3-am62x-sk-hdmi-audio.dtbo
+k3-am62-lp-sk-hdmi-audio-dtbs := k3-am62-lp-sk.dtb k3-am62x-sk-hdmi-audio.dtbo
 k3-am62a7-sk-csi2-imx219-dtbs := k3-am62a7-sk.dtb \
 	k3-am62x-sk-csi2-imx219.dtbo
 k3-am62a7-sk-csi2-ov5640-dtbs := k3-am62a7-sk.dtb \
 	k3-am62x-sk-csi2-ov5640.dtbo
 k3-am62a7-sk-csi2-tevi-ov5640-dtbs := k3-am62a7-sk.dtb \
 	k3-am62x-sk-csi2-tevi-ov5640.dtbo
+k3-am642-tqma64xxl-mbax4xxl-sdcard-dtbs := \
+	k3-am642-tqma64xxl-mbax4xxl.dtb k3-am64-tqma64xxl-mbax4xxl-sdcard.dtbo
+k3-am642-tqma64xxl-mbax4xxl-wlan-dtbs := \
+	k3-am642-tqma64xxl-mbax4xxl.dtb k3-am64-tqma64xxl-mbax4xxl-wlan.dtbo
 dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
 	k3-am625-beagleplay-csi2-tevi-ov5640.dtb \
 	k3-am625-sk-csi2-imx219.dtb \
 	k3-am625-sk-csi2-ov5640.dtb \
 	k3-am625-sk-csi2-tevi-ov5640.dtb \
+	k3-am625-sk-hdmi-audio.dtb \
+	k3-am62-lp-sk-hdmi-audio.dtb \
 	k3-am62a7-sk-csi2-imx219.dtb \
 	k3-am62a7-sk-csi2-ov5640.dtb \
-	k3-am62a7-sk-csi2-tevi-ov5640.dtb
+	k3-am642-tqma64xxl-mbax4xxl-sdcard.dtb \
+	k3-am642-tqma64xxl-mbax4xxl-wlan.dtb
 
 # Enable support for device-tree overlays
 DTC_FLAGS_k3-am625-beagleplay += -@
 DTC_FLAGS_k3-am625-sk += -@
 DTC_FLAGS_k3-am62-lp-sk += -@
 DTC_FLAGS_k3-am62a7-sk += -@
+DTC_FLAGS_k3-am642-tqma64xxl-mbax4xxl += -@
 DTC_FLAGS_k3-am6548-iot2050-advanced-m2 += -@
 DTC_FLAGS_k3-j721e-common-proc-board += -@
 DTC_FLAGS_k3-j721s2-common-proc-board += -@

-- 
2.42.1


