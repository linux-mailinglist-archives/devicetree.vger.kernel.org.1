Return-Path: <devicetree+bounces-25212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C0B812A41
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 09:25:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8326C1F215A0
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 08:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29192171C9;
	Thu, 14 Dec 2023 08:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="iwjL/wgR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D8FEBD
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 00:25:13 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-55114c073b8so5921147a12.1
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 00:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1702542311; x=1703147111; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=raZdHuIfZmo8sVIIlB+4E73joCIULjSMqNEVVCKbeTQ=;
        b=iwjL/wgRSwxYLGLMpiKnUWbJjoU94BWYNsoANvY5pwkXdu72Krpbfsym22AC5VH1Uo
         LFxfZBXbFo9xFHLfOPVfxjoJwj2/ef6jb2VSYbjsxrZoxyhNifN5+0f0lpF43jjo5ds5
         VAjsirQ5sS3HtuJr/WJzYzn0CS0F+qIzwJKX8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702542311; x=1703147111;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=raZdHuIfZmo8sVIIlB+4E73joCIULjSMqNEVVCKbeTQ=;
        b=XbCBcbzaVjlaeUh8u5PsYKJvaux30Je8NXyrXFWEU9YBG7g3v08Opel8l31W4awxk6
         S2tTl/bOGkDQlt84ERH1P2VpciApUk6+Nx8XzFA2XEiH9owPgrV5HcqIs9olqPGEPgMR
         Zf8t+pRP4zcR2BLjjuZrWf/DrjVKa+KJYVU86jo+h0tVYhCSpC47pTq3FVBlLeNMNW0A
         uwyqCs4mXeDdxzpgOhurD7wiS92/eSXjqghNiY5OrzR11ocXOh7oUK95XLeuzYjyBAkp
         pd6Sl7WPJuVx9YoniKrYGDSr+cUE8Ny55NkSHcLowaMwoBYPw6lkp2jZFcWRGWlfPdCM
         AJoQ==
X-Gm-Message-State: AOJu0YwmxDzAatJzG7cdPFC9wzD6gU1uxwzJ4zwxEBFxz7iuhg+/X/uU
	N0vCUWcELFHQwdFQzsq4tfRy+A==
X-Google-Smtp-Source: AGHT+IEwqtoPH8cpgAfOky/qjhC4w5wCINRYQZuRUrWf8QH/ByS+0CimBtppfQ28CarPOGrM03rX3Q==
X-Received: by 2002:a17:906:3417:b0:a19:a19b:423a with SMTP id c23-20020a170906341700b00a19a19b423amr3145666ejb.165.1702542311617;
        Thu, 14 Dec 2023 00:25:11 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-80-182-13-188.retail.telecomitalia.it. [80.182.13.188])
        by smtp.gmail.com with ESMTPSA id hw18-20020a170907a0d200b00a1cbe52300csm9026226ejc.56.2023.12.14.00.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 00:25:11 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	Amarula patchwork <linux-amarula@amarulasolutions.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Inki Dae <inki.dae@samsung.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Maxime Ripard <mripard@kernel.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v8 0/3] Add displays support for bsh-smm-s2/pro boards
Date: Thu, 14 Dec 2023 09:24:03 +0100
Message-ID: <20231214082457.18737-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
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

Changes in v8:
- Move the 'status' property to the end of the list of nodes:
  - pwm1
  - lcdif
  - mipi_dsi
- Add a newline between properties and child node (mipi_dsi_out).
- Sort the iomuxc node alphabetically
- Rename pwm1grp to blgrp

Changes in v7:
- Drop [3/4] dt-bindings: display: panel: Add synaptics r63353 panel controller
  because applied.

Changes in v6:
- Drop patches:
  - [06/10] drm/panel: Add Synaptics R63353 panel driver
  - [07/10] dt-bindings: display: panel: Add Ilitek ili9805 panel controller
  - [08/10] drm/panel: Add Ilitek ILI9805 panel driver
  - [09/10] drm/panel: ilitek-ili9805: add support for Tianma TM041XDHG01 panel
  Because applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)
  Drop patches:
  - [01/10] drm/bridge: Fix bridge disable logic
  - [02/10] drm/bridge: Fix a use case in the bridge disable logic
  Because they are wrong

Changes in v3:
- Replace "synaptics,r63353" compatible with "syna,r63353", as
  required by vendor-prefixes.yaml.
- Squash patch [09/11] dt-bindings: ili9805: add compatible string for Tianma TM041XDHG01
  into [07/11] dt-bindings: display: panel: Add Ilitek ili9805 panel controller.

Changes in v2:
- Adjust the mipi_dsi node based on the latest patches merged into
  the mainline in the dtsi files it includes.
- Added to the series the following patches:
  - 0001 drm/bridge: Fix bridge disable logic
  - 0002 drm/bridge: Fix a use case in the bridge disable logic
  - 0003 samsung-dsim: enter display mode in the enable() callback
  - 0004 drm: bridge: samsung-dsim: complete the CLKLANE_STOP setting

Dario Binacchi (2):
  drm: bridge: samsung-dsim: enter display mode in the enable() callback
  drm: bridge: samsung-dsim: complete the CLKLANE_STOP setting

Michael Trimarchi (1):
  arm64: dts: imx8mn-bsh-smm-s2/pro: add display setup

 .../freescale/imx8mn-bsh-smm-s2-common.dtsi   |   1 +
 .../freescale/imx8mn-bsh-smm-s2-display.dtsi  | 121 ++++++++++++++++++
 drivers/gpu/drm/bridge/samsung-dsim.c         |  14 +-
 3 files changed, 133 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-display.dtsi

-- 
2.43.0


