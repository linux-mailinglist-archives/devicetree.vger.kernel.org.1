Return-Path: <devicetree+bounces-150802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 112AFA43959
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:25:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B6013A52DD
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 09:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7482B21931C;
	Tue, 25 Feb 2025 09:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="HABREqoi"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA101A0BCF;
	Tue, 25 Feb 2025 09:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740475051; cv=none; b=t3D1T1pXIR5zygzsh8q/IiAIqAHwyK+e1wAGqNvdPMLHWVEAJwuLHb8Mvuv/UqXN5eGbEflJKqZ+GYvOvCB05w5j4y0bdU6NQX7YsKyXPjfhm9ErHR2D9vr29BEYMcjiJ9QJDI9e7e3OAcGh86Nmu2/WS4BgvGocURMj2C3RFSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740475051; c=relaxed/simple;
	bh=hKBuY3atHB1kNwjegwLeb7BjxqbPDgjTdxV3Ep+3p/8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i+07s1euef/3kvpeZXjv5icZdvUumwnZTqtHiM/m+Uif8Yu7bphv+Y08Xwlovt2tmqOG5X7mWEgUpA7u2LzOm0T94ptYPUGHjaDZVp6nbtnMSmytujb7amao8qf9gyLDCB6VaQfTKtnYiRjtSdAn/NIHMRp5jcObjpzmD6btvF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=HABREqoi; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740475047;
	bh=hKBuY3atHB1kNwjegwLeb7BjxqbPDgjTdxV3Ep+3p/8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HABREqoi7oiYMQPIIu/pX9GFUzmyUePflONtLnpnvP0gFGVpb/0/5rY/SvNTY06Bz
	 UKX/OJWzZbvplZc4sdyahfxbLMls/6VTwjylG6t2I9ZK9O79J1p1OlPisbzKiZJB+r
	 ZPXqpu80ThPCq9BI2YV7FVJdIfC0x78MFxKNizXfS8xKnU6CHmfPUHmR2yeG1508B0
	 nwlH+ptbJt6o/oCJLSCc2Tu7hSPBzOCy94+MWHU3Zqv0X/tN6r4YdLipwZ5E1gr4Fa
	 vQeI1nv8fbZEk7B1YnXIkS3qTX1aSSMs7zSKXN1FhnO6ZQnsPO3Jw7MExa6PYHssxe
	 /GmIevN6Uq+3Q==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 13B2F17E0B63;
	Tue, 25 Feb 2025 10:17:26 +0100 (CET)
Message-ID: <8ddcd6da-6b01-4188-b58d-aeb752b6f944@collabora.com>
Date: Tue, 25 Feb 2025 10:17:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 00/43] Add support for MT8195/88 DPI, HDMIv2 and DDCv2
To: chunkuang.hu@kernel.org
Cc: p.zabel@pengutronix.de, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 matthias.bgg@gmail.com, ck.hu@mediatek.com, jitao.shi@mediatek.com,
 jie.qiu@mediatek.com, junzhi.zhao@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 dmitry.baryshkov@linaro.org, lewis.liao@mediatek.com,
 ives.chenjh@mediatek.com, tommyyl.chen@mediatek.com,
 jason-jh.lin@mediatek.com
References: <20250217154836.108895-1-angelogioacchino.delregno@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250217154836.108895-1-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 17/02/25 16:47, AngeloGioacchino Del Regno ha scritto:
> Changes in v7:
>   - Split more patches as requested by CK
>   - Changed the order of the interlaced variable addition as requested
>   - Cleanups in DDCv2 as requested by CK
>   - Removed comment from
>     drm/mediatek: mtk_hdmi: Move output init to mtk_hdmi_register_audio_driver()
>     as that was forgotten from reintroduction of print in v5
>   - Some more small nitpicks as pointed out by CK here and there
> 

Hello CK,

Is there any other concern about this series, or can we finally get HDMI support
for MT8188/MT8195 upstream?

Regards,
Angelo

