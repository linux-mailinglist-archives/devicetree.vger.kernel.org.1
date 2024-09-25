Return-Path: <devicetree+bounces-105026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95104984F62
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 02:17:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58F93284A4F
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 00:17:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E65134C62;
	Wed, 25 Sep 2024 00:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="iFNm+Db9"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F8D4C9A
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 00:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727223427; cv=none; b=hkn3UrJLRJLrSdYwvGDVTFSbansYHwej9l/YzMzm9j1OmNq07e8ngdJgrAT+cnoBeW2UdnMYBj2R56i5dRg59KUsv1t6m0IHtLY0nPH1YJ7X8J+R4sMUJN7plwPaERfq0VLzIQUJ/5Tbf/9VsetacmV9sKCffILZorge4Xa//SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727223427; c=relaxed/simple;
	bh=I+tLTjU4DESl8awu5VwJyfBZu3XV+l2HZXpkvXtpjI8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NEAf9kruilB/4TwUgy+z2DgMc8HnWpvt74Rr73M7OqtHesVfVsygh0ZYy9z01RzhowlAwPCYLTX83vRNUUWtGkl6SHzapRjsbGdlt6qlXM1Mu5K9MLoDOn10C4LRaSPNyVlLZAYiwxVN6d0G7D6x7d4pyJcizlGKVue/23wWSPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=iFNm+Db9; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 1D9FA88580;
	Wed, 25 Sep 2024 02:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1727223424;
	bh=GuLCwEpbX+q3TN1q8vMe6pE48nad+KaAddCALQ/Ar/A=;
	h=From:To:Cc:Subject:Date:From;
	b=iFNm+Db9QtbfGaSwNlGgPSeFgZnDkO+guaRimCMcQgiF9w1X3VZxLGOGwl3aqt8JL
	 GGJuq+yGMqgW7abXxY8kTiGXbM6sEt0IoCFAbwvO2N4/rv0i9HayLlGIIh6tviJGR/
	 B2+TiBTuHExUe3+savXWLPvuEoRaOaljRT125Vqk5FlTUoDGfip90f1Zlp8HHz7rTq
	 NLqDZ5pAMgxSW3txm3XYzW51/nBJ7sac6HJsFy5NgiyRkMyly/Tun0o4h7M4r7nwzT
	 Ar8YN1k8dD3/rnJ3AkZkBdnO1i58jTiHSbhsbaEbtYNl/7MZ+vow9sUJroP6lxpUoY
	 TXTgPCY85aiFQ==
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
Subject: [PATCH 1/2] arm64: dts: imx8mp: Document DH i.MX8MP DHCOM SoM on DRC02 carrier board
Date: Wed, 25 Sep 2024 02:15:16 +0200
Message-ID: <20240925001628.669604-1-marex@denx.de>
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

Document support for DH electronics i.MX8MP DHCOM SoM on DRC02 carrier board.
This system is populated with two ethernet ports, two CANs, RS485 and RS232,
USB, capacitive buttons and an OLED display.

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
index b39a7e031177e..09027a4ef515c 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1100,6 +1100,7 @@ properties:
       - description: i.MX8MP DHCOM based Boards
         items:
           - enum:
+              - dh,imx8mp-dhcom-drc02        # i.MX8MP DHCOM SoM on DRC02 board
               - dh,imx8mp-dhcom-pdk2         # i.MX8MP DHCOM SoM on PDK2 board
               - dh,imx8mp-dhcom-pdk3         # i.MX8MP DHCOM SoM on PDK3 board
           - const: dh,imx8mp-dhcom-som       # i.MX8MP DHCOM SoM
-- 
2.45.2


