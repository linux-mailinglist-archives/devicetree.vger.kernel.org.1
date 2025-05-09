Return-Path: <devicetree+bounces-175295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D7749AB0724
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 02:42:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E6311C017DF
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 00:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1CBFD2FF;
	Fri,  9 May 2025 00:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="GW2tYU+s"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3BB1FDA;
	Fri,  9 May 2025 00:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746751349; cv=none; b=C8rDT4pEjPC6JxhTQ3hNL1tfS2hLkKhUcEyF4QeuPQCcEnXZk6EZrlWqRhcapgC7eJu4dN1/8/7EVp/N3j1tQZyoO4KD1/JUjFbhnQNgIHA0pE2ocOKAWGFl02HM2jhEostJ3uO00cNasdWLDKJQaC4mkmtjL7hIDZL6tBKeQOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746751349; c=relaxed/simple;
	bh=+rXAV48iJAiEuwfYBZeLEYqSDFPFw+FyIOe7/hH7PYM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=O3O/+GY+7qm2BsZpk/l0I4r72DymHW9Vy1A7/1um7MpgLy+NOkTqxhyRTRza4wSaqnDr0CcEP67Jvr8U4n80XO2L6V7EKKplm15YothP43OokbeVAM/BNYF9J2/Z1DzkyPRk6tgiYPR8O/2BSudFZvTEiHjkyAp/Tr50dQQ4v/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=GW2tYU+s; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 9F2A5260FC;
	Fri,  9 May 2025 02:42:24 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7jXVltKdRkjg; Fri,  9 May 2025 02:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1746751343; bh=+rXAV48iJAiEuwfYBZeLEYqSDFPFw+FyIOe7/hH7PYM=;
	h=From:To:Cc:Subject:Date;
	b=GW2tYU+sFtyUp3DjWxDP/PJAZV8fhN1xL6nabCzCsJCxiMUOC7PyR3BL/jSI+jPHb
	 9z0qz7PMmHW07Rf9dOWzwPZViFxxjIBWKsfNMCEUC56fMZFYk/SeCUNqbV9E0JkQZc
	 RXFRf8WNGE28KUK/6I82OiwZ8JeIerH5tMUd5Tmj24RHnh07KvtEjYLbqpCn8Yyqj/
	 HbAqs50o0ye8qAokR8DbCIIC4qjFm6CM5pZ/pzKNgOvY/27c4FAiornmyWUktBjf62
	 eZTbIzax4TqnC14RccVDeuR5FLTq2bf2H1NXcTrCOaBh3jvQBzT4dmzcHBVemJ4LrJ
	 z3F/uC/On+3vQ==
From: Yao Zi <ziyao@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] Support RK3528 variant of Rockchip naneng-combphy
Date: Fri,  9 May 2025 00:41:17 +0000
Message-ID: <20250509004121.36058-2-ziyao@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rockchip RK3528 ships a naneng-combphy that operates in either PCIe or
USB 3.0 mode. It has a similar control logic to previous generations of
naneng-combphy but an apparently different register layout.

This series prepares phy-rockchip-naneng-combphy.c for variants with a
different register layout and add RK3528 support.

Testing is done on both Radxa E20C and Radxa Rock 2A with downstream
devicetree changes, both USB 3 and PCIe modes are verified with mainline
driver and achives a reasonable link speed.

The devicetree change (PATCH 5) depend on v6 of the SD/SDIO series
("Support SD/SDIO controllers on RK3528")[1] for a clean apply. Thanks
for your time and review.

[1]: https://lore.kernel.org/all/20250508234829.27111-2-ziyao@disroot.org/

- Changed from v1
  - Collect review tags
  - Restyle RK3528 register definitions in the combphy driver
  - Drop unused include of phy.h in SoC devicetree
  - Link to v1: https://lore.kernel.org/all/20250508134332.14668-2-ziyao@disroot.org/

Yao Zi (5):
  dt-bindings: soc: rockchip: Add RK3528 pipe-phy GRF syscon
  dt-bindings: phy: rockchip: naneng-combphy: Add RK3528 variant
  phy: rockchip: naneng-combphy: Add SoC prefix to register definitions
  phy: rockchip: naneng-combphy: Add RK3528 support
  arm64: dts: rockchip: Add naneng-combphy for RK3528

 .../phy/phy-rockchip-naneng-combphy.yaml      |   5 +-
 .../devicetree/bindings/soc/rockchip/grf.yaml |   1 +
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      |  22 +
 .../rockchip/phy-rockchip-naneng-combphy.c    | 746 +++++++++++-------
 4 files changed, 500 insertions(+), 274 deletions(-)

-- 
2.49.0


