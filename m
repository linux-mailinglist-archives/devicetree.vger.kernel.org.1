Return-Path: <devicetree+bounces-241651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4755C80651
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:13:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5D863ABB56
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CFEE3002C6;
	Mon, 24 Nov 2025 12:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="DyJEOit0"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522CC2FFDE1;
	Mon, 24 Nov 2025 12:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763986135; cv=none; b=cIP70OfEw7EtZP0nhN2k62GpfYsrdkg5eA4io/ysWp/05t6tk4Z/MviX7MNoL0z7ke0bmOmFinob8Dya8X7wbzPiLxP7qyOest5tjxhE119e6B9gEyiOEpbn5DoWfJlqCdPkTQiF7ku83ebswmbyIPce4/pbFmS5BqZNBrQMqns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763986135; c=relaxed/simple;
	bh=jMFPcEk6SvVZ6KZ631rfjxX8cix/wf+XMOzGx6usZoY=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=B5q38SyYIemqaW2yrRAa8WWx023qr4OA1spPW+GBBN0Teidvlm/xypmDP0th61YSk53C8E5zaaJID+toMRSdCIXJVepn/NUzfACPx3O8MyJLekfGyGd+YOPVR59wXsfHXX09EfPT0Z+G3S6HnYnEjCLENWQT6iKR6snsoEufSeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=DyJEOit0; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1763986133; x=1795522133;
  h=from:subject:date:message-id:mime-version:
   content-transfer-encoding:to:cc;
  bh=jMFPcEk6SvVZ6KZ631rfjxX8cix/wf+XMOzGx6usZoY=;
  b=DyJEOit0QeNnXZYBuhJQXF/qj7FQkhurd/crmAeHrQnSE7iHG4yyhMoC
   SSr9QLHNBLa7bEtaFGG5MhUMC9yD0msWPjcr/gAMmbdnqyVu4k7GZxS1i
   tGNEqWgyiU/RRs5Yfrxy8aGbZCK626luQ4LXojLw0bxBld7kSpNOEwIOa
   y4cPUGtqUGqq9Fi5GUJgU3CEIe3bQbHbFw0yCCZ5EsrAQfldqup1JzNE6
   gq9GVG9W+/qQeijOKbEv6AndEdPhvYyIu1tbOaifm/kJeKN/En8uI0WHE
   vAj9MmrmuwQMiBdsFHNMT2g53FPnIYMqlAjuTFmZWPj7jn2wjBa/kOckB
   w==;
