Return-Path: <devicetree+bounces-241942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD54C8490F
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 11:51:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 428D63A82C9
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 10:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7286830146C;
	Tue, 25 Nov 2025 10:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Z+2B+PZV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ED7A314A61
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 10:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764067867; cv=pass; b=pzfGR8EzDS1zfpxCMVdj/5z6qJxozfHGY39liGPadLvzEXFXJqLDBPpE+olUMK/AnFgBvrbx2p/X5imTpVkqmfss1gpmC2nbGHl6cEQH6VK4ZbvSSl1M82pYjTAFJD+YJH74Jx+XkfomLr3gvVnHGxPgDdCa3Bf4YD/ECHtbp+k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764067867; c=relaxed/simple;
	bh=NFi0icoHeQUKAw0Iv6PoZfT+ErxWseq3oUUyM9DTBwk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IZY7ugLaE1uMH2AEz8uYo1BIqxKWSCbFL7Y5dlnpF+v2/GtS2J8iwxvGWBtg5QFtAbDl18nk+i/CWrt1zhTNIFpj1C76xrRDkw60ivMeitXmUg/tUIL2ViI8SzK2g236k2mhptDagSV1LfXD5si+kTXWVAfEMf7rSiwq6FkbmI0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Z+2B+PZV; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=IB2BJ+NjsePf+RBusrruQxj2A7QMZouxVFNIpo9FL7Y=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1764067817;
 b=e8V6AMk+qNtD8h29nGOK3F2vS785Io2kaeYR2KkYf4o2zFgJtY29aMVIim3A7BWe/tOtAMFw
 hg9Z/62kY5lFG9Y/2AXCpDyclEP32CjwRsMXuZfnmS/0B2D0uXihi7v50GuCSypHOjyHt4taOVY
 AJGHiWwmkCJ5EDYBKHclhZF6tmRq0ryb/zDQ2o3F9ktHYk8IQoZIZuKynIyViGWVaHldZeXq9kt
 ZcyWtvQJGrOrh2TNB2TNPRoogc5iJJWzgN0JE7kGCIZ1hUp69rhTRrmp8I0TSfYVZZ83zUphFA3
 3zikEtY1GwoZ3axoI2hdHpbrKlOT+ljwRfYAInhcAlV+w==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1764067817;
 b=YG6GnlXwseyjnuRlC/uE0qUziPHgySlhOAGANZC3RhPdR/ppy7Im+jDRwulF7weKpGm7o4KO
 UFJ0oKUWBmTdceEawJpMJ0x+3vjoSa5al942NwhM+TJYo6cafrNCkaEs/ubCZ3VczzWUrUCFGGk
 DdKLV8fs1nBjtsvy5W3QhXHY30VNfnHW5K7vVfZorsIIJ64cbVVkm39UjMlKd6QUQfYBRm7HHSo
 0PABm+n7gjCAHzhULMmiS5YaXMCDmkW61ov7UpGoLShMUg6V9NpphBa4bXCb3nDm9GxvJDNwPEi
 fq4FACY3bZHvvN3DSm0vyLLnRWBeW24Fxk8rMWfc2k5mA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Tue, 25 Nov 2025 11:50:17 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 77AEF220B93;
	Tue, 25 Nov 2025 11:50:10 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Peng Fan <peng.fan@nxp.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] dt-bindings: soc: imx93-media-blk-ctrl: Fix indentation
Date: Tue, 25 Nov 2025 11:50:05 +0100
Message-ID: <20251125105006.1612348-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4dFzwz1Gpdz3yZQL
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:61951b6827d5fb2c244f892ba8d9d357
X-cloud-security:scantime:1.869
DKIM-Signature: a=rsa-sha256;
 bh=IB2BJ+NjsePf+RBusrruQxj2A7QMZouxVFNIpo9FL7Y=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1764067817; v=1;
 b=Z+2B+PZVvTEABzCdeJWP/N3iO9Y6ArdZXtCwXXrH5Pcr6x1hrfwSWIY4QGaZiedEj/5MW5rz
 BzyjnTkjJxuejrfraOJkPsv5tMxNmB6mFWzx9W6BwPc1wX+cU/bzgo6DZuNcXLuBskqGhT/IaaR
 BcD5jX7Y6gPAWSoC6KNqlqLRz9J2laBWcBZvu4bzSmwWjErMzRKeLLFGaNTzSCRx7Iq+7pYIont
 tw0amYz3VEghMUHph5tK7c5pys0zs4hCZH0h9RWbFNq0tR5jBt7lDDcNCj9yKGnlXsvED7bKzNG
 oTJkPmiSrTp2RWhd13GuI7p1YpoODP5FGnQRsyp9QKvNQ==

Indentation is 4 spaces in DT bindings.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../soc/imx/fsl,imx93-media-blk-ctrl.yaml     | 32 +++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
index 34aea58094e55..3173f0c112b0a 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
@@ -96,20 +96,20 @@ examples:
     #include <dt-bindings/power/fsl,imx93-power.h>
 
     system-controller@4ac10000 {
-      compatible = "fsl,imx93-media-blk-ctrl", "syscon";
-      reg = <0x4ac10000 0x10000>;
-      power-domains = <&mediamix>;
-      clocks = <&clk IMX93_CLK_MEDIA_APB>,
-               <&clk IMX93_CLK_MEDIA_AXI>,
-               <&clk IMX93_CLK_NIC_MEDIA_GATE>,
-               <&clk IMX93_CLK_MEDIA_DISP_PIX>,
-               <&clk IMX93_CLK_CAM_PIX>,
-               <&clk IMX93_CLK_PXP_GATE>,
-               <&clk IMX93_CLK_LCDIF_GATE>,
-               <&clk IMX93_CLK_ISI_GATE>,
-               <&clk IMX93_CLK_MIPI_CSI_GATE>,
-               <&clk IMX93_CLK_MIPI_DSI_GATE>;
-               clock-names = "apb", "axi", "nic", "disp", "cam",
-                             "pxp", "lcdif", "isi", "csi", "dsi";
-      #power-domain-cells = <1>;
+        compatible = "fsl,imx93-media-blk-ctrl", "syscon";
+        reg = <0x4ac10000 0x10000>;
+        power-domains = <&mediamix>;
+        clocks = <&clk IMX93_CLK_MEDIA_APB>,
+                 <&clk IMX93_CLK_MEDIA_AXI>,
+                 <&clk IMX93_CLK_NIC_MEDIA_GATE>,
+                 <&clk IMX93_CLK_MEDIA_DISP_PIX>,
+                 <&clk IMX93_CLK_CAM_PIX>,
+                 <&clk IMX93_CLK_PXP_GATE>,
+                 <&clk IMX93_CLK_LCDIF_GATE>,
+                 <&clk IMX93_CLK_ISI_GATE>,
+                 <&clk IMX93_CLK_MIPI_CSI_GATE>,
+                 <&clk IMX93_CLK_MIPI_DSI_GATE>;
+        clock-names = "apb", "axi", "nic", "disp", "cam",
+                      "pxp", "lcdif", "isi", "csi", "dsi";
+        #power-domain-cells = <1>;
     };
-- 
2.43.0


