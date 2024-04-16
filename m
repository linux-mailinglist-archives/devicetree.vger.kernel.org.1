Return-Path: <devicetree+bounces-59785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8618A705D
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 17:54:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D20DC1C20AD9
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 15:54:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A049134425;
	Tue, 16 Apr 2024 15:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LD/JWER6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F6A131746
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 15:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713282802; cv=none; b=oYVl/6jPlEV+T94ib9/CqrpBarSBzJ7DGIBpqpJ0Ki/2LS7DL2VYXmtLIg34uGJl0/T6KZVtrRpARpUlwGye8hnxXJIPFsbWkeDfGBVZcVlj02yERETw+CpdrwhnOlN0W82DGAYHBxKN5EcNRiguI7ApZkDu/39HsmpCXIr+0zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713282802; c=relaxed/simple;
	bh=PuIX6SX0I8G+01pSZbmJjjMl6oTG4sglyLhxdm04E/c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Hhvfms9pHBq55ZXzbhodZOY1AMJ1yuZI5YjgIwdd279GBX95JTmFLGFfSNTK5WPeinJzwuGBUB+b97QXxOtBJieTKxTBYK6JQdbjkY3kigMGyY7j1moLC/IzfA65A7V3kjIvgb7WXSO7m3feu0NAMA9oEfyHVSF+MhsAMTJY29w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LD/JWER6; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-518a3e0d2ecso5496474e87.3
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 08:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713282799; x=1713887599; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z1M4kIN59+mv6eajaYWoD0lNhNtoPHTneP5/AIVwZoQ=;
        b=LD/JWER6CXEqqfSz+MPUPcDB0V0i9flGVnAVC+vn4WmKgzQQcrgG/J9csqBpB124yR
         jY0NV70luu6gmCXUDlCv22roekOBiWC4mkzwYDrYdVVsjFvrOtCumzCz6fKb8ilwPHlG
         U9sckYOFcRC9K51PNqgtMSoEVPDje0/Igcvo2ET0a070hwh3a5V4sF/I3nMQSlUFG7FI
         yQP6ehEjKWTFjfKV3qMppEwPpZVKQFhq1brzngVHOYPDzc/B/yE0l8cts1nn/Q7WGOen
         qpXSUsNaK9U6GyoizFCSPjB/eoSUEz9IgSkU6dGL9mLCnMHKEcLBAOpfTEhNsonCSv+V
         nwZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713282799; x=1713887599;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z1M4kIN59+mv6eajaYWoD0lNhNtoPHTneP5/AIVwZoQ=;
        b=uRlQSmyQpsEiIe7JJSXUkUU1Fuzq/LhaIHh2LO1QncmyUXByKQqSneBbvKa1/jX/AL
         TSaFNPrdRL5QgRhEwDy42ZjrEoMlfsSw5Yo9azrgmLnpcCSms4D6SVeG5eTxK8yuQ7Fd
         thCWNwC/nsg2bN9VXqt++zIU6DXlxVPPyb5Xlgdup7I6RIZlzx9ib8H/fhtQGy+fTRKR
         74El4ugfaiKZJfxFb4Kak9mNGNyZLRuyQKWyZsKxqVJheK65FhWvTq1/1mEwiGJv+772
         +9qj9jSlGYV3ftfPWChKhxELUgIbTwajAHY0SbhauU7EqNr4UgYbHEELE0MWkAe24eUR
         WuKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJlfr4B5gPhH+ZUFzlCPIz339yB7ShSfSVsIseh0pe6zuX93IIQsjf4Ep38m9Oxbj6+60yjInN1T5ht4wx3a073NjhVhGdwIL5WQ==
X-Gm-Message-State: AOJu0Yx+wzLJ8IpkzJNQlbW7s42f6F3xkuSvlR6rKS8odSixWZ6tmmNg
	0b0IfE5kLBHSEHl6InzmO60yzreOS12kGVc0m4ofLdTBdWdlvgZlDH3Aa25jKlw=
X-Google-Smtp-Source: AGHT+IEzE10D/BYr+CmDyfD/2wEwbBBxOcU32cwBPDByi2asllDiUOZfZorsQvYY5XvezHb+mXUDjw==
X-Received: by 2002:a19:5f1e:0:b0:516:a686:8ae1 with SMTP id t30-20020a195f1e000000b00516a6868ae1mr10388006lfb.62.1713282798061;
        Tue, 16 Apr 2024 08:53:18 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id d12-20020a170906174c00b00a52567ca1b6sm4156691eje.94.2024.04.16.08.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 08:53:17 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Tue, 16 Apr 2024 17:53:02 +0200
Subject: [PATCH v2 01/18] dt-bindings: display: mediatek: aal: add
 compatible for MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v2-1-33ce8864b227@baylibre.com>
References: <20231023-display-support-v2-0-33ce8864b227@baylibre.com>
In-Reply-To: <20231023-display-support-v2-0-33ce8864b227@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org, 
 linux-clk@vger.kernel.org, Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=902; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=PuIX6SX0I8G+01pSZbmJjjMl6oTG4sglyLhxdm04E/c=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmHp7qYdCXc47+31Eb161yRXhf/4KHnmy4zquR874W
 bGQC8baJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZh6e6gAKCRArRkmdfjHURQsmD/
 0TNKGiTbZAKcXTfwf3hcjZyhz53rpg/4fi9GFBkTMl57KNLyZr6bqX4G9akwSxjwjqvOroVC6VCRmH
 JSGIko1GO6YtuYAJPFDiNToZtHyQTS5kXqrJrC9W0jWhzdWi7+0wsXA4q5VF2IplgT7jXAfBQ1hGRQ
 Rt4H+t2IN8GzjCdc24+a5jyvNWvEfw5Y1I56YQTzFOL4NTfynogckD8b9zoiZp2MI/zGe5dw5kQ5IU
 DUWhIBih94kmZqT4VAzCpmuodlowsuB4qcpL3zVRlXoYXBB9nS9JlS1puTFNUH0CAt7IixG7Y/PEuu
 d9KOF0QMgxPxPYsaes23yVEFuH8ggm1mktrdNBrkPQA80hy2QPeFKQ4gwXRxfnzcTWpvy5VTbcHesL
 9sV8idwkt4CfpY6BvsXZqNA3q4VmUNcW7yHKBh6kK26BaYzX4rstzIO1yWUySp01pDKNjNzXkOv3eV
 aewltgJACeoK7i5BtIoemCRhfFBmDJ66Hx1Ay2DdsMzL4Rtq2/SIfhfI+fOc0WoSDPXuUP+LZUyn8u
 tsY2DVXRVlNzK0519BXDe6Oyvtxlu6lkyYDyJIWkV+6mPOKqp5w+sIkv20xxX/elKMJ2vmk5DAkJYu
 tQnyqcfJkOgfO1DzokYQssFB0xZ2Ynbbso+WGwNjGd1At+H38IrYL2RYlVDQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Document the display Adaptive Ambient Light on MT8365, which is compatible
with that of the MT8183.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
index b4c28e96dd55..cf24434854ff 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
@@ -36,6 +36,7 @@ properties:
               - mediatek,mt8188-disp-aal
               - mediatek,mt8192-disp-aal
               - mediatek,mt8195-disp-aal
+              - mediatek,mt8365-disp-aal
           - const: mediatek,mt8183-disp-aal
 
   reg:

-- 
2.25.1


