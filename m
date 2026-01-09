Return-Path: <devicetree+bounces-253259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5CDD0901D
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:49:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26B9A3008EB1
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78096318EFA;
	Fri,  9 Jan 2026 11:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="XrxIJFn5"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFC81C3C08;
	Fri,  9 Jan 2026 11:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767959278; cv=none; b=jZShW5vKeX+0RvwV3Ip5ewCYrZKxpnZnbowWEtPONXSRuG9i0PvmCjnWpcRCGI48jm8MCQ9YunduoCgGxpn89aGeYSFxc14VGkDifQee+XL3A7pWxsmFAkQUlwD9hEgt4eC6CSPpgJKMSa4WSjq77UxNYlWgMPmJNpuZlbsLkfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767959278; c=relaxed/simple;
	bh=XE4iCIg/Tr4IYc8+mGcegtbGiZIFmns1DrVHYez+y7w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cgIV0ABRLp0z2mTKO5MxI6dBqXxRa3NXwJyz+G/hmH84cXSkpmDMmam7pCNeXz0vsV18E43N2pAr7890pM+B6779uu3jVLHykcTKRfyeEiIWMJ7AhPRxRGnZ3H6ZSMo2UOeKZclvvcsgZrwoRWhoZDeZiwnJeaKT5HZ0umhlvQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=XrxIJFn5; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767959275;
	bh=XE4iCIg/Tr4IYc8+mGcegtbGiZIFmns1DrVHYez+y7w=;
	h=From:To:Cc:Subject:Date:From;
	b=XrxIJFn5oOwDI4mTISAdPmckr3wzoNVN3h8N+Qhf0jRK0qkoEJRs/9eRKasFzApSG
	 kbLdMnJp8BsdLuq0YVSCt3w7+iEKyAxv5/HB4GtRfKIKMIc+mgK++NtWusOFQ/1R6E
	 9IZq29nC4tdJSxa317c2enXXAngvfz/WiOfsvNHv+8qv7P6Jnv5Kzy5vomQfSZpDY6
	 x4o0RvtfTP8N97BON0M80GEfbyeff82I3sqxEk6QmdrzH9cZd9cKNB1JUv1568wOs3
	 sChT4jCk56xh6SOrBXLN1G6IBLzGSHvCkB3DG8frAoN/Ion0JfaiIuJWSbFI9Xi7gL
	 vdkbd8LeX5pMg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E8B8017E0FF0;
	Fri,  9 Jan 2026 12:47:54 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sjoerd@collabora.com,
	hsinyi@chromium.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 00/11] MediaTek DTS dtbs_check warning fixes
Date: Fri,  9 Jan 2026 12:47:36 +0100
Message-ID: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series performs some fixes as pointed out by dtbs_check and
does some small while-at-it cleanup.

AngeloGioacchino Del Regno (11):
  arm64: dts: mediatek: mt8173: Fix pinctrl node names and cleanup
  arm64: dts: mediatek: mt8183: Fix dtb warnings in display graph
  arm64: dts: mediatek: mt8183-evb: Fix dtbs_check warnings
  arm64: dts: mediatek: mt7981b-openwrt-one: Remove useless cells from
    flash@0
  arm64: dts: mediatek: mt8183-jacuzzi-pico6: Fix typo in pinmux node
  arm64: dts: mediatek: mt8183-pumpkin: Fix pinmux node names
  arm64: dts: mediatek: mt8173-elm: Fix bluetooth node name and reorder
  arm64: dts: mediatek: mt8173-elm: Fix dsi0 ports warning
  arm64: dts: mediatek: mt8173-elm: Remove regulators from thermal node
  arm64: dts: mediatek: mt8192-asurada: Remove unused clock-stretch-ns
  arm64: dts: mediatek: mt6795-xperia-m5: Add UHS pins for MMC1 and 2

 .../dts/mediatek/mt6795-sony-xperia-m5.dts    |  48 ++++-
 .../boot/dts/mediatek/mt7981b-openwrt-one.dts |   2 -
 .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |  34 ++--
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 167 +++++++++---------
 arch/arm64/boot/dts/mediatek/mt8173-evb.dts   |  60 +++----
 arch/arm64/boot/dts/mediatek/mt8173.dtsi      |  28 +--
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |  36 ++--
 .../mediatek/mt8183-kukui-jacuzzi-pico6.dts   |   2 +-
 .../boot/dts/mediatek/mt8183-pumpkin.dts      |  16 +-
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 119 +++----------
 .../boot/dts/mediatek/mt8192-asurada.dtsi     |   1 -
 11 files changed, 235 insertions(+), 278 deletions(-)

-- 
2.52.0


