Return-Path: <devicetree+bounces-138072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E7DA0BA62
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:52:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF80818803EA
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:52:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E10B023A10B;
	Mon, 13 Jan 2025 14:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="nrn7QHFd"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 927C223A0E7;
	Mon, 13 Jan 2025 14:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736779962; cv=none; b=TEzCzKjOB/7E2StxkhwiaeF2I9Q7TGxoX7RV2h+MyPaVp/rCBNfSljPhn2R991jNt22z9VlEd+2e6sAxt30jyNmzTpeJRu5XAVUNep5FQchgMAAfHFeyHLlmLLSsKgkhAAEUcY5zGlgq3E28wLBBqeEUr9EMn7eUxeSzDDvjnfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736779962; c=relaxed/simple;
	bh=mOnoaGS/56qjJj1pufHBy52zxphOeqK0rJ4zuw+X9ts=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mlkeSfiP+A4IS7UEj8FdIujDRsMANgnG5torPKQw/oMR4tF0m3QtHoCvbSIIQHCGEH2ZGFSnW/O2rFhyYVSisdkzTkjM9GsznnkQkykPl3+vyyb2FIEpOz5+R7ynVbyW28xF84aUH2ydu8F2sSCXz5mBQ81l4zjNdtxcPPrsehQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=nrn7QHFd; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736779957;
	bh=mOnoaGS/56qjJj1pufHBy52zxphOeqK0rJ4zuw+X9ts=;
	h=From:To:Cc:Subject:Date:From;
	b=nrn7QHFd9al6+RLw0cbl6ZqZU06OJhqCfZnwpr1fz2tx+js6xl9H+fHLqXr4dy6NV
	 hDiVk/XwCghuFWd9GwKjeg/IsGBpulEXuXbCW1OjLc1V/MLJsrxJubxCYjD4DtPDYF
	 tb6hGnEnEKLYiq0mMfRgIRI9jAfjHLOy/cFqfzIuN2RBMaD4iuYRsM8vlz20b+jCFd
	 a97ijkN78u/sw4CYfoLFRUfI8C8rsDRarPMYjg2CEEr1yx0P9UzQixr+kafu9ALi9I
	 QAKabzA29LQPPE880h8GxJaWVrnMn4oPP+83CvDQ3bh20vXddrBhVcTec2cmpv/IQv
	 WPiZpUyJdi5PQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 47AE317E0D9D;
	Mon, 13 Jan 2025 15:52:36 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunkuang.hu@kernel.org
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com,
	jie.qiu@mediatek.com,
	junzhi.zhao@mediatek.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	dmitry.baryshkov@linaro.org,
	lewis.liao@mediatek.com,
	ives.chenjh@mediatek.com,
	tommyyl.chen@mediatek.com,
	jason-jh.lin@mediatek.com
Subject: [PATCH v5 00/34] Add support for MT8195/88 DPI, HDMIv2 and DDCv2
Date: Mon, 13 Jan 2025 15:51:58 +0100
Message-ID: <20250113145232.227674-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.47.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes in v5:
 - Rebased over next-20250113
 - Resolved merge issues with next-20250113
 - Added bitfield.h inclusion in mtk_dpi in commit [02/33] to resolve
   build issue from 0day CI
 - Removed .atomic_check callback from mtk_hdmi_v2 as it is now part
   of drm_bridge_connector as pointed out by Dmitry B
 - Removed call to pm_runtime_disable() as the driver uses devm
 - Tested again :-)

Changes in v4:
 - DDCv2 binding erroneously dropped in v3 is included again (oops!)
 - Added reference to dai-common.yaml in HDMIv2 binding
 - Dropped pinctrl entries from HDMIv2 binding
 - Fixed required list in HDMIv2 binding and changed node name to
   'hdmi' instead of 'hdmi-tx'
 - Fixed issue in mtk_hdmi derived from wrong commit splitting action
   from version 3
 - Exported necessary symbols and added namespaces for those
 - Fixed module build for both HDMIv1 and HDMIv2
 - Other cleanups

