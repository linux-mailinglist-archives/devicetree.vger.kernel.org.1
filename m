Return-Path: <devicetree+bounces-254533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D33D19120
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:18:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F45230D0953
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 13:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA2F43904D6;
	Tue, 13 Jan 2026 13:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="AfNpaSZ8"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD6D1EF36E;
	Tue, 13 Jan 2026 13:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768309930; cv=none; b=P7Yxm7Pja3RttPJ8RDL5oYdTT8+yVWjwZcdEmcXewRQ/ApxXgJGoq7Xhx4vOJSWfoaLOceAJJiKXFQ5lqXd1uq5Ef5la+cyRLYEmIAxEjMSOeaw0YNzA357OiBhF9NI6ET9/XOxgkc1Z+tEuAyRYiMy5fffjclkXA6Nn8wuNcbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768309930; c=relaxed/simple;
	bh=0szjEvMiEGlcssl+EUr72h1PstkrFcFYIOp9mvH/YK0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=IjMTNij30fZp/o3IxqsnDxZpsLMzzpV923Lq6HdmCToaWFaQWtMR6AQ9uWROy6X9Q7zxqWDkgiQ8EbpagHkYEhDCcK7c9D02QSub3zDzcZD6D5HKaCZ0Fx5T9GVol0gGXzay8i9SkMMufuziMJMGYJNItkbmRTBgc6NZlM5EK+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=AfNpaSZ8; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1768309930; x=1799845930;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=0szjEvMiEGlcssl+EUr72h1PstkrFcFYIOp9mvH/YK0=;
  b=AfNpaSZ8hPuuUn6w05I7r/BEvNY5bo+2hEaFbnHBNbeGsgUYZpFFUIG2
   eVtvacQrBOGgipl1dDRQF5KnHzsgt7oAy4zoci5182jWzFeDpViNoBm4l
   SE0zn2j6DFBm6WiZlJd6cYnDbRL1E7d4dajWgI3IwYR7qA+lb1/R+aj0+
   EZOvSsdZFi1F+b25cyx2M3nsU1r4sCMHbLORz2iGJHBQEGyJS7SBAlx9a
   ftISyybjUsKi46f1wGWC8E3qleUx84cBzJvCuVALujDyNUaB6Mil1HwYg
   miydpCkj8cBVrm9/OjcdnLJu2Tidvw/tCXGmDDbG11wCqL0T20d0bqXW2
   w==;
X-CSE-ConnectionGUID: K3fsZ9jvThKFT3GTY22Zkg==
X-CSE-MsgGUID: uCOFkcT9RIGqYXSHpZRY+A==
X-IronPort-AV: E=Sophos;i="6.21,222,1763449200"; 
   d="scan'208";a="283170665"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 13 Jan 2026 06:12:04 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Tue, 13 Jan 2026 06:11:28 -0700
Received: from ROU-LL-M19942.mpu32.int (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Tue, 13 Jan 2026 06:11:25 -0700
From: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Date: Tue, 13 Jan 2026 14:10:41 +0100
Subject: [PATCH v5 5/5] ARM: configs: at91_dt_defconfig: enable GFX2D
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260113-cpitchen-mainline_gfx2d-v5-5-9cdab8fa699b@microchip.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=751;
 i=cyrille.pitchen@microchip.com; h=from:subject:message-id;
 bh=0szjEvMiEGlcssl+EUr72h1PstkrFcFYIOp9mvH/YK0=;
 b=owGbwMvMwCXmf6yzKqEsVIbxtFoSQ2aaS3bA8SVbX2kGVc9qc9jBk3fubUTbtBnRcnX35ly9p
 JDI6F/cUcrCIMbFICumyHLozdbezOOvHtu9EpWCmcPKBDKEgYtTACbif4KRocu12KHOsehqVveP
 Pgu9jYV7Lm44/fio/5byBTc/aO1LEmb4X7q4+VhrXl6BVTBHvuOCRK0iO4X5v2UuR126/kXjt8w
 ZZgA=
X-Developer-Key: i=cyrille.pitchen@microchip.com; a=openpgp;
 fpr=7A21115D7D6026585D0E183E0EF12AA1BFAC073D

The GFX2D GPU is embedded in both SAM9X60 and SAM9X75; enable the
driver to use it.

Signed-off-by: Cyrille Pitchen <cyrille.pitchen@microchip.com>
---
 arch/arm/configs/at91_dt_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/at91_dt_defconfig b/arch/arm/configs/at91_dt_defconfig
index 4f1153098b16f4a93ff21f05ec73cc569f4ebe64..b38fb185670c05e74e09f6341128be5908c86451 100644
--- a/arch/arm/configs/at91_dt_defconfig
+++ b/arch/arm/configs/at91_dt_defconfig
@@ -144,6 +144,7 @@ CONFIG_VIDEO_OV2640=m
 CONFIG_VIDEO_OV7740=m
 CONFIG_DRM=y
 CONFIG_DRM_ATMEL_HLCDC=y
+CONFIG_DRM_MICROCHIP_GFX2D=y
 CONFIG_DRM_MICROCHIP_LVDS_SERIALIZER=y
 CONFIG_DRM_PANEL_SIMPLE=y
 CONFIG_DRM_PANEL_EDP=y

-- 
2.51.0


