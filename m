Return-Path: <devicetree+bounces-55953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2018B89722D
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 16:17:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0F8A28BD36
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 14:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5E1614A0B4;
	Wed,  3 Apr 2024 14:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McnZu8Pf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A1FF14A0AA;
	Wed,  3 Apr 2024 14:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712153760; cv=none; b=SJCXuGGL0zpVLUE0yxI5ry16Ermtk7srFYCIkIlN0Lj55M8oA3LpPihTddchepQTXy1UkNgMDMLd9S/l55pzDxtJs1h0YDq8pgVtCv7n+DTcO/d69gHeh4LzwbM0XOTO6lMSPNIHXexOwf36vBbfC8ly3SwJgaaUCI1g9SGFYtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712153760; c=relaxed/simple;
	bh=RD2RCQFy9S41Rnm1Xw+o/M1kdulL9hH5gn+NFv371Fc=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=MOT4mlKoKcyZO6fJMrtzq2nn/gMTWzZiPkaDqKdHl81js1XPxTJ3JqLI90W80qKTGOShlz44fb/onUroz6patlA5U+dYj5CBrUHjuYhcBemkHviSY5oFHSES9bbuRtSg/RutoFeUjA2Hk0+n/0Pz5Qwlv9QHO6Z/VGz4repZ9gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McnZu8Pf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F291BC43141;
	Wed,  3 Apr 2024 14:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712153760;
	bh=RD2RCQFy9S41Rnm1Xw+o/M1kdulL9hH5gn+NFv371Fc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=McnZu8PfSbAaxRVlZM1E7ZhlMlidwZRAf2+p3NWpBVZiIIOh8llqwARTFX6fMPrqD
	 7A971dYcnqw0+S4RbiZrfu/K2j5A7h8wxRsQKh0hhH3W/jK9i7LXFRcCa0G/ung+az
	 M/p5/ylkw1QnoBHD/nFelwbIfOjPsg85GGyIvV7JVQiv7o6/7ssIdVGOD8wGDYyC0l
	 Vbvc9smSKlTeR90cbbYHhBzE7zX9VEi5AVUP21ciX3jr3QYP8RbUYK5z6F646t1q7y
	 HH/cT6z04g1C58ghkeAtEXbooVvoB4j5IQA+tTdIyKlmF4bsD91PxiMaoHKdZdPitU
	 szY1wdWzucbQA==
Date: Wed, 03 Apr 2024 09:15:59 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: dri-devel@lists.freedesktop.org, Kevin Hilman <khilman@baylibre.com>, 
 linux-clk@vger.kernel.org, David Airlie <airlied@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Maxime Ripard <mripard@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 linux-arm-kernel@lists.infradead.org, Nicolas Belin <nbelin@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, linux-amlogic@lists.infradead.org, 
 Thomas Zimmermann <tzimmermann@suse.de>, Conor Dooley <conor+dt@kernel.org>, 
 Daniel Vetter <daniel@ffwll.ch>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Jerome Brunet <jbrunet@baylibre.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 "Lukas F. Hartmann" <lukas@mntre.com>
In-Reply-To: <20240403-amlogic-v6-4-upstream-dsi-ccf-vim3-v12-0-99ecdfdc87fc@linaro.org>
References: <20240403-amlogic-v6-4-upstream-dsi-ccf-vim3-v12-0-99ecdfdc87fc@linaro.org>
Message-Id: <171215356354.3499119.7365764499574493714.robh@kernel.org>
Subject: Re: [PATCH v12 0/7] drm/meson: add support for MIPI DSI Display


