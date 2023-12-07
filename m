Return-Path: <devicetree+bounces-22751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F91C808A36
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:17:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9E55AB216B4
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 14:17:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C9B041C61;
	Thu,  7 Dec 2023 14:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="gkqUgshk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 307E619BF
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 06:17:29 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-54cd2281ccbso1249873a12.2
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 06:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1701958648; x=1702563448; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mF9zOE4ExgVr9gQbxX7r7tJN+TXsbkHqJB5gcZ6w0c8=;
        b=gkqUgshkXTn9FN3WXcSwK/GeAEnGkAvbDsiQtx5Lj8YfSQw59qhBbV6Jv8j8MalJAZ
         rcLSqJfRPRMzvfNg1e5+lSKAz6YQT3jiVXJATvA3V528TrhJWEhHLRejATYCxaotuERX
         FyrdBlo6Slr3lYmxuMr7qLdRxF9mCT+Aq8t+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701958648; x=1702563448;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mF9zOE4ExgVr9gQbxX7r7tJN+TXsbkHqJB5gcZ6w0c8=;
        b=dJSagoKmRh1nTM19m3SDO1lDQJ/2MP5zd10lBWu7Py35p9tKqLiLK/K5/rZKPw9DeR
         bA3ndAGMfDZAzLk87ojdM/sgzNh6TskttetyKvWEdcesK3AQI+4U1mlNyw4KEcvdk2fb
         OGdXRLKmgcAcsY39WnO6jEm+8CEuP9kky7vCNYMCoQv7gzbXMENe+KoWAbltuo0IHwgo
         m3emzURdWbff6OaiKH0EIjSCblfWkcUFo3wq9eN/QfLzDyyHtuX4drVW1fN/IEDd8aQv
         krOc2qgsilIkzT+37+SiVzB1mXd6Q0Lnf5sGqkkYt4/uXFHs5Vj8MJZaZ5XXIqiNMqa2
         S5GQ==
X-Gm-Message-State: AOJu0Yyvrfndy2bQ2ToVXuN+pMauBpAiIZbvMI5VyTxoBnSW3j6spBo0
	qas1xdaSNWwQlIiVLjrW6nptcw==
X-Google-Smtp-Source: AGHT+IHol+ZevJoFf28hi8eUKxIiSNgtRFFCa/GbsGQny6bOEW6yOyjkTXz3Q9kNLO3rSY+QhvtvKg==
X-Received: by 2002:a17:906:408b:b0:a19:a19b:c72f with SMTP id u11-20020a170906408b00b00a19a19bc72fmr1394903ejj.127.1701958647742;
        Thu, 07 Dec 2023 06:17:27 -0800 (PST)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:9bf:959c:3c66:46c2])
        by smtp.gmail.com with ESMTPSA id f24-20020a170906c09800b00a1e814b7155sm885421ejz.62.2023.12.07.06.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 06:17:27 -0800 (PST)
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
Subject: [PATCH v5 00/10] Add displays support for bsh-smm-s2/pro boards
Date: Thu,  7 Dec 2023 15:16:29 +0100
Message-ID: <20231207141723.108004-1-dario.binacchi@amarulasolutions.com>
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

Changes in v5:
- Replace a 'return ret' with a 'goto fail' in the r63353_panel_activate()
- Add 'Reviewed-by' tag of Krzysztof Kozlowski

Changes in v4:
- Set the reset gpio to low in a single operation
- Remove duplicated code for prepare/unprepare callbacks
- Remove duplicated code for prepare/unprepare callbacks
- Add Reviewed-by tag of Neil Armstrong

Changes in v3:
- Add 'Reviewed-by' tag of Krzysztof Kozlowski.
- Replace "synaptics,r63353" compatible with "syna,r63353", as
  required by vendor-prefixes.yaml.
- Drop power-supply
- Replace "synaptics,r63353" compatible with "syna,r63353", as
  required by vendor-prefixes.yaml.
- Squash patch [09/11] dt-bindings: ili9805: add compatible string for Tianma TM041XDHG01
  into [07/11] dt-bindings: display: panel: Add Ilitek ili9805 panel controller.

Changes in v2:
- Add $ref to panel-common.yaml
- Drop port, reset-gpios, and backlight
- Set port and backlight ad required
- Replace additionalProperties with unevaluatedProperties
- Adjust the timings of the panel reset
- Add $ref to panel-common.yaml
- Drop port, reset-gpios, and backlight
- Set port and backlight ad required
- Replace additionalProperties with unevaluatedProperties
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

Michael Trimarchi (6):
  dt-bindings: display: panel: Add synaptics r63353 panel controller
  drm/panel: Add Synaptics R63353 panel driver
  dt-bindings: display: panel: Add Ilitek ili9805 panel controller
  drm/panel: Add Ilitek ILI9805 panel driver
  drm/panel: ilitek-ili9805: add support for Tianma TM041XDHG01 panel
  arm64: dts: imx8mn-bsh-smm-s2/pro: add display setup

 .../display/panel/ilitek,ili9805.yaml         |  62 +++
 .../display/panel/synaptics,r63353.yaml       |  61 +++
 MAINTAINERS                                   |  12 +
 .../freescale/imx8mn-bsh-smm-s2-common.dtsi   |   1 +
 .../freescale/imx8mn-bsh-smm-s2-display.dtsi  | 121 ++++++
 drivers/gpu/drm/bridge/samsung-dsim.c         |  14 +-
 drivers/gpu/drm/drm_bridge.c                  |   9 +-
 drivers/gpu/drm/panel/Kconfig                 |  18 +
 drivers/gpu/drm/panel/Makefile                |   2 +
 drivers/gpu/drm/panel/panel-ilitek-ili9805.c  | 406 ++++++++++++++++++
 .../gpu/drm/panel/panel-synaptics-r63353.c    | 363 ++++++++++++++++
 11 files changed, 1062 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/synaptics,r63353.yaml
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-display.dtsi
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9805.c
 create mode 100644 drivers/gpu/drm/panel/panel-synaptics-r63353.c

-- 
2.43.0


