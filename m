Return-Path: <devicetree+bounces-106096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FDB98920A
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2024 01:50:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 34B9F1F215EF
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2024 23:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53C15187866;
	Sat, 28 Sep 2024 23:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="GlEgHzwi"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615091714B6
	for <devicetree@vger.kernel.org>; Sat, 28 Sep 2024 23:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727567423; cv=none; b=I8wfVfy69cA8to3IiEYNxG9wc0jMLsgi5EjL0szu0wJueszSDm5F/2NVS898liyG2eBtKecA1PBukD91aP/rP3hFtTJgKeosdEdMioCwDNKQ1ojHexwicc6YZ+pQPmHrhJvRkdMUZs2IHLmE1Ppsctf0PmMnQlibCyf/0I1a3v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727567423; c=relaxed/simple;
	bh=MAXLRiW5fvxR3Tcyvd8+iENJysL/5MXZd91EbCDONxQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qnnLw2ZUY0tyj7E3tYKns5kLTxX3U7O6PuT1go8ITwHvPu7ljnWhLRnQ4gw9b7SN1e1FMnUHxrPGxYpdYhHE0cFjgfZhrupfsLY7R+ufV13QfP6PjzE/B17LxDUCnH+0N8+N9uRL+Z8eGM0QXngQjqMZ5bkhQM6TLMVrHvXUArM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=GlEgHzwi; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 34C3488972;
	Sun, 29 Sep 2024 01:50:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1727567413;
	bh=mvVcwj4kP03YMZk4e1ujC0JF26SHAyC8zjA22Sj6ab4=;
	h=From:To:Cc:Subject:Date:From;
	b=GlEgHzwiiufaqOGH2HuAgEUlWw2SH0NExOrwrR+ZsFLWcEhdi3sN+UFdSXqdIAawJ
	 U1sPI1lET1ApHya9oXtrjTK96CkDT575cInNCCQ49vSUMVTnFav/LlAxQ+s6qy+ZoD
	 J0XlKtjB++TaD3ZF0WzjKx4hH3z42zlv561lF6dlxKHRXCszKZd6xDVUUCGwExhmYh
	 ydoJgPEoIld5qM3nUyfIZCkaAUhCW46BtoXoq46T6iEmrUtTwjUBXW/nlOExu4oeIN
	 zAJ9wxk21hPuLZ9g5FBHhxLjZU9HjfPYWGq44rUGd5GbMSiBoK+pXQ54kyqBGjMwef
	 6f+P2GnaoFj/Q==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: kernel@dh-electronics.com,
	Marek Vasut <marex@denx.de>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Gregor Herburger <gregor.herburger@ew.tq-group.com>,
	Hiago De Franco <hiago.franco@toradex.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Joao Paulo Goncalves <joao.goncalves@toradex.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Mathieu Othacehe <m.othacehe@gmail.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev
Subject: [PATCH 1/2] dt-bindings: arm: fsl: Document DH electronics i.MX8M Plus DHCOM PicoITX
Date: Sun, 29 Sep 2024 01:48:08 +0200
Message-ID: <20240928234949.357893-1-marex@denx.de>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Document support for DH electronics i.MX8M Plus DHCOM SoM on PicoITX carrier
board. This system is populated with serial console, EQoS ethernet, eMMC, SD,
SPI NOR, LEDs and USB 3.0 host used in USB 2.0 mode on PicoITX.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Gregor Herburger <gregor.herburger@ew.tq-group.com>
Cc: Hiago De Franco <hiago.franco@toradex.com>
Cc: Hugo Villeneuve <hvilleneuve@dimonoff.com>
Cc: Joao Paulo Goncalves <joao.goncalves@toradex.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Mathieu Othacehe <m.othacehe@gmail.com>
Cc: Max Merchel <Max.Merchel@ew.tq-group.com>
Cc: Michael Walle <mwalle@kernel.org>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: imx@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 09027a4ef515c..319dc8f0f5a63 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1103,6 +1103,7 @@ properties:
               - dh,imx8mp-dhcom-drc02        # i.MX8MP DHCOM SoM on DRC02 board
               - dh,imx8mp-dhcom-pdk2         # i.MX8MP DHCOM SoM on PDK2 board
               - dh,imx8mp-dhcom-pdk3         # i.MX8MP DHCOM SoM on PDK3 board
+              - dh,imx8mp-dhcom-picoitx      # i.MX8MP DHCOM SoM on PicoITX board
           - const: dh,imx8mp-dhcom-som       # i.MX8MP DHCOM SoM
           - const: fsl,imx8mp
 
-- 
2.45.2


