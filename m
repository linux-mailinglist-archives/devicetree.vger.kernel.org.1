Return-Path: <devicetree+bounces-49809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF288877ECF
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 12:20:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C7FC283965
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 11:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE5C538FA5;
	Mon, 11 Mar 2024 11:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zun6SRxi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D596F3B78E
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 11:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710156041; cv=none; b=X5U8vadM5YSyx2wFqT3iwHcZLzpsmQ0DYazoDjPNEb//3pev2ytPxC9AlJ18eth2xJdMXzrOq2pOJYZuF7iRSvLVCbfEBnur/Ijyp2E3zFN6XDouhQ/URHDNWYlXwpRWzVZ+681d4GL4fXr4PBXpd/xxMk8bmt4d5H2PbCNxAII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710156041; c=relaxed/simple;
	bh=n56X+wpwlkTkcmdlEomphHkA7aK1W8E6wSSQhWpP62Y=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Y1ZyEZ9IygNtVb5IW8aC0VQShyBVvNvufAJQ9ZdYVKyJLutg8pmF7MpLdAyOf2HceKMIcVB/8k9doLiHDPLkYbHRkqXrWEPDbzwnmS7LEBcGNOwjzjJQx8w2HRXT8cfv34QeUnPflnNZPu87ckTUoo3oRiev8eM/aVC96HZFMsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zun6SRxi; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d311081954so49543511fa.2
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 04:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710156038; x=1710760838; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FfwYDRgWRQCKC9tq+bJEC9b6/f6fAu33v/gxpRKZsjU=;
        b=Zun6SRxiwRAOmj0YPHC3uCyRSzJlEgk8nrEBvrAba44AZ+hcnPkSOym/nGvsmIVeIf
         HrOj32yjoZqk9m/U7f6UVWroUjXJjLiabSTrROhWLTYS9ovWNQ3ET5VKaoQR4iU12GHX
         JnM63BPvzqITKDZYXd4UMa3qkEvvUtIJjFkv9dzFmtTCffQ0jFxf0jwDC81+r3ngaUrN
         lV/ChCYStioMoXJzUrQ2LKJrhsiapbA+ABBq5InWaQL/xda2hp/7tSM/Fu3Pa/iJAZj+
         4ouNUCt6Zgb3kehkosUL89qfPFqmqsRX/lxbIx7jjNfYA+lZoq7Odx39e5IlqlqQQgPo
         v88w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710156038; x=1710760838;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FfwYDRgWRQCKC9tq+bJEC9b6/f6fAu33v/gxpRKZsjU=;
        b=kgh8Yaa6YztptF2S4wm+a5/aSK19gH151593GA2kwg4DTzOAWDSG6CZ7ypFEqj8VTL
         BFRma6GK+f88rsCgUaIaHaQgc6fqZGRObEEG+oVbN8p5XbOObD1SiL+BjUBXqBrdRnkX
         4i5H8xJmT8chleVNhU0mvx9/IEGAUv1l5vMBXFGSuA8FhUn+oMDwzQBbn41vqqqdCRWR
         39XBtXpbxnI8LWVq79QCY/gDFaGjj+TEy5YGZWeenxoyWO0HFPtmozCzx8AATz5PJB7h
         gh+b172JY/xH5O3t8fouSdLttEWMhzetXHQm0FF7jlL+jtQLkHjxYrhXnHsnhel7HiAX
         PI0A==
X-Forwarded-Encrypted: i=1; AJvYcCXDEGISHvf16LxkMPU85ZGxdNLxD9qn9Kt+0jkDeZBbisuywNJAPLjnnm104PzC99NTw6QA2JOQ/nXRd4FGVXC+GCHrBpiE0JTQ3A==
X-Gm-Message-State: AOJu0YzxYvQfo3IhZSAzdPqnTIGvQ6wJ0gA4eIPpyonkd4hDnP0mdm6X
	AhKGCfX/hhpVgdgZfL/CNrHVGoaFqtppdgh9VB7lvf0aNsiYT5TsYy4hVcUYNxg=
X-Google-Smtp-Source: AGHT+IE0sz+dkhtvBYuoYNh/0wTQoTbPhTPeVyMtJ5WatKWJgn54X66Z6d9IlfqQEg+MXbPnlCuzFA==
X-Received: by 2002:a05:651c:141e:b0:2d3:3e83:8309 with SMTP id u30-20020a05651c141e00b002d33e838309mr3452454lje.19.1710156037994;
        Mon, 11 Mar 2024 04:20:37 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id by10-20020a05651c1a0a00b002d2aa0b0d01sm1075200ljb.82.2024.03.11.04.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 04:20:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 00/12] drm/imx/ipuv3: switch LDB and parallel-display
 driver to use drm_bridge_connector
