Return-Path: <devicetree+bounces-21007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 27490801F16
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 23:36:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF2902810D0
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 22:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D2A22232B;
	Sat,  2 Dec 2023 22:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ixit.cz header.i=@ixit.cz header.b="Sz67HQgt"
X-Original-To: devicetree@vger.kernel.org
Received: from ixit.cz (ip-89-177-23-149.bb.vodafone.cz [89.177.23.149])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACA99129;
	Sat,  2 Dec 2023 14:36:06 -0800 (PST)
Received: from newone.lan (unknown [10.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id D8A531612A1;
	Sat,  2 Dec 2023 23:30:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1701556203;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6Zc39xsL707XCoXIplAh3ga88kJDua1ThzVS+PxcXYc=;
	b=Sz67HQgt6Qhbdi642JEJmyb3q41j2bBfbd6mieLNqnLVFy6bkC+45ppm5792hV5LXoArUC
	3Va+uaAyibn8dM5IKDmuzb/l1dCXgfbXWRulSI1AE9+0Een5pDdS2hy2LXX7/pKVK8S4xY
	zVmQxIZkOVKe9+IZ9TW22xvO48x98d0=
From: David Heidelberg <david@ixit.cz>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	David Heidelberg <david@ixit.cz>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/5] arm64: dts: imx8mq-phanbell: make dts use gpio-fan matrix instead of array
Date: Sat,  2 Dec 2023 23:29:01 +0100
Message-ID: <20231202222934.137191-2-david@ixit.cz>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231202222934.137191-1-david@ixit.cz>
References: <20231202222934.137191-1-david@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

No functional changes.

Adjust to comply with dt-schema requirements
and make possible to validate values.

Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
index a3b9d615a3b4..e34045d10a12 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
@@ -39,7 +39,7 @@ reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
 
 	fan: gpio-fan {
 		compatible = "gpio-fan";
-		gpio-fan,speed-map = <0 0 8600 1>;
+		gpio-fan,speed-map = <0 0>, <8600 1>;
 		gpios = <&gpio3 5 GPIO_ACTIVE_HIGH>;
 		#cooling-cells = <2>;
 		pinctrl-names = "default";
-- 
2.42.0


