Return-Path: <devicetree+bounces-240237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 855B2C6F128
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 14:56:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 21D16387E5A
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 13:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78C8D35FF7F;
	Wed, 19 Nov 2025 13:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="rFMwkwZS"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C142F35FF55;
	Wed, 19 Nov 2025 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763560116; cv=none; b=EH0XSpOGUbS80uU+dzf2PoYdOMYDe4zAIgB9DQVG/GGlB8PnUT0PkTLv/dVGVR1KdAHNafHvNJutEOdhr3FJLmWlENxUYO4QLc9BuHr28u4SOAgnkZfyww3EOiymlyAGBUwCKfZGp+adJ2EQe6QvXTCEEn8sesfOaE9T36Hf+Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763560116; c=relaxed/simple;
	bh=xZVbLtQtCTrrDEgWar98Jt+Zmc5VQCpCV/VIbnHZMZY=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=NB5drzXbvE294z+VfosxRXRktlqc20Y62FsdocP3yN7Qdx59ME/2Xn8Xj75Zo/SI5Elw11noz4zccgQreiJYX0YINu5uKgnd4A80P6n8VBNYxPA3yERME4gdGA3VHw/4/Pvysc4rCX5BQPCS/E1z5seizJ59K7UVQA9H3baCRDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=rFMwkwZS; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1763560115; x=1795096115;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=xZVbLtQtCTrrDEgWar98Jt+Zmc5VQCpCV/VIbnHZMZY=;
  b=rFMwkwZSEpfpqkqSXXbNQAA+mMxgA14rh7vtV78osr8uzZD6/lYcy0Dj
   zHPKs3xXS1WzcQydAjiWrYqiasnxHYlfbg9Dxk+03WCTjCZ743tuxG9m8
   xaQaaM5R4piXkbXG9bYcMP0obCr5hPA9ae78nkgZvJwSeHhZ5cFM0yoPi
   2xVBTDBWCLeWPsTLdpuFvjw7egMcGGmOz9P//CK4Yx47QIxTmS1Oft82u
   +G8hihx0Ue1k7F5eJmvU/HTr5ULyLgR6sCHeQh5qeMTojo1DtdJF+xUXT
   YHAHYSRRSithaOGUKM778UTMJg4ydSAIn2kKsSF0Y1oZERia7abMg+8Ib
   w==;
X-CSE-ConnectionGUID: 71KvCTRZRcWm48O19CYCXg==
X-CSE-MsgGUID: SRxyaEjXS92SKLxPNJQCnA==
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; 
   d="scan'208";a="49381641"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 19 Nov 2025 06:48:34 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Wed, 19 Nov 2025 06:48:20 -0700
Received: from DEN-DL-M31836.microchip.com (10.10.85.11) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Wed, 19 Nov 2025 06:48:18 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH] ARM: dts: lan966x: Fix the access to the PHYs for pcb8290
Date: Wed, 19 Nov 2025 14:47:50 +0100
Message-ID: <20251119134750.394655-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

The problem is that the MDIO controller can't detect any of the PHYs.
The reason is that the lan966x is not pulling high the GPIO 53 that is
connected to the PHYs reset GPIO. Without doing this the PHYs are kept
in reset. The mdio controller framework has the possiblity to control a
GPIO to release the reset of the PHYs. So take advantage of this and set
line to be high before accessing the PHYs.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 arch/arm/boot/dts/microchip/lan966x-pcb8290.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/microchip/lan966x-pcb8290.dts b/arch/arm/boot/dts/microchip/lan966x-pcb8290.dts
index 3b7577e48b467..50bd29572f3ed 100644
--- a/arch/arm/boot/dts/microchip/lan966x-pcb8290.dts
+++ b/arch/arm/boot/dts/microchip/lan966x-pcb8290.dts
@@ -54,6 +54,7 @@ udc_pins: ucd-pins {
 &mdio0 {
 	pinctrl-0 = <&miim_a_pins>;
 	pinctrl-names = "default";
+	reset-gpios = <&gpio 53 GPIO_ACTIVE_LOW>;
 	status = "okay";
 
 	ext_phy0: ethernet-phy@7 {
-- 
2.34.1


