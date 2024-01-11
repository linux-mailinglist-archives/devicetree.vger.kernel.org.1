Return-Path: <devicetree+bounces-31293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C11282ABB8
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 11:15:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 845891F244A0
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 10:15:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D828912B81;
	Thu, 11 Jan 2024 10:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="D6I8Jkiu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631611548F
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 10:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3367a304091so4518095f8f.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 02:15:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1704968109; x=1705572909; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+V4JzjzBqaHzJLZncYnEckgIPzqOvsDKGfGUY3ZauSA=;
        b=D6I8Jkiu7R2YYZjSXVLCAEHo7Tni8IMl8dy9/kBdkb7S7vXW2tNVB19YzW/1kX86lO
         /w1Paf48C7NPiR6m3SVbgrrrk/+8slEbGy//PyLYlbsQtb2Upc3miDc3INa50+Sl6HxF
         lelnOioANvptTcCJEGD53wlr7bScwQcHzEgSed6kNJtMzhXRit37tXPVrboj+47aOs5u
         3cGrfUbYYpU4K635cOm5jCTRWr9IhUvoMw2ayDZQ6GLday3A7LtczPX3IZ8thiqLZ7Y2
         3TNr48uobHf51v2axVFyQSjSmSkux+uYE1DBIic6MmaH/XAA8nDboghBXOGFBG+2G8VX
         8yTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704968109; x=1705572909;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+V4JzjzBqaHzJLZncYnEckgIPzqOvsDKGfGUY3ZauSA=;
        b=FA1n0V3+o14StF2kGjJxVdbtZEYwKPyudgjIY4l6KablbXgZXnFgq4WHxgBB44rsHv
         D3eTunLgNPnpoU6CG8etl2NPZ+8QK+wnv2r7Qudo3Vhe17cGUniX3UqxTP+7J6uF7prv
         pGltCV+ohFScunzG+l/6cpuT7HhyK1p4Xm9yE4L0V/4utcVKYCdA5eyEja2F/7bI4owx
         n5t/Dh7vMLdRtpU7Ny0oTksbyl4iF/U+4ORQy55bJd5eTsWaiNYD/sdqQSUuGEls6Jde
         AXoY+2LEe/FYmdoYlCFMH/z59H04fM+sANxUgSDoEIZIqvS29zfQD/mzIAPQywvTGTJ8
         nc6w==
X-Gm-Message-State: AOJu0YzY5ychH9adTPbvD5UW1msNOzqDtQTWVnqw2ozdHaZ7XFjwXyv8
	mGVxiMItoKklgDmyhRhthdkkysyVFQraRA==
X-Google-Smtp-Source: AGHT+IEm+n9REC3cDZLVtCMBBH7ollyf38bVEHwiAvqjBMBz1qwTcxZsn0pt65qrruZ1CkOufUMg3Q==
X-Received: by 2002:a05:600c:3b1d:b0:40e:6206:a518 with SMTP id m29-20020a05600c3b1d00b0040e6206a518mr68778wms.184.1704968109127;
        Thu, 11 Jan 2024 02:15:09 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:55f:21e0:9e19:4376:dea6:dbfa])
        by smtp.gmail.com with ESMTPSA id j7-20020a05600c190700b0040e52cac976sm5157758wmq.29.2024.01.11.02.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 02:15:08 -0800 (PST)
From: Julien Stephan <jstephan@baylibre.com>
To: 
Cc: Julien Stephan <jstephan@baylibre.com>,
	Andy Hsieh <andy.hsieh@mediatek.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v5 0/2] phy: mtk-mipi-csi: add driver for CSI phy
Date: Thu, 11 Jan 2024 11:14:49 +0100
Message-ID: <20240111101504.468169-1-jstephan@baylibre.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adding a new driver for the MIPI CSI CD-PHY module v 0.5 embedded in
some Mediatek soc, such as the MT8365

This driver was adapted from https://patchwork.kernel.org/project/linux-mediatek/cover/20200708104023.3225-1-louis.kuo@mediatek.com/

v1 can be found here: https://lore.kernel.org/all/20230403071929.360911-1-jstephan@baylibre.com/

v2 can be found here: https://lore.kernel.org/all/20230515090551.1251389-1-jstephan@baylibre.com/

