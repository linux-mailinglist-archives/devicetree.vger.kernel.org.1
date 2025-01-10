Return-Path: <devicetree+bounces-137464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 349FBA09205
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:31:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 891583A1F48
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C087520E6EA;
	Fri, 10 Jan 2025 13:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PBJzEKuG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD6E620E022
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 13:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736515885; cv=none; b=j+yCufcobAv5UpGHNYgw9fPNIkQmMhOACH/SDU0OE7rHMIYR+JK3MQKnL15QR0eohcX2vbEdrcefMsd8OHlviTU5uZMNPsiK9u3yC1jltt5BUB0ckzsJHyI1++jAnOZiXJ2ShDOPLxf4VUea7GKw67wggG44Ht4r/0GKlHc4MPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736515885; c=relaxed/simple;
	bh=/0JXe0fwWtlGrtBrYJBc+5+8TOE60mCncIXc9dv8OUc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BgnB9dxxN4GRl5boTVmokXFBN2C4wbvOWEEtAlMPnUdmndPKQ4wR4k/wG54+ZyEGtmXGTed/AhMPFzkZaqMNq+Ht/yp4g2FNKOOpzLe56FIzYBARX3vv+WNdsniFT6sxPoH9DTPCAu/pX4AFfOcHTxn8D88W8WkSMQDTJNrkk00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PBJzEKuG; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-385d7f19f20so1098019f8f.1
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 05:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736515881; x=1737120681; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gOb4dYM1XeOQNmpz4gbuJFETpHF0usdU2GeAkqe7Bjs=;
        b=PBJzEKuGCDhUKyNM+W0aX/5PlM1h75OficKaqyCnA6B7P0Y9LKVufTEgfM8J7sYedd
         n9E9piXVE9O+z1FEIanQ3LPpKkGwma8G/yth+27F+KZHoKqfKUW819TVfl2BCW9GxS9I
         Rq8NuT3wbhwfa835UIRbOGOt3WOkiLx3exwTX3LRdGUojm4y/IXUcxb+RSY26YxhA94q
         OBbEIbC+5VzwSoS/rHAIHa70w53CCu0f5tsqRs4/7irHL1zpscwlLP51nd+ykSvXtlQ5
         J8tReTZu7FICPpbL1RkayXD3dwq3Vw8fmhOtaPoRSTBqRTqUJ3Q68QdtH5AaFwC+lWGa
         4TKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736515881; x=1737120681;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gOb4dYM1XeOQNmpz4gbuJFETpHF0usdU2GeAkqe7Bjs=;
        b=oKBJmKfNVyK8KcUY3g2AGpgY8Fjn5ejaaUGAn8bzQ+9xhqg7uk4z2fT6IE7MQ2bwEy
         31KTNWaT84/y+LMZYtD32y0kRrY85YUpPWd186mm7KdZUZGdLo0DfQJgALfyZDKxqihb
         Mu/dCZXxPBkqfD9Qo2Q0iTRoxO4+ITiLw9a6j6YKKMKI6S1boogdlvAVC9Mf+aI4DJLS
         o5d5h7F8D6hv4GSYvxlhy3g0ZIiLBVRyEPLHcqU5GNZWDXlgYU7khUpxFASB/gDOK3G2
         U7lJwIC4wfRH5GMUkP5fkBvfFA9Mv1ZikRxxzpYU2j/Jzugh1kS/otJFd8oNm0dMhLex
         kwTQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/EBbWQ5QHHcGoFkBkx4qytkfyj2WT/VJdNGrioRy/jZgRCDLBZYkHT+l6/s+pVItKCq4sKFF7J9nz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3DpIQE4fH7eoaqzaj4IW+vGhj8a9em7I2GbGysQYnUDC+TXSK
	m1d8Byc4oOEvn8ZdwrDkdAIS9aNpnXqIV+qzcp2L1cAXOxHJPNSd2xai6ClxXI8=
X-Gm-Gg: ASbGnctCDcdsiKxiJkPkAvSmZ4Ufq3lnpWFTfa6g8DMqGLvWwdnh8k25+H46cjdPWH0
	VKbKwKtAp07E2Qe5O9RAL6cZDDmH0zGmrtE8waPwNn2O/WqCM798LwHfCrLIKQgU/3fHry98QTR
	dOSHPrWFgYyuFsrb85Qup1XI1Pr9L73ryEWpmpWRfjioTLAlU0ZOxCkgA6k6CBh7OgIymTiXJYr
	MKvZFFtwVHQ/WiZqa9Fmj6moEH6el6xAWOKZ+0vbDXrnGqdAAeR76IrhixO
