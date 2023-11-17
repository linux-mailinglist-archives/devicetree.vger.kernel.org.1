Return-Path: <devicetree+bounces-16524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9437EEEF0
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:42:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 54211B209B5
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:42:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A340615E8C;
	Fri, 17 Nov 2023 09:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="MrafSUjg"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14BDCC4;
	Fri, 17 Nov 2023 01:42:36 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D9357660738E;
	Fri, 17 Nov 2023 09:42:33 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700214154;
	bh=6PoJBFFb6VIF6RiFhLI21rpjXBo5OuU/hCloojZ5gz0=;
	h=From:To:Cc:Subject:Date:From;
	b=MrafSUjgszZ3owcwmneO4fR4QrQAMbtLGKScMVf6E/cVqIw2cLCmFAwFBb7ef6Gb0
	 4G/Toa5Hr98z122LPjJLOfxUw6hD3LSSJH0T0OCh/qRWvh1CwshWf/m10ZJEe339BM
	 zDW9zcVhE3DS4q+XgjXUCoVvR5u20eQwascDuf9nZIDDuUCneozixGrw88dS7mKMeA
	 ifkxpg55/rraM1DLvEqpPD4SjpnSXf7JQfMpS9cPjYdlt6dNUZ8MmSzcww1+zQnPbA
	 SQuDhyufnhutpQNsO/kKGlRMkhIOJWZ3reRHbZlZn09y03EgW8zCNTk+NUEntYcCMC
	 R9IIWWR9X+Z/A==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	robh+dt@kernel.org,
	angelogioacchino.delregno@collabora.com,
	p.zabel@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com,
	wenst@chromium.org
Subject: [PATCH v1 00/20] MediaTek SVS driver partial refactoring
Date: Fri, 17 Nov 2023 10:42:08 +0100
Message-ID: <20231117094228.40013-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is a partial refactoring of the MediaTek Smart Voltage Scaling
driver.
Long story short: this driver never worked as expected on any platform
because of various issues so in this series there are some changes that
will break compatibility with older device trees (of which, only MT8183
ever had the SVS node), but those are acceptable because... it never
really worked fine anyway, so there's no regression.

This series was tested on MT8186, MT8192, MT8195 Chromebooks.


Depends on

MT8192 thermal node:
https://lore.kernel.org/lkml/20231017190545.157282-5-bero@baylibre.com/

MT8186 and MT8195 SVS support:
https://lore.kernel.org/all/20231011034307.24641-1-chun-jen.tseng@mediatek.com/

Note: one commit was omitted because I haven't got feedback yet on
the thermal-zones devicetree consumers implementation at [1], but I
still wanted to send this series to the lists to get feedback.
Please keep in mind that the one omitted commit is supposed to go
on top of this series anyway, and that an useful example of how the
SVS node will look with the DT thermal zones is provided at [1].

[1]: https://lore.kernel.org/all/20231115144857.424005-1-angelogioacchino.delregno@collabora.com/

AngeloGioacchino Del Regno (20):
  arm64: dts: mediatek: mt8183: Change iospaces for thermal and svs
  soc: mediatek: mtk-svs: Subtract offset from regs_v2 to avoid conflict
  soc: mediatek: mtk-svs: Convert sw_id and type to enumerations
  soc: mediatek: mtk-svs: Build bank name string dynamically
  soc: mediatek: mtk-svs: Reduce memory footprint of struct svs_bank
  soc: mediatek: mtk-svs: Change the thermal sensor device name
  soc: mediatek: mtk-svs: Add a map to retrieve fused values
  soc: mediatek: mtk-svs: Add SVS-Thermal coefficient to SoC platform
    data
  soc: mediatek: mtk-svs: Move t-calibration-data retrieval to
    svs_probe()
  soc: mediatek: mtk-svs: Commonize efuse parse function for most SoCs
  soc: mediatek: mtk-svs: Drop supplementary svs per-bank pointer
  soc: mediatek: mtk-svs: Commonize MT8192 probe function for MT8186
  soc: mediatek: mtk-svs: Remove redundant print in svs_get_efuse_data
  soc: mediatek: mtk-svs: Compress of_device_id entries
  soc: mediatek: mtk-svs: Cleanup of svs_probe() function
  soc: mediatek: mtk-svs: Check if SVS mode is available in the
    beginning
  soc: mediatek: mtk-svs: Use ULONG_MAX to compare floor frequency
  soc: mediatek: mtk-svs: Constify runtime-immutable members of svs_bank
  arm64: dts: mediatek: mt8192: Add Smart Voltage Scaling node
  arm64: dts: mediatek: mt8195: Add SVS node and reduce LVTS_AP iospace

 arch/arm64/boot/dts/mediatek/mt8183.dtsi |   26 +-
 arch/arm64/boot/dts/mediatek/mt8192.dtsi |   12 +
 arch/arm64/boot/dts/mediatek/mt8195.dtsi |   17 +-
 drivers/soc/mediatek/mtk-svs.c           | 1995 +++++++++++-----------
 4 files changed, 994 insertions(+), 1056 deletions(-)

-- 
2.42.0


