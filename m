Return-Path: <devicetree+bounces-25411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FD78132F7
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:23:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 958261C215A3
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:23:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 198A959E54;
	Thu, 14 Dec 2023 14:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="N9cS0kfV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42C96CF;
	Thu, 14 Dec 2023 06:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702563815; x=1734099815;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=8ynOQtUE2Iwi/Axy5GVZ0LKtS2jnkiuz0t01gJ5pHSo=;
  b=N9cS0kfVFIVG7A5yJS+E7fo8kZbSovV9ZOKlXkY3YqbVK89y1Hr5olaT
   9Nu07a7o4NA56fQjN0gqIcc51stTkNiFtQL0qpDUQfYz+bCowZo9HGEVB
   0yKKGaQ+8HVsgy3kdnEkd2v35e5lBIo/4HDkWYpDBBo17sO0WF6yRmiDP
   YLR6Nr1ikkh0NuQWAbRL0pqdcnUd2d91vKcqw26lNrS8ptZwHyk6Ri4LR
   fmS4SjUewIY85BkL5JK06ARHHKPIbWjfArXZNtthGTZKF7/XY6rX+cxEa
   jhCwk0sE2RQHu8RnaIAtq2wMiFTxiFK6x59SX4zZqcUNseicgjvvQhULB
   A==;
X-IronPort-AV: E=Sophos;i="6.04,275,1695679200"; 
   d="scan'208";a="34512090"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2023 15:23:31 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id CC436280075;
	Thu, 14 Dec 2023 15:23:30 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Marek Vasut <marex@denx.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Li Yang <leoyang.li@nxp.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/4] arm64: defconfig: Enable i.MX8QXP device drivers
Date: Thu, 14 Dec 2023 15:23:27 +0100
Message-Id: <20231214142327.1962914-5-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214142327.1962914-1-alexander.stein@ew.tq-group.com>
References: <20231214142327.1962914-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These drivers are used on i.MX8QXP based devices.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/configs/defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b2c06fe167a83..9f17b8ebe246d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -787,6 +787,7 @@ CONFIG_USB_VIDEO_CLASS=m
 CONFIG_V4L_PLATFORM_DRIVERS=y
 CONFIG_SDR_PLATFORM_DRIVERS=y
 CONFIG_V4L_MEM2MEM_DRIVERS=y
+CONFIG_VIDEO_AMPHION_VPU=m
 CONFIG_VIDEO_CADENCE_CSI2RX=m
 CONFIG_VIDEO_MEDIATEK_JPEG=m
 CONFIG_VIDEO_MEDIATEK_VCODEC=m
@@ -794,6 +795,7 @@ CONFIG_VIDEO_IMX7_CSI=m
 CONFIG_VIDEO_IMX_MIPI_CSIS=m
 CONFIG_VIDEO_IMX8_ISI=m
 CONFIG_VIDEO_IMX8_ISI_M2M=y
+CONFIG_VIDEO_IMX8_JPEG=m
 CONFIG_VIDEO_QCOM_CAMSS=m
 CONFIG_VIDEO_QCOM_VENUS=m
 CONFIG_VIDEO_RCAR_ISP=m
@@ -1017,6 +1019,7 @@ CONFIG_USB_CDNS_SUPPORT=m
 CONFIG_USB_CDNS3=m
 CONFIG_USB_CDNS3_GADGET=y
 CONFIG_USB_CDNS3_HOST=y
+CONFIG_USB_CDNS3_IMX=m
 CONFIG_USB_MTU3=y
 CONFIG_USB_MUSB_HDRC=y
 CONFIG_USB_MUSB_SUNXI=y
@@ -1034,6 +1037,7 @@ CONFIG_USB_QCOM_EUD=m
 CONFIG_USB_HSIC_USB3503=y
 CONFIG_USB_ONBOARD_HUB=m
 CONFIG_NOP_USB_XCEIV=y
+CONFIG_USB_MXS_PHY=m
 CONFIG_USB_GADGET=y
 CONFIG_USB_RENESAS_USBHS_UDC=m
 CONFIG_USB_RZV2M_USB3DRD=y
@@ -1386,6 +1390,7 @@ CONFIG_EXTCON_USBC_CROS_EC=y
 CONFIG_RENESAS_RPCIF=m
 CONFIG_IIO=y
 CONFIG_EXYNOS_ADC=y
+CONFIG_IMX8QXP_ADC=m
 CONFIG_IMX93_ADC=m
 CONFIG_MAX9611=m
 CONFIG_MEDIATEK_MT6577_AUXADC=m
@@ -1437,6 +1442,7 @@ CONFIG_PHY_SUN4I_USB=y
 CONFIG_PHY_CADENCE_TORRENT=m
 CONFIG_PHY_CADENCE_DPHY_RX=m
 CONFIG_PHY_CADENCE_SIERRA=m
+CONFIG_PHY_CADENCE_SALVO=m
 CONFIG_PHY_MIXEL_MIPI_DPHY=m
 CONFIG_PHY_FSL_IMX8M_PCIE=y
 CONFIG_PHY_HI6220_USB=y
-- 
2.34.1


