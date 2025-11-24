Return-Path: <devicetree+bounces-241653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 23939C80671
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:13:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 161323AC215
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA39B301020;
	Mon, 24 Nov 2025 12:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="n9A1dRYR"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148E83009E2;
	Mon, 24 Nov 2025 12:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763986137; cv=none; b=kN2Sr9ZrrKWyj+KqeATCbao/wHgYAEjwXbrbMUhCznCTsylW5Q4SraM7DhkO/hkOLPPz60qth91m5lXUoef7L670AegS2dI823vBjr1VvccYdQjoSgIkj01iQ+HapkmAxYwCnpssWTrZ4nnbx6pw0PEKSkPagJ0W3Hp4pMFRq9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763986137; c=relaxed/simple;
	bh=FQMKbDH+KVpbfbw4LnNPRQHYGOGtEYypT7zQgzx6SWI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=HftjztKVovrkUIiPPpYg7b5z5DDOYHbOBiqbPWXuLSEN3ZApb9DFdCyx9DKRU3mWfimcIkgj0Wu9Gc6Eoktkt4+GuHX2KTIlQkzKFLfISGnrMGAR0Jzrg+Vf8bV8oljrO0UfaLShtN5ohD340nT1UrKwOpWYTn2R7C0DkhgpTj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=n9A1dRYR; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1763986136; x=1795522136;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=FQMKbDH+KVpbfbw4LnNPRQHYGOGtEYypT7zQgzx6SWI=;
  b=n9A1dRYRI4RUBmejBezuF4mkpgHtoGX27W4EnQ5shlJD4uluJ/hj4HTP
   bF1loPLkm0+dhPHgtlq8/XArBXouaMao4xe+Cu7p9M5QCL+z/tVfOeP/D
   70K+4LFaSImAjf0m9GVoK7nAMMiTfq/QNQJlBiq3UXX6Y85KykoQefjSa
   9Y3YEt7CPlJkqPnkh70461mSoIhUgd1FFBiHlVILyCBnOVD4jpxxfQ0qx
   wa+J/m6dy8gWcgNnguFu0Gsq1s3sRJBv2MqTnSPupnCyXhl4BwYL1SRKT
   JfivYzgoanI8/DE0l8P7R3mOCxJFVA24yMz5ISx0Q/J+Hkln5MBjApj/w
   Q==;
X-CSE-ConnectionGUID: MA0n3hB5Tsi7SP/pc5xH1Q==
X-CSE-MsgGUID: UT7yWfcSQV+JX0UbxgRgyA==
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; 
   d="scan'208";a="50062728"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 24 Nov 2025 05:08:40 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Mon, 24 Nov 2025 05:08:12 -0700
Received: from ROU-LL-M19942.mpu32.int (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 24 Nov 2025 05:08:09 -0700
From: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Date: Mon, 24 Nov 2025 13:07:19 +0100
Subject: [PATCH v3 3/5] ARM: dts: microchip: sam9x60: Add GFX2D GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20251124-cpitchen-mainline_gfx2d-v3-3-607f8c407286@microchip.com>
References: <20251124-cpitchen-mainline_gfx2d-v3-0-607f8c407286@microchip.com>
In-Reply-To: <20251124-cpitchen-mainline_gfx2d-v3-0-607f8c407286@microchip.com>
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
 b=owGbwMvMwCXmf6yzKqEsVIbxtFoSQ6aK11yfuq43lgcv/8yzFPM6cnDaqpOiplZCzftcHjlyz
 fsVwf60o5SFQYyLQVZMkeXQm629mcdfPbZ7JSoFM4eVCWQIAxenAEzE0IGR4S3T/BatXwZvvGXf
 b9W5NHHC5s+JLROd3q5SmdZr0W2WKs/wv8T+1b2vx7yU1PxqPMKSV9u/eS241uNZvb7VXpeUX1J
 drAA=
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


