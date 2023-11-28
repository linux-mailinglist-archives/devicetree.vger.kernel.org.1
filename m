Return-Path: <devicetree+bounces-19600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD37B7FB6C8
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 11:10:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 982A2282865
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 10:10:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04DCC4D586;
	Tue, 28 Nov 2023 10:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="n5F9+GZl"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C89A1DE;
	Tue, 28 Nov 2023 02:10:39 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3ASAAMDk130472;
	Tue, 28 Nov 2023 04:10:22 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701166222;
	bh=CE16wh9zl1KgMuVJ0r2u9v6WuIGMBSyHIrUg3kv13nk=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=n5F9+GZl5KzprMHON4sYIlJJ8fCbjkpINUaHcUQiNDFBBtEdWjq+ESxyDUjubsTV3
	 5yS8FdI8UWMsk+gRG6wQDi8YGiVjIQsCr3k88XbTTfG+kgpN+D9uSUw8b2g0Akfuf9
	 +mgYcG3XxipQH2J4MupdyuxJ7rjx0VRB/fUmwzUE=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3ASAAMwW070534
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 28 Nov 2023 04:10:22 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 28
 Nov 2023 04:10:22 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 28 Nov 2023 04:10:22 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3ASAAKLR101189;
	Tue, 28 Nov 2023 04:10:21 -0600
From: Jai Luthra <j-luthra@ti.com>
Date: Tue, 28 Nov 2023 15:39:43 +0530
Subject: [PATCH v3 1/9] arm64: defconfig: Enable AM62 CSI2RX
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231128-csi_dts-v3-1-0bb11cfa9d43@ti.com>
References: <20231128-csi_dts-v3-0-0bb11cfa9d43@ti.com>
In-Reply-To: <20231128-csi_dts-v3-0-0bb11cfa9d43@ti.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, Aradhya Bhatia <a-bhatia1@ti.com>,
        Devarsh
 Thakkar <devarsht@ti.com>,
        Vaishnav Achath <vaishnav.a@ti.com>,
        Julien Massot
	<julien.massot@collabora.com>,
        Martyn Welch <martyn.welch@collabora.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
        Jai Luthra
	<j-luthra@ti.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1283; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=rUb+tMOTZAb+lVYb64icNGmFWgAhMwWgJGOMQV1XTKI=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlZbx+o0nqRRTvtimPhBJKPxHz3ggoiSSdhjpFq
 MUMrLLvwBeJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZWW8fgAKCRBD3pH5JJpx
 RbxYEAC0B+l3JTJ+SvdwcTA2dYItti6G5tZVcs/MBZWS028RLTKn6jmq2GG2XrEq6UVGi5hzva4
 L98v+dVO+rVPIYDymGHq4Q7xloMqnlaoe/8Rj5t03pbO042+idLDRG8YRfNBXjLU30/9n4Eb3/d
 +Pl5pcxEsD4+a8hAPjjbCjwSFMcNypbhUodeUVSM+nlXpjrK6r0rIBQESjODEH3MkFjE0dewa6n
 cxD0kCNhE2GsqwMMrm2ts281AkSX9eaUcyk/QslBorxlxa+xuoKIumCt71WLlypKrn+ultTVMFy
 Zhh5PCECvSmscQJkCCdN8HKlnmnAR4A+1Tv3yRzBPAEb7RfDfL3x10XXt6uAU8PWQdYpRGcdssG
 +dJnoHc+Jz9fy5nnBP98NWFPWg7T3DtB/YacwqoHP8e9FeV8fJf1ZnJy6qhuW2zVfBic77OD7lo
 Kr/VVRerSgrGk65UyfnF/UXc/KsUsfpP4vnDg7QHY4eOQnfJSWlV2Ph5bl24QHGFw0aztKsOHe9
 6Dppxw5PSXGTRhHbpSBfNTQH+pz2/CraftyD+Z7dpQ6ARAFstmnCw5p4Xd/aM4qvTyQwIbHE6Op
 7EES2TfUv86wbezPFNpYBPFha8iW9H/DPqg87KueqxVjOtIwloXeec5eKa4BY+UPvwLi2lB+iG3
 RKqq7KSOLRHESAg==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

AM62 and other K3 based SoCs use Cadence DPHY and CSI-RX bridge drivers,
along with a DMA wrapper CSI IP for the camera pipeline.

Tested-by: Martyn Welch <martyn.welch@collabora.com>
Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b60aa1f89343..aa2df39d072e 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -783,6 +783,7 @@ CONFIG_USB_VIDEO_CLASS=m
 CONFIG_V4L_PLATFORM_DRIVERS=y
 CONFIG_SDR_PLATFORM_DRIVERS=y
 CONFIG_V4L_MEM2MEM_DRIVERS=y
+CONFIG_VIDEO_CADENCE_CSI2RX=m
 CONFIG_VIDEO_MEDIATEK_JPEG=m
 CONFIG_VIDEO_MEDIATEK_VCODEC=m
 CONFIG_VIDEO_IMX7_CSI=m
@@ -804,6 +805,7 @@ CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
 CONFIG_VIDEO_SAMSUNG_S5P_JPEG=m
 CONFIG_VIDEO_SAMSUNG_S5P_MFC=m
 CONFIG_VIDEO_SUN6I_CSI=m
+CONFIG_VIDEO_TI_J721E_CSI2RX=m
 CONFIG_VIDEO_HANTRO=m
 CONFIG_VIDEO_IMX219=m
 CONFIG_VIDEO_IMX412=m
@@ -1421,6 +1423,7 @@ CONFIG_PHY_XGENE=y
 CONFIG_PHY_CAN_TRANSCEIVER=m
 CONFIG_PHY_SUN4I_USB=y
 CONFIG_PHY_CADENCE_TORRENT=m
+CONFIG_PHY_CADENCE_DPHY_RX=m
 CONFIG_PHY_CADENCE_SIERRA=m
 CONFIG_PHY_MIXEL_MIPI_DPHY=m
 CONFIG_PHY_FSL_IMX8M_PCIE=y

-- 
2.42.1


