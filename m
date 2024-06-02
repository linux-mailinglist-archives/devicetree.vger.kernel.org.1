Return-Path: <devicetree+bounces-71575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EBE8D7526
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 14:04:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2E261C20E42
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 12:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D2E93839C;
	Sun,  2 Jun 2024 12:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kGThGp+o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42470134A8
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 12:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717329891; cv=none; b=VgQyfeqti0qUR3ARXZmh+3xsPIvgGvksV7vj1rvWj4bM2X2S7G2NdZf56uMGakHIRAGiVcLRhEsZZjDnlZcTNfny+f7dwlR9GsiQZA8PH+BLltvtyAc1ucyuQfg6j+mAj0sMVnvXcmfANo/3PxRxYT/JgDsCGAMpIy1NPUF1fQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717329891; c=relaxed/simple;
	bh=tDhdl6ndKx1rU2B3KL4Ll+b3IGwWYDy7W+rlO1NBJB4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VwP621b357CL1CWZgk80AS736fdGmtw8SzSsEaTup00Ip3+BjMd9HJRBl9UsPmsGsWxnXY7CqzwavONSzkHYoru33d1cKcRR32AvwLmF1qWf0+foRv8LnplECD/xPQ6GWJW7vEOy0Lb/kcCJW6UNK9dmiUGMLGSnm3IYZq9YwVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kGThGp+o; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52b8e0e98adso2411016e87.0
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 05:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717329887; x=1717934687; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bVpQ9KTWQnvGE7mVXDOxEasU9Z/mylcYXt83Rqw6UYA=;
        b=kGThGp+oeh4xB48mZhzWQKTMEiMuBD9H5HVZEdlt0BgX0h9v4OExkYsZcW06AYepI5
         Yi10gXAR4dTegJBgxzOskJMtmKZJ8jlrukLUod60Nh6vAFdgpdzJhKpbvHWirKTUCd7q
         5YKaNBaLrbhRICQ092FeWEmG4o6F4o7r94MrrpmTpQnWuRFR93k5mGA9ZkqwQ7Zr7GG+
         Vi4oXwmIDQiSDx4m6YA4KgO+XdgZP/+owE5u75ys/TCj1Ss4O1jbm+NZEpnhS+h0SIh2
         acGf2y2tDMVacym4v9SGg+8lw2CqvYUtyyue+hMOSDb/L2SxEqQYPnQ7sRGqFDZWW+D0
         bdDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717329887; x=1717934687;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bVpQ9KTWQnvGE7mVXDOxEasU9Z/mylcYXt83Rqw6UYA=;
        b=k6dVGK1ky8DsJO/5LZfBYKEE/gEsElBX5yJqrA2sSYmBJgSL/MV5Jy2C3qE7Vb4N2D
         mNlqK2zr0qHHAmy20L5+MDUr+WFNOFWu4Vt2XnPBr5f3ycQDp/abrLcgVlLx4ZTJLxns
         /nw80mbCkykvSuHysFrdFa2K8O/kA2uSS4/u6zaTnwANjUWrbZgouCkqSC5l9DDRChLq
         dbYS7BmJohOkzG3+iFuMdSaIOsUrNxteXJgCY4+lOWwITT7qfdOutNaiFXFEPxm+rY2+
         tERU+WM1hFUVmm63Yd/E+QUVt2LlvNMsLLkdHznhsu4MnJoh6I1+lIJq09P59OT0YuZr
         PiHA==
X-Forwarded-Encrypted: i=1; AJvYcCVhjOfIxk35LKk6oEFBaUBbrCQ7WCcT6dVm+AT2iEv++FKltr/FjzBvOi5TSbEhGiV/E40n0Snu5vNmI4jyjagUO0gBJFyYIe8B+w==
X-Gm-Message-State: AOJu0YycP/u7y1FAT8XIEv2GC28GKRdAsK13U1a5qMr68rJXSQ5KnLiT
	7dtgLlrLfDs1UnW3bQLXc48utbwZipxSXbedDr1h8Qsf/DLg7gogg0i30yM1rN0=
