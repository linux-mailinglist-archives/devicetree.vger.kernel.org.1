Return-Path: <devicetree+bounces-241649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3749EC80608
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:10:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BBE4C4E6107
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC1532FFF9F;
	Mon, 24 Nov 2025 12:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="EPCvv0rx"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F572FFDD6;
	Mon, 24 Nov 2025 12:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763986125; cv=none; b=bbj0O8aqxSqJTAjUOx1bFFjSMpccpnSRgy2lPvTZpxsK3hZG9MG0n+RuJGx8oisQgTz+pafGHhpw6UuI6+wDRkUawlyCQokUjOC3xFkDf1E8x2sSYkNUCXbQaN0UOv1CjM09CnJwfL2cJJkiFjouutvKXN9bIrINDkZ+VwD35nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763986125; c=relaxed/simple;
	bh=7Q6o540U0MuKX4LmXYnikYcnzquX+vLmRlmwknsSgHA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=GW/qdcgHAO13OaVk2ZzJkND7sLPig17w80mC1/QN78v1t4d02binPGzTsKLOLE0vMiHTQA07J8nfnReKVj09ZJaJO+9aUPjB5OSpOtlS15fkXHDgRP6oC46O5D1AzBHsotuXRqAq9mnd2LXwQ8GygZF9wYZxtxcklD61Of/p7to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=EPCvv0rx; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1763986121; x=1795522121;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=7Q6o540U0MuKX4LmXYnikYcnzquX+vLmRlmwknsSgHA=;
  b=EPCvv0rxK0kNzqfrX+QNCL7r9DskxCYwNmx0be3XGM8vKiLKHiBcSQkJ
   9CUVtfoxIopDnZV71Sgz+/SJsJuRr7K8eboPLCNa9rph1qdGU1kqKe0u7
   Irb/e1q1v1Dmlc4z8yquG4JIvXVV+xYYQVcIBePE4zL8a3zu1ewqSWSSw
   gOWb4zxH1+vAnZrErCG3NrXZS/v4Jkwq6xWY3hYDvDJxYqLIHaRBwlQz+
   2N5GOMC/nPHDD1/n2QAnNf8NDWuTrfrGAm/waeEIKEY1shTDNLBL7HbHt
   YY3/3a3x5wA2u+1T42geaslrPezAJblR5rwy7m+IfCnL85fNE9qaVV7/Y
   w==;
X-CSE-ConnectionGUID: YHrtvy5xRn+N01J9f5nEwg==
X-CSE-MsgGUID: z6BBmk9ZRhaoewgnd8BOdw==
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; 
   d="scan'208";a="280948042"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 24 Nov 2025 05:08:32 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Mon, 24 Nov 2025 05:08:19 -0700
Received: from ROU-LL-M19942.mpu32.int (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 24 Nov 2025 05:08:16 -0700
From: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Date: Mon, 24 Nov 2025 13:07:21 +0100
Subject: [PATCH v3 5/5] ARM: configs: at91_dt_defconfig: enable GFX2D
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20251124-cpitchen-mainline_gfx2d-v3-5-607f8c407286@microchip.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=751;
 i=cyrille.pitchen@microchip.com; h=from:subject:message-id;
 bh=7Q6o540U0MuKX4LmXYnikYcnzquX+vLmRlmwknsSgHA=;
 b=owGbwMvMwCXmf6yzKqEsVIbxtFoSQ6aK17wXh5Zl3zBcn1Mxs97opsptS3eZbZLvHrQ9msbBZ
 h0swqnfUcrCIMbFICumyHLozdbezOOvHtu9EpWCmcPKBDKEgYtTACbScICR4bsA83OOd3vsuiMY
 DY6Werx/6Dz3RPyu3T/zQ4O9tjAIX2H4zZZtKVA+afXKgNvdt9fseiH15VWHk/anQOs0Zl4fc4Y
 WXgA=
X-Developer-Key: i=cyrille.pitchen@microchip.com; a=openpgp;
 fpr=7A21115D7D6026585D0E183E0EF12AA1BFAC073D

The GFX2D GPU is embedded in both SAM9X60 and SAM9X75; enable the
driver to use it.

Signed-off-by: Cyrille Pitchen <cyrille.pitchen@microchip.com>
---
 arch/arm/configs/at91_dt_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/at91_dt_defconfig b/arch/arm/configs/at91_dt_defconfig
index ff13e1ecf4bb9545d6d2210b2f3059e6807779a0..85e9b52152aec6746f660dd0c299cd5aa12ce2ea 100644
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


