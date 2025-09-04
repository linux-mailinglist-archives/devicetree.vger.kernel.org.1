Return-Path: <devicetree+bounces-212994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE03B445BA
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 20:47:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B78FBA04870
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93E102586C8;
	Thu,  4 Sep 2025 18:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="tUYLUpIQ";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="tUYLUpIQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DB525742C
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 18:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757011627; cv=none; b=YM0GWHfI9P88q2YjW/x/CbexJqzZjNYExu2rAFjG5Lo1dzBrUH4tNUMXCGGkYOrFKaOVklJpB3lLKD691sy50uce4d16nGLcsLZmkyuOv1ppmsl8BerptpuS3ZfoDe4/gcnFAHdrPlbbETROJAz32IsEgH7njVYcek7Qt0OCUeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757011627; c=relaxed/simple;
	bh=V6UjyEP4enR0aaZjIfYcybAs2bn7WAkQ8HTnFlXBw+0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Pm1ompPNUAmkSvVJ596bO7LwSitNDNaxns3BgOO6x3w+Lv84lU/eeLDgDfYc9qhrQbwFGfNbSSnuE7RAGW5YgwqNDE1kF86X3IV9j+IzMOJpenZ44tKq7o4O/VjvDaS9JPJqAR6uGmdmhbtoDGZopq8jEjARUWJ9XT1UBSKY1PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=tUYLUpIQ; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=tUYLUpIQ; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011623; bh=V6UjyEP4enR0aaZjIfYcybAs2bn7WAkQ8HTnFlXBw+0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tUYLUpIQh5wbfl6nwN7FS8dq4FRkYatmdebS6xylj3rE9DZj12GKyTfL7+JzCWA48
	 6PiDKKBi/JzHq7UGXxx5uu0WzoCGW909mV4DWBVEYZaUS5c1obmG8MsZo0ozrqgdYw
	 VhGEcMAspvfw/Oyob/egV35JWOIwNam5GD9wKungm17OXhrS9QTVmviMIckQ8QlRHY
	 6Dt6ioKCEwJI27JXFmHZgq0sOeUVcUopx9KrzY2dJIb64XGLZUuMD9Xxp0WyJkjHZo
	 YNOKVURhR18UYOKSavdqE/PWWUZUZJPP03J/GO3O65smxV+yStAbQ0lq8H7KvF9WUn
	 awXVnEQPd/j+g==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id C04423D2188;
	Thu,  4 Sep 2025 18:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011623; bh=V6UjyEP4enR0aaZjIfYcybAs2bn7WAkQ8HTnFlXBw+0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tUYLUpIQh5wbfl6nwN7FS8dq4FRkYatmdebS6xylj3rE9DZj12GKyTfL7+JzCWA48
	 6PiDKKBi/JzHq7UGXxx5uu0WzoCGW909mV4DWBVEYZaUS5c1obmG8MsZo0ozrqgdYw
	 VhGEcMAspvfw/Oyob/egV35JWOIwNam5GD9wKungm17OXhrS9QTVmviMIckQ8QlRHY
	 6Dt6ioKCEwJI27JXFmHZgq0sOeUVcUopx9KrzY2dJIb64XGLZUuMD9Xxp0WyJkjHZo
	 YNOKVURhR18UYOKSavdqE/PWWUZUZJPP03J/GO3O65smxV+yStAbQ0lq8H7KvF9WUn
	 awXVnEQPd/j+g==
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Frank Li <Frank.Li@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/7] ARM: dts: lpc32xx: Specify a precise version of the SD/MMC controller IP
Date: Thu,  4 Sep 2025 21:46:45 +0300
Message-ID: <20250904184647.397104-6-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250904184647.397104-1-vz@mleia.com>
References: <20250904184647.397104-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20250904_184703_804434_AFD5F44E 
X-CRM114-Status: GOOD (  10.46  )

The SD/MMC controller on NXP LPC32xx SoC is ARM PrimeCell PL180, it is
reported by the driver:

    mmci-pl18x 20098000.sd: mmc0: PL180 manf 41 rev0 at 0x20098000 irq 36,37 (pio)

Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index c8b9d70e9362..522d616a9205 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -225,7 +225,7 @@ i2s0: i2s@20094000 {
 			};
 
 			sd: mmc@20098000 {
-				compatible = "arm,pl18x", "arm,primecell";
+				compatible = "arm,pl180", "arm,primecell";
 				reg = <0x20098000 0x1000>;
 				interrupts = <15 IRQ_TYPE_LEVEL_HIGH>,
 					     <13 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.49.0


