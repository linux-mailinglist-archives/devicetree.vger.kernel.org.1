Return-Path: <devicetree+bounces-106589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E7798AECD
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 23:01:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C1AADB21C6B
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 21:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 065BA1A2560;
	Mon, 30 Sep 2024 21:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="PsDGKypS"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4355E198A0B
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 21:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727730084; cv=none; b=WMEu5K7YWZF9WqtbI/4flhgTe8mEsNdKJTyU9SCeNtDwSWVg2JjJDGEusln+0F0w+QCk+gzFeXuX/DrJjFQ9XqjyBPu5CmXXc9rMqmC2+V625DfQSWmSVt7I2v7dTbIQsNElYV7ajI01dU25L8JjwJGaZV+1uQu90vN5cA2OH5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727730084; c=relaxed/simple;
	bh=Bqb5fccKHyTHE/oWv0pW6Cv5QJyqFX94LAWADyo8FNw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uk5Ffk6wtnIsKJcwF7cbvlnKleB8WVm291yXJg5gWeqRJNKZ12qiC7o/WlJmf2eMhRsOkoKQipToAF2we0eRP5iAWMDZcOeLElC300upK/IINs61j00nKRosg8yHQzMZ05wDWiMyS2gOmn7Yd06Q1LdbQAn45xhQdqFDYHOs0WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=PsDGKypS; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KI77oPBb6QLN5CmWLuxE94hiAUT6qB7QZWAGLaXAElk=; b=PsDGKypSib9zkgheSenwGgktq3
	vd6AXGChaz9AA6pdijAgyUzgKzbb+6pi3PxqwtYeVBSngzKurK9k4q+djMkwQaDfnQn0R90yQeSG4
	4RTS0/a2+WDcKGt52QOnj/Lstg+kqJXWfQt2HwvuN2q2Yeq+Gj9iZBUCLZCO+r9BRm6CYozJ3pDGn
	YIKP8p23Mm9q6A4SIxqEh9swOWMSZRg5dd5pWj1eNq6GoPkFkUXn+AdOc91EL5i+OdjwtoAZDbkif
	g+Ldh1ZI/1cwXt7AJxR5OiEKuFVAvVF+358HOu54JNxszURBzddIb5EoAGUq8b/PmaptQaM5aJwxn
	csTf/bcg==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWD-00087h-MV; Mon, 30 Sep 2024 23:01:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [PATCH 7/8] arm64: dts: rockchip: Remove undocumented emmc property from PX30-Ringneck
Date: Mon, 30 Sep 2024 23:01:11 +0200
Message-ID: <20240930210112.1993625-8-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930210112.1993625-1-heiko@sntech.de>
References: <20240930210112.1993625-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

supports-emmc is an undocumented property that slipped into the mainline
kernel devicetree for the board. Drop it.

Fixes: c484cf93f61b ("arm64: dts: rockchip: add PX30-µQ7 (Ringneck) SoM with Haikou baseboard")
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index bb1aea82e666..b7163ed74232 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -66,7 +66,6 @@ &emmc {
 	bus-width = <8>;
 	cap-mmc-highspeed;
 	mmc-hs200-1_8v;
-	supports-emmc;
 	mmc-pwrseq = <&emmc_pwrseq>;
 	non-removable;
 	vmmc-supply = <&vcc_3v3>;
-- 
2.43.0


