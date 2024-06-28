Return-Path: <devicetree+bounces-81348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C53BB91C076
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 16:08:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D0F22861AB
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 14:08:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12C641C0DFB;
	Fri, 28 Jun 2024 14:07:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062441C0DF7;
	Fri, 28 Jun 2024 14:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719583655; cv=none; b=dmJ0vPf0mTXM1dKCdjwCvTvhxTl/fp1VS4iGy9N311AzD3gt5ocFfi/0NdoZ0/2Mcmdmia5WR3VOWtYn1jRf59FeMD3HvdotkdotcEIV+ZdLKviyJ8CXvkSTqtqeepCrAU0wLwir7QRoizXfYNVkgeMBqCEJYZf2erDFapWHXd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719583655; c=relaxed/simple;
	bh=Yc+nlxb0YDAx67elWIR8Z7mlsgKHHYgfen3rVPRgdDA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=alqX7Y4ygiBbUQj5QHSsQz+UvDJFbM7HFULLw/ke2JCduTJu/y0dzbXtAxlhhLTs0r68IZEz3/9hlUJ6cw9zIg/FPZ43Ntrfup7suHGZxBiwsi1E8Kj7Hk57qN8SBME78k1hp41sQuCs4/oJzbfth7N1aywsG3QdMs1ZCpqknIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c01:1720:7e27:c507:902f:f5f3])
	by smtp.qiye.163.com (Hmail) with ESMTPA id DBDC27E0103;
	Fri, 28 Jun 2024 22:01:15 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 2/5] arm64: dts: rockchip: remove unused usb2 nodes for Lunzn Fastrhino R6xS
Date: Fri, 28 Jun 2024 22:01:01 +0800
Message-Id: <20240628140104.551760-2-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240628140104.551760-1-amadeus@jmu.edu.cn>
References: <20240628140104.551760-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDHUIaVkJNQhkeSB0dTR4ZGFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtKQUpMSUtBTB5JTEEYTktMQUJLSR1BHU4dSFlXWRYaDx
	IVHRRZQVlPS0hVSktJT09PSFVKS0tVSkJLS1kG
X-HM-Tid: 0a905f267c6d03a2kunmdbdc27e0103
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PRA6Kww5HDMCPxo2CQg1Dzow
	FysKFBxVSlVKTEpCTkNISUxNTkhCVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0pBSkxJS0FMHklMQRhOS0xBQktJHUEdTh1IWVdZCAFZQUlNSE83Bg++

Fix the following error when booting:
[   15.851853] platform fd800000.usb: deferred probe pending
[   15.852384] platform fd840000.usb: deferred probe pending
[   15.852881] platform fd880000.usb: deferred probe pending

This is due to usb2phy1 is not enabled. There is no USB 2.0
port on the board, just remove it.

Fixes: c79dab407afd ("arm64: dts: rockchip: Add Lunzn Fastrhino R66S")
Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 .../boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
index 82577eba31eb..e08c9eab6f17 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
@@ -421,28 +421,12 @@ &uart2 {
 	status = "okay";
 };
 
-&usb_host0_ehci {
-	status = "okay";
-};
-
-&usb_host0_ohci {
-	status = "okay";
-};
-
 &usb_host0_xhci {
 	dr_mode = "host";
 	extcon = <&usb2phy0>;
 	status = "okay";
 };
 
-&usb_host1_ehci {
-	status = "okay";
-};
-
-&usb_host1_ohci {
-	status = "okay";
-};
-
 &usb_host1_xhci {
 	status = "okay";
 };
-- 
2.25.1