Changes in v3:
 - Added hpd_enable() and hpd_disable() callbacks as suggested by Dmitry B
 - Removed audio mute call in bridge_enable() as suggested by CK
 - Reworked commonization commits for mtk_hdmi/mtk_hdmi_common and split
   out debugfs/abist implementation as suggested by CK
 - Removed .mode_valid() callback as it is now provided by the bridge
   API in drm_bridge_connector_helper_funcs
 - A bit of cleanups here and there
 - Tested again on HW especially for new hpd_enable/disable callbacks.

Changes in v2:
 - Merged series "Add support for MT8195/8188 and Pattern Generator"
   and "drm/mediatek: Add support for HDMIv2 and DDCv2 IPs" in one
   as they are directly related, as requested by CK Hu
 - More commonization: moved some audio functions to mtk_hdmi_common
 - Fixed a bug in DDCv2 driver to allow sending a message with len=1
 - Renamed some functions in HDMIv2 to consistently use the prefix
   mtk_hdmi_v2_ across the driver
 - Added .mode_valid() callback to HDMIv2
 - Added .atomic_check() callback to HDMIv2
 - Reordered drm_bridge_funcs in HDMIv2 driver
 - Rewritten .edid_read() callback in HDMIv2 to move checking audio
   availability to bridge_pre_enable() stage, and to stop using the
   drm_edid_read_ddc() in favor of drm_edid_read()
 - Added support for API provided HDMI Helpers
 - Added .tmds_char_rate_valid() callback to HDMIv2 for HDMI helpers
 - Added .hdmi_{read,write}_infoframe() callback to HDMIv2 for helpers
 - Added support for Vendor infoframes in HDMIv2
 - Added missing audio-dai-cells to HDMIv2 binding to fix check error
 - Added more information to the HDMIv2 binding for clocks and PHY
 - Added some comments to the HDMIv2 code to clarify why the controller
   is preconfigured in bridge_pre_enable() instead of bridge_enable()
 - Added a mention of the differences in HPD between v1 and v2 to the
   commit introducing the v2 driver (v2 is not using CEC for HPD)
 - ...and tested again on HW! :-)


This series adds support for the HDMI-TX v2 Encoder and DDCv2, and for
the direct connection DPI as found in MT8195, MT8188 and their variants.

Tested on Genio 700 EVK:
 - ABIST ON: ok, pattern generated internally from HDMI is shown on
   HDMI screen at the correct resolution;
 - ABIST OFF + DPI Pattern Generator ON: ok, pattern coming from DPI is
   shown on HDMI screen at the correct resolution;
 - Can negotiate up to 4k60

and on MT8395 Radxa NIO 12L:
 - ABIST ON: ok, pattern generated internally from HDMI is shown on
   HDMI screen at the correct resolution;
 - ABIST OFF + DPI Pattern Generator ON: ok, pattern coming from DPI is
   shown on HDMI screen at the correct resolution;
 - Dual screen usecase validated (DSI + HDMI 3840x2160p 60Hz)
 - Can negotiate up to 4k60

Please note that this submission does *not* include support for HDCP
nor for CECv2, as I want this to be upstream before implementing
additional features which are not strictly required for simple
HDMI output.

Bonus in this series is the addition of support for the Pattern Generator
found in the DPI HW: since I needed this for debugging during development,
I had to code in the actual support bits and it looked like a waste of
time to just remove it.
I instead decided to clean it up and upstream it, as this will anyway come
handy for multiple things, of which the most important (imo) are:
 - Adding support for new SoCs in the future will be less time consuming
   as this driver already has the pattern generator in;
 - CI Testing might be able to make use of this to validate that the
   data that comes out is not garbled (so, to help testing display
   support in an automated manner).

