Return-Path: <devicetree+bounces-247337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 51ABDCC7A91
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:40:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 617E830CBE85
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2B6636BCC5;
	Wed, 17 Dec 2025 10:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="THOEb6ES"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F8D36B07F;
	Wed, 17 Dec 2025 10:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765966781; cv=none; b=HX2fgEfRZYb4MO0X8klkm+WTCZ83Nsnbx1i0uC9UxilD9wFnIe11QyvzBHgLDCaPWPmWs8xJPffC0Ggm8JWJZXZUmfItCaZGXB38S1XzPFKZbx7PwHkiZXQNCOH3DFlXGwcClrgolniIAV/7EzhFoKdLVsRLJOOYzBkOqb+GG64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765966781; c=relaxed/simple;
	bh=2uCsiJL3FhY3PhVtUNXzBlzS29fMOK47hX+kAU0prvM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QuzSbLSc93Qzg1S6EWQiRWJsFbMgpaCGyD0o90saknhyZwdXuLA4fwvbgJInQ04cucdkRvSG87FXOmuirz6yeAcq3Y+EPw5m52X+sIUzWLK90JCY/kYv4heMbxH71Bsm+PSJBdO9bGA7F080S1f2gwe9yJqjdpXp6VVOEY82cg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=THOEb6ES; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765966776;
	bh=2uCsiJL3FhY3PhVtUNXzBlzS29fMOK47hX+kAU0prvM=;
	h=From:Subject:Date:To:Cc:From;
	b=THOEb6ESP5uwi6VGoS1PsKosEkj0i7ulYgOgyc7NgTxwpzFbyJjWiRyVERbgBgDSQ
	 ofpGA/1oeAIwD/Pgz6hp/omZJKieqW1yx8HY0H6fcQx1dv2ufqKUNwRbGOOXOj/RtG
	 5v7dYh2XuLBH+d+3gnkvzqXvNlUwo6zOdmW6TvGuO9tMATnK57FLpWbZiexUWfy/cV
	 6BdUNOn7XamtBqd6E90wbHczSSDl4UvIAkEZHPDuV8vBduCOVUOb6WmIQ83p3HXZzT
	 JSOfnEcf/cT5Ny6XtZMH1iLbC7TBEJFJapXOc41qgtRADjiX3s8m9EGilpaxGDj+rc
	 AL8kOac3LS8Kw==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E38FF17E0506;
	Wed, 17 Dec 2025 11:19:35 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Subject: [PATCH v2 00/12] Add HDMI support for Mediatek Genio
 510/700/1200-EVK and Radxa NIO-12L boards
Date: Wed, 17 Dec 2025 11:18:59 +0100
Message-Id: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/32OzQ6CMBCEX4Xs2TW0BhBOvofhUGCBDT/FthAM4
 d2t4NnjN8nMNxtYMkwWsmADQwtb1qMHeQmgbNXYEHLlGWQoIyHDGw6uw4ZG1khLh201MNp5mrR
 xKJJKRSIWd5ko8AOToZrXY/yZn2zoNXuHO0MolCUs9TCwy4KRVoenRyTwLbRsnTbv49wijsbvR
 /rvxyIwxFTFIoyprgsVP0rd96rQRl29DPJ93z8v28wF+QAAAA==
X-Change-ID: 20251203-mtk-genio-evk-hdmi-support-17da5161827a
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Guillaume Ranquet <granquet@baylibre.com>
Cc: kernel@collabora.com, Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765966775; l=3341;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=2uCsiJL3FhY3PhVtUNXzBlzS29fMOK47hX+kAU0prvM=;
 b=DwHgGu3ADpVy9HJNoeg+SuijtIeOfDFwK7PZZIkmgREDdVTFJjHnuHBSl7+F9kKH/iEvKf+Ah
 oi8yKWg/3y9ApQSePYtEgl9XuwoXwTfSU1xD3VYKXNqcoBbT/xZgRbg
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

