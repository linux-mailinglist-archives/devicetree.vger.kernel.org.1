Return-Path: <devicetree+bounces-106592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DBB98AECF
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 23:01:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EF095B21840
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 21:01:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3AA81A2570;
	Mon, 30 Sep 2024 21:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="A7dLgPVr"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4351218FDB1
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 21:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727730085; cv=none; b=jgpL0nCjnu4d8AfgCcRspoyrz3WaO4ZRdxkrm3y2EGjW9SaDCJZR9Zkro+InnF7gISKjbX7a7pTQ2athpOmZCvaNQUoc/hKZ61rdUF0Y0tDUNbJjgWmSSYSCbAkvgBmTgV58zDpwUc8/6l8Eu6DUOG29pnCaqpqnPfRei7S+9Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727730085; c=relaxed/simple;
	bh=ZhmYeMKaxO/LQ+XPnLPYhy7b1g0uuBLCpI5HHfa6uOA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eSgQNmLMRQhgpd95HkVukla9Ia7SoTQTJaru8DTNy2bunGzU6RYBmV5hEE4QjKaMm/3uRItGLqBUoeWqENTsDUTHZJqxIlZC9G3yXRLjPac8NB7IviC5ZzynqepvFGFdt/NMTym2BLfY2n74ZYtgBFRWuVlrvTkICNw7fqrQXMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=A7dLgPVr; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6x1A3cijKY82zaSwQJkTHfXByMjS6Voq88tgi5Toc2k=; b=A7dLgPVr7xh/QmnF71cyOuH6cV
	Ba3mZ0jBUqbfEPkve6F7eApme6MwwnaziUhlCkx1OWUrHyXG4Kc+E9mAX8V1cKSjg93A/A7fv8cXy
	dVOW1cji1cgw+ItvcKBf+siACas5EL5mhcjaa6qai3kShXwClR7TdjxkM8AM4Un7nUWkb6qEmxnc7
	B4yKeeX2UXB+3j5hkDCjlPNkq3btpVuJAi+plJZKLU3eJN2WbbHpdkmaIuWhDaFHOvfpobg1oWPSn
	mhkpDEFy3FFkYBNwRxjbO08P3yvhSqCVeSa5fgT6UsLcQH62Hzblzj62ocz5EbVCLSGA1GQ/33Igf
	/YE+XKCw==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWC-00087h-O8; Mon, 30 Sep 2024 23:01:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Elon Zhang <zhangzj@rock-chips.com>
Subject: [PATCH 4/8] arm64: dts: rockchip: Drop regulator-init-microvolt from rk3588-toybrick-x0
Date: Mon, 30 Sep 2024 23:01:08 +0200
Message-ID: <20240930210112.1993625-5-heiko@sntech.de>
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

regulator-init-microvolt is not part of any regulator binding and is
only used in the Rockchip vendor kernel. So drop it.

Fixes: 8ffe365f8dc7 ("arm64: dts: rockchip: Add devicetree support for TB-RK3588X board")
Cc: Elon Zhang <zhangzj@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
index d0021524e7f9..328dcb894ccb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
@@ -428,7 +428,6 @@ vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
-				regulator-init-microvolt = <750000>;
 				regulator-ramp-delay = <12500>;
 
 				regulator-state-mem {
-- 
2.43.0


