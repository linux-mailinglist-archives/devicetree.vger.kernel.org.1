Return-Path: <devicetree+bounces-206424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4EEB2C4A4
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:08:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 32310188F554
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:05:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0EBD33EAF0;
	Tue, 19 Aug 2025 13:03:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.grinn-global.com (mail.grinn-global.com [77.55.128.204])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370D1224AF9;
	Tue, 19 Aug 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=77.55.128.204
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755608636; cv=none; b=ZQcHpJXcD8l74FR/+E0LcBGvxW/deCDGPT6BrL2OwD+0mVwdUw4ahOZrTFMrEGGJHfTifaab+or4v88tiiBbuqHs+2x7KZuoHriXCZoczGWe1IdqaIrAhNQ5ZsIugFvVh1L4N49/0vqL452v9LtD0h13AleT1CxSHYoCmOlGGhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755608636; c=relaxed/simple;
	bh=7b+b9Zckr0VwfWoq+godGIUO2yqQ3Ss0ZnT0y2zcC5U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oBtsQKhwjxTQ8/oHCCmtUXWlRH66joBBkQiUikjzkW49OdO1HKUCOzHgUD0c4+WOAmNHqEVnrSxOLYaddi3D/GocPM3QYZ39TxORKR+RpC7jwNSTQ+eluxjrbEGAxVZgeBl3zoZyRsRFugmN2HzwJG+AMK09wrzVvDSvNWhdIgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=grinn-global.com; spf=pass smtp.mailfrom=grinn-global.com; arc=none smtp.client-ip=77.55.128.204
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=grinn-global.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=grinn-global.com
X-Virus-Scanned: by amavisd-new using ClamAV (9)
X-Spam-Flag: NO
X-Spam-Score: -1
X-Spam-Level: 
Received: from mateusz.int.grinn-global.com (f90-187.icpnet.pl [46.228.90.187])
	by server220076.nazwa.pl (Postfix) with ESMTP id 7FA421BE387;
	Tue, 19 Aug 2025 15:03:45 +0200 (CEST)
From: Mateusz Koza <mateusz.koza@grinn-global.com>
To: angelogioacchino.delregno@collabora.com,
	robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	marcin.czarnecki@grinn-global.com,
	b.bilas@grinn-global.com,
	Mateusz Koza <mateusz.koza@grinn-global.com>
Subject: [PATCH v2 0/4] Add support for Grinn GenioSBC-510/700 boards
Date: Tue, 19 Aug 2025 15:02:27 +0200
Message-ID: <20250819130231.181571-1-mateusz.koza@grinn-global.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-NA-AI-Spam-Probability: 0.48
X-NA-AI-Is-Spam: no

This patch series adds support for Grinn GenioSBC-510 and GenioSBC-700
boards based on MediaTek MT8370 and MT8390 SoCs, respectively. It
includes device tree files for both boards, updates to the device tree
bindings, and necessary modifications to the Makefile.

As far as I know, <angelogioacchino.delregno@collabora.com> has access
to the schematics for these boards, as we've shared them under NDA with
Collabora.

Signed-off-by: Mateusz Koza <mateusz.koza@grinn-global.com>
---
v2: Fixed the subject prefixes,
	Fixed alignment in dts files,
	Added missing SPDX-License-Identifier,
	Fixed the ordering in dt-bindings,
	Dropped redundant info from commit messages,
	Run checkpatch.pl on the patchset and fixed the issues,
	as suggested by Krzysztof Kozlowski <krzk@kernel.org>.

---
Bartosz Bilas (1):
  arm64: dts: mediatek: mt8370-grinn-genio-510-sbc: Add Grinn
    GenioSBC-510

Mateusz Koza (3):
  arm64: dts: mediatek: mt8390-genio-700-evk: Add Grinn GenioSBC-700
  dt-bindings: arm: mediatek: Add grinn,genio-700-sbc
  dt-bindings: arm: mediatek: Add grinn,genio-510-sbc

 .../devicetree/bindings/arm/mediatek.yaml     |   2 +
 arch/arm64/boot/dts/mediatek/Makefile         |   2 +
 .../mediatek/mt8370-grinn-genio-510-sbc.dts   |  19 +
 .../mediatek/mt8390-grinn-genio-700-sbc.dts   |  19 +
 .../dts/mediatek/mt8390-grinn-genio-sbc.dtsi  | 674 ++++++++++++++++++
 .../dts/mediatek/mt8390-grinn-genio-som.dtsi  | 209 ++++++
 6 files changed, 925 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8370-grinn-genio-510-sbc.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8390-grinn-genio-700-sbc.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8390-grinn-genio-sbc.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8390-grinn-genio-som.dtsi

-- 
2.43.0