This patch series adds and enables the HDMI output support for the
following boards:
- Mediatek Genio 510-EVK (MT8370)
- Mediatek Genio 700-EVK (MT8390)
- Mediatek Genio 1200-EVK (MT8395)
- Radxa NIO-12L (MT8395)

Patch 1 is a 'mediatek,hdmi-phy' dt-binding fix for MT8195 SoC and a
revised version of [1], that addresses previous feedback from mailing
list ([2]).
Patch 2 was split from [1] into a separate patch and adds a MT8188 SoC
compatible in 'mediatek,hdmi-phy' dt-binding.
Patch 3 documents in 'mediatek,hdmi-phy' dt-binding extra clocks for
MT8195 SoC.
Patch 4 adds all of the nodes that are required to enable HDMI output
for MT8195 SoC and its variant (MT8395).
Patch 5 adds the same but for MT8188 SoC and its variants (MT8370,
MT8390).
Patches 6 to 11 enable HDMI output and sound support for each board.
Patch 12 enables the Mediatek HDMIv2 driver as module in defconfig.

The series is based on linux-next (tag: next-20251217).

[1] https://lore.kernel.org/linux-mediatek/20250724083914.61351-16-angelogioacchino.delregno@collabora.com/
[2] https://lore.kernel.org/linux-mediatek/ee525312-bde1-4724-b32f-83be32c87696@kernel.org/

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
Changes in v2: 
- Rebased over next-20151217 tag
- Updated patch 3 to take into account Rob Herring remarks and simplify
  patch
- Updated patch 4 to align HDMI phy clock name changes done in patch 3. 
- Add reviewed-by trailer in patch 1
- Link to v1: https://lore.kernel.org/r/20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com

---
AngeloGioacchino Del Regno (5):
      dt-bindings: phy: mediatek,hdmi-phy: Fix clock output names for MT8195
      arm64: dts: mediatek: mt8195: Add DPI1, HDMI, HDMI PHY/DDC nodes
      arm64: dts: mediatek: mt8188: Add DPI1, HDMI, HDMI PHY/DDC nodes
      arm64: dts: mediatek: mt8390-genio-common: Enable HDMI output
      arm64: dts: mediatek: mt8395-radxa-nio-12l: Enable HDMI output

Louis-Alexis Eyraud (6):
      dt-bindings: phy: mediatek,hdmi-phy: Add support for MT8188 SoC
      arm64: dts: mediatek: mt8390-genio-common: Add HDMI sound output support
      arm64: dts: mediatek: mt8395-radxa-nio-12l: Add HDMI sound output support
      arm64: dts: mediatek: mt8395-genio-common: Enable HDMI output
      arm64: dts: mediatek: mt8395-genio-common: Add HDMI sound output support
      arm64: defconfig: Enable Mediatek HDMIv2 driver

Nícolas F. R. A. Prado (1):
      dt-bindings: phy: mediatek,hdmi-phy: Document extra clocks for MT8195

 .../devicetree/bindings/phy/mediatek,hdmi-phy.yaml |  29 +++-
 arch/arm64/boot/dts/mediatek/mt8188.dtsi           |  82 +++++++++++
 arch/arm64/boot/dts/mediatek/mt8195.dtsi           |  85 ++++++++++++
 .../boot/dts/mediatek/mt8390-genio-common.dtsi     | 150 +++++++++++++++++++++
 .../boot/dts/mediatek/mt8395-genio-common.dtsi     | 150 +++++++++++++++++++++
 .../boot/dts/mediatek/mt8395-radxa-nio-12l.dts     | 150 +++++++++++++++++++++
 arch/arm64/configs/defconfig                       |   1 +
 7 files changed, 645 insertions(+), 2 deletions(-)
---
base-commit: a512be9e8838afec6baa83767e291dfca8657410
change-id: 20251203-mtk-genio-evk-hdmi-support-17da5161827a

Best regards,
-- 
Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>