> Changes in v6:
>   - Split the TVD clock enable/disable calls in a different commit
>   - Changed `is_internal_hdmi` to two different variables, one for
>     DPI input clock from HDMI, and one for AFIFO 1T1P output and
>     conversion (mtk_dpi)
>     - Clarified why MT8195/88 HDMI-reserved DPI1 is different
>   - Moved `input_2p_en` bit to platform data to cleanup DPI vs DPINTF
>     - 1T2P enable bit is different between DPI and DPINTF, but usage
>       is actually the same
>   - Cleaned up headers inclusion in mtk_hdmi_v2.c, mtk_hdmi_ddc_v2.c
>     - Removed some unused headers, added missing bitfield.h header
>   - Split some prints cleanup commits as requested by CK
>   - Split the introduction of mtk_hdmi_conf as requested by CK
>   - Split commit to make CEC optional as requested by CK
>   - Reintroduced forgotten no_capture_mute in codec_pdata (mtk_hdmi_common)
>   - Reintroduced error print for audio clocks enablement failure (mtk_hdmi)
>   - Added cleanup syscon_regmap_lookup_by_phandle commit from Krzysztof K
> 
> Changes in v5:
>   - Rebased over next-20250113
>   - Resolved merge issues with next-20250113
>   - Added bitfield.h inclusion in mtk_dpi in commit [02/33] to resolve
>     build issue from 0day CI
>   - Removed .atomic_check callback from mtk_hdmi_v2 as it is now part
>     of drm_bridge_connector as pointed out by Dmitry B
>   - Removed call to pm_runtime_disable() as the driver uses devm
>   - Tested again :-)
> 
> Changes in v4:
>   - DDCv2 binding erroneously dropped in v3 is included again (oops!)
>   - Added reference to dai-common.yaml in HDMIv2 binding
>   - Dropped pinctrl entries from HDMIv2 binding
>   - Fixed required list in HDMIv2 binding and changed node name to
>     'hdmi' instead of 'hdmi-tx'
>   - Fixed issue in mtk_hdmi derived from wrong commit splitting action
>     from version 3
>   - Exported necessary symbols and added namespaces for those
>   - Fixed module build for both HDMIv1 and HDMIv2
>   - Other cleanups
> 
> Changes in v3:
>   - Added hpd_enable() and hpd_disable() callbacks as suggested by Dmitry B
>   - Removed audio mute call in bridge_enable() as suggested by CK
>   - Reworked commonization commits for mtk_hdmi/mtk_hdmi_common and split
>     out debugfs/abist implementation as suggested by CK
>   - Removed .mode_valid() callback as it is now provided by the bridge
>     API in drm_bridge_connector_helper_funcs
>   - A bit of cleanups here and there
>   - Tested again on HW especially for new hpd_enable/disable callbacks.
> 
> Changes in v2:
>   - Merged series "Add support for MT8195/8188 and Pattern Generator"
>     and "drm/mediatek: Add support for HDMIv2 and DDCv2 IPs" in one
>     as they are directly related, as requested by CK Hu
>   - More commonization: moved some audio functions to mtk_hdmi_common
>   - Fixed a bug in DDCv2 driver to allow sending a message with len=1
>   - Renamed some functions in HDMIv2 to consistently use the prefix
>     mtk_hdmi_v2_ across the driver
>   - Added .mode_valid() callback to HDMIv2
>   - Added .atomic_check() callback to HDMIv2
>   - Reordered drm_bridge_funcs in HDMIv2 driver
>   - Rewritten .edid_read() callback in HDMIv2 to move checking audio
>     availability to bridge_pre_enable() stage, and to stop using the
>     drm_edid_read_ddc() in favor of drm_edid_read()
>   - Added support for API provided HDMI Helpers
>   - Added .tmds_char_rate_valid() callback to HDMIv2 for HDMI helpers
>   - Added .hdmi_{read,write}_infoframe() callback to HDMIv2 for helpers
>   - Added support for Vendor infoframes in HDMIv2
>   - Added missing audio-dai-cells to HDMIv2 binding to fix check error
>   - Added more information to the HDMIv2 binding for clocks and PHY
>   - Added some comments to the HDMIv2 code to clarify why the controller
>     is preconfigured in bridge_pre_enable() instead of bridge_enable()
>   - Added a mention of the differences in HPD between v1 and v2 to the
>     commit introducing the v2 driver (v2 is not using CEC for HPD)
>   - ...and tested again on HW! :-)
> 
> 
> This series adds support for the HDMI-TX v2 Encoder and DDCv2, and for
> the direct connection DPI as found in MT8195, MT8188 and their variants.
> 
> Tested on Genio 700 EVK:
>   - ABIST ON: ok, pattern generated internally from HDMI is shown on
>     HDMI screen at the correct resolution;
>   - ABIST OFF + DPI Pattern Generator ON: ok, pattern coming from DPI is
>     shown on HDMI screen at the correct resolution;
>   - Can negotiate up to 4k60
> 
> and on MT8395 Radxa NIO 12L:
>   - ABIST ON: ok, pattern generated internally from HDMI is shown on
>     HDMI screen at the correct resolution;
>   - ABIST OFF + DPI Pattern Generator ON: ok, pattern coming from DPI is
>     shown on HDMI screen at the correct resolution;
>   - Dual screen usecase validated (DSI + HDMI 3840x2160p 60Hz)
>   - Can negotiate up to 4k60
> 
> Please note that this submission does *not* include support for HDCP
> nor for CECv2, as I want this to be upstream before implementing
> additional features which are not strictly required for simple
> HDMI output.
> 
> Bonus in this series is the addition of support for the Pattern Generator
> found in the DPI HW: since I needed this for debugging during development,
> I had to code in the actual support bits and it looked like a waste of
> time to just remove it.
> I instead decided to clean it up and upstream it, as this will anyway come
> handy for multiple things, of which the most important (imo) are:
>   - Adding support for new SoCs in the future will be less time consuming
>     as this driver already has the pattern generator in;
>   - CI Testing might be able to make use of this to validate that the
>     data that comes out is not garbled (so, to help testing display
>     support in an automated manner).
> 
> AngeloGioacchino Del Regno (41):
>    dt-bindings: display: mediatek: dpi: Add MT8195 and MT8188 compat
>    drm/mediatek: mtk_dpi: Add support for Pattern Generator in debugfs
>    drm/mediatek: mtk_dpi: Use an array for pixclk factor calculation
>    drm/mediatek: mtk_dpi: Move pixel clock setting flow to function
>    drm/mediatek: mtk_dpi: Add checks for reg_h_fre_con existence
>    drm/mediatek: mtk_dpi: Move the input_2p_en bit to platform data
>    drm/mediatek: mtk_dpi: Add support for DPI input clock from HDMI
>    drm/mediatek: mtk_dpi: Support AFIFO 1T1P output and conversion
>    drm/mediatek: mtk_dpi: Explicitly manage TVD clock in power on/off
>    drm/mediatek: Add support for MT8195 Digital Parallel Interface
>    dt-bindings: display: mediatek: Add binding for HDMIv2 DDC
>    dt-bindings: display: mediatek: Add binding for MT8195 HDMI-TX v2
>    drm/mediatek: mtk_cec: Switch to register as module_platform_driver
>    drm/mediatek: mtk_hdmi_ddc: Switch to register as
>      module_platform_driver
>    drm/mediatek: mtk_hdmi: Convert to module_platform_driver macro
>    drm/mediatek: mtk_hdmi: Compress of_device_id array entries
>    drm/mediatek: mtk_hdmi: Unregister audio platform device on failure
>    drm/mediatek: mtk_hdmi: Fix typo for aud_sampe_size member
>    drm/mediatek: mtk_hdmi: Disgregate function mtk_hdmi_audio_set_param()
>    drm/mediatek: mtk_hdmi: Move audio params selection to new function
>    drm/mediatek: mtk_hdmi: Move plugged_cb/codec_dev setting to new
>      function
>    drm/mediatek: mtk_hdmi: Move N/CTS setting to new function
>    drm/mediatek: mtk_hdmi: Move vendor/product strings to drm_bridge
>    drm/mediatek: mtk_hdmi: Use dev_err_probe() in
>      mtk_hdmi_dt_parse_pdata()
>    drm/mediatek: mtk_hdmi: Move CEC device parsing in new function
>    drm/mediatek: mtk_hdmi: Remove unused members of struct mtk_hdmi
>    drm/mediatek: mtk_hdmi: Move output init to
>      mtk_hdmi_register_audio_driver()
>    drm/mediatek: mtk_hdmi: Use devm managed version of drm_bridge_add
>    drm/mediatek: mtk_hdmi: Remove ifdef for CONFIG_PM_SLEEP
>    drm/mediatek: mtk_hdmi: Remove goto in mtk_hdmi_clk_enable_audio()
>    drm/mediatek: mtk_hdmi: Remove driver bound to HDMI print
>    drm/mediatek: mtk_hdmi: Cleanup function mtk_hdmi_resume()
>    drm/mediatek: mtk_hdmi: Improve mtk_hdmi_get_all_clk() flexibility
>    drm/mediatek: mtk_hdmi: Add HDMI IP version configuration to pdata
>    drm/mediatek: mtk_hdmi: Split driver and add common probe function
>    drm/mediatek: mtk_hdmi_common: Make CEC support optional
>    drm/mediatek: mtk_hdmi_common: Assign DDC adapter pointer to bridge
>    drm/mediatek: mtk_hdmi_common: Add OP_HDMI if helper funcs assigned
>    drm/mediatek: mtk_hdmi_common: Add var to enable interlaced modes
>    drm/mediatek: Introduce HDMI/DDC v2 for MT8195/MT8188
>    drm/mediatek: mtk_hdmi_v2: Add debugfs ops and implement ABIST
> 
> Guillaume Ranquet (1):
>    drm/mediatek: hdmi: Use regmap instead of iomem for main registers
> 
> Krzysztof Kozlowski (1):
>    drm/mediatek/hdmi: Use syscon_regmap_lookup_by_phandle_args
> 
>   .../display/mediatek/mediatek,dpi.yaml        |    5 +
>   .../mediatek/mediatek,mt8195-hdmi-ddc.yaml    |   41 +
>   .../mediatek/mediatek,mt8195-hdmi.yaml        |  151 ++
>   drivers/gpu/drm/mediatek/Kconfig              |   18 +-
>   drivers/gpu/drm/mediatek/Makefile             |   11 +-
>   drivers/gpu/drm/mediatek/mtk_cec.c            |    7 +-
>   drivers/gpu/drm/mediatek/mtk_dpi.c            |  323 +++-
>   drivers/gpu/drm/mediatek/mtk_dpi_regs.h       |   10 +
>   drivers/gpu/drm/mediatek/mtk_drm_drv.c        |    2 +
>   drivers/gpu/drm/mediatek/mtk_hdmi.c           |  803 ++-------
>   drivers/gpu/drm/mediatek/mtk_hdmi.h           |   14 -
>   drivers/gpu/drm/mediatek/mtk_hdmi_common.c    |  435 +++++
>   drivers/gpu/drm/mediatek/mtk_hdmi_common.h    |  198 +++
>   drivers/gpu/drm/mediatek/mtk_hdmi_ddc.c       |    2 +-
>   drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c    |  385 +++++
>   drivers/gpu/drm/mediatek/mtk_hdmi_regs_v2.h   |  263 +++
>   drivers/gpu/drm/mediatek/mtk_hdmi_v2.c        | 1475 +++++++++++++++++
>   17 files changed, 3347 insertions(+), 796 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi.yaml
>   delete mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi.h
>   create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_common.c
>   create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_common.h
>   create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c
>   create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_regs_v2.h
>   create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c
> 



