Return-Path: <devicetree+bounces-26572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E67DA816F92
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:06:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 872EDB20F14
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF48F3D542;
	Mon, 18 Dec 2023 12:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="KOkMOKT7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B8013A1AF
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702904107; x=1734440107;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=RaSQSbqrwsmL7+ltsf9YdMqSobE1PbNLc2hW9T5O4+c=;
  b=KOkMOKT7/mvjTE+gdXafztSwrGGJ1rF0TQglSNqwalvi77mL6LQRYYgO
   Fn5PECtiMFWJYKn8kvqqCNCHam4Te/rhk0y5dEQ/9GC6va3NqzZ3hSaAw
   ETGHDat2MHSlO7efrTB1FgaYlO2esuKjaX5cNRqYkSw8LmjNwJF0UL2mW
   O5yeCc9KmrinPYzwr2FiYjR/LpUJ9CnnDlRoSn/vwVXtI/8bwpzfx9aj+
   Svs+efnaFRlpQ+rzxfaYS+SLOlslhuHhlM0hG0/oPdINhw4R9yod1qxBr
   smdeyXFFkl01Dpfo1w/SBGxWaiQugqMpaQgj2YIjmcNFDtZ5rGnyNwKXK
   Q==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34562693"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 13:55:00 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B9535280087;
	Mon, 18 Dec 2023 13:54:59 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 04/23] ARM: dts: imx7[d]-mba7: disable PCIe interface
Date: Mon, 18 Dec 2023 13:54:40 +0100
Message-Id: <20231218125459.2769733-5-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
References: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Using internal PHY refclk is not supported yet.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
index d3a6b81fb1dc..34adf76b713e 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
@@ -102,7 +102,7 @@ &pcie {
 	/* probe deferral not supported */
 	/* pcie-bus-supply = <&reg_mpcie_1v5>; */
 	reset-gpio = <&gpio5 12 GPIO_ACTIVE_LOW>;
-	status = "okay";
+	status = "disabled";
 };
 
 &usbotg2 {
-- 
2.34.1


