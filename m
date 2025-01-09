Return-Path: <devicetree+bounces-137218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DEDA08271
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 22:49:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3715E3A83D6
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 21:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D610204F60;
	Thu,  9 Jan 2025 21:49:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="ttM23zT/"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5300A204C23
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 21:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736459390; cv=none; b=b6Q3yZGX6ZFvZWWLkp2UMeZ7/H09LBdRKYBvms4wKR8aZ49DlbQeidTTlBwCZgAT8GAaedxbYrWVn4IKRojntF8J3zzpSQmYa029T8n8PN3By0MU5rNC9T/3whfy6HV2CAJpC2yu++XAgaocY1t6MsEHdQtsC0+iGTqqmU4dhpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736459390; c=relaxed/simple;
	bh=PXfU6IqJzJPvq+PXpJ5wUoGtlKfpsmWQaaA0+7rKx5o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ucncPnSTGTypr2arovlo4+BIKCoLaQ7F7bITZUcYF3nVZbhpjutEb1Syo9LR7t2wMwDdSeTe5sGCQl/YERyK+q8qaZ4X26/q5nezAdhIFR0bcCPZng3KTuPczi1VrMBlFL2ZnVBRtqAL8lFEq9emZkQUq97ooyF5MjJb93Y+ANM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=ttM23zT/; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=L3pvK+8L996FhW2eKjS9ijBQOkaCAS/fu+JHavhqupE=; b=ttM23zT/k4Bm/stp2dyHauQPi6
	jiG8ADBBPJ0fIv7LlD1vZBq4w1bkrLs7b9VUXaRvpygTyh8JKETRM2fhFlIlA+xGR6zjvOiGbdh5i
	Df91Km0//vB++X2TGVK0he1l4yUqtjCWP/G4MwYFWBrhLSoo7VeiuTnWkRqdqFwY61L1T9YGNyIJk
	cqMEp/DJC4smwNXAfFgsGfAfOFXzjIkxfxgfU4DXgwpE5Ck/7MHCka5i5PQHy4sFetkLolxOCKH9r
	iiPj3yJ5Gwt1A+/YO8KBZ1wyvwegy8tsHFZxe6jQ5XGYhdtGcZXsJQN30UeICVTZWQ5umf1/scmZz
	85Bizk4g==;
Received: from i5e860d05.versanet.de ([94.134.13.5] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tW0PQ-0005NF-VA; Thu, 09 Jan 2025 22:49:44 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Ondrej Jirman <megi@xff.cz>, linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v8 0/4] Orange Pi 5 Max
Date: Thu, 09 Jan 2025 22:49:44 +0100
Message-ID: <5348858.6fTUFtlzNn@diego>
In-Reply-To: <173643343615.3320269.13009413932712361979.robh@kernel.org>
References:
 <20250109051619.1825-1-honyuenkwun@gmail.com>
 <173643343615.3320269.13009413932712361979.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Donnerstag, 9. Januar 2025, 15:40:33 CET schrieb Rob Herring (Arm):
> 
> On Wed, 08 Jan 2025 23:16:14 -0600, Jimmy Hon wrote:
> > Add device-tree for Orange Pi 5 Max
> > 
> > Orange Pi now has 3 SBCs using the RK3588 SOC. Refactor the common parts
> > of the 5 Plus DTS so it can be shared with the 5 Max and the 5 Ultra.
> > The 5 Max and 5 Ultra have a similar credit-card sized board layout and
> > will also share a DTSI between them.
> > 
> > 5 Plus: HDMI0, HDMI1, HDMI RX, M.2 E-key, USB-C
> > 5 Max: HDMI0, HDMI1, WiFi/BT using SDIO/UART
> > 5 Ultra: HDMI1, HDMI RX, WiFi/BT using SDIO/UART
> > 
> > Changes in v8:
> > - Rebase with updated 5 Plus USB 3 patch
> > 
> > Changes in v7:
> > - Add signed-off to first commit
> > - Expand first commit description
> > 
> > Changes in v6:
> > - Remove clock-names from incorrect merge conflict
> > 
> > Changes in v5:
> > - Include Orange Pi 5 Plus USB 3.0 change in baseline before refactor
> > - Defer Orange Pi 5 Ultra to a later series
> > - Defer Orange Pi 5 Plus HDMI1 to a later series
> > 
> > Changes in v4:
> > - Orange Pi 5 Ultra was released and does not use VP0 to HDMI0
> > - Move HDMI0 from common to the board level
> > - Make DTSI to be shared by the credit card sized 5 Max and 5 Ultra
> > - Updates for the newly submitted HDMI1 support
> > - Add Ack for dt-binding
> > 
> > Changes in v3:
> > - Refactor to share common include with Orange Pi 5 Plus
> > 
> > Changes in v2:
> > - squashed commits together for initial board file
> > 
> > Link to v1: https://lore.kernel.org/linux-rockchip/20241026100310.52679-1-honyuenkwun@gmail.com/
> > 
> > Jimmy Hon (4):
> >   arm64: dts: rockchip: refactor common rk3588-orangepi-5.dtsi
> >   dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Max
> >   arm64: dts: rockchip: Add Orange Pi 5 Max board
> >   arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max
> > 
> >  .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../rockchip/rk3588-orangepi-5-compact.dtsi   | 151 ++++
> >  .../dts/rockchip/rk3588-orangepi-5-max.dts    | 101 +++
> >  .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 855 ++----------------
> >  .../boot/dts/rockchip/rk3588-orangepi-5.dtsi  | 805 +++++++++++++++++
> >  6 files changed, 1127 insertions(+), 792 deletions(-)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
> > 
> > 
> > base-commit: 2859e1ac3110f2d428a794bda26ea0d90b2254c6
> > prerequisite-patch-id: 4672b745f4308a7be527749279edb71625d120e6
> > prerequisite-patch-id: 2743fb64eba2a29eaf993ebc8a5d6ee445b69dfa
> > --
> > 2.47.1
> > 
> > 
> > 
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20250109051619.1825-1-honyuenkwun@gmail.com:

All of them are not caused by the OrangePi5

> arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dtb: /i2c@fe5c0000/touchscreen@48: failed to match any schema with compatible: ['ti,tsc2007']
> arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dtb: /i2c@fe5c0000/touchscreen@48: failed to match any schema with compatible: ['ti,tsc2007']
only has a txt binding

> arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: /serial@fdd50000/mcu: failed to match any schema with compatible: ['qnap,ts433-mcu']
binding is in the mfd tree

> arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: /soc/phy@2b050000: failed to match any schema with compatible: ['rockchip,rk3576-naneng-combphy']
> arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: /soc/phy@2b060000: failed to match any schema with compatible: ['rockchip,rk3576-naneng-combphy']
> arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dtb: /soc/phy@2b050000: failed to match any schema with compatible: ['rockchip,rk3576-naneng-combphy']
> arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dtb: /soc/phy@2b060000: failed to match any schema with compatible: ['rockchip,rk3576-naneng-combphy']
binding is in the phy tree

> arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dtb: /spi@fe610000/fram@0: failed to match any schema with compatible: ['fujitsu,mb85rs128ty']
binding is in the mtd tree




