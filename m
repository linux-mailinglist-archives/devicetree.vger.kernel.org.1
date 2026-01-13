Return-Path: <devicetree+bounces-254530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C7ED1911D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:17:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25FB93006629
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 13:12:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AC763904F7;
	Tue, 13 Jan 2026 13:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="opfgC3PE"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 862413904D8;
	Tue, 13 Jan 2026 13:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768309917; cv=none; b=WvH/gmltwPUbFvYzzC7nEc/4wqCdPSMlifkmXeUdSphOrUtlrauGyLYc6+P9AboEDsbjiZPGjOoaSGeH5/Uqrhf3sltfcLvi3HxhEfyL9rUMLvSvlDCSSbtc4oLXsHIs18JM/e9V1yPxwUicYvd7s+a+IJdiOclVWuu5hRwxN3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768309917; c=relaxed/simple;
	bh=FQMKbDH+KVpbfbw4LnNPRQHYGOGtEYypT7zQgzx6SWI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=WYcASx8C5pIHGc+Kvyr0f2pvKc6z/hHkshZO1bVfXQVUEFiHGctDqz78yO+RwiKqufYP+ImGGjL04Qx6MsuiNCtrS7ValfQRREVcze/fvxetJcYV27shyxHyag2aFUbqcqWw3h8+rAsHDcCsDvmGah/Vyu9rZlYvgu36PzwB50E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=opfgC3PE; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1768309914; x=1799845914;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=FQMKbDH+KVpbfbw4LnNPRQHYGOGtEYypT7zQgzx6SWI=;
  b=opfgC3PEfHedefYeVDbPt8F1EdjlD1fgs1+AhCW20FYnzrIDDAsWqKwA
   7EZNEmsYtOST+uz7JZyqli+t2roOTaNyIwfUlm7E8qrAF8c9H8v23b3wL
   gUvRZtlzreWlj9d6ZIdxwmgLWyQmRmdUcpMYEWbEWe41U82j4GfMj9kmC
   KBHDF5G0/8JfOSMNF/Lam6lnxh2ohIT/s4egCar7AJY9TY/iLqpnC+6X4
   mBgPZaKpC7M00T2KdHiciTG432fK8lZuIssFxZb1Kf+qpWN5EjJLzpUGn
   USjzSCe2byCBnB/N032JHaLqF9z2O7lHyBqfeHM3OWfRG7s7kmQ+kroFF
   w==;
X-CSE-ConnectionGUID: 8rvEDYAoRBeujHnu6Z8ZqA==
X-CSE-MsgGUID: yh0PkwHVTxu1lKgCh5mNgA==
X-IronPort-AV: E=Sophos;i="6.21,222,1763449200"; 
   d="scan'208";a="219095248"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 13 Jan 2026 06:11:42 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Tue, 13 Jan 2026 06:11:21 -0700
Received: from ROU-LL-M19942.mpu32.int (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Tue, 13 Jan 2026 06:11:18 -0700
From: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Date: Tue, 13 Jan 2026 14:10:39 +0100
Subject: [PATCH v5 3/5] ARM: dts: microchip: sam9x60: Add GFX2D GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260113-cpitchen-mainline_gfx2d-v5-3-9cdab8fa699b@microchip.com>
References: <20260113-cpitchen-mainline_gfx2d-v5-0-9cdab8fa699b@microchip.com>
In-Reply-To: <20260113-cpitchen-mainline_gfx2d-v5-0-9cdab8fa699b@microchip.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
	"Alexandre Belloni" <alexandre.belloni@bootlin.com>, Claudiu Beznea
	<claudiu.beznea@tuxon.dev>, Russell King <linux@armlinux.org.uk>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	Cyrille Pitchen <cyrille.pitchen@microchip.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=927;
 i=cyrille.pitchen@microchip.com; h=from:subject:message-id;
 bh=FQMKbDH+KVpbfbw4LnNPRQHYGOGtEYypT7zQgzx6SWI=;
 b=owGbwMvMwCXmf6yzKqEsVIbxtFoSQ2aaS/aG1kouH+EOp/kHeqdtORjw/vPFJZ8OetyInu2nc
 dvRhk2vo5SFQYyLQVZMkeXQm629mcdfPbZ7JSoFM4eVCWQIAxenAEzkqDvDP+vbJbcbXUWcuKaE
 lJ+6HvFx4Z3nz8T3eTI19KmF50zQsWf4n933atIds7/6XI9dWvKd2I+Ll4r9P5ZqJTibT1oj2XI
 pHwA=
X-Developer-Key: i=cyrille.pitchen@microchip.com; a=openpgp;
 fpr=7A21115D7D6026585D0E183E0EF12AA1BFAC073D

Add support for the GFX2D GPU.

Signed-off-by: Cyrille Pitchen <cyrille.pitchen@microchip.com>
---
 arch/arm/boot/dts/microchip/sam9x60.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/sam9x60.dtsi b/arch/arm/boot/dts/microchip/sam9x60.dtsi
index b075865e6a7688005d471665459b3f6f1f26f7a4..338a0f3b336ffa6f1e3f900a4b4a58e4e3f93bb8 100644
--- a/arch/arm/boot/dts/microchip/sam9x60.dtsi
+++ b/arch/arm/boot/dts/microchip/sam9x60.dtsi
@@ -353,6 +353,14 @@ AT91_XDMAC_DT_PERID(26))>,
 				status = "disabled";
 			};
 
+			gpu: gpu@f0018000 {
+				compatible = "microchip,sam9x60-gfx2d";
+				reg = <0xf0018000 0x4000>;
+				interrupts = <36 IRQ_TYPE_LEVEL_HIGH 0>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 36>;
+				status = "disabled";
+			};
+
 			i2s: i2s@f001c000 {
 				compatible = "microchip,sam9x60-i2smcc";
 				reg = <0xf001c000 0x100>;

-- 
2.51.0


