Return-Path: <devicetree+bounces-141581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD4EA217C5
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 07:42:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83C501888156
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 06:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7600618BBB0;
	Wed, 29 Jan 2025 06:42:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00983823DE
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 06:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738132969; cv=none; b=d/TOkK03w22WpkGWcEmjlQig1kXNVm7RecQ1I2rH5tHFONTMoW8BR8zU/D9RVxk36pt/GkZHa1v/pZByDvBmXsO0F9oVqmTHt5lYsUULle++zDAGuJPFEpTaYKY1AcVG8pTEMyQiDLwKtDFB3SXck+uEVmUnd7CFyT7SETgpU20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738132969; c=relaxed/simple;
	bh=Q8CPC6EBW8BiTGv1zsRc5lBz4DhVy71OEsN0mkeQ9/I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jlSVyJetY4AYGbQKyWQwD4CPfik568C84C87UGczp34VgKzbh/CQatQVozXJBQR4lMIlq/OLIRKP4GJspQW+7DWUn4Or80DUoTaicQib9Kt2PsgNJR8Zw7WmRdkYN/nhy5jjY/CvGqXY334UsFLlwBfXsSIylZlQatZVwUoaqDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 50T6e7RC009991;
	Wed, 29 Jan 2025 15:40:08 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, twoerner@gmail.com, didi.debian@cknow.org,
        jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: Enable USB OTG for Radxa ROCK Pi E
Date: Wed, 29 Jan 2025 06:40:04 +0000
Message-ID: <20250129064004.162136-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Radxa ROCK Pi E has USB D+/D- signals on the 40-pin header[1].
Enable it for use as an OTG port.

[1] https://docs.radxa.com/en/rockpi/rockpie/hardware/gpio

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index 6310b58de77f..a4bdd87d0729 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -428,10 +428,18 @@ &u2phy_host {
 	status = "okay";
 };
 
+&u2phy_otg {
+	status = "okay";
+};
+
 &uart2 {
 	status = "okay";
 };
 
+&usb20_otg {
+	status = "okay";
+};
+
 &usbdrd3 {
 	dr_mode = "host";
 	status = "okay";
-- 
2.43.0


