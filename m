Return-Path: <devicetree+bounces-174383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 422F4AACF6E
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 23:18:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 28DA21B6701F
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 21:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25303215798;
	Tue,  6 May 2025 21:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="BWxDeu9S"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC72D1A8F98
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 21:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746566307; cv=none; b=lM/zT227zrRA4JvVhY9xEwOmzz1TBuVDNLcQQutiTmy16DbtPz/iiPgS8XZRNF3owASbJkCsCBU+K9eubS4pnMxtacfFfYBVp4UIBgLkoesACIFpuX/Bq55sjQwwDpv8x5sD9N36YbIH14awJqyW+aJxkyzi25W7eW5tbeV03VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746566307; c=relaxed/simple;
	bh=g4UkHMzAGzCkct256AtNjA4crfF9sp81gmIrEO4dcUE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VL9PYnGPgTVJpAZewM8Sls4D0Ops743NVrc/bPxks0s369l0M2FD0ooZg41qpe7ZmYTEA3kKsiGnJErbcbuhjHk9uR/+Q0xSVNabDe1dDttChtvgKk9rxvqzpQcHO/iHRFBgmINH2REZElVQ7N7T4djOG3e1hRP73GisEhV5k3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=BWxDeu9S; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=NN0XJfb0lcNNziMfIMuUwgc4s1hH4+Zy2qNAFb1ElHw=; b=BWxDeu9SKUFMIcWOFxTtiEriVE
	iABwnjszrEDIKLkgT++EWJkHr/M+WvJ8Fkjl7Lo4XF986dSIq+F7uEP3L4a/fF+pXJTBGClKwfnCM
	QfwIzsv37KbHcAVbH6QKQhtzzR9K4AMYDpBzJSKqpjXN/R3Bp7QBnaN6kKyqytXWwRYop1JaBMgvl
	YD2ZZ7AF0sKz0B/QbYpHLdcUBfaBzF1wN1RLL6AgCIEx/qCSUvannw2KgwdKRXuii1w1XvlX/KAMG
	Q30fD/uFZQ9PuABkM7Cji3YEJb8p5zAmrtxBLBKcFUN8RVEYGdxvH67Uz7UwsBHyDV5DEbUh2PJUt
	U99k2+Vw==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uCPgB-00022Z-5l; Tue, 06 May 2025 23:18:19 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: John Clark <inindev@gmail.com>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: krzysztof.kozlowski@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, frattaroli.nicolas@gmail.com,
 devicetree@vger.kernel.org, jonas@kwiboo.se, conor+dt@kernel.org,
 andrew@lunn.ch
Subject:
 Re: [PATCH v3 0/3] Add Luckfox Omni3576 Carrier Board support for RK3576
Date: Tue, 06 May 2025 23:18:18 +0200
Message-ID: <4978865.GXAFRqVoOG@diego>
In-Reply-To: <174655575268.2171082.7949828475697497257.robh@kernel.org>
References:
 <20250506114115.613616-1-inindev@gmail.com>
 <174655575268.2171082.7949828475697497257.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Dienstag, 6. Mai 2025, 20:23:55 Mitteleurop=C3=A4ische Sommerzeit schrie=
