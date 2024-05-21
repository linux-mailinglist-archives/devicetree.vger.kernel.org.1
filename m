Return-Path: <devicetree+bounces-68228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADCC8CB4E2
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 22:49:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3BF56B23108
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 20:49:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3557149C42;
	Tue, 21 May 2024 20:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="jY4Nsfhe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D041494B3
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 20:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716324580; cv=none; b=oFTYHhOfPl71VrXefRFUfnx+VkAhRlGvNc4g2GvfNJ98+BIAe+KL2g3K0XPoZZJFOo5FVn8Ku0wlg5WvuZOaLWRR/Ps1hyOPSh11e5TVQ1z0w9zMQ1k1IoDdb5JZvj7tHtaMIx91pRhFz230UDcjn2kNU9a7RpERruvgeYj52WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716324580; c=relaxed/simple;
	bh=kL+AiRs4MPmPF4sXVMGvvpFfAdaVHq7HuYZNorSYnec=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YdV4vYO6xdV35UgzQYke4/awLnFhCFy2AFMuJ35afM3N1Hlx5Ciyzgc5+rMYiYFfPYNsi7WczKvJP+bxxM+wrltq0KDT++MMWSZgsZuvsi6mfgX/JkBr5YqE7dUy+pBU2vFjfkaph1XV0lJ2o+DIG1Uc0H5Gl1LTo2ogGPH9xT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=jY4Nsfhe; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1716324576;
 bh=7w1YK0PAlX2rnVkpWCKz2KPIKlOShCuH6VsJyB17muk=;
 b=jY4NsfheGBfWZPYkhnCvWEwaBiQ4Rm69TMG+lpNCZUV7y4GdXWGTi94frIXMJBKki0TDEK8VR
 7YTVOhjfWRbSCf6VkLMco3wFl8r5QoMVZD+ETSipra8FXSMtmhnofcH8uLpR8x6PKaiCgWvwkF4
 F0cQBLVp5mC6HhOLsOy+N7r1SKiP1lF6Pfyf6va07QC3sw+GkhsLvr9QpzPo95JTntuwQ3Nbi2M
 YriX2QvYZ6DIA3aWjY+G5iW9j2ylTJ3u00QtZONDlyCrM2kFjdZm1fiz8ASOx66N13+GoSSBpDq
 ieZ8zlI2wLdfV/CZTJEtzr80jJqoP/gZjsEnLST1YL1w==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH v6 0/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
Date: Tue, 21 May 2024 20:28:03 +0000
Message-ID: <20240521202810.1225636-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 664d03e0f0b0d6a40951746e

This series adds initial support for the Radxa ZERO 3W/3E boards.

The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
computer based on the Rockchip RK3566, with a compact form factor and
rich interfaces.

Schematic for ZERO 3W and ZERO 3E can be found at:
https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_v1110_schematic.pdf
https://dl.radxa.com/zero3/docs/hw/3e/radxa_zero_3e_v1200_schematic.pdf

Changes in v2:
- Collect acked-by tag
- Add to Makefile
- Add patch to fix #sound-dai-cells warning

Changes in v3:
- Fix devicetree spelling
- Sort hdmi-con, leds, pmic@20 and regulator@40 nodes
- Change to regulator-off-in-suspend for vdd_logic
- Drop patch to fix #sound-dai-cells warning, similar patch [1] already
  exists

Changes in v4:
- Change compatible of vdd_logic
- Add vcc5v_midu and vbus regulator and related vcc8/vcc9-supply prop
- Adjust clock_in_out prop for gmac1
- Add cap-mmc-highspeed prop to sdhci
- Add sdmmc1 and uart1 nodes used for wifi/bt on 3W
- Rename rk3566-radxa-zero3.dtsi to rk3566-radxa-zero-3.dtsi
- Rebase on latest mmind/for-next tree

Changes in v5:
- Rename regulator-fixed nodes
- Add keep-power-in-suspend to sdmmc1 node
- Add uart-has-rtscts to uart1 node

Changes in v6:
- Use imperative wording in commit message 
- Move led-green pinctrl props to gpio-leds node
- Add pinctrl props to ethernet-phy node
- Add no-mmc/no-sd/no-sdio props to sdhci/sdmmc0 nodes

[1] https://lore.kernel.org/linux-rockchip/3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com/

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
  arm64: dts: rockchip: Add Radxa ZERO 3W/3E

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-radxa-zero-3.dtsi     | 463 ++++++++++++++++++
 .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  51 ++
 .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  91 ++++
 5 files changed, 614 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts

-- 
2.43.2