Date: Mon, 11 Mar 2024 13:20:08 +0200
Message-Id: <20240311-drm-imx-cleanup-v1-0-e104f05caa51@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOno7mUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDY0MD3ZSiXN3M3Ard5JzUxLzSAl1DA3MTs0TLJHPDNFMloK6CotS0zAq
 widGxtbUAf3w1x2EAAAA=
To: Philipp Zabel <p.zabel@pengutronix.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2450;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=n56X+wpwlkTkcmdlEomphHkA7aK1W8E6wSSQhWpP62Y=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl7ukDVZSYHTCgMsmS4v4TYL68h/sP9ZvVQx2+K
 WAeQfwMw8WJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZe7pAwAKCRCLPIo+Aiko
 1eQBB/4yvL/fFt6doOLRiXjbqwqNX7AfOuaa/363KNFHGQ5n/BSZNc2diRkK58WrhBoVvSNjmKb
 nLi9AeiIX7UnbA+9eNf+5iKqUx9xCF9GH/bg8hJOImmTFWFCf51l9pgWA/RY+SZtYASOh0KHgC+
 6mAV7IF5VwaWzxvTQD2VlpgmjifM9ej+HihY7fEC/pN75hjo1atDvPsDo0QchEy9gDrhvRUa03B
 41hKMCw5y/E+/L3V5LQlWbZZcsyxkFq1jm58+6gPjKDd1ZTbU0uyNzu+Q9xWXpcTsERInzAboRd
 PiW0SIxAo2E5/DJIUWfJNdqOM9TX9/8U+sohAdQv1Y/pJkds
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The IPUv3 DRM i.MX driver contains several codepaths for different
usescases: both LDB and paralllel-display drivers handle next-bridge,
panel and the legacy display-timings DT node on their own.

Drop unused ddc-i2c-bus and edid handling (none of the DT files merged
upstream ever used these features), switch to panel-bridge driver,
removing the need to handle drm_panel codepaths separately and finally
switch to drm_bridge_connector, removing requirement for the downstream
bridges to create drm_connector on their own.

This has been tested on the iMX53 with the DPI panel attached to LDB via
LVDS decoder, using all possible usecases (lvds-codec + panel, panel
linked directly to LDB node and the display-timings node).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (12):
      dt-bindings: display: fsl-imx-drm: drop edid property support
      dt-bindings: display: imx/ldb: drop ddc-i2c-bus property
      drm/imx: cleanup the imx-drm header
      drm/imx: parallel-display: drop edid override support
      drm/imx: ldb: drop custom EDID support
      drm/imx: ldb: drop custom DDC bus support
      drm/imx: ldb: switch to drm_panel_bridge
      drm/imx: parallel-display: switch to drm_panel_bridge
      drm/imx: add internal bridge handling display-timings DT node
      drm/imx: ldb: switch to imx_legacy_bridge / drm_bridge_connector
      drm/imx: parallel-display: switch to imx_legacy_bridge / drm_bridge_connector
      drm/imx: move imx_drm_connector_destroy to imx-tve

 .../bindings/display/imx/fsl-imx-drm.txt           |   2 -
 .../devicetree/bindings/display/imx/ldb.txt        |   1 -
 drivers/gpu/drm/imx/ipuv3/Kconfig                  |  15 ++
 drivers/gpu/drm/imx/ipuv3/Makefile                 |   2 +
 drivers/gpu/drm/imx/ipuv3/imx-drm-core.c           |   7 -
 drivers/gpu/drm/imx/ipuv3/imx-drm.h                |  19 +-
 drivers/gpu/drm/imx/ipuv3/imx-ldb.c                | 201 ++++-----------------
 drivers/gpu/drm/imx/ipuv3/imx-legacy-bridge.c      |  85 +++++++++
 drivers/gpu/drm/imx/ipuv3/imx-tve.c                |   8 +-
 drivers/gpu/drm/imx/ipuv3/parallel-display.c       | 133 ++------------
 10 files changed, 174 insertions(+), 299 deletions(-)
---
base-commit: 1843e16d2df9d98427ef8045589571749d627cf7
change-id: 20240310-drm-imx-cleanup-10746a9b71f5

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


