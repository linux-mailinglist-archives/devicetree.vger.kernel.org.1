Return-Path: <devicetree+bounces-18959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E96A7F936E
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 16:46:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5FCEA1C20C86
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 15:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1B17D270;
	Sun, 26 Nov 2023 15:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Q1JP71nM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5599710A
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 07:46:34 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-54b18dbf148so1586303a12.1
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 07:46:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1701013593; x=1701618393; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9NRiOseJ+HrnJijqkKCLC6KfYm1MOmk1OCYsL3w35U8=;
        b=Q1JP71nMk6Gm3cEdgikVaOoELTDOZoQZie+e3piRLSeklXrYkvAYAhDEdNDf6qxCje
         38xOcQ8gnVubMSPWSdbPabTjlFFGEu82J3R0pkOzb0YDhpRDsnpauNEGlgPMwYxW28PG
         1KHfqERz5dij90Y1CCPlwrP/G/3GwLapeCAs4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701013593; x=1701618393;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9NRiOseJ+HrnJijqkKCLC6KfYm1MOmk1OCYsL3w35U8=;
        b=hHP0b6K+WMVwx+iK49S7fckowSKswoR7vL3qqWGNfl8FaHpXJyjc76t0MfWtldGDkg
         MWiLd/b/7hsA2ai//omfELZyjh5aVLQ3BWglHzM2bOGMEbnIeiY5WliStOuobVSYWoW0
         1nkv4aKZ2MFnLBqDF+sRv2f9i4cJjMYPz70GxH7nQbEZNmZ7NTipFo0a11AYJnh1sSMT
         QR2Nz5pIO6LbKaCsK9L9iqzPawqffKJfxD+8r4Kf83mDXGVawhtc4K/aoNzQjH+RJvrH
         62UoqbpGZDHfXjtstDQqEhprI2Q9W/Zx+HKCXXJOmG8EkOniVp68+xyNX4ymsDy+jORI
         jwaQ==
X-Gm-Message-State: AOJu0YzZbf8xYD+OylXES3wVH421M7q331pRCl8HEVRblb5gJlQAJPVD
	Z/O+pWPZReDlXDGeqHQpmfrsnA==
X-Google-Smtp-Source: AGHT+IEb53K6LDcvxA1JVS/ygRWYIX4dk43omNRLsXmu9w+lynQAvanumFjUNJA5PES2kP7X13+6BA==
X-Received: by 2002:a17:906:2b52:b0:9dd:9380:bb15 with SMTP id b18-20020a1709062b5200b009dd9380bb15mr6186748ejg.50.1701013593129;
        Sun, 26 Nov 2023 07:46:33 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-95-244-100-54.retail.telecomitalia.it. [95.244.100.54])
        by smtp.gmail.com with ESMTPSA id h24-20020a170906591800b009fdc684a79esm4656158ejq.124.2023.11.26.07.46.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 07:46:32 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Amarula patchwork <linux-amarula@amarulasolutions.com>,
	michael@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	David Airlie <airlied@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Inki Dae <inki.dae@samsung.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Maxime Ripard <mripard@kernel.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 00/11] Add displays support for bsh-smm-s2/pro boards
Date: Sun, 26 Nov 2023 16:44:52 +0100
Message-ID: <20231126154605.15767-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series adds drivers for the displays used by bsh-smm-s2/pro boards.
This required applying some patches to the samsung-dsim driver and the
drm_bridge.c module.

Changes in v2:
- Add $ref to panel-common.yaml
- Drop port, reset-gpios, and backlight
- Set port and backlight ad required
- Replace additionalProperties with unevaluatedProperties
- Adjust the timings of the panel reset
- Adjust the mipi_dsi node based on the latest patches merged into
  the mainline in the dtsi files it includes.
- Added to the series the following patches:
  - 0001 drm/bridge: Fix bridge disable logic
  - 0002 drm/bridge: Fix a use case in the bridge disable logic
  - 0003 samsung-dsim: enter display mode in the enable() callback
  - 0004 drm: bridge: samsung-dsim: complete the CLKLANE_STOP setting

Dario Binacchi (4):
  drm/bridge: Fix bridge disable logic
  drm/bridge: Fix a use case in the bridge disable logic
  drm: bridge: samsung-dsim: enter display mode in the enable() callback
  drm: bridge: samsung-dsim: complete the CLKLANE_STOP setting

Michael Trimarchi (7):
  dt-bindings: display: panel: Add synaptics r63353 panel controller
  drm/panel: Add Synaptics R63353 panel driver
  dt-bindings: display: panel: Add Ilitek ili9805 panel controller
  drm/panel: Add Ilitek ILI9805 panel driver
  dt-bindings: ili9805: add compatible string for Tianma TM041XDHG01
  drm/panel: ilitek-ili9805: add support for Tianma TM041XDHG01 panel
  arm64: dts: imx8mn-bsh-smm-s2/pro: add display setup

 .../display/panel/ilitek,ili9805.yaml         |  64 +++
 .../display/panel/synaptics,r63353.yaml       |  61 +++
 MAINTAINERS                                   |  12 +
 .../freescale/imx8mn-bsh-smm-s2-common.dtsi   |   1 +
 .../freescale/imx8mn-bsh-smm-s2-display.dtsi  | 121 +++++
 drivers/gpu/drm/bridge/samsung-dsim.c         |  14 +-
 drivers/gpu/drm/drm_bridge.c                  |   9 +-
 drivers/gpu/drm/panel/Kconfig                 |  18 +
 drivers/gpu/drm/panel/Makefile                |   2 +
 drivers/gpu/drm/panel/panel-ilitek-ili9805.c  | 418 ++++++++++++++++++
 .../gpu/drm/panel/panel-synaptics-r63353.c    | 375 ++++++++++++++++
 11 files changed, 1088 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/synaptics,r63353.yaml
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-display.dtsi
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9805.c
 create mode 100644 drivers/gpu/drm/panel/panel-synaptics-r63353.c

-- 
2.42.0