b Rob Herring (Arm):
>=20
> On Tue, 06 May 2025 07:41:12 -0400, John Clark wrote:
> > This series adds device tree support for the Luckfox Omni3576
> > Carrier Board with the Core3576 Module, powered by the Rockchip
> > RK3576 SoC (four Cortex-A72 cores, four Cortex-A53 cores, Mali-G52
> > MC3 GPU). It enables essential functionality for booting Linux and
> > basic connectivity, with plans for future support of peripherals
> > like WiFi, MIPI-DSI, HDMI, and Ethernet.
> >=20
> > The series was first posted as v1 at:
> > https://lore.kernel.org/linux-rockchip/20250502205533.51744-1-inindev@g=
mail.com
> > v2 at:
> > https://lore.kernel.org/linux-rockchip/20250504102447.153551-1-inindev@=
gmail.com
> >=20
> > Tested features (on Linux 6.15-rc4):
> >  - UART: Serial console operational
> >  - SD card: Mounts and reads/writes successfully
> >  - PCIe: NVMe SSD detected, mounted, and fully functional
> >  - USB 2.0: Host ports operational
> >  - RTC: Timekeeping and wake-up tested
> >  - LED: Heartbeat trigger functional
> >  - eMMC: Enabled in device tree, not populated on tested hardware
> >=20
> > The series includes three patches:
> >  1. dt-bindings: vendor-prefixes: Add Luckfox vendor prefix
> >  2. dt-bindings: arm: rockchip: Add Luckfox Omni3576 and Core3576 bindi=
ngs
> >  3. arm64: dts: rockchip: Add Luckfox Omni3576 board support
> >=20
> > The device tree is covered by the existing ROCKCHIP ARCHITECTURE
> > entry in MAINTAINERS. I am aware of ongoing RK3576 upstreaming
> > efforts (e.g., by Collabora) and welcome feedback or collaboration
> > to align with mainline driver development.
> >=20
> > Changes in v3:
> >  - Addressed Jonas Karlman's feedback on patch 3/3
> >    (Luckfox Omni3576 device tree):
> >    - Added pinctrl for green LED GPIO (gpio1 RK_PD5) for proper
> >      pin setup.
> >    - Reordered regulator node properties for consistent sequence
> >      (e.g., regulator-name, regulator-min-microvolt,
> >      regulator-max-microvolt, etc.).
> >    - Updated regulator nodes (vcc_3v3_pcie, vbus_5v0_typec,
> >      vcc_5v0_host, vcc_5v0_hdmi) to use 'gpios' property instead
> >      of deprecated 'gpio'.
> >    - Removed pmic-power-off pinctrl state and pinctrl-1 from RK806
> >      PMIC node, as they are vendor-specific and undocumented in
> >      bindings.
> >    - Removed pwrkey node from PMIC, as it lacks binding
> >      documentation.
> >    - Added blank line between properties and child nodes in i2c2
> >      node for DT style compliance.
> >    - Removed no-mmc property from sdmmc node to enable MMC
> >      support, aligning with RK3576 SD v3.0 and MMC v4.51
> >      capabilities, allowing TF card slot to support MMC devices
> >      or eMMC via adapter.
> >  - Removed Ethernet support (gmac0/gmac1 nodes) per Andrew Lunn's
> >    feedback, as it relied on the generic PHY driver with incorrect
> >    RGMII delay settings, which would break with the upcoming
> >    MAE0621A driver.
> >  - Addressed Rob Herring's DTB check warnings, other warnings
> >    (e.g., VOP, PCIe, OTP, HDMI PHY) originate from rk3576.dtsi and
> >    are outside this patchset scope.
> >  - Added RNG node to pick up Nicolas Frattaroli's "add RK3576 RNG
> >    node" patch
> >=20
> > Changes in v2:
> >  - Enabled HDMI node per feedback from Heiko Stuebner and Nicolas
> >    Frattaroli; untested due to upstream driver issues.
> >  - Enabled Ethernet 1 node per Heiko's device tree philosophy;
> >    untested due to suspected PHY driver or configuration issues
> >    (removed in v3 per Andrew Lunn).
> >  - Clarified eMMC remains enabled but unpopulated on tested
> >    board, per Heiko.
> >=20
> > Signed-off-by: John Clark <inindev@gmail.com>
> > ---
> > John Clark (3):
> >   dt-bindings: vendor-prefixes: Add luckfox prefix
> >   dt-bindings: arm: rockchip: Add Luckfox Omni3576 and Core3576 bindings
> >   arm64: dts: rockchip: Add Luckfox Omni3576 Board support
> >=20
> >  .../devicetree/bindings/arm/rockchip.yaml     |  10 +
> >  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../dts/rockchip/rk3576-luckfox-core3576.dtsi | 683 ++++++++++++++++++
> >  .../dts/rockchip/rk3576-luckfox-omni3576.dts  |  53 ++
> >  5 files changed, 749 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-luckfox-core357=
6.dtsi
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-luckfox-omni357=
6.dts
> >=20
> > --
> > 2.39.5
> >=20
> >=20
> >=20
>=20
>=20
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>=20
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>=20
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>=20
>   pip3 install dtschema --upgrade
>=20
>=20
> This patch series was applied (using b4) to base:
>  Base: attempting to guess base-commit...
>  Base: tags/next-20250506 (best guess, 2/3 blobs matched)
>=20
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
>=20
> New warnings running 'make CHECK_DTBS=3Dy for arch/arm64/boot/dts/rockchi=
p/' for 20250506114115.613616-1-inindev@gmail.com:
>=20
> arch/arm64/boot/dts/rockchip/rk3576-luckfox-omni3576.dtb: /soc/rng@2a4100=
00: failed to match any schema with compatible: ['rockchip,rk3576-rng']

the binding (and driver) for the rk3576-rng have been merged into the
cryptodev tree yesterday [0], so that issue should hopefully go away with
the next linux-next.


[0] https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.g=
it/commit/?id=3D165ef524bbeb71ccd470e70a4e63f813fa71e7cd