X-Google-Smtp-Source: AGHT+IH0OCAVf7Viy0SnkcBSU+0nSO7mIL7DWaDsWecoCFeQANoteXOODsNnvtjUBpoFJrvccIysMw==
X-Received: by 2002:a05:6512:546:b0:52b:6eef:41b5 with SMTP id 2adb3069b0e04-52b8949d408mr3880501e87.0.1717329887192;
        Sun, 02 Jun 2024 05:04:47 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b8b56867fsm759398e87.44.2024.06.02.05.04.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 05:04:46 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v3 00/12] drm/imx/ipuv3: switch LDB and parallel-display
 driver to use drm_bridge_connector
Date: Sun, 02 Jun 2024 15:04:40 +0300
Message-Id: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANhfXGYC/23NzQrCMAzA8VcZPVtJui/15HuIh9p2W2BrR6tlM
 vbudgNB0UMO/0B+mVkwnkxgp2xm3kQK5GyKfJcx1UnbGk46NRMgCsgRuPYDp2HiqjfSPkaOUBe
 VPN5qbEqWrkZvGpo28XJN3VG4O//cHkRct28Lf6yIHLhBKBoolZQlnnuy0ru98y1bsSg+gPwPI
 BKgD6hQpwFRfQHLsrwAfMNl+vAAAAA=
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3478;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=tDhdl6ndKx1rU2B3KL4Ll+b3IGwWYDy7W+rlO1NBJB4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmXF/cCUe+k6YWW2BRfgCEKRxPkjQwq57MgL+cW
 nx3towqy1mJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlxf3AAKCRCLPIo+Aiko
 1ehKB/9c5Rx2Sj/Cri3wep/fmmNJPdXkNBtkyF9Ax9+w0EJ4kQMFEhl1QfJ0fUO8wryr5IoJLdG
 QEXgs0sNFdlTaIP3sVoUg+3ZGqm7msxoXTLmGnDsgfkCdHVdKHV3y+UPI+DgxXFyCPBL2+OmFw7
 rm0WX+0ct3n+/bmWOu8MP4D/EASb8xhCTqyKd1uibFnjecsRVAKe2gEHQpk1ac7CS/tjuP/R6R5
 ESDvFwpgQ3sSleY4XDaeuGB+xHKWe3l3pN14CypGdAow7C32U/2NOUP2U3TfFwZPatNU5KpLO9B
 9yZLh6MFdoDqIflwdVE0xlsGMTW13HsxDCNG/SrnxQw9ksZs
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

To be able to test on the iMX53 QSRB with the HDMI cape apply [1], [2]

[1] https://lore.kernel.org/all/20240514030718.533169-1-victor.liu@nxp.com/
[2] https://lore.kernel.org/all/20240602-imx-sii902x-defconfig-v1-1-71a6c382b422@linaro.org/

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v3:
- Notice (soft) dependencies in the cover letter (Chris)
- Select DRM_BRIDGE instead of depending on it (Philipp)
- Dropped unused selection of DRM_PANEL (Philipp)
- Added missing include of <drm/bridge/imx.h> to parallel-display.c
  (Philipp)
- Link to v2: https://lore.kernel.org/r/20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org

Changes in v2:
- Fixed drm_bridge_attach flags in imx/parallel-display driver.
- Moved the legacy bridge to drivers/gpu/drm/bridge
- Added missing EXPORT_SYMBOL_GPL to the iMX legacy bridge
- Link to v1: https://lore.kernel.org/r/20240311-drm-imx-cleanup-v1-0-e104f05caa51@linaro.org

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
 drivers/gpu/drm/bridge/imx/Kconfig                 |  10 +
 drivers/gpu/drm/bridge/imx/Makefile                |   1 +
 drivers/gpu/drm/bridge/imx/imx-legacy-bridge.c     |  85 +++++++++
 drivers/gpu/drm/imx/ipuv3/Kconfig                  |  10 +-
 drivers/gpu/drm/imx/ipuv3/imx-drm-core.c           |   7 -
 drivers/gpu/drm/imx/ipuv3/imx-drm.h                |  14 --
 drivers/gpu/drm/imx/ipuv3/imx-ldb.c                | 203 +++++----------------
 drivers/gpu/drm/imx/ipuv3/imx-tve.c                |   8 +-
 drivers/gpu/drm/imx/ipuv3/parallel-display.c       | 139 +++-----------
 include/drm/bridge/imx.h                           |  13 ++
 12 files changed, 187 insertions(+), 306 deletions(-)
---
base-commit: 850ca533e572247b6f71dafcbf7feb0359350963
change-id: 20240310-drm-imx-cleanup-10746a9b71f5

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


