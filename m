Return-Path: <devicetree+bounces-253880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCF1D12408
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:21:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5065E306747E
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8164C3563F5;
	Mon, 12 Jan 2026 11:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="PJNdqLtl"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0023563DA;
	Mon, 12 Jan 2026 11:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768216808; cv=none; b=a8rvT80vSQuvCQQGVWSKFDlQjQ7XIY9p9pz5K7L57nXa+uL1GdyCQY7MnASBU1brnMfT9l/D7wvJFwb9sPsDGKPeHDYx5zt2FaRkisxqZyPYxZouGKZr/9tfp3Z+hQ7YBuUDoEGTnsCA7iDVZzftTvQOYqxssYGyUcl59f2XSRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768216808; c=relaxed/simple;
	bh=9ej8J1aZ3loXRs29McB2qWVnK7bVOI1xJP2oRmJpeJc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=ZuxUj34zVPhgbvtEnQ8P1+Vs2dO6b5a8rbf1/R6tIv0NJlH+Te0ROfrNv2dhq+ly4hfLq1bCJ1Y1EwT6iNkNn0nTLC+A9Ow9AJo6Pdr9NQOsCnE49utENyBJKm4J4SCgrtC/1QX/ru4Tw3IRpf72lmY1s9OyPw87YJGsyIE+yu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=PJNdqLtl; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1768216806; x=1799752806;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=9ej8J1aZ3loXRs29McB2qWVnK7bVOI1xJP2oRmJpeJc=;
  b=PJNdqLtl4GAKTGasnSqXjLK4RWaaNoPOsnpT/OMLG66HuuPWM055cbjB
   XaaL5XGSO+uuNnwEiAJTCJXJZ39YnNbSKJnWV7HECVcCVRJ+lv41pjIgZ
   uGN38V7GgXFCo2ff4E2qawCPRQ3vM1bF8sNdfiAbr3UaRlOQ8Xk4gAUxf
   5Kqlx61qCYyFWiH1a8t5kpW97WV1k30X0qfNGyAhEZrsHboy3iaMlDNGG
   rVge2f6y2HWLTEigBDme1UDmRd+wiUcQSGf1R0Ff0EI12Adfy6Ozgv+a4
   Eu0N97EDr2nhwLWgFfxeVSd8NZvkp16sqT9C3fuQPywqX9Jqi8zhM+Pm0
   g==;
X-CSE-ConnectionGUID: 2FQW9J3NQsejMtiFniwPwQ==
X-CSE-MsgGUID: 0fAS2BCVRAq74/RfstotZw==
X-IronPort-AV: E=Sophos;i="6.21,219,1763449200"; 
   d="scan'208";a="58675295"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 12 Jan 2026 04:19:47 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Mon, 12 Jan 2026 04:19:12 -0700
Received: from ROU-LL-M19942.mpu32.int (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 12 Jan 2026 04:19:09 -0700
From: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Date: Mon, 12 Jan 2026 12:17:59 +0100
Subject: [PATCH v4 4/5] ARM: dts: microchip: sam9x7: Add GFX2D GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260112-cpitchen-mainline_gfx2d-v4-4-f210041ad343@microchip.com>
References: <20260112-cpitchen-mainline_gfx2d-v4-0-f210041ad343@microchip.com>
In-Reply-To: <20260112-cpitchen-mainline_gfx2d-v4-0-f210041ad343@microchip.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=936;
 i=cyrille.pitchen@microchip.com; h=from:subject:message-id;
 bh=9ej8J1aZ3loXRs29McB2qWVnK7bVOI1xJP2oRmJpeJc=;
 b=owGbwMvMwCXmf6yzKqEsVIbxtFoSQ2bKjXm3rCYYf8r2WRHxbsHvqtchx8Lag+Nynn7evYo5I
 Tj5QVlVRykLgxgXg6yYIsuhN1t7M4+/emz3SlQKZg4rE8gQBi5OAbjJBYwMn/10Ol8LvW3+b/b7
 5pPW2/8zy9a1e7a85Ly6wX3F3+kM7Qx/uJXqf81tX/C+q8ngXbLVPy/n4qPTxe8/T/kf/3+9wJl
 3DAA=
X-Developer-Key: i=cyrille.pitchen@microchip.com; a=openpgp;
 fpr=7A21115D7D6026585D0E183E0EF12AA1BFAC073D

Add support for the GFX2D GPU.

Signed-off-by: Cyrille Pitchen <cyrille.pitchen@microchip.com>
---
 arch/arm/boot/dts/microchip/sam9x7.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/sam9x7.dtsi b/arch/arm/boot/dts/microchip/sam9x7.dtsi
index 46dacbbd201ddb68a7456d6fe1afafa59db90ec8..79a82962264f51c4c243530b9dad9010f8cf1347 100644
--- a/arch/arm/boot/dts/microchip/sam9x7.dtsi
+++ b/arch/arm/boot/dts/microchip/sam9x7.dtsi
@@ -292,6 +292,14 @@ AT91_XDMAC_DT_PERID(26))>,
 			status = "disabled";
 		};
 
+		gpu: gpu@f0018000 {
+			compatible = "microchip,sam9x7-gfx2d";
+			reg = <0xf0018000 0x4000>;
+			interrupts = <36 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&pmc PMC_TYPE_PERIPHERAL 36>;
+			status = "disabled";
+		};
+
 		i2s: i2s@f001c000 {
 			compatible = "microchip,sam9x7-i2smcc", "microchip,sam9x60-i2smcc";
 			reg = <0xf001c000 0x100>;

-- 
2.51.0


