Return-Path: <devicetree+bounces-132335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEB29F6A09
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 16:31:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9996D18873DE
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 15:31:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A6B71F8AFE;
	Wed, 18 Dec 2024 15:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="L20Isi2D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F661132C38;
	Wed, 18 Dec 2024 15:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.77.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734535814; cv=none; b=f8moOzYHI5SbsbNtj1w5J1hEKj24ir50q4rEZjBpaoJkM/mEFyaQH4+m1us6SV1ziHEwS29vBAcQG2dNfdiG6SPG7zBkp7CIQpiQ1TREKMpdbw78Nh9oW7OAasGO9jEpf2eE3/VE4u7+3F+t87/tcANZ+OTFVWBABqRW49D4rtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734535814; c=relaxed/simple;
	bh=3VnTFpfsJ8szo4iwYlfnnuoA2BW18esOIBfsJ5r6nRw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t6cVYMG4QwvHqlIDt9TZZUO/MFoaX30rFJBxgBjb35jJn2tYX5nF6mxFQUqjyHHT5c5uvj1+3qffdckYewzD7XVBmk9p9wC2VQBY239vKCi+lD1Uw/7XbBcgt9bM2Zmf/PgpiWkhEs+Kd72+p7CWwIrmHwOiLLAt1Uo/pgmduWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=L20Isi2D; arc=none smtp.client-ip=116.203.77.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fris.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 412FBBFB05;
	Wed, 18 Dec 2024 16:30:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1734535810; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=JgASWdXNS3RqXVlA/ImzhuUR23AWDdoHokCYtEmwqDo=;
	b=L20Isi2DAUo2qXpjkQIriyp7PxpAWdBObbWKlkfL2ZxkAYpaonmHa/wS1oVceOXLNgijSj
	eunGPCDTQlNVAzlgfuQbUXxJNYH3jIpj5bNaMjogZ8FvUTWSrTaHcMbN+71Qa8LuBOk21j
	ITYm+eh8UPy81F0ZtjcUW5ZyKLOwKSj9lzjzqCkIBDReC1iAfzWY9C0uUFdhucx7gdh13r
	g0qXlQgI2OmwmL2kWGj3xYax6Po1ZgxvpAAp2GHOvFwe8Swgq7nTZ2VdcQrm2ycCkYiUk4
	r+XLne08y0F4+uveZQO6XVjNWZ7yyVVC2iBTIVqkFH4h6KjmCeWUZg3iJBNJfg==
From: Frieder Schrempf <frieder@fris.de>
To: linux-arm-kernel@lists.infradead.org,
	Marek Vasut <marex@denx.de>,
	Conor Dooley <conor@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v3 9/9] arm64: dts: imx8mp-kontron: Add support for reading SD_VSEL signal
Date: Wed, 18 Dec 2024 16:27:32 +0100
Message-ID: <20241218152842.97483-10-frieder@fris.de>
In-Reply-To: <20241218152842.97483-1-frieder@fris.de>
References: <20241218152842.97483-1-frieder@fris.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

From: Frieder Schrempf <frieder.schrempf@kontron.de>

This fixes the LDO5 regulator handling of the pca9450 driver by
taking the status of the SD_VSEL into account to determine which
configuration register is used for the voltage setting.

Even without this change there is no functional issue, as the code
for switching the voltage in sdhci.c currently switches both, the
VSELECT/SD_VSEL signal and the regulator voltage at the same time
and doesn't run into an invalid corner case.

We should still make sure, that we always use the correct register
when controlling the regulator. At least in U-Boot this fixes an
actual bug where the wrong IO voltage is used and it makes sure
that the correct voltage can be read from sysfs.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
Changes for v3:
* Rebase to next-20241218

Changes for v2:
* new patch
---
 arch/arm64/boot/dts/freescale/imx8mp-kontron-osm-s.dtsi | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-kontron-osm-s.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-kontron-osm-s.dtsi
index e0e9f6f7616d9..b97bfeb1c30f8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-kontron-osm-s.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-kontron-osm-s.dtsi
@@ -311,6 +311,7 @@ reg_nvcc_sd: LDO5 {
 				regulator-name = "NVCC_SD (LDO5)";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
+				sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
 			};
 		};
 	};
@@ -808,7 +809,7 @@ MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0		0x1d0 /* SDIO_A_D0 */
 			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1		0x1d0 /* SDIO_A_D1 */
 			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2		0x1d0 /* SDIO_A_D2 */
 			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3		0x1d0 /* SDIO_A_D3 */
-			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT		0x1d0
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT		0x400001d0
 		>;
 	};
 
@@ -820,7 +821,7 @@ MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0		0x1d4 /* SDIO_A_D0 */
 			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1		0x1d4 /* SDIO_A_D1 */
 			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2		0x1d4 /* SDIO_A_D2 */
 			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3		0x1d4 /* SDIO_A_D3 */
-			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT		0x1d0
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT		0x400001d0
 		>;
 	};
 
@@ -832,7 +833,7 @@ MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0		0x1d6 /* SDIO_A_D0 */
 			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1		0x1d6 /* SDIO_A_D1 */
 			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2		0x1d6 /* SDIO_A_D2 */
 			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3		0x1d6 /* SDIO_A_D3 */
-			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT		0x1d0
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT		0x400001d0
 		>;
 	};
 
-- 
2.47.1


