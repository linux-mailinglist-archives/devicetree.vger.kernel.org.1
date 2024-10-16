Return-Path: <devicetree+bounces-111730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7763299FCA5
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 01:59:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3AE9128667B
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 23:59:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B39B31F5846;
	Tue, 15 Oct 2024 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="yJWBz0Tc"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2B01B6D08
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 23:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729036793; cv=none; b=apPT54LhaHT07J12WzNQXzPGmKUEwGvLf1AOnFx31lVZDMEdnFu3qqqdEr+Wi8yKPDRkRS+/N9HMI9ME0Zg3V9xTi32Fx3p7skHQs4oeYq+yjlL/133OXPCXRWx6nLsqqETWLGIWi4XfMSAfk8Sx+OZ7erqanUtpDkCsYaqoC2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729036793; c=relaxed/simple;
	bh=4CXTEoB4+7H06b5TY6XHlSueseZWKSuKcfVXBxWOlFg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZSGnS7H2RNo1SrWaSGmnd2hHleHxLR4cWlm6i/M6Eo5XS+QoE+1FI11Uik/J9Nr6Ebt56JUdfDJyYoKzdj2RXFwiFa0v+5U3k6BB+BPA7oLmUrqWKnjKiZYhjSC8bMqBu15RO4HpvCScnj/tDXE3mbrFYxBounRL7tdO7BM7Asw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=yJWBz0Tc; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id F2E3188770;
	Wed, 16 Oct 2024 01:59:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1729036789;
	bh=MjBwaYvVRTijfIJyXJcHCHFF4iw2FYz3HFTfRjMVzCU=;
	h=From:To:Cc:Subject:Date:From;
	b=yJWBz0Tci7C7MKtxPuFKio9csWB8c5QWq2CqB85/CYup/hHTBxM5Ki3X9yfWaxamR
	 yTQIiigScIJGpwHbaeuYUo8lr66ehu8i1Q5+Rg7DWhF95/NHkltqHEVCpy3y31tA87
	 yOkXNNotAmp6kjLv/7cP4bl30KDArTjdt0B5EwAnusuZxinNw8EZ16J0uqoGAtwTNh
	 BYWALI709ZIS+pSPa/Lc2YdptvUL+R4ZI9emMMch9QtT8hG3dSNTOETO0I/jK7AHA1
	 x6k2UPiJZujiUWSU8HVitKc7+ddZjDvoMY+pqTAhhu/plXXvjzzPgdmRXCsMu5IRWH
	 ftmlUCx0m32xg==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
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
	Parthiban Nallathambi <parthiban@linumiz.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	kernel@dh-electronics.com
Subject: [PATCH 1/2] dt-bindings: arm: fsl: Document i.MX6DL DHCOM SoM on PDK2 carrier board
Date: Wed, 16 Oct 2024 01:58:35 +0200
Message-ID: <20241015235926.168582-1-marex@denx.de>
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

Document the DH electronics i.MX6DL DHCOM SoM and a PDK2 evaluation board.
The evaluation board features three serial ports, USB OTG, USB host with
an USB hub, Fast or Gigabit ethernet, eMMC, uSD, SD, analog audio, PCIe
and HDMI video output.

All of the aforementioned features except for mSATA are supported, mSATA
is not available on i.MX6DL and is only available on DHCOM populated with
i.MX6Q SoC which is already supported upstream.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Gregor Herburger <gregor.herburger@ew.tq-group.com>
Cc: Hiago De Franco <hiago.franco@toradex.com>
Cc: Hugo Villeneuve <hvilleneuve@dimonoff.com>
Cc: Joao Paulo Goncalves <joao.goncalves@toradex.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Marek Vasut <marex@denx.de>
Cc: Mathieu Othacehe <m.othacehe@gmail.com>
Cc: Max Merchel <Max.Merchel@ew.tq-group.com>
Cc: Michael Walle <mwalle@kernel.org>
Cc: Parthiban Nallathambi <parthiban@linumiz.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: imx@lists.linux.dev
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 319dc8f0f5a63..e16fbb55bbc08 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -523,9 +523,11 @@ properties:
           - const: dfi,fs700e-m60
           - const: fsl,imx6dl
 
-      - description: i.MX6DL DHCOM PicoITX Board
+      - description: i.MX6DL DHCOM based Boards
         items:
-          - const: dh,imx6dl-dhcom-picoitx
+          - enum:
+              - dh,imx6dl-dhcom-pdk2         # i.MX6DL DHCOM SoM on PDK2 board
+              - dh,imx6dl-dhcom-picoitx      # i.MX6DL DHCOM SoM on PicoITX board
           - const: dh,imx6dl-dhcom-som
           - const: fsl,imx6dl
 
-- 
2.45.2


