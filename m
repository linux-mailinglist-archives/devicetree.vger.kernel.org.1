Return-Path: <devicetree+bounces-136998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FE9A07376
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:38:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4F39167A31
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:38:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 496E72163BF;
	Thu,  9 Jan 2025 10:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nfKJpeO2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECC0215779
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 10:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736419082; cv=none; b=nB5zlhObs6lBwQQ+3hsvPsndmKlqJ+zveR+vBKG1pMLfu+KLPXRr4OW7+I+1yhdduov/InxTFSsvfWmE9ISB6qtos7bbfB9EKE94nFlh2GL9iOQoDz1TqFEgsTOmHkQUwobGUfcujWRwQZ4lDjJnJ6lDQ+aHd6V9B9CVGTIu62M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736419082; c=relaxed/simple;
	bh=5W20fbwP0yhTIUIzD2O+qubY2IKKztoY6XqDzHTN/WA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=UeMUFtIfSzibcDPuwnWTV6MLZF2o7tqveHztrbUGp9OHPiu0CpKrQxKOHEJTvwtQctRkdMdQzNyyAN6MKpL9cQ2qCHCYCFPmOBC99qholw+OvT1zbyc5I3gFe6vq8xBVRbTnpZcM/TyL0uAiSIjpoi3OcwKt0vapx1/sS+IQqbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=nfKJpeO2; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4361f796586so8027445e9.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 02:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736419077; x=1737023877; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kvP0ocu2x9LxWpCJ0lPf6J7peYpI/SZfaug1iJ+9w/c=;
        b=nfKJpeO2im40J8lXDW1IPUtxkWyU9MczgxD3wFpcfQIeTQp54gjaK43/MywcjtPpN6
         VWacqV4ffdpar1FOIkVGvOOuv51H8NLQV/LK7zm31+I7F1MQO60gvYm8bgDkxjdpEwxS
         3BMTL/HZCwlt6LcovvfhXtWYoBMwJJK1hJ/zxWIjwzm6h0eh0fGJwoK//pi+7LJD7gIn
         ktS5RtzKMMK0ajNRXuWR4NGH+2g7UjgqxEPc3nMgcJ/BUCYaWjtjuMLMCiszWBH9b/5W
         pGvH/ss/8M3K6jr26zevvV6pD/CFa7YZHGiC97EFnYIEjMZywE1eKZdp5yS7tbIa7eq3
         WFHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736419077; x=1737023877;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kvP0ocu2x9LxWpCJ0lPf6J7peYpI/SZfaug1iJ+9w/c=;
        b=rXm9eKRQdKC3rmFosnHOfM9TEe1axfDFQlftsodfjjGX7hck63De5qAnVGIskqm7KQ
         erqLRUABDQEUnYOkopdOzZ2t7OaCaUG/kAQGcVLhZArSVjO7BMOUllnbE9dXjPKbD8cR
         b0nOrbH7OJ2oSkPlGmJGOrFTdAYmydJb7MIrfvT5u3z7iRINR3R8YeRYrrk5Yd8bV8AP
         rw1FEF0QKzPOVWnpFTz+UiMxVNvKRalvT6b/OT6o1h4KT9uqwPSYqHK3TMsMzy3SqlHp
         E8J8MNubNMch1cftlikeg8m/gceObeyn0tb1UscLTWzYKCDmLNbkUzhzIfvgri7Oa7T5
         Nw8w==
X-Forwarded-Encrypted: i=1; AJvYcCXT9ZJpPhRyJPMSM5tcuj+HgLB/Sj1oPNVkvU4vMuE1KgPChAI8RpS+W9rwW9rwptftCtTilri31rEQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxbGeCBiIR8myhxw725x5k6EeY7iVeq3CeQV9NCuiqLhE0pOkIt
	YOvqhEnNkQe7d5kMV5j3MWrTRzpqXvYz1TlJfEv7uTbwwziEkAeMvjF5sbrGDwQVt7MgJ9P/Tv1
	xCGk=
X-Gm-Gg: ASbGncslsL+/8F0qSISr0TeHv1sq+FLBGOkmECtx7CMaQdESWIQ5x1nUazb0u/Xd0E3
	IBKWPIau/1lwh3y0g319doHCB68DUB2dtEUb/AcSEb5yt36nbj56zcFXF0gy3KBtmUdxL6V0LCK
	o564eX5m3FhlCCat8WP591JP6VewHdif60ZgUSek7EwwOCEiXA4/arkyhpAR7xuvxklwgSehqM5
	Hn8gxNEyh9wE7wfxE6GmRnqXxwoE/aLCPBi7dM5cYFyZTuhANaaVckAgoM=