X-CSE-ConnectionGUID: oKLeMsUBTbikmbNoceGrpg==
X-CSE-MsgGUID: XwzE9oi1R6uEqIHkdixDlg==
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; 
   d="scan'208";a="216913334"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Nov 2025 05:08:52 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex4.mchp-main.com (10.10.87.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Mon, 24 Nov 2025 05:08:02 -0700
Received: from ROU-LL-M19942.mpu32.int (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 24 Nov 2025 05:07:58 -0700
From: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Subject: [PATCH v3 0/5] drm/microchip: add GFX2D support for SAM9X60 and
 SAM9X75
Date: Mon, 24 Nov 2025 13:07:16 +0100
Message-ID: <20251124-cpitchen-mainline_gfx2d-v3-0-607f8c407286@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHVKJGkC/4XN0QrCIBTG8VcJrzOmMrd11XtEhOlxHmg6dMhi7
 N1zu4oguvx/cH5nIQkiQiLnw0IiZEwYfAlxPBDtlO+BoilNeMXrqmOM6hEn7cDTQaF/ood7b2d
 uqJSCQSdqrmxDyvUYweK8y9dbaYdpCvG1P8psW/+bmdGKmsaqB1OiZQCXAXUM2uF40mEgm5v5p
 9X+tnixpLZKd6aWkvFva13XN5T7Fu4OAQAA
X-Change-ID: 20250911-cpitchen-mainline_gfx2d-6631e9352af7
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
	"Alexandre Belloni" <alexandre.belloni@bootlin.com>, Claudiu Beznea
	<claudiu.beznea@tuxon.dev>, Russell King <linux@armlinux.org.uk>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	Cyrille Pitchen <cyrille.pitchen@microchip.com>, Conor Dooley
	<conor.dooley@microchip.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3549;
 i=cyrille.pitchen@microchip.com; h=from:subject:message-id;
 bh=jMFPcEk6SvVZ6KZ631rfjxX8cix/wf+XMOzGx6usZoY=;
 b=owGbwMvMwCXmf6yzKqEsVIbxtFoSQ6aKV6PFu7wC0eiLG42jytfnzOF8XdSeYvLn+n4F1paLE
 48rpRR3lLIwiHExyIopshx6s7U38/irx3avRKVg5rAygQxh4OIUgInYWzIyPMtakjXJjGEf97yc
 1c/DgoqKDC5XK2b8DZZ+v3PPlw1l8owMi08f6nGf4Ws8veGdvm3M5vkb98wT+zD9lPa6eK159WX
 HWQA=
X-Developer-Key: i=cyrille.pitchen@microchip.com; a=openpgp;
 fpr=7A21115D7D6026585D0E183E0EF12AA1BFAC073D

Hi all,

This series of patches adds GFX2D support.
The GFX2D is a 2D GPU embedded in some Microchip SoCs such as the
SAM9X60 and SAM9X75.

Patches have been developped on top the 'linux-6.12-mchp' branch of the
https://github.com/linux4microchip/linux.git repository and tested on
mainly on a sam9x75-curiosity board and also on a sam9x60-ek board.

Then patches have been rebased on top of the 'drm-misc-next' branch
of the https://gitlab.freedesktop.org/drm/misc/kernel.git repository
for mainlining.

About the tests, the GFX2D driver was used with the M2D (Multi 2D)
library: https://github.com/linux4sam/libm2d

This is an open source library that abstracts 2D GPUs like the Microchip
GFX2D (and later the Vivante GC520UL), providing graphics applications
of libraries with a unified API, inspired from OpenGL but focused on 2D
GPUs. The libm2d library itself relies on the libdrm library to send
commands to the relevant DRM driver in the Linux kernel.

M2D comes with a m2d_test program to run basic unitary tests.
In addition, libm2d has been integrated to two graphics frameworks:
- EGT: https://github.com/linux4sam/egt
- LVGL: https://github.com/lvgl/lvgl/pull/8729

BR,

Cyrille

Signed-off-by: Cyrille Pitchen <cyrille.pitchen@microchip.com>
---
Changes in v3:
- Collected Acked-by tag from Conor Dooley on patch 1
- Rebased onto the 'drm-misc-next' branch on 2025-11-24.
- Link to v2: https://lore.kernel.org/r/20250918-cpitchen-mainline_gfx2d-v2-0-6cfac9d56612@microchip.com

Changes in v2:
- Renamed microchip,gfx2d.yaml into microchip,sam9x60-gfx2d.yaml.
- Removed the 'clock-names' property from the DT bindings.
- Renamed the GPU node from 'gfx2d' to 'gpu' in sam9x{60,7}.dtsi files.
- Link to v1: https://lore.kernel.org/r/20250911-cpitchen-mainline_gfx2d-v1-0-d7fab1a381ee@microchip.com

---
Cyrille Pitchen (5):
      dt-bindings: gpu: add bindings for the Microchip GFX2D GPU
      drm/microchip: add a driver for the Microchip GFX2D GPU
      ARM: dts: microchip: sam9x60: Add GFX2D GPU
      ARM: dts: microchip: sam9x7: Add GFX2D GPU
      ARM: configs: at91_dt_defconfig: enable GFX2D driver

 .../bindings/gpu/microchip,sam9x60-gfx2d.yaml      |   46 +
 MAINTAINERS                                        |   10 +
 arch/arm/boot/dts/microchip/sam9x60.dtsi           |    8 +
 arch/arm/boot/dts/microchip/sam9x7.dtsi            |    8 +
 arch/arm/configs/at91_dt_defconfig                 |    1 +
 drivers/gpu/drm/Kconfig                            |    2 +
 drivers/gpu/drm/Makefile                           |    1 +
 drivers/gpu/drm/microchip/Kconfig                  |   21 +
 drivers/gpu/drm/microchip/Makefile                 |    8 +
 drivers/gpu/drm/microchip/mchp_gfx2d_cmd.c         | 1808 ++++++++++++++++++++
 drivers/gpu/drm/microchip/mchp_gfx2d_cmd.h         |  169 ++
 drivers/gpu/drm/microchip/mchp_gfx2d_drv.c         |  350 ++++
 drivers/gpu/drm/microchip/mchp_gfx2d_drv.h         |  132 ++
 drivers/gpu/drm/microchip/mchp_gfx2d_gem.c         |  263 +++
 drivers/gpu/drm/microchip/mchp_gfx2d_gem.h         |   90 +
 drivers/gpu/drm/microchip/mchp_gfx2d_ioctl.c       |  274 +++
 drivers/gpu/drm/microchip/mchp_gfx2d_ioctl.h       |   17 +
 include/uapi/drm/microchip_drm.h                   |  286 ++++
 18 files changed, 3494 insertions(+)
---
base-commit: 715cbb21c6fe2fe5760ea05e873f12473aa5884e
change-id: 20250911-cpitchen-mainline_gfx2d-6631e9352af7

Best regards,
-- 
Cyrille Pitchen <cyrille.pitchen@microchip.com>


