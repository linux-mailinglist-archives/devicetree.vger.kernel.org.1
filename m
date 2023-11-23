Return-Path: <devicetree+bounces-18289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F547F606C
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 14:38:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B0EAB281C30
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 13:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B65E525102;
	Thu, 23 Nov 2023 13:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMAztWdf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B96F250E2
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 13:38:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39466C433C8;
	Thu, 23 Nov 2023 13:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700746681;
	bh=Kbejb0pedrawxY+pi+DDjvZjKDSamA1YE5y/xYy428I=;
	h=From:To:Cc:Subject:Date:From;
	b=UMAztWdfrWZb+e0C/ri4ppoNy2OFRDYeBO2/klDT6OSA68JTnvdYMOGPwHiOlbKII
	 jfRew+TsZO9d1yfQcIA8PzXJbCrv2wn/kqG1GrZKDmQP2QhN+Lb9VO50CqIiIrD3Lg
	 eqQWxCEOkX1FrL/OTu8q+YB9Oqwd72zg7VVuGRz2Nv/05vSY343Sh/FtJJf+6Z4Q1N
	 3R9Q72CXgM6+HzPcywTBMtlFPVG8PC6MyjKHwRcubfAcX4v/XoMd4K57ExZU9NkYyV
	 T7cexV+whxMegO8gqovedEzEPEi0kt+P9/n7f3dcbkiEgi5yh/185+/2Mgq+3hZd+G
	 J2gf0uf60LdrA==
From: Michael Walle <mwalle@kernel.org>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Xinlei Lee <xinlei.lee@mediatek.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH 0/4] drm/mediatek: support DSI output on MT8195
Date: Thu, 23 Nov 2023 14:37:45 +0100
Message-Id: <20231123133749.2030661-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for a DSI output on VDOSYS0. Luckily, there is a new
feature to support dynamic selections of the output (connector).
Use it to add support for a DSI output.

Apart from that, this is pretty straghtforward by just adding new
compatibles and add the correct DSI nodes to the SoC dtsi.

This was tested with a Toshiba TC358775 DSI-to-LVDS bridge and
three different panels. Please note, that the driver for this
bridge doesn't work well and needs a more or less complete rework,
which will be posted on a separate series.

Michael Walle (4):
  dt-bindings: display: mediatek: dsi: add compatible for MediaTek
    MT8195
  dt-bindings: phy: add compatible for Mediatek MT8195
  arm64: dts: mediatek: mt8195: add DSI and MIPI DPHY nodes
  drm/mediatek: support the DSI0 output on the MT8195 VDOSYS0

 .../display/mediatek/mediatek,dsi.yaml        |  4 ++
 .../bindings/phy/mediatek,dsi-phy.yaml        |  1 +
 arch/arm64/boot/dts/mediatek/mt8195.dtsi      | 48 +++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |  8 +++-
 4 files changed, 60 insertions(+), 1 deletion(-)

-- 
2.39.2