On Wed, 03 Apr 2024 09:46:31 +0200, Neil Armstrong wrote:
> The Amlogic G12A, G12B & SM1 SoCs embeds a Synopsys DW-MIPI-DSI transceiver (ver 1.21a),
> with a custom glue managing the IP resets, clock and data input similar to the DW-HDMI
> glue on the same Amlogic SoCs.
> 
> This is a follow-up of v5 now the DRM patches are applied, the clk & DT changes
> remains for a full DSI support on G12A & SM1 platforms.
> 
> The DW-MIPI-DSI transceiver + D-PHY are clocked by the GP0 PLL, and the ENCL encoder + VIU
> pixel reader by the VCLK2 clock using the HDMI PLL.
> 
> The DW-MIPI-DSI transceiver gets this pixel stream as input clocked with the VCLK2 clock.
> 
> An optional "MEAS" clock can be enabled to measure the delay between each vsync feeding the
> DW-MIPI-DSI transceiver.
> 
> The clock setup has been redesigned to use CCF, a common PLL (GP0) and the VCLK2 clock
> path for DSI in preparation of full CCF support and possibly dual display with HDMI.
> 
> The change from v5 is that now we use a "VCLK" driver instead of notifier and rely
> on CLK_SET_RATE_GATE to ensure the VCLK gate operation are called.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> Changes in v12:
> - fix parameters alignment in patch 2
> - update g12a_mipi_dsi_pxclk_div_table comment with jerome's suggestions
> - fix dtbs overlay build, fix missed v11... thx khadas for reporting it off-list & testing
> - Link to v11: https://lore.kernel.org/r/20240325-amlogic-v6-4-upstream-dsi-ccf-vim3-v11-0-04f55de44604@linaro.org
> 
> Changes in v11:
> - Rebased on v6.9-rc1
> - Fixed overlay handling/creation
> - Link to v10: https://lore.kernel.org/r/20240205-amlogic-v6-4-upstream-dsi-ccf-vim3-v10-0-dc06073d5330@linaro.org
> 
> Changes in v10:
> - Rename regmap_vclk to meson_clk and add _gate for the gate
> - Move COMMON_CLK_MESON_VCLK to following patch
> - Remove CLK_SET_RATE_PARENT from g12a_vclk2_sel, keep it only on mipi_dsi_pxclk_sel
> - Add more info on commit message to specify how clock setup is designed
> - Remove forgotten CLK_IGNORE_UNUSED on g12a_vclk2_input
> - Remove useless CLK_SET_RATE_PARENT on g12a_vclk2_div to stop propagatting rate _after_ vclk2_div
> - Remove invalid CLK_SET_RATE_GATE on g12a_vclk2 since it's not a divider...
> - Drop already applied patches
> - move Khadas TS050 changes as an overlay
> - Link to v9: https://lore.kernel.org/r/20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org
> 
> Changes in v9:
> - Colledte reviewed-bys
> - Fixed patches 2 & 4, commit messages and bindings format
> - Link to v8: https://lore.kernel.org/r/20231109-amlogic-v6-4-upstream-dsi-ccf-vim3-v8-0-81e4aeeda193@linaro.org
> 
> Changes in v8:
> - Switch vclk clk driver to parm as requested by Jerome
> - Added bindings fixes to amlogic,meson-axg-mipi-pcie-analog & amlogic,g12a-mipi-dphy-analog
> - Fixed DT errors in vim3 example and MNT Reform DT
> - Rebased on next-20231107, successfully tested on VIM3L
> - Link to v7: https://lore.kernel.org/r/20230803-amlogic-v6-4-upstream-dsi-ccf-vim3-v7-0-762219fc5b28@linaro.org
> 
> Changes in v7:
> - Added review tags
> - Fixed patch 5 thanks to George
> - Link to v6: https://lore.kernel.org/r/20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v6-0-fd2ac9845472@linaro.org
> 
> Changes in v6:
> - dropped applied DRM patches
> - dropped clk private prefix patches
> - rebased on top of 20230607-topic-amlogic-upstream-clkid-public-migration-v2-0-38172d17c27a@linaro.org
> - re-ordered/cleaned ENCL patches to match clkid public migration
> - Added new "vclk" driver
> - uses vclk driver instead of notifier
> - cleaned VCLK2 clk flags
> - add px_clk gating from DSI driver
> - Link to v5: https://lore.kernel.org/r/20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v5-0-56eb7a4d5b8e@linaro.org
> 
> Changes in v5:
> - Aded PRIV all the G12 internal clk IDS to simplify public exposing
> - Fixed the DSI bindings
> - Fixed the DSI HSYNC/VSYNC polarity handling
> - Fixed the DSI clock setup
> - Fixed the DSI phy timings
> - Dropped components for DSI, only keeping it for HDMI
> - Added MNT Reform 2 CM4 DT
> - Dropped already applied PHY fix
> - Link to v4: https://lore.kernel.org/r/20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-0-2592c29ea263@linaro.org
> 
> Changes from v3 at [3]:
> - switched all clk setup via CCF
> - using single PLL for DSI controller & ENCL encoder
> - added ENCL clocks to CCF
> - make the VCLK2 clocks configuration by CCF
> - fixed probe/bind of DSI controller to work with panels & bridges
> - added bit_clk to controller to it can setup the BIT clock aswell
> - added fix for components unbind
> - added fix for analog phy setup value
> - added TS050 timings fix
> - dropped previous clk control patch
> 
> Changes from v2 at [2]:
> - Fixed patch 3
> - Added reviews from Jagan
> - Rebased on v5.19-rc1
> 
> Changes from v1 at [1]:
> - fixed DSI host bindings
> - add reviewed-by tags for bindings
> - moved magic values to defines thanks to Martin's searches
> - added proper prefixes to defines
> - moved phy_configure to phy_init() dw-mipi-dsi callback
> - moved phy_on to a new phy_power_on() dw-mipi-dsi callback
> - correctly return phy_init/configure errors to callback returns
> 
> [1] https://lore.kernel.org/r/20200907081825.1654-1-narmstrong@baylibre.com
> [2] https://lore.kernel.org/r/20220120083357.1541262-1-narmstrong@baylibre.com
> [3] https://lore.kernel.org/r/20220617072723.1742668-1-narmstrong@baylibre.com
> 
> ---
> Neil Armstrong (7):
>       dt-bindings: arm: amlogic: Document the MNT Reform 2 CM4 adapter with a BPI-CM4 Module
>       clk: meson: add vclk driver
>       clk: meson: g12a: make VCLK2 and ENCL clock path configurable by CCF
>       drm/meson: gate px_clk when setting rate
>       arm64: meson: g12-common: add the MIPI DSI nodes
>       arm64: meson: khadas-vim3l: add TS050 DSI panel overlay
>       arm64: dts: amlogic: meson-g12b-bananapi-cm4: add support for MNT Reform2 with CM4 adaper
> 
>  Documentation/devicetree/bindings/arm/amlogic.yaml |   1 +
>  arch/arm64/boot/dts/amlogic/Makefile               |   5 +
>  arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi  |  70 ++++
>  .../meson-g12b-bananapi-cm4-mnt-reform2.dts        | 384 +++++++++++++++++++++
>  .../boot/dts/amlogic/meson-khadas-vim3-ts050.dtso  | 108 ++++++
>  drivers/clk/meson/Kconfig                          |   5 +
>  drivers/clk/meson/Makefile                         |   1 +
>  drivers/clk/meson/g12a.c                           |  76 ++--
>  drivers/clk/meson/vclk.c                           | 141 ++++++++
>  drivers/clk/meson/vclk.h                           |  51 +++
>  drivers/gpu/drm/meson/meson_dw_mipi_dsi.c          |   7 +
>  11 files changed, 829 insertions(+), 20 deletions(-)
> ---
> base-commit: 4cece764965020c22cff7665b18a012006359095
> change-id: 20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-b8e5217e1f4a
> 
> Best regards,
> --
> Neil Armstrong <neil.armstrong@linaro.org>
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dtb' for 20240403-amlogic-v6-4-upstream-dsi-ccf-vim3-v12-0-99ecdfdc87fc@linaro.org:

arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dtb: /soc/bus@ff600000/bus@42000/clock-controller@0: failed to match any schema with compatible: ['amlogic,g12a-audio-clkc']
arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dtb: /soc/bus@ff600000/bus@42000/audio-controller@744: failed to match any schema with compatible: ['amlogic,g12a-tohdmitx']
arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dtb: sys-ctrl@0: '#address-cells', '#size-cells', 'ranges' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml#
arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dtb: sound: Unevaluated properties are not allowed ('assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks' were unexpected)
	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-sound-card.yaml#
arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dtb: sound: 'anyOf' conditional failed, one must be fixed:
	'clocks' is a required property
	'#clock-cells' is a required property
	from schema $id: http://devicetree.org/schemas/clock/clock.yaml#