X-Google-Smtp-Source: AGHT+IELISNupppx9cpb1vt/cvn78T4nSBa0V2lcYjTg/yWhc6hsXOTZsMaI7GZhDdttTDbY9woIRQ==
X-Received: by 2002:a05:6000:188e:b0:388:c61d:43e4 with SMTP id ffacd0b85a97d-38a8733e1d1mr6226842f8f.45.1736419077066;
        Thu, 09 Jan 2025 02:37:57 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:125:358f:ea05:210e])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436e9dc8826sm16428195e9.11.2025.01.09.02.37.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 02:37:56 -0800 (PST)
From: amergnat@baylibre.com
Subject: [PATCH v6 0/6] Add display support for the MT8365-EVK board
Date: Thu, 09 Jan 2025 11:37:53 +0100
Message-Id: <20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAGnf2cC/4XPQW7DIBAF0KtErEsEDFDSVe8RdcHAuEZKbQscq
 1bkuxeyrBx5weKPNO8PD1YoJyrs4/RgmZZU0jjUYN9OLPR++CaeYs1MCQWyPh5TmW5+5eU+TWO
 eebBaOgRBWl5Y3UJfiGP2Q+jb3kxllm0+ZerS77Pp+lVzn8o85vVZvMg2fd2xSC64Cc4KiiYA4
 Cf69ZYw0zmMP6xxizogVCUAAjlnNSr1vkPAAQHtCgDnOqAIeu8KfUDoSlB0ilBa16HcIcwBYdp
 HLsJ0kjQ6MP+Ibdv+AHiBVkDVAQAA
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>, 
 Fabien Parent <fparent@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4582; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=5W20fbwP0yhTIUIzD2O+qubY2IKKztoY6XqDzHTN/WA=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBnf6cDRer6L3Rc0vGaMU5uZxT0/ejYevQOTzu/HJeH
 Ks941jSJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ3+nAwAKCRArRkmdfjHURXhQD/
 91oMqYVb9qFaO3a4nvPg4BgsRIOKAlp/k2j/oAog1R82dSHvSmW+nTJP2X7XS/8splBpYt66wntEoF
 io3+5iwRWMcb0LjWABdaGN4jZhG8yObMzEc8Ql5WEJP/2GzyDxG3fovBzHoFrVtbdGJ1OvC9MsZmo+
 srVxSohOI2YjQBH1NPs/l9v2a5WlyX2fQj4v7L8C4d752AMIka+u8ZTCPogXaiqDb3jC+g+K301MAu
 RiB+ICA6byAyedx5yb7oIxzB6in7wrbMr4WB7NqzqjOekB+IJLpgUmxHAVVd28ph64xDQ1vbJdu0wf
 f0GgplTq6gqDJW1RSV2lsPkyj5K0G7D/Uo4LAGpEQPM+R3k6usuUvs5jZXcwMFIIxuqTaTOOreTBOu
 Z2kMh34kfJGNYm+boGkgmAXXAt9WC9kZ6IXyeaVtRnvdEVbKJurLtLyN8HSOuHbN4FoblAl8I2ZXgg
 g7r1ZaTPPh0+CrkMrGpjceStTtXXa1wIU0S8om9hOuBiJusYvzfj9T/9SNH4he4/tZyBp2iF4sjiGT
 bQ0f7kNxxvPNbtApo8ej1OMKP+ON+HU+zLebikjhYP2RmR0f+66GaR362QTkhXgASRhDWjWcO+SJsp
 UkpxYiLxkCGfMySK89LUfFmdKOOUNs18pnDbC1v3ugjsS/YSLX6dJ7iSU4Rw==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

The purpose of this series is to add the display support for the mt8365-evk.

This is the list of HWs / IPs support added:
- Connectors (HW):
  - HDMI
  - MIPI DSI (Mobile Industry Processor Interface Display Serial Interface)
- HDMI bridge (it66121)
- DSI pannel (startek,kd070fhfid015)
- SoC display blocks (IP):
  - OVL0 (Overlay)
  - RDMA0 (Data Path Read DMA)
  - Color0
  - CCorr0 (Color Correction)
  - AAL0 (Adaptive Ambient Light)
  - GAMMA0
  - Dither0
  - DSI0 (Display Serial Interface)
  - RDMA1 (Data Path Read DMA)
  - DPI0 (Display Parallel Interface)

