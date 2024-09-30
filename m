Return-Path: <devicetree+bounces-106587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD2B98AECB
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 23:01:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BC071B214B0
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 21:01:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A3361A254E;
	Mon, 30 Sep 2024 21:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="ErpyWS0X"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B428916F282
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 21:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727730084; cv=none; b=Jta3ThIJjXWWCAsNfctIVXttQtqNa34E0Y2UG6Uc9CzO62aSdW1t3VGKT7MIWBFxUzepCLkDQ5gLsuPS0g5DDRaLFugfRB5yjiUYKIAtlqifBmQ5dB7l1SecOhfADO8xx42sfQPiACItD8e1piRvfZF8lX6C4XMGKV0IG/EACOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727730084; c=relaxed/simple;
	bh=yq111IggPjfb5r8LvDbaveNFnIdqwVX/vJHzPZVKHxM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GJ6i4xwpzPnqU4rtQqPtk2/HEM4vUcTeNfHRc/TuM8hNBrKILSSpg2y2EfkPvUAcvUQJo6AUaVKyZQxMN0eVB6IavyCW3eWsBDWGOsiGkU1yZVAWYgvHgn9HieW5Y2/Xuf7dEbd7cP0j05OmLH7/mZA28uySCJ4JX2gOgBjwQMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=ErpyWS0X; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rD1V2zJVVln/oAZ8iEetZQPLFBMCPxyCjDTaqdF8gR8=; b=ErpyWS0XnDMbNh7FpVJp01keXh
	wY/aiY3ETjGwQFV3BWiMtFBEKfeseSuHlp9k/y3i2jUDX97XamdmvlsyskhmnTnsz7fK5zj42kJS2
	PYJ00wK2P5ssEaOQK2lttSfrR8J9D9fz/6YE1jnfPzd7RFlousN4sdb2sOdPDqXN12U/7WU1GNMVL
	ookmtXE4lFdDAirQexs/JwUGi+y3hQBCyHoUawH/Yzayarox08cdf/Ha+jzYgCHshtaJMaMgNi3qN
	mhNrR4giMunW0hf4yEPJpDyv4BOJq3kk49iTXTimRyh/RQ+GkrJkaSdrlST/+4KtJiRjyzJ4C/l7v
	k3yYFj7Q==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWB-00087h-SC; Mon, 30 Sep 2024 23:01:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/8] arm64: dts: rockchip: fix i2c2 pinctrl-names property on anbernic-rg353p
Date: Mon, 30 Sep 2024 23:01:05 +0200
Message-ID: <20240930210112.1993625-2-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930210112.1993625-1-heiko@sntech.de>
References: <20240930210112.1993625-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We want to control pins, not beer mugs, so rename pintctrl-names to the
expected inctrl-names.

This was not affecting functionality, because the i2c2 controller
already had a set of pinctrl properties.

Fixes: 523adb553573 ("arm64: dts: rockchip: add Anbernic RG353P and RG503")
Cc: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
index a73cf30801ec..9816a4ed4599 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
@@ -92,7 +92,7 @@ button-r2 {
 };
 
 &i2c2 {
-	pintctrl-names = "default";
+	pinctrl-names = "default";
 	pinctrl-0 = <&i2c2m1_xfer>;
 	status = "okay";
 
-- 
2.43.0


