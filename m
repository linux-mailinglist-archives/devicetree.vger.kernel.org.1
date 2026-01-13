Return-Path: <devicetree+bounces-254528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5596CD190B6
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:11:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5C65030031B6
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 13:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D03BC38FEF9;
	Tue, 13 Jan 2026 13:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="QvM+znw2"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1299036B066;
	Tue, 13 Jan 2026 13:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768309913; cv=none; b=YEScOEAGOBa3/q02fSd4WkHRe4+4pdWFYLlwVsYhVu4WmVH7yaIOO1uK5SEYzVVaxSxO3FC6JBOBqEmV4YOv9wdMWKbw9JhQhZX11hutHKgaHX95MA3ay4NWoRnqK4Lr6Lye0hv7+H03TTz2isJ2UnuOUPRkOKhrdpm/xBymBSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768309913; c=relaxed/simple;
	bh=sX6OznMuIUrSvUxILVJgYAGkkNNvdOpOBQDTkd5KsG4=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=A6pQATefDx3vRgVAdWDrL+uc0rtk59We9J02tQvfnkEvYC+IJgeL0rhKJeb4I1fo1f/qMq8fpoIDqJzr813J7GIbH521kkv/riySK4OepbE9QCknoMcJJPecD+Istni4MfBTaiQ+SIejn12yPejiJTaAwaGgeoSp9fQ7TKZC7Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=QvM+znw2; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1768309910; x=1799845910;
  h=from:subject:date:message-id:mime-version:
   content-transfer-encoding:to:cc;
  bh=sX6OznMuIUrSvUxILVJgYAGkkNNvdOpOBQDTkd5KsG4=;
  b=QvM+znw2zSCA4DliugDC7H6nOGe4NaYStVtRsp2xPigD+k9kLkD47Ln/
   y7hMlg/uo0CAy1sySQSqkAp+5LJvEdVIiZy3CLmMZff5+0QVFXlfr4aFP
   e2chmHmQ9xorvTc0fYWDzO8LJ85fIi06JcNrehmPMrceag1XVS3Cua2wh
   cXunpB4ZwJ0/lCI0mGGyURY/LGR6diACKdLicZ3TASdHp+eLpE7i4vKbq
   JMkQLfQ+eixn2RSj5BDOogG2iWxLIMZEX/x8TEqCWx7YDR2DJXymWGiJ3
   arH1KnY2u1K1zG9+vaqSodqEeA/VRgxOVLnNDrTeiJC8Li25jfWxEkrvZ
   Q==;
X-CSE-ConnectionGUID: 8rvEDYAoRBeujHnu6Z8ZqA==
X-CSE-MsgGUID: J1vh5jIQToehOpRuoUEufw==
X-IronPort-AV: E=Sophos;i="6.21,222,1763449200"; 
   d="scan'208";a="219095244"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 13 Jan 2026 06:11:40 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Tue, 13 Jan 2026 06:11:11 -0700
Received: from ROU-LL-M19942.mpu32.int (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Tue, 13 Jan 2026 06:11:08 -0700
From: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Subject: [PATCH v5 0/5] drm/microchip: add GFX2D support for SAM9X60 and
 SAM9X75
Date: Tue, 13 Jan 2026 14:10:36 +0100
Message-ID: <20260113-cpitchen-mainline_gfx2d-v5-0-9cdab8fa699b@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAExEZmkC/4XNQWrDMBCF4asErauiGcmy3VXvUUpQpFE8UMtGD
 iYh+O6RAw2hxHT5P5hvrmKizDSJj91VZJp54iGVqN52wncuHUlyKC1QYaVaAOlHPvmOkuwdpx9
 OtD/GMwZprQZqdYUu1qJcj5kin+/y13fpjqfTkC/3RzOs6//mDFLJUEd3AKcbIPrs2efBdzy++
 6EXqzvjs9VsW1gs66PzbaisBXxl6YcFgGbb0qul6th4o2ps7CvL/FpWFWzbMsWKCEoZcEEb/dd
 aluUGwVOZxqYBAAA=
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4492;
 i=cyrille.pitchen@microchip.com; h=from:subject:message-id;
 bh=sX6OznMuIUrSvUxILVJgYAGkkNNvdOpOBQDTkd5KsG4=;
 b=owGbwMvMwCXmf6yzKqEsVIbxtFoSQ2aaS1rbt0X/TKsT0gPrakybTgUaXNoguebmw6eqWTl6G
 RfWnT/UUcrCIMbFICumyHLozdbezOOvHtu9EpWCmcPKBDKEgYtTACbicoyRYUFfYpdYict67h3e
 HmznD7DGzn4jqHhtiafaqf9nNr03ymX4n1j/OOdadIOk0vfdzxab+qXOt0q/KnsizYSrNPMrd+5
 pHgA=
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
Changes in v5:
- Fixed compilation issues in patch 2:
  + Included <drm/drm_print.h> from mchp_gfx2d_cmd.c, mchp_gfx2d_drv.c
    and mchp_gfx2d_gem.c.
  + Replaced '.remove_new' with '.remove' in definition of 'struct
    platform_driver mchp_gfx2d_platform_driver' to match the latest
    definition of 'struct platform_driver'.
  + Removed the '.date' member from the definition of 'struct drm_driver
    mchp_gfx2d_drm_driver' since this 'date' member has been removed from
    'struct drm_driver'.
- Fixed typos in doxygen documentations of two functions:
  + mchp_gfx2d_process_completed_commands()
  + mchp_gfx2d_init_command_queue()
- Link to v4: https://lore.kernel.org/r/20260112-cpitchen-mainline_gfx2d-v4-0-f210041ad343@microchip.com

Changes in v4:
- Rebased onto the 'drm-misc-next' branch on 2026-01-12.
- Link to v3: https://lore.kernel.org/r/20251124-cpitchen-mainline_gfx2d-v3-0-607f8c407286@microchip.com

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
 drivers/gpu/drm/Kconfig                            |    1 +
 drivers/gpu/drm/Makefile                           |    1 +
 drivers/gpu/drm/microchip/Kconfig                  |   21 +
 drivers/gpu/drm/microchip/Makefile                 |    8 +
 drivers/gpu/drm/microchip/mchp_gfx2d_cmd.c         | 1809 ++++++++++++++++++++
 drivers/gpu/drm/microchip/mchp_gfx2d_cmd.h         |  169 ++
 drivers/gpu/drm/microchip/mchp_gfx2d_drv.c         |  350 ++++
 drivers/gpu/drm/microchip/mchp_gfx2d_drv.h         |  132 ++
 drivers/gpu/drm/microchip/mchp_gfx2d_gem.c         |  264 +++
 drivers/gpu/drm/microchip/mchp_gfx2d_gem.h         |   90 +
 drivers/gpu/drm/microchip/mchp_gfx2d_ioctl.c       |  274 +++
 drivers/gpu/drm/microchip/mchp_gfx2d_ioctl.h       |   17 +
 include/uapi/drm/microchip_drm.h                   |  286 ++++
 18 files changed, 3495 insertions(+)
---
base-commit: 4a768c544f64eaa2fc7cfa91e46f43aa4aad0c40
change-id: 20250911-cpitchen-mainline_gfx2d-6631e9352af7

Best regards,
-- 
Cyrille Pitchen <cyrille.pitchen@microchip.com>