The Mediatek DSI, DPI and DRM drivers are also improved.

The series is rebased on top of Angelo's series [1] to
use the OF graphs support.

Regards,
Alex

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
Changes in v6:
- Fix DPI binding: remove the duplicated property (power-domains).
- Squash defconfig commit.
- Fix the property order in the DTS.
- Link to v5: https://lore.kernel.org/r/20231023-display-support-v5-0-3905f1e4b835@baylibre.com

Changes in v5:
- Patch merged, then removed from the series:
  - dt-bindings: display: mediatek: rdma: add compatible for MT8365 SoC
  - dt-bindings: display: mediatek: ovl: add compatible for MT8365 SoC
  - dt-bindings: display: mediatek: gamma: add compatible for MT8365 SoC
  - dt-bindings: display: mediatek: dpi: add compatible for MT8365
  - dt-bindings: display: mediatek: dsi: add compatible for MT8365 SoC
  - dt-bindings: display: mediatek: dither: add compatible for MT8365 SoC
  - dt-bindings: display: mediatek: color: add compatible for MT8365 SoC
  - dt-bindings: display: mediatek: ccorr: add compatible for MT8365 SoC
  - dt-bindings: display: mediatek: aal: add compatible for MT8365 SoC
- Enable STARTEK KD070FHFID015 panel in the defconfig.
- Rebase on top of 6.13-rc6.
- Link to v4: https://lore.kernel.org/all/20231023-display-support-v4-0-ed82eb168fb1@baylibre.com

Changes in v4:
- Patch merged, then removed from the series:
  - dt-bindings: display: mediatek: dpi: add power-domains property
  - dt-bindings: pwm: mediatek,pwm-disp: add compatible for mt8365 SoC
  - clk: mediatek: mt8365-mm: fix DPI0 parent
- Remove mediatek,mt8365-dpi compatible from mtk_drm_drv.c because it
  use the mt8192's data. It's a miss.
- Add MT8365 OF graphs support, remove the hardcoded display path and
  rebase on top of Angelo's series [1].
- Link to v3: https://lore.kernel.org/r/20231023-display-support-v3-0-53388f3ed34b@baylibre.com

Changes in v3:
- Drop "drm/mediatek: add mt8365 dpi support" because it's the same
  config as mt8192 SoC
- Drop "dt-bindings: pwm: mediatek,pwm-disp: add power-domains property"
  because an equivalent patch has been merge already.
- Add DPI clock fix in a separate commit.
- Improve DTS(I) readability.
- Link to v2: https://lore.kernel.org/r/20231023-display-support-v2-0-33ce8864b227@baylibre.com

Changes in v2:
- s/binding/compatible/ in commit messages/titles.
- Improve commit messages as Conor suggest.
- pwm-disp: Set power domain property for MT8365. This one is optionnal
  and can be used for other SoC.
- Fix mediatek,dsi.yaml issue.
- Remove the extra clock in the DPI node/driver and fix the dpi clock
  parenting to be consistent with the DPI clock assignement.
- Link to v1: https://lore.kernel.org/r/20231023-display-support-v1-0-5c860ed5c33b@baylibre.com

[1] https://lore.kernel.org/lkml/20240516081104.83458-1-angelogioacchino.delregno@collabora.com/

---
Alexandre Mergnat (4):
      drm/mediatek: dsi: Improves the DSI lane setup robustness
      arm64: defconfig: enable display support for mt8365-evk
      arm64: dts: mediatek: add display blocks support for the MT8365 SoC
      arm64: dts: mediatek: add display support for mt8365-evk

Fabien Parent (2):
      dt-bindings: display: mediatek: dpi: add power-domains example
      drm/mediatek: add MT8365 SoC support

 .../bindings/display/mediatek/mediatek,dpi.yaml    |   2 +
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts        | 236 +++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8365.dtsi           | 336 +++++++++++++++++++++
 arch/arm64/configs/defconfig                       |   2 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c             |   8 +
 drivers/gpu/drm/mediatek/mtk_dsi.c                 |   2 +
 6 files changed, 586 insertions(+)
---
base-commit: 9d89551994a430b50c4fffcb1e617a057fa76e20
change-id: 20231023-display-support-c6418b30e419

Best regards,
-- 
Alexandre Mergnat <amergnat@baylibre.com>


