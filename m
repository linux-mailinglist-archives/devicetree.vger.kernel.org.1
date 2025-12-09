Return-Path: <devicetree+bounces-245412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D0258CB0968
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 17:35:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9843D300E7B0
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 16:34:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8572232824B;
	Tue,  9 Dec 2025 16:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="RawSdYFu"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63721326D55;
	Tue,  9 Dec 2025 16:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765298089; cv=none; b=EFtAS2EiWW9T/xEGzSL9BeCIP3SRze+4KxRBiuZHjnGGXqIzaY/E95PUBPOI7UljwbXN+xuKMaXkLBM56Oo5dGwTgjMHiaDvyYOGaqa4It6Rgka/Y2j9aPV99KT+UiNuxWN3TQl12A//lajEwecX5goeB9qKu3/SUKIuIGgYCHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765298089; c=relaxed/simple;
	bh=MVyNdWFXaQKj/KOaxhKV47wH1Z8rT4xOoRVTsltB5nM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=RUjb0CNaPE/whwGde+U2hBeQc8G/hxzluwX5ojg8Z6jbTLbaTJuJPQfBXse7jJZ8JJwKxZHUiBVstIgatHAa2gQhKOdb6IIfqaBWDjNpyiaD530e6pEw0g+oW961xDKmQ42hswCPN48Wu9P1PaskJz9jlaMYH+1XKC3jwcVLA8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=RawSdYFu; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765298084;
	bh=MVyNdWFXaQKj/KOaxhKV47wH1Z8rT4xOoRVTsltB5nM=;
	h=From:Subject:Date:To:Cc:From;
	b=RawSdYFuRr9LPcmeHVv0dZ2nMhAV+zfTDR+K5IcjDFQ62CXFH3hfxUGJ6DZiW+vsR
	 jBa2rGFg+fgBPgu+eH3lAkEHWmYRzQtFetgMC7IaIoufGzmhs5UuIyte7xqchgOxNL
	 yTIIg0bubFCL4TnvExB7eVSnI32lp6E6hFv4c7ACNvGk9Qkmw80AS5vKtF2GfPZsrS
	 nek3CTn7YFt4wjpsKTqRyzAGLa+RAsWOlXUnstIfzCA7t+kJzv9+vgY8o4cOrCjb0T
	 SWSdyDjij/yMVxGatles9PY1UMwGhUfwmDhU373LWCfiDF+g3yq+I1ApmcL20hErT3
	 Wkb2NI/QGO0Bw==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EDC3317E1292;
	Tue,  9 Dec 2025 17:34:43 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Subject: [PATCH 00/12] Add HDMI support for Mediatek Genio 510/700/1200-EVK
 and Radxa NIO-12L boards
Date: Tue, 09 Dec 2025 17:34:30 +0100
Message-Id: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/y2NywqDMBAAfyXsuQsmxWr9leIhNasukkeTKIL47
 w21x5nDzAGJIlOCThwQaePE3hWQNwHDrN1EyKYwqErVUlV3tHnBiRx7pG3B2VjGtIbgY0bZGF3
 Lh2xVo6EEQqSR91/81V8c6bOWR74kvHUiHLy1nDvhaM/4/zyhP88vGAvUBZ0AAAA=
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765298083; l=2982;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=MVyNdWFXaQKj/KOaxhKV47wH1Z8rT4xOoRVTsltB5nM=;
 b=4SOG6oNUo8Am1C5FYpNCoOcCXaIXGUa6p1b7RQpYrj8Ibkvvbi1Xys4s0lYw1PKjqUw+zTaRS
 9/WcUpWb6zDC/sfGToCHRPBWibLvI2v9qwEWtPOqV95xzXe/TOsOOLR
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

The series is based on linux-next (tag: next-20251209).

[1] https://lore.kernel.org/linux-mediatek/20250724083914.61351-16-angelogioacchino.delregno@collabora.com/
[2] https://lore.kernel.org/linux-mediatek/ee525312-bde1-4724-b32f-83be32c87696@kernel.org/

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
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

 .../devicetree/bindings/phy/mediatek,hdmi-phy.yaml |  43 +++++-
 arch/arm64/boot/dts/mediatek/mt8188.dtsi           |  82 +++++++++++
 arch/arm64/boot/dts/mediatek/mt8195.dtsi           |  86 ++++++++++++
 .../boot/dts/mediatek/mt8390-genio-common.dtsi     | 150 +++++++++++++++++++++
 .../boot/dts/mediatek/mt8395-genio-common.dtsi     | 150 +++++++++++++++++++++
 .../boot/dts/mediatek/mt8395-radxa-nio-12l.dts     | 150 +++++++++++++++++++++
 arch/arm64/configs/defconfig                       |   1 +
 7 files changed, 656 insertions(+), 6 deletions(-)
---
base-commit: 8ebfd5290c6162d65f83f9a8acdbbf243b49a586
change-id: 20251203-mtk-genio-evk-hdmi-support-17da5161827a

Best regards,
-- 
Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>


