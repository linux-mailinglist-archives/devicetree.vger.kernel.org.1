Return-Path: <devicetree+bounces-68721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0298CD29F
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 14:49:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 57DF91F22EB6
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 12:49:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 327B714A4DE;
	Thu, 23 May 2024 12:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Hg0cjJnF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0797714A0B9
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 12:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716468570; cv=none; b=r9YSX7JNjCHjJjtNxacHnXIu+rMKWYxxmJJa4zQwo5CibeU63PumD803kzXQp6P8R/U0j+H2imQCFgnWkqfZNBC0ZHVEAVNin1C80tFPKlwDHVvNoNp7is/PopIYiNFgqpj9SAEyyqCZZkV+gu3alKFNd1s/yS7TqzCK59AbCWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716468570; c=relaxed/simple;
	bh=rYGWQnXPl7e+8ZR2q/kPCuviQpIOkOcbGurCO7CSNDc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bm1lyDHW8oecPimpk6iBidnSrbADscAc9T86XTPrjpAQ54AlSWyvaKzc3ISBKz2ih8gZ49ZPgKK+WBmQtiYqkdwjZ7leP3P78Hl0/L3bD0BuY/XkKfzfrrRbqj7xBkZNIRYlLyRCmgTrZ2CbFZrflaNh6vaGTwBFH9F25w9EVyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Hg0cjJnF; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-354f3f6c3b1so1186919f8f.2
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 05:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716468566; x=1717073366; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NDc5dZ2G0NhI2V2Vx4EMLzhVv0NLoW/2hnjkjc8WSGo=;
        b=Hg0cjJnFvE9lMBjA4bFAb8xIk037l7smad1/X2CxAASrTB16+mf+2BwyA/baigDAlP
         qjYk5RhEdqcVgL7V1BcPJ3aqlRAJrB/GsFOJ51Gx7YDw1TT9BRv2jB1mRckdpkhdxZxm
         d5gGujReO2cgTWImtiaLxY4qzHoEMBeGsikvhGQtpQhFccqVN4p1qjTxpFjVEWxZoIGS
         ZKIxP8IYpO8VQL6cx0NZTtmUE56MfgDhKxaKt+FwGtJ5iUdavjZ4vDgWz4V/y5a4JO9p
         VlxKFMTLegXw6uPEXaJQxLAVF51i77IZBh4MGS6D65oJnbuqrrjoqAPbDItXNoVHhM3j
         dUmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716468566; x=1717073366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NDc5dZ2G0NhI2V2Vx4EMLzhVv0NLoW/2hnjkjc8WSGo=;
        b=Rqinxw/fXhRdnmVnPAe6Xhdjdy94PWeepsVB9/yZrpsMhnHJCd0vkrmJRtgoOjY4St
         Zv4ZVNkstsoZOrZnMjif53UOL/9wzCqCwFzgFq+wQTWMoYC9fM+teInRGpk6VrEm66sn
         qJUrb43XjdyG6wN2mDhQj8xnSnFNBSSG7D5kh3SPTdPFspf0gIi5psBTPRSpVjgjIN78
         VB8UHFGYOuifNY+3pokcr4Xg6lUyQ09vvY8vkqrklSNJwhbeH512MyrTGn1TGHYduO/p
         DgHr6HDq4U0sYCWeqoJDKoSBC592q2JkR2HrmGqb/g1IOi3Ic5/+vgzW0//N9g1wlx8H
         MaFg==
X-Forwarded-Encrypted: i=1; AJvYcCUlYf47pYNsHzaogZ3Df+InFYvPQ61nwhq6eUHSqj+I9dEB8aW3S0fTeC7A51JHiZf2TFOmPixlQ31BHmTu66vjvcjDr/28eEd1Bg==
X-Gm-Message-State: AOJu0YypNm69p2+aTfYEG79jIPWr6JtbjDwHSzB2TYSfICp7NJ545jLP
	TNh7FJiicnTl2d2G8ysqahLVF1Ah+YkZl5NK9aYE0XGPxM5zIlxysi8Mmz2C2Hw=
X-Google-Smtp-Source: AGHT+IH8/w/D/ym66Jp2uFgYUse59/CTDw+EvixC5vITkP0BBwv3oWzuRnk1t8GSb3ZKNNdCd/k3Bg==
X-Received: by 2002:adf:efca:0:b0:354:f500:51c4 with SMTP id ffacd0b85a97d-354f5005628mr2531090f8f.23.1716468566458;
        Thu, 23 May 2024 05:49:26 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-354faf3fa68sm1259611f8f.116.2024.05.23.05.49.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 05:49:26 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 23 May 2024 14:49:14 +0200
Subject: [PATCH v4 01/15] dt-bindings: display: mediatek: aal: add
 compatible for MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v4-1-ed82eb168fb1@baylibre.com>
References: <20231023-display-support-v4-0-ed82eb168fb1@baylibre.com>
In-Reply-To: <20231023-display-support-v4-0-ed82eb168fb1@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1032; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=rYGWQnXPl7e+8ZR2q/kPCuviQpIOkOcbGurCO7CSNDc=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmTztTHJzX/pP0aymwYIu7QjbfH/1r3N3y2tzTEGvp
 Qh+njumJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZk87UwAKCRArRkmdfjHURW/LD/
 0ZN8rHNVNvvNKuViGWaqPBEkwuwXd1VhlMXVPSXv1j7GbVtwNjsJbNXSXZenNBqXVnAUqKwSbFl1km
 7jYjqzscujGwOt05W3nhbgW2S8onp1G8X+JZkbkyjju/doC/uymiO1LuVXSeY22VGZFkcZwAVXEklV
 CIsGYSmmcg187TLVBBIFf/XagsIYbphmgzMdlNTVf7f/BP7qHMWQHdWfxCwm3IYTx2PqFa/jjHZD22
 ZQDg2MW7Xcx/pmsOxNr9esxW37O8eg6Ckh86y32Sn5KfsNfQeKMWNud9NEsDhdHirwWLFUBCm6p5XE
 aI+DSCwoCFKtBnJy9DeiRLun2nFtszXfTgfP518hMF7h36vCQCMPbZDDZp2HCfJ/B0BLStYwzgn1X+
 6hyzyDJgTHatE6cXE3V3Ut17QmZryJrFkgHs5/WkinIyT8SURQXURvewEv8v95T3LZrbOo9tnwb+Zq
 QYXKlf1k0GgpNGt6DWLMGbQrvsXb6qQN/IVVmUc7Q8W950Q1mPs1iktinGiS8AccGGOUaNSviWP458
 xJph6E9/jrH7ObFUK4BA+Pl429CwQnFjd0g5tVL4MrN+/tvmGOxEBb9M03ekQKA9XcfuCm0Oh0kv5z
 Fr1Qrt/7xTf8hqiexLhXY+5v3Y/ZKqgQgvHPsW9VsDt2wf8uiXTfG8+PqYuQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Document the display Adaptive Ambient Light on MT8365, which is compatible
with that of the MT8183.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
index 623cf7e37fe3..47ddba5c41af 100644
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


