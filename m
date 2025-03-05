Return-Path: <devicetree+bounces-154221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA56A4F605
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 05:18:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A02816D895
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 04:18:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F50E1A2387;
	Wed,  5 Mar 2025 04:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="LzIENE/Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3282.qiye.163.com (mail-m3282.qiye.163.com [220.197.32.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F33719258E
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 04:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.82
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741148321; cv=none; b=Iuj2vz+mnBubPwlCLXaUdChWwJtb1gHbZ4RgX9kh02mPZYLt50LB4b377HJzTe+Lrtfjg3P7yjhyr7PdS8mGvmXBdmHbBYwxLaJ3UY7iVUdCYBsJptJbEz2KnfXilUP55KUixWzyYAuy8TiYYEUJNcVE5txDBSd1N6u3TlyZEYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741148321; c=relaxed/simple;
	bh=WWnBrRbS7bsTo+HMCHFUhz+9IPOStN6DTmFLti/8bkI=;
	h=From:To:Cc:Subject:Date:Message-Id; b=tKSyVUL00TvrO7NkN+g6WqpDmHcnZnUDVhBOPHNzALKjUeJx5ttbSqgtXkzKNXJCxFKeYPI7P9UwjJeNZ/Syv0hOnoojOSvJ2URpWI5/hY945QvYVNB/kWx/elQoDyrxGTqTcqJxUMvSI85iI9i4qLssARjbbXlU7/n6Vu0j5pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=LzIENE/Q; arc=none smtp.client-ip=220.197.32.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id cf9f91e6;
	Wed, 5 Mar 2025 12:18:28 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: Enable ufshc on RK3576 evb1 board
Date: Wed,  5 Mar 2025 12:18:27 +0800
Message-Id: <1741148307-137177-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkJIQlZLTk5KGBofHUpLHk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a956486c26109cckunmcf9f91e6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NEk6Gjo*DTJPGDkvLyMrP0oJ
	AjQKCjpVSlVKTE9KSk9DSEtCS0JOVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU1LSjcG
DKIM-Signature:a=rsa-sha256;
	b=LzIENE/QokLt9mbq+/Ok8eFJkrwdTrISyoqr9kLYbXH9FrVkHDd8ujG2Yo7VTkkcUOg+M//wX2skp12jYA8myTXtESrmOWkZ9SVIiiGokKgCS1pQO9r+vKmoOC2N5gyu4sbh6OY/7DG75E9aYhVPV/5ev39PhvJ+hgAxPKp2LR0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=lIUrGtpzBFo7v5pimATTNx8DhQm7U7zwooFby1eu0wU=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

RK3576 evb1 board supports UFS, so enable it.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index 782ca00..5412c60 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -711,6 +711,10 @@
 	status = "okay";
 };
 
+&ufshc {
+	status = "okay";
+};
+
 &uart0 {
 	status = "okay";
 };
-- 
2.7.4


