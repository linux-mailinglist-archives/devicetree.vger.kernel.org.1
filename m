Return-Path: <devicetree+bounces-241650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B560C80638
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:12:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C759F3AA994
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:09:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8F702FFDD9;
	Mon, 24 Nov 2025 12:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="IYY25bO4"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E0A2FFDF5;
	Mon, 24 Nov 2025 12:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763986132; cv=none; b=jJ32R3oCLl88+/rRochjhrMPeq8hka22Igd3awyLJSG3CzagSruFhto4G0PnuF01uY1+Bv604KEgyAGDu8p+uUypCKeJn/Brtk/G7snsbVtQCUblR1rgZWvCw8It2vGyKSkDPlTZf+ckE3ft73fd6gNYBqaMGCOvP46ouxTaeUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763986132; c=relaxed/simple;
	bh=9ej8J1aZ3loXRs29McB2qWVnK7bVOI1xJP2oRmJpeJc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=NI5S8Yic6dxDIFas2dr3oi7rkpqNcPfnELEfCxQ6y3HvXYnYuDPTlrfYAKL7l6/4u0tlx/+JFZJXRz9TPsZ1AgwetbDyleVhHMSsijiHPUHotKEDC/N2WtwLcx2iSEkcq0pWMXmG0BsLgqODx979eo2QyOaRVmjH+k4bqhizVDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=IYY25bO4; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1763986129; x=1795522129;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=9ej8J1aZ3loXRs29McB2qWVnK7bVOI1xJP2oRmJpeJc=;
  b=IYY25bO4rXYD+1k8SqzmzVQ2IUnfk1x9XbGU9MDCq4rK0WYC0FTlwsJ2
   XTQ7dqgjYkY7Saby6DjDRn4Cu2KVAOPGXu/cp9NvUHr1ndgsvRVvXBmRI
   QiNpoSHnbiuNlQMmp3N37TjPeLaIpzsZdKJdSh9RbF6491qpkbG+bwW2Q
   Td56zhVl+VQidbK4IsH1yj1Vots2Cgm/GBUF8vOKSb3FWQ0rfDblt2X3J
   trUAk9KizfipIKIAX5b8rp/mbKXo4l+FD7oBXe1G0QiM74SD5sVd1/3cj
   NgBGXjUfp+uF4JOiGo/rMkcN4Pw6fQPrJNyMs5RgKFaUpS/pz+uurFHjq
   w==;
X-CSE-ConnectionGUID: gUF4PjAbQbmCnyQvE/5J6g==
X-CSE-MsgGUID: lMvotyy9QcWUti+rtlo/qw==
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; 
   d="scan'208";a="216913327"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Nov 2025 05:08:42 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex2.mchp-main.com (10.10.87.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Mon, 24 Nov 2025 05:08:16 -0700
Received: from ROU-LL-M19942.mpu32.int (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 24 Nov 2025 05:08:13 -0700
From: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Date: Mon, 24 Nov 2025 13:07:20 +0100
Subject: [PATCH v3 4/5] ARM: dts: microchip: sam9x7: Add GFX2D GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20251124-cpitchen-mainline_gfx2d-v3-4-607f8c407286@microchip.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=936;
 i=cyrille.pitchen@microchip.com; h=from:subject:message-id;
 bh=9ej8J1aZ3loXRs29McB2qWVnK7bVOI1xJP2oRmJpeJc=;
 b=owGbwMvMwCXmf6yzKqEsVIbxtFoSQ6aK1zwdAROlVrWvy9ubpkk0TNg0f8mOGWHm04I61+r/8
 113Uza/o5SFQYyLQVZMkeXQm629mcdfPbZ7JSoFM4eVCWQIAxenAEzk+S+GP9yaP9dGKfhLhWuw
 +ZUtjj9qNukhp+Wrf35z5slq6zpWNjAyzI/Qm3DbubEigLdg4s3jPxaVfpl6R+nUnitZ77N8Jn4
 34wIA
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


