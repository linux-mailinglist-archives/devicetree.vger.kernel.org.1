Return-Path: <devicetree+bounces-10948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 536C97D3991
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:40:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A482AB20C12
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F329010A22;
	Mon, 23 Oct 2023 14:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZW0rhwYV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1322E79F9
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:40:21 +0000 (UTC)
Received: from mail-vk1-xa2d.google.com (mail-vk1-xa2d.google.com [IPv6:2607:f8b0:4864:20::a2d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBECE10C
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:19 -0700 (PDT)
Received: by mail-vk1-xa2d.google.com with SMTP id 71dfb90a1353d-49d6bd3610cso1487651e0c.1
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698072019; x=1698676819; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s9ub93Cdf9wtgxlTJaFYfR1eZIPMZ0+ANxwjapwdSNg=;
        b=ZW0rhwYVaclP9otKrzZ/X/GOkeGCb95AmtlYpt/H+rFrLqjpeP0x52jjuVzWX5sZOH
         PMgLfTndbdC1Fo1i2LFF94glXyDoLufslPNWPXD1ApnTHOvYmHlMvCTA8YBRLQJfDfWw
         njIHzzLv50xgilX0E0XMF8ADZ3sDEXyKDT65sycopEtNa6gAgDxi1YzBx+Cyz8c+mj5m
         9csrdRxvVFYe7gOf1zUKzVBLET50aujx/JiSppTwtCviwhHiwTXJqSX2L379d2R9g7i3
         Ip7mQFGBP9k7Qp7DHAqrZUTGaLj49OK/mcgOprJCWj+dSefDwNTYqucdYRQZZjRNm8YK
         b3iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698072019; x=1698676819;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s9ub93Cdf9wtgxlTJaFYfR1eZIPMZ0+ANxwjapwdSNg=;
        b=Zwt5Acj0MBWSOZni1j803hNF/+pPVXEdoVs+MDwD/k976xv7LsQPiZMSHJjAwl0tWL
         rwf+sQvzW4Hjxe0gQ1821E5JrxKI8UgIFdYVBhR7x/XpOZMmQaU5hNRo0oOwt5zv5Fi2
         9F4j/5Ww+99YDEVrKTOXcpQFdywR1hZTjjdlOa9SKfETlzfBfT8vwpE3sw4b9DCFAiSS
         QiKWpIlQtbIYDAvD7M+8tAh2QEth6wQ7fFfmIm7d7Psr7jNXXTkaUcpRWkVjTCsIb1La
         6JzqQws38w2Y8tLW+ZnswdOw/xborWOzW6VyaaOYCEBdXQQsP4yhaXzbjf4JDRjGo7XS
         Yv1A==
X-Gm-Message-State: AOJu0Yz2QbOZcYPZ9f8tHOX+e8pm9uR7f6dpcReVnqvpQq7pwuWF953r
	SyhKheDzh1M7jLCWXj0btQ7a3Q==
X-Google-Smtp-Source: AGHT+IHJKtPN+s3qbQB04ksDdQlqDmncwY1jaiRVU91xSoTR4TpQokxGMohekSd71DOrL0y+Cj2D8Q==
X-Received: by 2002:a67:b742:0:b0:452:72ed:7020 with SMTP id l2-20020a67b742000000b0045272ed7020mr9517700vsh.32.1698072018696;
        Mon, 23 Oct 2023 07:40:18 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id f1-20020a05620a408100b007789a3499casm2725020qko.115.2023.10.23.07.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 07:40:18 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Subject: [PATCH 00/18] Add display support for the MT8365-EVK board
Date: Mon, 23 Oct 2023 16:40:00 +0200
Message-Id: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMCFNmUC/x2NQQqDQAxFryJZGzAqYnuV4mJmjBoo45BMS4t49
 45d/MX78HgHGKuwwb06QPktJnssQHUFYXNxZZS5MLRN21EZzmLp6b5or5R2zRiGnkbfNdzTDYr
 lnTF6dTFsl5fZMl1/Ul7k8y89pvP8ATvkV+V5AAAA
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>, 
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org, 
 Alexandre Mergnat <amergnat@baylibre.com>, 
 Fabien Parent <fparent@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3206; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=DdZ6/V836kfp880KhEXam0/pg2tqhWjEoh+kbca/7ro=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlNoXOTmxXiiwg+V6sYJXd2VtFuu8rpxi/5OZ3Bsqm
 CqwoEM+JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZTaFzgAKCRArRkmdfjHURakDD/
 0Y/V7nSPbcGNYbM6NM+UqrWkjU+MFWZUZLEATcbdpLuCUIcgdBNyWF4+ocFPmgoy79rcrLY4jR4w+2
 tRDQaQR5qvgcN608HPRe16pHW9WavVDQUggWNMuGm4ePifBnu9bImn5/FIm89fp+CF8fhkh0QEVY9S
 T6sSplH35tU250AEM4lXGhIwJNhegUQbWfBeixu01aOlVxzOCXOLfLr2aMBkZktYy93zp5B6o4FiEH
 oHexmjDRB2kNmAS08GEQI4mMXQX98ZBb7sgjdh3IbXsHYKTinFUFH5sbr/qDoBrb7FgbPd/nsxQvEo
 1GfhIRNRPvhPsns+1Vf3IbW5bXMrUVDV/2vYTHL6B75ZTKhCDh86E0ykHoqHope+9AajwNwXZnJs7C
 v2ibGrOHI+6896fihV9LKC5YGrooRFqHLNChFrrOEGikLsYYZOc92gZZfNnI6fSCmTTBnQV7pQNGVM
 rcQd5AO0BuXPBAad+mSgYXGa5uZTbKynnMzV8zQXsgGmurakj9aqYDcakn1lyxre0w7+bwIPau4vj5
 z7FerJFtDahPtdvRDp1+D0G2AdgAzfvP/WyG0DMUDQbNaaN9xk+mPtuJkoSeJNz6YCzbhAWHSqeNAa
 h8YHMoFUk/M/2q2U1lJZaCuHBh7UT53hhnVr/H/suz0GKZrdMSGRNieqzBWg==
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

Regards,
Alex

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
Alexandre Mergnat (14):
      dt-bindings: display: mediatek: aal: add binding for MT8365 SoC
      dt-bindings: display: mediatek: ccorr: add binding for MT8365 SoC
      dt-bindings: display: mediatek: color: add binding for MT8365 SoC
      dt-bindings: display: mediatek: dither: add binding for MT8365 SoC
      dt-bindings: display: mediatek: dsi: add binding for MT8365 SoC
      dt-bindings: display: mediatek: gamma: add binding for MT8365 SoC
      dt-bindings: display: mediatek: ovl: add binding for MT8365 SoC
      dt-bindings: display: mediatek: rdma: add binding for MT8365 SoC
      dt-bindings: pwm: add power-domains property
      dt-bindings: pwm: add binding for mt8365 SoC
      drm/mediatek: dsi: Improves the DSI lane setup robustness
      arm64: defconfig: enable display connector support
      arm64: dts: mediatek: add display blocks support for the MT8365 SoC
      arm64: dts: mediatek: add display support for mt8365-evk

Fabien Parent (4):
      dt-bindings: display: mediatek: dpi: add power-domains property
      dt-bindings: display: mediatek: dpi: add binding for MT8365
      drm/mediatek: dpi: add support for dpi clock
      drm/mediatek: add MT8365 SoC support

 .../bindings/display/mediatek/mediatek,aal.yaml    |   1 +
 .../bindings/display/mediatek/mediatek,ccorr.yaml  |   3 +
 .../bindings/display/mediatek/mediatek,color.yaml  |   1 +
 .../bindings/display/mediatek/mediatek,dither.yaml |   1 +
 .../bindings/display/mediatek/mediatek,dpi.yaml    |  24 +++
 .../bindings/display/mediatek/mediatek,dsi.yaml    |   2 +
 .../bindings/display/mediatek/mediatek,gamma.yaml  |   1 +
 .../bindings/display/mediatek/mediatek,ovl.yaml    |   1 +
 .../bindings/display/mediatek/mediatek,rdma.yaml   |   1 +
 .../devicetree/bindings/pwm/mediatek,pwm-disp.yaml |   9 +
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts        | 183 +++++++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8365.dtsi           | 146 ++++++++++++++++
 arch/arm64/configs/defconfig                       |   1 +
 drivers/gpu/drm/mediatek/mtk_dpi.c                 |  50 +++++-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c             |  30 ++++
 drivers/gpu/drm/mediatek/mtk_dsi.c                 |   2 +
 16 files changed, 455 insertions(+), 1 deletion(-)
---
base-commit: d27bed55ce32b0732ef65561851fec3dc8d01852
change-id: 20231023-display-support-c6418b30e419

Best regards,
-- 
Alexandre Mergnat <amergnat@baylibre.com>


