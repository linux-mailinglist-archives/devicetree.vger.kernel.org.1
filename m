Return-Path: <devicetree+bounces-30353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC8C8278FC
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 21:16:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D2291C22B9A
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 20:16:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3BBA55777;
	Mon,  8 Jan 2024 20:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="AZCTdL+C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DF65576F
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 20:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-557a318123bso1714330a12.2
        for <devicetree@vger.kernel.org>; Mon, 08 Jan 2024 12:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1704744982; x=1705349782; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=470HE3R0eHCn9Vp1B3I9DAfMXHgYPXc2oiMu7MIw+p8=;
        b=AZCTdL+C+QWLrlpFyDrHghwCm+opJPFKDJNV+ZBFCnZzbPZXLaLIdNRjpLUjJVCLX8
         GksXzsIj4G2eR9Js8fH+Ky8iZbW1dl8yaHHcI7cGrrX0HvqVRZPPfbKj2vZhypRAgj2l
         MwMZZgaixPgmCF6UqETd35PjeyDlw50tx0/Lc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704744982; x=1705349782;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=470HE3R0eHCn9Vp1B3I9DAfMXHgYPXc2oiMu7MIw+p8=;
        b=Q3WuIg2+YtPtwc12Vvtj1m+P40WhwFFPwVT0d1LB57wO2T9xCBDiu1O9471JubGwrz
         w4UpOqOU88SruHcRyrL9Q/zhNxRzbAlNWh2u7t5npbLJaeR27foJaHsh1w5jTmXQioY8
         aietuV5rFBqU9LzA3xDoTzu49npEebOKdHDUDONqdKVdZh2GYIrIrYYyIIpEuQ3bQGlu
         Y6q3FK21wVx5ivsmevSvCrVM07U5hK8V9dP8n7kZqch4ahWVSqhcpKCYXAVkYKhihB0F
         McLrX40ZKI8Ujt+Ec05swkYoY05leJrcR1iAD6rvMeCgpg9wL8ZtxjfZuOPDC/r7j/b2
         drdA==
X-Gm-Message-State: AOJu0Yz/92MRm+pZ94clwL8feDA0rdkT7TyneTqNhnnWWSNolOZdNaN8
	c8RJJKm0ZX2xSj9gbvIdIgLbD1At0Zaadw==
X-Google-Smtp-Source: AGHT+IF2ZasPZ/p6zpGvkUuRiRHfFlzGs6nWLvVv8dVV9W/VrEMy2+3FKeFaVhCTnVVhkhLLqSbRDQ==
X-Received: by 2002:a50:8acb:0:b0:557:8ab7:40 with SMTP id k11-20020a508acb000000b005578ab70040mr1035120edk.168.1704744981995;
        Mon, 08 Jan 2024 12:16:21 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-87-2-38-81.retail.telecomitalia.it. [87.2.38.81])
        by smtp.gmail.com with ESMTPSA id by26-20020a0564021b1a00b00555fd008741sm173699edb.95.2024.01.08.12.16.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 12:16:21 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	=?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Rosin <peda@axentia.se>,
	Rob Herring <robh+dt@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Sean Nyekjaer <sean@geanix.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v5 0/8] Add display support for stm32f769-disco board
Date: Mon,  8 Jan 2024 21:15:45 +0100
Message-ID: <20240108201618.2798649-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series adds display support for the stm32f769-disco board. It has been
tested on hardware revisions MB1225-B03 and MB1166-A09. This required
modifications to the nt35510 driver. As I do not have the Hydis HVA40WV1
display, it would be better if someone tested the driver in that
configuration.

Changes in v5:
- Add Acked-by tag of Krzysztof Kozlowski
- Add Reviewed-by tag of Linus Walleij
- Replace NT35510_ROTATE_180_SETTING with NT35510_ROTATE_0_SETTING
- Add Reviewed-by tag of Linus Walleij
- Tested-by tag of Linus Walleij
- Replace GPIOD_ASIS with GPIOD_OUT_HIGH in the call to devm_gpiod_get_optional().

Changes in v4:
- Put the "enum" list in alphabetical order

Changes in v3:
- Use "enum" to have less code changed

Changes in v2:
- Add Acked-by tag of Conor Dooley
- Add a dash in front of each "items:"
- Change the status of panel_backlight node to "disabled"
- Delete backlight property from panel0 node.
- Re-write the patch [7/8] "drm/panel: nt35510: refactor panel initialization"
  in the same style as the original driver in order to maintain the same
  structure.
- Re-write the patch [8/8] "drm/panel: nt35510: support FRIDA FRD400B25025-A-CTK"
  in the same style as the original driver.

Dario Binacchi (8):
  dt-bindings: mfd: stm32f7: Add binding definition for DSI
  ARM: dts: stm32: add DSI support on stm32f769
  ARM: dts: stm32: rename mmc_vcard to vcc-3v3 on stm32f769-disco
  ARM: dts: stm32: add display support on stm32f769-disco
  dt-bindings: nt35510: add compatible for FRIDA FRD400B25025-A-CTK
  ARM: dts: add stm32f769-disco-mb1225-revb03-mb1166-reva09
  drm/panel: nt35510: move hardwired parameters to configuration
  drm/panel: nt35510: support FRIDA FRD400B25025-A-CTK

 .../display/panel/novatek,nt35510.yaml        |   4 +-
 arch/arm/boot/dts/st/Makefile                 |   1 +
 ...f769-disco-mb1225-revb03-mb1166-reva09.dts |  18 +
 arch/arm/boot/dts/st/stm32f769-disco.dts      |  78 +++-
 arch/arm/boot/dts/st/stm32f769.dtsi           |  21 +
 drivers/gpu/drm/panel/panel-novatek-nt35510.c | 424 +++++++++++++++---
 include/dt-bindings/mfd/stm32f7-rcc.h         |   1 +
 7 files changed, 485 insertions(+), 62 deletions(-)
 create mode 100644 arch/arm/boot/dts/st/stm32f769-disco-mb1225-revb03-mb1166-reva09.dts
 create mode 100644 arch/arm/boot/dts/st/stm32f769.dtsi

-- 
2.43.0