AngeloGioacchino Del Regno (33):
  dt-bindings: display: mediatek: dpi: Add MT8195 and MT8188 compat
  drm/mediatek: mtk_dpi: Add support for Pattern Generator in debugfs
  drm/mediatek: mtk_dpi: Use an array for pixclk factor calculation
  drm/mediatek: mtk_dpi: Move pixel clock setting flow to function
  drm/mediatek: mtk_dpi: Add checks for reg_h_fre_con existence
  drm/mediatek: Add support for MT8195 Digital Parallel Interface
  dt-bindings: display: mediatek: Add binding for HDMIv2 DDC
  dt-bindings: display: mediatek: Add binding for MT8195 HDMI-TX v2
  drm/mediatek: mtk_cec: Switch to register as module_platform_driver
  drm/mediatek: mtk_hdmi_ddc: Switch to register as
    module_platform_driver
  drm/mediatek: mtk_hdmi: Convert to module_platform_driver macro
  drm/mediatek: mtk_hdmi: Unregister audio platform device on failure
  drm/mediatek: mtk_hdmi: Fix typo for aud_sampe_size member
  drm/mediatek: mtk_hdmi: Disgregate function mtk_hdmi_audio_set_param()
  drm/mediatek: mtk_hdmi: Move audio params selection to new function
  drm/mediatek: mtk_hdmi: Move plugged_cb/codec_dev setting to new
    function
  drm/mediatek: mtk_hdmi: Move N/CTS setting to new function
  drm/mediatek: mtk_hdmi: Move vendor/product strings to drm_bridge
  drm/mediatek: mtk_hdmi: Use dev_err_probe() in
    mtk_hdmi_dt_parse_pdata()
  drm/mediatek: mtk_hdmi: Move CEC device parsing in new function
  drm/mediatek: mtk_hdmi: Remove unused members of struct mtk_hdmi
  drm/mediatek: mtk_hdmi: Move output init to
    mtk_hdmi_register_audio_driver()
  drm/mediatek: mtk_hdmi: Use devm managed version of drm_bridge_add
  drm/mediatek: mtk_hdmi: Remove ifdef for CONFIG_PM_SLEEP
  drm/mediatek: mtk_hdmi: Remove goto in mtk_hdmi_clk_enable_audio()
  drm/mediatek: mtk_hdmi: Cleanup function mtk_hdmi_resume()
  drm/mediatek: mtk_hdmi: Improve mtk_hdmi_get_all_clk() flexibility
  drm/mediatek: mtk_hdmi: Split driver and add common probe function
  drm/mediatek: mtk_hdmi_common: Assign DDC adapter pointer to bridge
  drm/mediatek: mtk_hdmi_common: Add OP_HDMI if helper funcs assigned
  drm/mediatek: Introduce HDMI/DDC v2 for MT8195/MT8188
  drm/mediatek: mtk_hdmi_common: Add var to enable interlaced modes
  drm/mediatek: mtk_hdmi_v2: Add debugfs ops and implement ABIST

Guillaume Ranquet (1):
  drm/mediatek: hdmi: Use regmap instead of iomem for main registers

 .../display/mediatek/mediatek,dpi.yaml        |    5 +
 .../mediatek/mediatek,mt8195-hdmi-ddc.yaml    |   41 +
 .../mediatek/mediatek,mt8195-hdmi.yaml        |  151 ++
 drivers/gpu/drm/mediatek/Kconfig              |   18 +-
 drivers/gpu/drm/mediatek/Makefile             |   11 +-
 drivers/gpu/drm/mediatek/mtk_cec.c            |    7 +-
 drivers/gpu/drm/mediatek/mtk_dpi.c            |  312 +++-
 drivers/gpu/drm/mediatek/mtk_dpi_regs.h       |   10 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |    2 +
 drivers/gpu/drm/mediatek/mtk_hdmi.c           |  811 ++-------
 drivers/gpu/drm/mediatek/mtk_hdmi.h           |   14 -
 drivers/gpu/drm/mediatek/mtk_hdmi_common.c    |  443 +++++
 drivers/gpu/drm/mediatek/mtk_hdmi_common.h    |  198 +++
 drivers/gpu/drm/mediatek/mtk_hdmi_ddc.c       |    2 +-
 drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c    |  403 +++++
 drivers/gpu/drm/mediatek/mtk_hdmi_regs_v2.h   |  263 +++
 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c        | 1492 +++++++++++++++++
 17 files changed, 3386 insertions(+), 797 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi.yaml
 delete mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi.h
 create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_common.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_common.h
 create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_regs_v2.h
 create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c

-- 
2.47.0


