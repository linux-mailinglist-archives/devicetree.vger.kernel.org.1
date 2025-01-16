Return-Path: <devicetree+bounces-139048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E9994A13C35
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:27:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1BC43A688F
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8920A22BABC;
	Thu, 16 Jan 2025 14:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="MhC5YZ5d"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2200F22B8BF;
	Thu, 16 Jan 2025 14:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737037607; cv=none; b=QOjbVvcQyVsi5O6AEtdUYjq7fT6Wt/14NYUQl3qX0yemr99GouiHjVe5aHigPnOSonaY5yuHpy0mYS9hAxyn3LmN2u3kHwQFVkaf/u+OZryBGo+eX7FbJqNw4u35qF9IayODUbor3FPGbP79GutK+euxbvGaN3psPJn6bGTW+LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737037607; c=relaxed/simple;
	bh=X3sj3aKOA5qNefwWrE+H9QZmRpKGaJlOuiDwaS7U9oU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SRywRsb9Dla9IxtKnr0KekpQ5mo/sBvS1TYl5VdPXgomnUJWU+cz+a5MVnMXCsybDofiq0ZYc5XBBiiw0TaLAwylfOdnIGtvIElyv9uSE/G1MMuab5oAThPxopaFrQX8X3memZzJuou80Txi5QdWhNKuqkq/05H6qI7E/H6nr2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=MhC5YZ5d; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1737037603;
	bh=X3sj3aKOA5qNefwWrE+H9QZmRpKGaJlOuiDwaS7U9oU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=MhC5YZ5d0BLMrk8klq6aF9//odEyactzb8dZAFs08rgPJ4VmDnzCJookKsKjVqu+5
	 r4YDZOqC7PS92E+xnyRlQli8qKcNEBom8B9ItEuN+WQzK15ElERI3+lHx6yo1nZ2qf
	 p2pvTJ+0+QEyY7eYZuF+2GWdaS0Q71BZQrdKTo5aMeDUkrfQOBDzBPnZgw0Msyx6jN
	 fmmRojBC8miZygtjX7icudpfIz+WQVOC+8S1xKhIBxyNW+/bIjBAY7NQhzQoq+41mD
	 8NfBgsO8HrLRztW9yPCXz3tfRlzfpJlzwI9k6lm9Q84RYGF+fEtDFBjs/a1tr4G8kr
	 BiHr1QfIbIpCQ==
Received: from fedora.home (lfbn-tou-1-1147-231.w90-76.abo.wanadoo.fr [90.76.208.231])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6E3D817E0FC9;
	Thu, 16 Jan 2025 15:26:42 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Thu, 16 Jan 2025 15:25:59 +0100
Subject: [PATCH 3/3] arm64: dts: mediatek: mt8370: Enable gpu support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250116-mt8370-enable-gpu-v1-3-0a6b78e925c8@collabora.com>
References: <20250116-mt8370-enable-gpu-v1-0-0a6b78e925c8@collabora.com>
In-Reply-To: <20250116-mt8370-enable-gpu-v1-0-0a6b78e925c8@collabora.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Boris Brezillon <boris.brezillon@collabora.com>, 
 Steven Price <steven.price@arm.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737037598; l=1577;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=X3sj3aKOA5qNefwWrE+H9QZmRpKGaJlOuiDwaS7U9oU=;
 b=0lMflNtLBpyIxS3FSzA6Kd84tLhTU6liljcYlRF/m5ZmBjJ6wdhWVfuQp26Xo1w8nfEN8Djst
 cM2pa+rKD6VD2OmSL+6NrFq/qNiVJHvHvkQgTdeLE35ZCgCeJwtXDPP
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

This commits adds a gpu node in mt8370.dtsi to enable support for the
ARM Mali G57 MC2 GPU (Valhall-JM) found on the MT8370 SoC, using the
Panfrost driver.

On a Mediatek Genio 510 EVK board, the panfrost driver probed with the
following message:
```
panfrost 13000000.gpu: clock rate = 390000000
panfrost 13000000.gpu: mali-g57 id 0x9093 major 0x0 minor 0x0 status 0x0
panfrost 13000000.gpu: features: 00000000,000019f7, issues: 00000003,
   80000400
panfrost 13000000.gpu: Features: L2:0x08130206 Shader:0x00000000
   Tiler:0x00000809 Mem:0x1 MMU:0x00002830 AS:0xff JS:0x7
panfrost 13000000.gpu: shader_present=0x5 l2_present=0x1
[drm] Initialized panfrost 1.3.0 for 13000000.gpu on minor 0
```

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8370.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8370.dtsi b/arch/arm64/boot/dts/mediatek/mt8370.dtsi
index cf1a3759451ff899ce9e63e5a00f192fb483f6e5..2f27f7e7ab813b97f869297ae360f69854e966e1 100644
--- a/arch/arm64/boot/dts/mediatek/mt8370.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8370.dtsi
@@ -59,6 +59,15 @@ &cpu_little3_cooling_map0 {
 				<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 };
 
+&gpu {
+	compatible = "mediatek,mt8370-mali", "arm,mali-valhall-jm";
+
+	power-domains = <&spm MT8188_POWER_DOMAIN_MFG2>,
+			<&spm MT8188_POWER_DOMAIN_MFG3>;
+
+	power-domain-names = "core0", "core1";
+};
+
 &ppi_cluster0 {
 	affinity = <&cpu0 &cpu1 &cpu2 &cpu3>;
 };

-- 
2.48.0


