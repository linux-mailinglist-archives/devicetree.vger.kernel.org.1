Return-Path: <devicetree+bounces-109181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3549958A5
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:40:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B72F628520E
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70838215014;
	Tue,  8 Oct 2024 20:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="o7h9Ilgj"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C511E104B
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728419997; cv=none; b=buJBsRxWBS6to6bZqrO+DiRoq3klXLnm4TrDI99AAHOxeQLhFS7fcB4EeWL+Z0X1hlfasfHhgkLR1EpM6cuznKZ5pXUM5ayUawb3WnsAe4X/rk2NeooXxqBYRvReIPi1vdL54pa36HqjSI+s7Vxm41FJyzM1NKUgbwGO1jSbxds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728419997; c=relaxed/simple;
	bh=KBQPCY18xv9/ichJK3nu4HsRkXronZ+9CXRPQwR7B2o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b5gt8PUiDVg6m4io8sRYi1y3tmXIvnVvVEo0NYWoRKwx66BIZzJnGwldt5FYYKRZDg0OsRmbDcZujyh0lsNQjyjBd4ykmW0vZnNXC8o9gG20pctM2AsCAuHvTSQmY57CyoHnMicDfyjbqMOCMAW0WBZx5qXC11j50+gDKXwT9yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=o7h9Ilgj; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=277QVKUgBZx9Kqmh10Kpiu8kjEqYEgwLRvpKlI61ue8=; b=o7h9IlgjVc1SIzTNCKVOgehWbk
	xYBuL9RXaDHs+VW9PS7Hvn9QW/UIePNVYtyJIvrn8PT67J0IL1miaGCaoWdgfN6TkcStuFP40KVxV
	3lQg5oTlOGxeG/Ekm7kLUnE5m4NbBL8w6y74XTdbiVMxZF5h321DE2kIEiZ+AmtFmMVVxZ6rbVP2+
	8YVDf3qgN38u6F+DL+JGrlSMX/MPcNWxzhdv2EGqr/+VJ/kO0WynBGIkULRnlzo6Rw4+694OuGdBf
	ipN8G4hNG/tjsjcds4ZFo0Q4pTBBr1KMSRmBv/3fTBEAq4jQn6sHgjJPjI9fbzYhl7YVzq41v6dPf
	yi9joteg==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzp-0007ua-TI; Tue, 08 Oct 2024 22:39:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 01/14] arm64: dts: rockchip: fix i2c2 pinctrl-names property on anbernic-rg353p/v
Date: Tue,  8 Oct 2024 22:39:27 +0200
Message-ID: <20241008203940.2573684-2-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
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
Fixes: 1e141cf12726 ("arm64: dts: rockchip: add Anbernic RG353V and RG353VS")
Cc: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

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
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
index e9954a33e8cd..a79a5614bcc8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
@@ -79,7 +79,7 @@ button-r2 {
 };
 
 &i2c2 {
-	pintctrl-names = "default";
+	pinctrl-names = "default";
 	pinctrl-0 = <&i2c2m1_xfer>;
 	status = "okay";
 
-- 
2.43.0


