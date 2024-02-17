Return-Path: <devicetree+bounces-43079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AF9859301
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 22:34:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05BCE1C21162
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 21:34:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 175F07F464;
	Sat, 17 Feb 2024 21:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="wwz3Psw1"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366857E579
	for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 21:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708205660; cv=none; b=RPPKmnZbj90Ykrn1cui0FQBwXxBZzkqnqEUhHNuNPG6/dBPgB623J5IB1NMOWdbWWcvEjU9AKZHWxigE/z5wou3oVvQUzfph4DAAX01tqtllKT6LhH+1LrHZAZwcbA8cyvlTyo75LHbSLoLg2AITku00lins+cHmWnegmWOpPCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708205660; c=relaxed/simple;
	bh=xE8xhXUAiq6KGGqmmRew6hovY3VvwnOz4kaKFVvVWcA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YE8mnZ0fCwwf5A3CVSwZ66OAD3zmxKaV7cOsI8Icterg8H2jlbRno1znAnJC/IHdRnE7LDpelmR19Ai8w9FgoFWgwyZqZbtEm6GfFKcvmvfhk5JNvaGAqSOrWvX5TFofz6A5IOEhLm1HZc57pwz/mTTL7hqxy+12RwHZOoBWhew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=wwz3Psw1; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id EA0AC87E74;
	Sat, 17 Feb 2024 22:34:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1708205656;
	bh=VqIRrGeWqJlm6oln1hwyGPCblCfwCHwA98SXKGXtg8s=;
	h=From:To:Cc:Subject:Date:From;
	b=wwz3Psw1PudKXFfBQhikCIMQ2v3oN4WFi/iKhrVIOMj/zyoclgHI/524IzEomDT5Q
	 QAY/BZUNFRcDEd+Avca0dMtq33AA5grAg57U+/T6jbNu5Bcxx8R1/H9OAtd9rGzD99
	 t4htRh0ORubWhEm+/c0KUB41kPsMfrGIXWJ8/uPmPYs7eqJ8OEsUxfFmcGWqWLnWWw
	 s32efoxtvrWChax4O7Rotb9TWK7Xrpnt8NOHLxQiPcegy+WzK0CTT6GyvQOu55xzKB
	 lK41kcabbJZ0mEoiPsu06VBeSXLSlDDQjUm4c9doqo/NxYtDxteM2WcC1bQKHRk90A
	 9ZBYLYyf0ee/g==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: Set SPI NOR to max 40 MHz on Data Modul i.MX8M Plus eDM SBC
Date: Sat, 17 Feb 2024 22:33:30 +0100
Message-ID: <20240217213358.164323-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

The SPI NOR bus routing on this board cannot go above 50 MHz,
set the clock frequency to maximum of 40 MHz to be within a
safe margin. Remove the comment as well.

Fixes: 562d222f23f0 ("arm64: dts: imx8mp: Add support for Data Modul i.MX8M Plus eDM SBC")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
index 12960226974ca..5c89c601b6817 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
@@ -164,7 +164,7 @@ &ecspi1 {
 	flash@0 {	/* W25Q128JVEI */
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <100000000>;	/* Up to 133 MHz */
+		spi-max-frequency = <40000000>;
 		spi-tx-bus-width = <1>;
 		spi-rx-bus-width = <1>;
 	};
-- 
2.43.0


