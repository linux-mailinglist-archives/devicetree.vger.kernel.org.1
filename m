Return-Path: <devicetree+bounces-120001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B8E9C111C
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 22:39:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 371B028592E
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 21:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95BD7217F3C;
	Thu,  7 Nov 2024 21:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="aS1qHa5P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [207.246.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E28215F58
	for <devicetree@vger.kernel.org>; Thu,  7 Nov 2024 21:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=207.246.76.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731015592; cv=none; b=lNQx364RHohvcrCzqmu44vHCis81UsTszJ2dOYJYGzjgMgO6+Y5TdZDMy+AwWjCet3wEpM9VQMmO5wbS9aGzsrErv2ePlVm3eBeuAcy4KtXJaG+bPc7VydOlvb0vuJGXjZF5RKGjZozwOcKYwXpdxmhssYLwuzTLWXiuI7Icdyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731015592; c=relaxed/simple;
	bh=GHOwqeY6zPzwXQ3BxbjDoZT6EbpMFI1MgWjR1O4jFG0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Y3lTRpvSfUfDn3xAqxqfdv56zTf0mW2KBLYfbl/W1/czH7ABYXJ/v29ssCBPwc2O0wI5Mw0gGp12VFzq++1kgvjCktvcDTKMnbFpOHHedJJFWQ2h76eUIe6CJegP8He1Mb4leaYhRVbn8QkLA7/2SMU2b5t5JGE03+V9NIfjqpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=aS1qHa5P; arc=none smtp.client-ip=207.246.76.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1731015583; bh=ZnS7uhasltQq8a70D1WpVyW+EFmsRaHottC0hi42MhI=;
 b=aS1qHa5PYSvVgwIjmD4/+2QL2+ftqhRPnawK3qb3/luXYOl/zHUJfIC0GxkrgdIdqopB34TjG
 8DptpHXQ3EKSrT7upB1rFVHNxtDC5DCp8Ws0w/r/oLUTpHaItSaVIzCVY1NWL+2ddGDpkdq25r/
 XnzlfcXKZqthOT+uAPZgRLYXgZEVckxDi2tS9tXIi+urisMizUnmYJhKVRV+ifF+oSJ++y7BKuU
 heT1xJfMcFj0vLFrcyjV6Ld47s8p3dPFRR8EWSsDoMGu8oygityUhCIn6BzKVk5gQEogOtgG2Zg
 KG1fG+1dFFtmpQMVAoXu7nYJR4hfbVjBWUezlHGwONRw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/2] arm64: dts: rockchip: Enable GPU on NanoPi R6C/R6S
Date: Thu,  7 Nov 2024 21:29:09 +0000
Message-ID: <20241107212913.1322666-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241107212913.1322666-1-jonas@kwiboo.se>
References: <20241107212913.1322666-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 672d313b6ff4b179fef288a8

Add the necessary DT changes to enable GPU on NanoPi R6C/R6S.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
index eef4851844bc..dc16d60b8228 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
@@ -218,6 +218,11 @@ &gmac1_rgmii_clk
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
-- 
2.46.2