X-Google-Smtp-Source: AGHT+IHgSDYD+oLBXez7p6Gm0Z9SWiWVmD2PPaCg5Lo8JetzTzttPSXxYsdjGCYoiYqxFKM0JSsVsQ==
X-Received: by 2002:a5d:47c4:0:b0:385:ed16:c8b with SMTP id ffacd0b85a97d-38a87309d20mr11317257f8f.23.1736515881130;
        Fri, 10 Jan 2025 05:31:21 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:2555:edac:4d05:947d])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38a8e38c990sm4598193f8f.56.2025.01.10.05.31.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 05:31:20 -0800 (PST)
From: amergnat@baylibre.com
Subject: [PATCH v7 0/6] Add display support for the MT8365-EVK board
Date: Fri, 10 Jan 2025 14:31:10 +0100
Message-Id: <20231023-display-support-v7-0-6703f3e26831@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAB4hgWcC/4XPTW7DIBAF4KtErEsFDBCSVe8RdcHPUCOltgWuF
 Svy3QtZVq5YsHgjzfeGJymYExZyPT1JxjWVNI01nN9OxA92/EKaQs1EMAG8PhpSme92o+Vnnqe
 8UK8lNw4YSn4hdcvZgtRlO/qh7S1YFt7mc8aYHq+m22fNQyrLlLdX8crb9P+OlVNGlTeaYVAew
 H04u92Ty/jup2/SuFV0CFEJAI/GaOmEOB8Q0CGgXQFgTAQMII+ukB1CVgKDEei4NtHxA0J1CNU
 +cmEqcpTOgDogdIfQlfDaRhlBRhnMH2Lf91+2AikpGAIAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4825; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=/0JXe0fwWtlGrtBrYJBc+5+8TOE60mCncIXc9dv8OUc=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBngSEnsrSlHb849yrVjHRbuAtAZoecmTQBJGX5G7lh
 KH2cSzyJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ4EhJwAKCRArRkmdfjHURUfzEA
 CYv/Zza/8usW8Ij+qBfzlFEhg6kMzJ65XY/77heiRT4LAzc6eqMzNpN1g7ZEkpjGaql0584Po1m8oT
 anLSFwqw0IFJsrunAyXirWg/RKY7Ytdi9aheiAysFdD8u6QpzTkDpMp77K6OoD6/MhGSdDJa+v4ZAG
 zFYCmZqyWIV8dALLIdC7HSC8O06RjoJuxJ07G7nFeQ9JfsZ7AfXtFnj6mp0BnHpX5uSKKgbR+U0nxN
 7KFMRXrqcx+rKW5tJIrp2JQrx3SV8Jxqbt+XMzXuCR8RS+ElXyzqcemGMNpSkDVpOAHGnJd+kaFbFC
 v5BEetLS9PTdj7dlPBrBhJxZdmLGa/ysWLKB8HmQkjpfXTz425crctcXVFCvyaZhS7W5SMHpPPBH02
 jXRYoTbbkSKCMk2jzipwHLPbKvQcLtJZJtsRRdppXSk0TS5XFaLyYroAd9wzL30QNTD8Z8+KRMmRZG
 2Zpej/jcyGbPYscyv9PpsIHbzrDthvJJIV+zPxxhJ9z5HcukLyFBAxYTewBbTyrW5o9t+AAjGFih1b
 uTSFaxtDb3hm0Uv/UmxYftDo47pY7POhbTjcvIMMcFFEi48qp4WFcUzvisI+zTwG8SorDTC9XY6Hvi
 vCvsmYlfUmf3fEKzfxouAz0PwuuxSw5gu0d14weZfqf4s9OiMIt/2kRI9fQw==
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
Changes in v7:
- Improve defconfig commit description
- Add comment in the DTS about pins clash with ethernet and HDMI (DPI0)
- Link to v6: https://lore.kernel.org/r/20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com

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
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts        | 245 ++++++++++++++-
 arch/arm64/boot/dts/mediatek/mt8365.dtsi           | 336 +++++++++++++++++++++
 arch/arm64/configs/defconfig                       |   2 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c             |   8 +
 drivers/gpu/drm/mediatek/mtk_dsi.c                 |   2 +
 6 files changed, 594 insertions(+), 1 deletion(-)
---
base-commit: 9d89551994a430b50c4fffcb1e617a057fa76e20
change-id: 20231023-display-support-c6418b30e419

Best regards,
-- 
Alexandre Mergnat <amergnat@baylibre.com>


