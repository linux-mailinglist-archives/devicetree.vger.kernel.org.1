Return-Path: <devicetree+bounces-30885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EF28295D0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 10:09:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 06C8A1C2167D
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 09:09:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAA473BB26;
	Wed, 10 Jan 2024 09:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="Y0fTX59d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C183B7A8
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 09:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1704877735; x=1736413735;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=SoaeUq/2fCVJjePZhkTBVyrzS0YabJ7y5Jcb+7ZLfPY=;
  b=Y0fTX59dKG48lmNg6fMzSNWyVzKwvK3jJ2x1vUW/aDVkVqbgLsqoU9jm
   z3e8uJa0xn35Ow0Ni06+g7cdHGQq6RO3bdPWQd3VWxH4O5mM0jYEZ0wl7
   qoEBUB1868o2pY/0zoka1r3sQd5gxNtF/YvU5E2V0Lclf3Jx+f5xkQq1x
   I6WNiERghwca9lnrhSez+0VGVBbEKpiZlZLVmsEic59e0+iE7+LJG9ZzE
   p5MtYpDmBYtghxM4WAYJKcl/8E6uroCiXrIGp1mmtdMZNwNgsbvMVOKAM
   OV8boPQYQBa81rfmPtbvte4newrxl/M2OY0R/6ucu6jJ/HQT2ZK9ZIbyB
   g==;
X-IronPort-AV: E=Sophos;i="6.04,184,1695679200"; 
   d="scan'208";a="34823266"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 10 Jan 2024 10:08:52 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 31BA0280075;
	Wed, 10 Jan 2024 10:08:52 +0100 (CET)
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
Subject: [PATCH 1/1] arm64: dts: tqma8mpql: fix audio codec iov-supply
Date: Wed, 10 Jan 2024 10:08:49 +0100
Message-Id: <20240110090849.463270-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

IOVDD is supplied by 1.8V, fix the referenced regulator.

Fixes: d8f9d8126582d ("arm64: dts: imx8mp: Add analog audio output on i.MX8MP TQMa8MPxL/MBa8MPxL")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts     | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index a2d5d19b2de0c..86d3da36e4f3e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -184,6 +184,13 @@ reg_vcc_12v0: regulator-12v0 {
 		enable-active-high;
 	};
 
+	reg_vcc_1v8: regulator-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
 	reg_vcc_3v3: regulator-3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "VCC_3V3";
@@ -480,7 +487,7 @@ tlv320aic3x04: audio-codec@18 {
 		clock-names = "mclk";
 		clocks = <&audio_blk_ctrl IMX8MP_CLK_AUDIOMIX_SAI3_MCLK1>;
 		reset-gpios = <&gpio4 29 GPIO_ACTIVE_LOW>;
-		iov-supply = <&reg_vcc_3v3>;
+		iov-supply = <&reg_vcc_1v8>;
 		ldoin-supply = <&reg_vcc_3v3>;
 	};
 
-- 
2.34.1


