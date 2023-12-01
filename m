Return-Path: <devicetree+bounces-20562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8106E8002D1
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 06:10:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AE4E1F20F04
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 05:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53328747C;
	Fri,  1 Dec 2023 05:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ehXjoCzf"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF41BD4A;
	Thu, 30 Nov 2023 21:09:59 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B159g65025764;
	Thu, 30 Nov 2023 23:09:42 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701407382;
	bh=CE16wh9zl1KgMuVJ0r2u9v6WuIGMBSyHIrUg3kv13nk=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=ehXjoCzfpmdcyBxJUcGTITMLFNM70r2EgfBiEt8EWltKFr0hObYyxQJU+0W0l031d
	 EvktkvFSvhMKT0PZ3IDECDnrgXnFM/hxCORQwhNBR/MHUkT4B3Zrud9FrpwYUNWeQw
	 GKrgLE57kGjGng3rSER2Q21h/eSqsxe15tR1CwJM=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B159gkc006667
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 30 Nov 2023 23:09:42 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 30
 Nov 2023 23:09:42 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 30 Nov 2023 23:09:42 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B159fMA076122;
	Thu, 30 Nov 2023 23:09:41 -0600
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
Subject: [PATCH RESEND v3 1/9] arm64: defconfig: Enable AM62 CSI2RX
Date: Fri, 1 Dec 2023 10:39:16 +0530
Message-ID: <20231201-csi_dts-v3-1-9f06f31080fe@ti.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1283; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=rUb+tMOTZAb+lVYb64icNGmFWgAhMwWgJGOMQV1XTKI=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlaWXnbtYT/7bihMySkDq/mSn3xsh5T1OJPeiAR
 G+4Xikrp82JAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZWll5wAKCRBD3pH5JJpx
 RcyUD/4+DTZGZtrwcu1KtJVk+66DBu0l5M8FG/Nwcq9XJKze0sHLVVopXZjkiCpZfhTVfwM5Mm2
 bWRAT57eaWvBpjfGJKAJX0iUnBAluguoQMZK92Zn9UQc1FPZIr6ZqcSDpW5knXVvO8KrSUKZInZ
 kfaidux+F5Naj8XnhkHnEl0gB4Upb5ECF5fa+4I4hlcClIUck3nu/uJ8FoLRmmShbwMqHm8xpQw
 +MdoTV13G1hY8mekjTBJvckA0A1WmfvbrhQ4pnp7vWMwxftzcWD9QG4BxUME27uEu1tcf9k4Sqa
 TMa6Js1O6QV/k2uFAc4O1SXrwvwu2lT92vWzess2QTqcX6ZHRktzfWOGQoXrRR3E1Onp+ONa1s4
 MJQE/tKYY1ZWfCL6W7ced50n+zIW9AyYvECeTTDTUT9zfXGucMDW/15Rse7CMxpHcCKBl8QkO+q
 qXF0zOAUwfX368VdSsgH/uAEHDTFSkFunMXt3XU3dAh8RJRji8aaRRW+oppBGmJon7FdXSbMVIx
 cT7kBRZwajCKcf4o6U0I0FSH72ejgVRvpvZ9KmlLKWGdxNDcdERJeiHNejW2IMjFhvE11ugMQxe
 +1LLIjoaFfCrs+lxPCQmxfYeInr7ZgqUG6j2W1SLofRi2dDSa5UOrF24yNACM+t2LmvBrNpU47w
 yyiy9Kme06CREfA==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp; fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
Content-Transfer-Encoding: 8bit
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


