Return-Path: <devicetree+bounces-132412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B40D9F6FD6
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 23:02:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED15616D4AB
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 22:01:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6D661A2872;
	Wed, 18 Dec 2024 22:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Yinv4hCa"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47A61A9B4A;
	Wed, 18 Dec 2024 22:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734559306; cv=none; b=hK5j1mA8eyk99EW1tRfEf2mP7aWeRcjgXm+yGQGxHFUwKhmIAhrGrrO/aiVLgWn+NU9zTBlqVtpEYSaunvDSXM4I3F9IW/ZATvvJCHh0sMJQw8xDhMHwD92QsmBWFsZ0QOdU2rhGulHyDI14wSvls4GS6nUoreTA3nunoNAWt3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734559306; c=relaxed/simple;
	bh=b8/+EC1VflEBJwonWHv7sJ5l8U3pVLGQLl8mOMAAZtw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=jU74Xn77M95NCAYfxjgTgaXR2RvBH/+hW4zV7QBv0f0g5RqPMF5X2goIgM53vPszk198b6eoqCILTi0jcAyYS/FWh8ho9qhMb+8XQMiFoRhRi+ZTnoz2Jh9zwrqpO5E7+PxDNL3bUUtG3bmoASoUFK/KkrBrCQhdPc5ekFXdndA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Yinv4hCa; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734559302;
	bh=b8/+EC1VflEBJwonWHv7sJ5l8U3pVLGQLl8mOMAAZtw=;
	h=From:Date:Subject:To:Cc:From;
	b=Yinv4hCaS3DFAGjV3qEGKTaCWZyA40M8pTkq1kVoZnPlKkF4UZc+ublCLcfz9uk+g
	 mLHMlYvznSfiJhCYRk18GwF1VwcM7jCwqPBgwux0TZrF6H1A+Tgkw4Go/GKkYb8tmn
	 1QHpGQ7C6zT6xQK9i0ciDNWK+5+flxsJ5vaGJIZJGWYU0V+xYL0DAmjZbw7g82Oopj
	 hHauSBVsxFyYNBJkRHWNfyZK+7ZSvpPb5DeJBhIc3f+0/s7EEStKHg6z4b+GbJdtKR
	 yCzOE07aq57/5TyOUKUIaw0zmnXtm0NromkDbS0l+bPzEA/YWFFZgy9uNZYYTBvOKx
	 p/3yNxe3zAEUw==
Received: from [192.168.0.47] (unknown [IPv6:2804:14c:1a9:53ee::1000])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nfraprado)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E3F7A17E3822;
	Wed, 18 Dec 2024 23:01:39 +0100 (CET)
From: =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
Date: Wed, 18 Dec 2024 19:01:08 -0300
Subject: [PATCH] arm64: dts: mediatek: mt8195: Remove suspend-breaking
 reset from pcie1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241218-mt8195-pcie1-reset-suspend-fix-v1-1-1c021dda42a6@collabora.com>
X-B4-Tracking: v=1; b=H4sIACNGY2cC/x2NQQqDQAxFryJZN9BEC+pVpAsZf9ssOg4TLQXx7
 g1dvs/jv4Mc1eA0NgdVfMxtzQFyaSi95vwE2xJMetVOVHp+b70MNy7JIFzh2Nh3L8gLP+zLLSQ
 8lW6AUpyUipj/gel+nj+UccN1cAAAAA==
X-Change-ID: 20241218-mt8195-pcie1-reset-suspend-fix-3e14122149e2
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jianjun Wang <jianjun.wang@mediatek.com>, 
 Tinghan Shen <tinghan.shen@mediatek.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
X-Mailer: b4 0.14.2

The MAC reset for PCIe port 1 on MT8195 when asserted during suspend
causes the system to hang during resume with the following error (with
no_console_suspend enabled):

  mtk-pcie-gen3 112f8000.pcie: PCIe link down, current LTSSM state: detect.quiet (0x0)
  mtk-pcie-gen3 112f8000.pcie: PM: dpm_run_callback(): genpd_resume_noirq+0x0/0x24 returns -110
  mtk-pcie-gen3 112f8000.pcie: PM: failed to resume noirq: error -110

This issue is specific to MT8195. On MT8192 with the PCIe reset,
MT8192_INFRA_RST4_PCIE_TOP_SWRST, added to the DT node, the issue is not
observed.

Since without the reset, the PCIe controller and WiFi card connected to
it, work just as well, remove the reset to allow the system to suspend
and resume properly.

Fixes: ecc0af6a3fe6 ("arm64: dts: mt8195: Add pcie and pcie phy nodes")
Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index ade685ed2190b7339d5daad55ce81c092bd7b39e..04e41b557d44810c5be097dab40b5b94f63b1843 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -1611,9 +1611,6 @@ pcie1: pcie@112f8000 {
 			phy-names = "pcie-phy";
 			power-domains = <&spm MT8195_POWER_DOMAIN_PCIE_MAC_P1>;
 
-			resets = <&infracfg_ao MT8195_INFRA_RST2_PCIE_P1_SWRST>;
-			reset-names = "mac";
-
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 7>;
 			interrupt-map = <0 0 0 1 &pcie_intc1 0>,

---
base-commit: e25c8d66f6786300b680866c0e0139981273feba
change-id: 20241218-mt8195-pcie1-reset-suspend-fix-3e14122149e2

Best regards,
-- 
Nícolas F. R. A. Prado <nfraprado@collabora.com>