v3 can be found here: https://lore.kernel.org/all/20230524083033.486490-1-jstephan@baylibre.com/

v4 can be found here: https://lore.kernel.org/linux-phy/20230620121928.1231745-1-jstephan@baylibre.com/

Changelog
Changes in v5:
- rebase on latest master scheduled for 6.8-rc1
- sort alphabetically CONFIG_PHY_MTK_MIPI_CSI_0_5 in Kconfig and Makefile
- put lines under 100 chars on one line

Changes in v4:
include/dt-bindings/phy/phy.h:
	- remove commit adding PHY_TYPE_CDPHY definition

Binding file:
	- use the standard phy-type property instead of a custom one so
	  rename mediatek,phy-type -> phy-type
	- phy-type property is made optional: when present, describes the
	  phy type and the operating mode
	- phy-cell is modified to accept a phy argument representing the
	  phy operating mode if phy-type is not specified
	- adding new property num-lanes

Driver:
	- add a custom xlate function to handle phy cells
	- update probe function to retrieve the new value phy-type
	  instead of the mediatek,phy-type
	- remove useless struct define `struct mtk_mipi_dphy;`
	- rename some functin/variable from `xx_dphy_xx` to `xx_cdphy_xx`
	- update probe function to read num-lanes property

Changes in v3:
Binding file:
	- rename compatible string
	  mediatek,phy-mipi-csi-0-5 -> mediatek,mt8365-csi-rx
	- rename binding file to be as compatible string
	- change property mediatek,is_cdphy -> mediatek,phy-type using an
	  enum value instead of boolean for scalability
	- remove status property from example nodes
	- rename example node name 'mipi_rx_csi0: mipi_rx_csi0@11c10000' ->
	  'csi0_rx: phy@11c10000'
	- put reg address in lower case

include/dt-bindings/phy/phy.h:
	- add PHY_TYPE_CDPHY definition

Driver:
	- rename compatible string
	- rename property mediatek,is_cdphy -> mediatek,phy-type
	- rename CSIx* macro to CSIX* (x -> X)
	- fix style issue on the driver data structure
	- update MODULE_DESCRIPTION as suggested by Angelo
	  and update the kconfig module description to match it
	- add dphy /cdphy eq tuning function to factor the code
	  and increase readability
	- fix typo __PHY_MTK__MIPI_CSI__C_0_5_RX_REG_H_ -->
	  __PHY_MTK_MIPI_CSI_V_0_5_RX_REG_H_
	- reword commit message to update my contributions
	- added missing copyright
	- added module name in Kconfig

Changes in v2:
	- fix all comments on bindings
	- move the binding chunk from driver to binding commit
	- fix dt_binding_check error (reported by DT_CHECKER_FLAGS)
	- use a more generic compatible string
	- add a new dt properties to simplify the driver
	  "mediatek,is_cdphy"
	- rename the driver and the corresponding file to include
	  version
	- drop of_match_ptr()
	- use devm_platform_ioremap_resource
	- use phy-mtk-io.h api instead of regmap
	- rework the driver to use dt nodes to declare PHY instead of an
	  array in the driver
	- remove useless define for unused registers
	- remove support for CSI0A/B because it cannot be tested, and it
	  simplifies the driver for a first review
	- edit commit message and bindings to be more descriptive about the
	  hardware

Florian Sylvestre (1):
  dt-bindings: phy: add mediatek MIPI CD-PHY module v0.5

Phi-bang Nguyen (1):
  phy: mtk-mipi-csi: add driver for CSI phy

 .../bindings/phy/mediatek,mt8365-csi-rx.yaml  |  79 +++++
 MAINTAINERS                                   |   7 +
 drivers/phy/mediatek/Kconfig                  |  12 +
 drivers/phy/mediatek/Makefile                 |   2 +
 .../mediatek/phy-mtk-mipi-csi-0-5-rx-reg.h    |  62 ++++
 drivers/phy/mediatek/phy-mtk-mipi-csi-0-5.c   | 294 ++++++++++++++++++
 6 files changed, 456 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
 create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-csi-0-5-rx-reg.h
 create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-csi-0-5.c

-- 
2.43.0


