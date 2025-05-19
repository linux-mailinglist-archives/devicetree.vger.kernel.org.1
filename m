Return-Path: <devicetree+bounces-178444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFADABBD75
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 14:15:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52A70189CC2B
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 12:15:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEA13277022;
	Mon, 19 May 2025 12:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="CbQyHmii"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C211E25FA
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 12:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747656931; cv=none; b=nfOnIvONNklyjqZOr/7NPqV0e2EWbfdWu8m8KwsRaShqoWd0TLPLUJnD4ZMCuoquLs3rLZEtWCtVygdrgPeiDO+ZU2vGpM7saSQNXlu1Wp+3rA1J05f/OmHshxgXQ5bKKW68+/gfaDUoACIv9DEz8l9W3srOTY+TyJo5+wYisVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747656931; c=relaxed/simple;
	bh=MmwB9HoHaOh5/ET3jPLiRP0siXZcLVS9aSVhiO+Da5s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F70iOLx7bUoyvGvM7lROjsOJf4h7jhW0iZK24sRpHO87PBr4U8EndujL8oXBgj8yrZdy6+AGhmrDBM1d83oBy1B7sYYDXRf2/VTeSuM+ysJNolK7iWf71GgKJguE+Ibeo/jR9JHMAfTn80Vk11y9LZZfmlb0UvkzOoDP/N9++Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=CbQyHmii; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=rfXuB+wQPOfsfB20M22Pq6z4uUvKlStXYSoiVK40R24=; b=CbQyHm
	iiWqpc02fUDFPI1CfmWGxuif8vWzgrvin9FzdX8kbqnbu28TDur88iTGXaRJThh+
	332fIC5uhyHRsk9NbPBDbgckVZP96nWzSjKDglXC0MvmWjkpOIMQTRrB/yH0yR7c
	MpPXnVbD9XBXKN8z4uBTYdPHryx0DOLJsflpk0NHSDxTU7uyYd+jIJahMzwhD537
	paEtDGzL2WOnY1uJzjs/o+4x/nQdWjMnENLB/TVz0+cop+h8iTHt/Tquqj4RCYoh
	YErktFkU1GQ9Vu8j0azNO1VeDHog1A+qfJEG4fOqltuiq74WhgrimZXXnmqRdpe9
	pOpdaRsV/Hv0Y53g==
Received: (qmail 2475103 invoked from network); 19 May 2025 14:15:23 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 19 May 2025 14:15:23 +0200
X-UD-Smtp-Session: l3s3148p1@mCUdFnw1FJpZz6+V
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 2/7] arm64: dts: mediatek: use proper node names for GPIO based I2C busses
Date: Mon, 19 May 2025 14:15:02 +0200
Message-ID: <20250519121512.5657-3-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250519121512.5657-1-wsa+renesas@sang-engineering.com>
References: <20250519121512.5657-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There shall not be a '-' before the number.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
index ed79ad1ae871..d0e1d8f064c4 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
@@ -64,7 +64,7 @@ wps-key {
 	};
 
 	/* i2c of the left SFP cage (wan) */
-	i2c_sfp1: i2c-gpio-0 {
+	i2c_sfp1: i2c-gpio0 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&pio 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		scl-gpios = <&pio 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
@@ -74,7 +74,7 @@ i2c_sfp1: i2c-gpio-0 {
 	};
 
 	/* i2c of the right SFP cage (lan) */
-	i2c_sfp2: i2c-gpio-1 {
+	i2c_sfp2: i2c-gpio1 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&pio 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		scl-gpios = <&pio 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
-- 
2.47.2


