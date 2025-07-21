Return-Path: <devicetree+bounces-198193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD75EB0C0D0
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 12:00:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E4914E0BF4
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 09:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47ABF28D840;
	Mon, 21 Jul 2025 10:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="leLCp1BB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-canonical-0.canonical.com (smtp-relay-canonical-0.canonical.com [185.125.188.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D39927F747
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 10:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.120
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753092019; cv=none; b=lOmc+zjVm6dNmJPla8DolEWmxJZ5ysrFY19FzBMYdpYxIYXdV2LctU6I29X67wneZDNouT2BhfR/07tn2Py/yJwjsk3IIbauaGWdhXaWVMQRoBkQkW/CGx38OusbSyLLvi+aBy5U2tWuBieSveA2raiobJ+/hJPz8ilqjdYgpGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753092019; c=relaxed/simple;
	bh=2cRz7HelgJ1jrAHepWSwD5ewrEsMm2lAs2HszcStZmY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=oi2sK+Inu9QwDO/ymph11JPSfmZrd5W11KIdTsrBe+GSKwSYrzrGIYt/QyoODx+ItXqvSjr99gNopxqdp23dhkRaS6T8GBjEqFAT1FxBN/OstutT9k1l5V5TDrtiDOa8mBnMB3qxpXhrnIkp11dbxfCCO2fjOONROk94XQPIrPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=leLCp1BB; arc=none smtp.client-ip=185.125.188.120
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from laptop.tail0c4ee0.ts.net (unknown [125.33.218.231])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id DDDF23FABE;
	Mon, 21 Jul 2025 10:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1753092009;
	bh=z0gKiB5QfkcIAH9TYUc4eTVrsgmC0ACXqwOh1MHM+Hc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
	b=leLCp1BBH1QQXDygsFCkQca/P9qhHXHU+oSiTCTHd2vAOzcNnpcEdm5V58GRV2KEZ
	 26ReFlqGFnpIoF11BaBBBdaGlpJJcr4bAKGuMkrdM5icSYZ7bG8rxj255PGl8cUtLl
	 y6s+FZuvEE1VgcK+Dh9ZK+61JJ+fi/ydnzSj0GDjmCQAngCQDUHmFlj1WPFiXAzjnl
	 HJsbHaYfc7/58mwhxfOziYPhD1hYuQDNhrwEAm7uUXY/tLRB2hbqjLF4n9Zt9bpBTP
	 aKTz7CXNuTMy5T80NLXQxfTW1GCiWkDfj6t7ZhYAXfJHuhpodOpDt2x/PPj5F0cZ99
	 yIAkNhz5t1/4A==
From: Guoqing Jiang <guoqing.jiang@canonical.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	jianjun.wang@mediatek.com,
	tinghan.shen@mediatek.com
Cc: macpaul.lin@mediatek.com,
	guoqing.jiang@canonical.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH] arm64: dts: mediatek: mt8195: Remove suspend-breaking reset from pcie0
Date: Mon, 21 Jul 2025 17:59:59 +0800
Message-Id: <20250721095959.57703-1-guoqing.jiang@canonical.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When test suspend resume with 6.8 based kernel, system can't resume
and I got below error which can be also reproduced with 6.16 rc6+
kernel.

mtk-pcie-gen3 112f0000.pcie: PCIe link down, current LTSSM state: detect.quiet (0x0)
mtk-pcie-gen3 112f0000.pcie: PM: dpm_run_callback(): genpd_resume_noirq returns -110
mtk-pcie-gen3 112f0000.pcie: PM: failed to resume noirq: error -110

After investigation, looks pcie0 has the same problem as pcie1 as
decribed in commit 3d7fdd8e38aa ("arm64: dts: mediatek: mt8195:
Remove suspend-breaking reset from pcie1").

Fixes: ecc0af6a3fe6 ("arm64: dts: mt8195: Add pcie and pcie phy nodes")
Signed-off-by: Guoqing Jiang <guoqing.jiang@canonical.com>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index dd065b1bf94a..50cf01452208 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -1563,9 +1563,6 @@ pcie0: pcie@112f0000 {
 
 			power-domains = <&spm MT8195_POWER_DOMAIN_PCIE_MAC_P0>;
 
-			resets = <&infracfg_ao MT8195_INFRA_RST2_PCIE_P0_SWRST>;
-			reset-names = "mac";
-
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 7>;
 			interrupt-map = <0 0 0 1 &pcie_intc0 0>,
-- 
2.34.1


