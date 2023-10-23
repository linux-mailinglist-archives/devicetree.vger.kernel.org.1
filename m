Return-Path: <devicetree+bounces-10952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BD67D3998
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:40:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA2AB1C20910
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC4B712B60;
	Mon, 23 Oct 2023 14:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LH/JFoOo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 910B410A3F
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:40:36 +0000 (UTC)
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CAAB10CE
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:33 -0700 (PDT)
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-777719639adso208444985a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698072032; x=1698676832; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SkwhU2F4TXr5U8/eIVmqKK74gpv3rz72+n1Z9i4NLQY=;
        b=LH/JFoOo4DGpmoRUftCSj1A7BILQ3ApnshBGOzaUYaIPR22+Tqu5vJ5rBdw3zVG24H
         QO7OcoSx30Edxhc83pPnMohQAa5JkozaMOkP22+nQjlGI87gFw3jX9tJVLkbxrGpPnM7
         k6ed4v0deH4rzLManRFpjZ1+DEg8/KRQ1bcFqFimM0SWkSgFTsQ3i3Vl8uWvTzwgJDZE
         FI3GJFbWVIRzx0+Eya2b+Tfvgl4xwdlKTrjPUhTO+D9v/JWTtIIjaXb0yv1iCW68EOa6
         wGexdBbmQyR1TpA1JJ1U5Rtn04BhWvEzl6M5c3Ozx8k1QU6PEci39okSLRD/D6U4stJv
         UoAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698072032; x=1698676832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SkwhU2F4TXr5U8/eIVmqKK74gpv3rz72+n1Z9i4NLQY=;
        b=QAFYMicvyNlh3VRTsNXBmvg6y6zdpSkpOswaK3eROEUerRsf/1WKr5dxfaMRZe67ox
         5EP7wc01yMtJFSe+UL75zeyu2SSziEMPVQP2ODtY5Y5P3H+iXVORVkQXipRe8dAYyJLp
         fHpTDNKMMt1x0wugfZyeRxv7gY9cFNGAR2uFB6HDgaVBqvvnl9jMhPccRBCpBAVi/6zm
         ZQksDo51Lz+ep1G3ybBIg7g6oVgWGlHHyXS8YTJdFvtsKP3qGAHbL3j6K1sfY5yVdzHO
         jqA8CVwH6EY71IHpL7L9bnVSMI5u07Ul3sBJQC7HmdtMyoYldoceY0iYr/6MG1670eEV
         JZMA==
X-Gm-Message-State: AOJu0YxnkskRNCwBAX0jT7D/PSkaMxP0m+nSnVdVMB+AT/kyeQynM3eg
	gN7uvGZiLsg7LCR/lAzXLYhZIw==
X-Google-Smtp-Source: AGHT+IFoXaN6pVThre1z/S0bbgU8FS54cZC6t6c+5RXc70MLFec5xoE9QM4x8jGHB1G542vMIjK6xQ==
X-Received: by 2002:a05:620a:1a09:b0:777:74dd:621d with SMTP id bk9-20020a05620a1a0900b0077774dd621dmr9306621qkb.15.1698072032470;
        Mon, 23 Oct 2023 07:40:32 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id f1-20020a05620a408100b007789a3499casm2725020qko.115.2023.10.23.07.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 07:40:32 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 23 Oct 2023 16:40:04 +0200
Subject: [PATCH 04/18] dt-bindings: display: mediatek: dither: add binding
 for MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v1-4-5c860ed5c33b@baylibre.com>
References: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
In-Reply-To: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
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
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=938; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=tYxquOkpHCbnFi05aHcxCGsRKb8h7qDvHcF/fXuV370=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlNoXOkwi2U4WCrequXuzYCvok2QkmF3+0zqAfxGGm
 J896eL6JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZTaFzgAKCRArRkmdfjHURViaD/
 oCnO3B16x6z8742sQoq3Qz35HJC9XGKiHeYoOY2xIdc2g7wjcBOLaA02OVr7AbLQPFMJ4zskMA4uaz
 IjSpJd6ha3Gdh4fql86jC1THgW8paGXUOfdna0fEdRXWf/TpfPschReTyn1q6a1YHdByWrYAXbyhkV
 JOOZp7q5szn7Cr+4KUdiAUsdynt83BQMUiWxOf0fwa4+vO/EVy9Ufs9m6xtufJJFGgoEH+UjxHzyrf
 58I40s5RZyWwQo7GAu3VWsqrcMUF/txYb5il27M5gdXSfPH6HbTubmMMBNXMAhm4i9TC172GOCUsXX
 XqCMkDF9xwCbjqPQJgdRR+4Ld+2PpWrTjNEEhf3YGGMV1i2kVJWY4Rk4j5EaNJ3nZvhFng8fnpzwZh
 YcU9lkXwpHD3nfO/9Ll7J7tvDexb3pD5v+M3EsS4ViFAmKogqOXS5Ev99oBj6D5lbzcgB/wryuRK6q
 XGoVJ75TlSy6Yg3XFIMggMWra+1FonABuOdIZx1Zm89vE5/w/MIJ3h4pYuQUSJ6KXdTc7V+nCgGo6N
 BSGnJVYub2dD0vJxKOSqnG2fESwz2kTkO9lcuCYpmW3LkfpxIdfwU0TxKYAmRtGuwsJ6deFOp0NsCM
 SujXn5rcipp1UgI6zjCqhbxOV3FyFENNZ6M3tN9RKHtk0ZN9xiIRoicfSzOA==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Display Dither for MT8365 is compatible with another SoC.
Then, add MT8365 binding along with MT8183 SoC.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
index 1588b3f7cec7..6fceb1f95d2a 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
@@ -30,6 +30,7 @@ properties:
               - mediatek,mt8188-disp-dither
               - mediatek,mt8192-disp-dither
               - mediatek,mt8195-disp-dither
+              - mediatek,mt8365-disp-dither
           - const: mediatek,mt8183-disp-dither
 
   reg:

-- 
2.25.1


