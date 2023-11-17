Return-Path: <devicetree+bounces-16508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C85F7EEE94
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:30:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44DC81F2137C
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA98213AF6;
	Fri, 17 Nov 2023 09:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="YCgluMwU"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DD6CD72;
	Fri, 17 Nov 2023 01:30:03 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AH9TXMh058787;
	Fri, 17 Nov 2023 03:29:33 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700213373;
	bh=CE16wh9zl1KgMuVJ0r2u9v6WuIGMBSyHIrUg3kv13nk=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=YCgluMwUd8suq94SZHXdXNR7vNQ+5lXaqR37nulSVvU0Z/HqIxnZBptLkpoFjpLip
	 ohF1qQPIRY76Qa+1986xYm0KsVyZu5NkbaEwIvDXrsLVo2LN1Ls7iyFy+L4iqxPQLc
	 93pUwZLXfWbDXUnNAHjIhWMKO1kgZATguyFHTT64=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AH9TX9r075646
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Nov 2023 03:29:33 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Nov 2023 03:29:33 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Nov 2023 03:29:33 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AH9TW11125272;
	Fri, 17 Nov 2023 03:29:33 -0600
From: Jai Luthra <j-luthra@ti.com>
Date: Fri, 17 Nov 2023 14:58:09 +0530
Subject: [PATCH v2 1/9] arm64: defconfig: Enable AM62 CSI2RX
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231117-csi_dts-v2-1-bf4312194a6b@ti.com>
References: <20231117-csi_dts-v2-0-bf4312194a6b@ti.com>
In-Reply-To: <20231117-csi_dts-v2-0-bf4312194a6b@ti.com>
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
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlVzJsuaA30WzP72QhttVUNkNtw3tMHNph8yWp/
 rQA93smxKuJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZVcybAAKCRBD3pH5JJpx
 Rfr+D/sHMfFB4h7n0BFJsbJ+20P0uwCTUJ4L0GQ1Lwv7vp5ySZ5uRtVCkdNk5TOF0bDdqMybWYs
 I9VfMaizm8boY2h2mTIg//6YEOptYHMPPsTM0oC2VXNfZXudW4XBDwdX9+n23wAYStmi547KBCf
 yxUVRi0qPzw2As5iqf3H5Y12Twe59ZwVQfzhn9JHaoIe+0tiAUjyFK7r2vEStxgMnHsJotx0/WH
 VSHZVDiexIU8/ZQ9+r7emzjuaEI8mQZBl17JlAMfZIE/LWFsAdb3SRcjUukMPvnQUne1bzaZlg+
 +Jpn5+rzO5mv62K+NxhYholRTK748nq211EKNO4+Yn32HqyjNglgHF9H8eoFN7Nu/fIpf6Jc7ob
 x7OkH3OCt0PmVtb8QDodK4JJD7suepZT/EEMGxNqs+Ogsa6sUcg5MNggTC/swAyOZqchb6Bhzq9
 F267QewTmXQb9k+sRycbaRpqfPxW0i56FDnC737J05UszpVtfcIgU6twwDQwk9niqmSlJU9n9pe
 ZBJjff9kAjvMkhETKpEago6wYDETPh5y6IW96Zhc3oDC9Jy6F7e+YHB96nO5KQV+Aunz+UieoXw
 CMSMxssyLyfAeXQgJ5bjPv51QNSSzBPHrbQCIlhUa7eWFnYzPnfFgmXIl6X/+Fusnojv83XmxJI
 3KBAdTtVrFBqJSw==
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


