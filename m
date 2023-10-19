Return-Path: <devicetree+bounces-9924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C797CF01B
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 08:32:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E60EDB20DE9
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 06:32:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DD4465C;
	Thu, 19 Oct 2023 06:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="QcIti3/V"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC7414F8B
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:32:28 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C045BE
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 23:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697697146; x=1729233146;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=neyez6fcwxcO7E5Co2uTVk9YYQp8PwjYAl5fod2ylIU=;
  b=QcIti3/Vrggh+XLmRb6pz5OgkSyLqJ0p7H5Qfgh+pKHPDUajv12rMV9j
   4oNmuHRbeZ8wSgHuOEO6OQNyv7MzSXckRukFb/UKYad/YXz93RjelRTa9
   tzrKOnknbC95HPWA2q+24cJ0jnz8cKfKtt5XRxyDNkqO6TjB4s4TQ3NXV
   5vE3XMQ4JlNYXZ1T0BivvO8vCfAOxsWXO/5kE3o89ez1OILHnXjxhHbIp
   MYFrmyQsEjECkTc/vdHv/8TD4klZ0TiSRhrOuOBfc11FfBv7xpam85n8Z
   KHPxDAuLS9O71400gLsQwu/XtddaDfl1ojf+Q9bqhoH/LI4iIP/CgIf1F
   w==;
X-IronPort-AV: E=Sophos;i="6.03,236,1694728800"; 
   d="scan'208";a="33541591"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Oct 2023 08:32:24 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 09A3D280082;
	Thu, 19 Oct 2023 08:32:24 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	linux@ew.tq-group.com
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dt: imx93: tqma9352-mba93xxla: Fix LPUART2 pad config
Date: Thu, 19 Oct 2023 08:32:17 +0200
Message-Id: <20231019063217.1913970-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LPUART2_RTS# has an external pull-down, so do not enable the internal
pull-up at the same time, use a pull-down instead.

Fixes: c982ecfa7992a ("arm64: dts: freescale: add initial device tree for MBa93xxLA SBC board")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
index 84fdeaaaea443..4d79e05ba9f4b 100644
--- a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
@@ -605,7 +605,7 @@ pinctrl_uart2: uart2grp {
 		fsl,pins = <
 			MX93_PAD_UART2_TXD__LPUART2_TX		0x31e
 			MX93_PAD_UART2_RXD__LPUART2_RX		0x31e
-			MX93_PAD_SAI1_TXD0__LPUART2_RTS_B	0x31e
+			MX93_PAD_SAI1_TXD0__LPUART2_RTS_B	0x51e
 		>;
 	};
 
-- 
2.34.1


