Return-Path: <devicetree+bounces-68725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F00158CD2AF
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 14:50:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0DAD2840CF
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 12:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFE5314BFA8;
	Thu, 23 May 2024 12:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Re/XG4Vw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB9014B084
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 12:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716468574; cv=none; b=udgtBablVPk4YxglDsj42kmEkf2ajkAV1RtWWC+Q9pWvPVBRz6CMBNK56/vVKJyJFnO3S8LAgu+sFOiqRizx8jgv8c6/xoWk+F7/abTnrDN8MmmK+Bw7lF2f6NRumkMrhPTWMr6BGUxZMJBs5WQlshfJMTbKnzVMJZviFGt04Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716468574; c=relaxed/simple;
	bh=pgul3jyPnwLlRqrVeieDrjKje7AnvTfN/5pB8LOeEww=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u08GG2TiEsxge0/+LgzYJ1G2KrLXiwTw/K31z9s+WdASHBI119HdA/JCKdNoAXD8fzK+N6DVOsW7+xnhSumaPThT0d6ZlMbWllxJJTjsMTIINyQzlF95vxQvMmIYw1owUlBeRtm2Gd7BTuML/9Z8mFUj4Qrbhddro2LJYKNKJ8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Re/XG4Vw; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3504f34a086so5010408f8f.1
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 05:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716468571; x=1717073371; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e4+lhQwg6d0dw4D/M2LqzYSihjAzASjj+z4J8l/ZvJA=;
        b=Re/XG4VwYGiPHvbqo5ZLfjLMWEzikX+nEe/TQQuLIOGxBO8iDAVy71Hvn2x0QRO0ie
         sKKg002LDKH9Xu7CUIhMuYKvCusZqOVyXe54W6kvFgv7N19AR9FhVl4qy1KkgAdQ3ke8
         kps+17yCalgVPt7Z0KVQiXnji1qZT8cJ+6R/rPvW82hdxdmxNwumgMpPSSRRU/Cqm6k1
         xl7k4MJl1jWw5j+ZctxZKe9M6iIkBfreS6kKn+XrukcIKBkirKXicIIal+iMFQ07DI8e
         vsXxNp7ymGy1ojDNfLHcBGkcXWCPFYfc9+JS7MehK4rE7FGaXru+ABVLjLHRTuABokXX
         rOfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716468571; x=1717073371;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e4+lhQwg6d0dw4D/M2LqzYSihjAzASjj+z4J8l/ZvJA=;
        b=QDJa+2jBqEFDp9NgcPSUPm+qB/OnAIdbQ1SwsfRKzVLImUmn1G1Rn7GecWuS/fBuRh
         Chehxmx5ceYlCG1vpgtNFtKQY/G3o2D8KLP+PYJk4mzfFqBqdD1NnleCDNhZpBqmjavk
         9P0hyecgHYGY/Bz27mgMmetn6avGwV655euIkKm3PamHJPLvl1ya/aAJXRvo3J7P8tlt
         W/P/hikPyaPQhgKI5gygK8L0iOzlkm8Kmw/Q/k7JKsBHpelM3ETiY1VBXJRcmVeFM86x
         30gGMrnuaHlW81CyAtuNR6Z2Wn1s1flYqY/xMx0AUIBPmwgXy7ij+JKCoKn7LCBB1L+N
         +i3g==
X-Forwarded-Encrypted: i=1; AJvYcCWuNB6b0UtxV/1iOaW06v0PjvOWo4vlJ/a5DAdA87P+TWP0iw24zaQ7y5H0Qr4rL5wrLznvmESPuzSM7KjxMtSzT1xncLufLvgLBQ==
X-Gm-Message-State: AOJu0YxlGYdf2XAq1zHtcnWDvWAOh7OV+O7rMJJ5Hf0IXDfnnVzL/ypB
	WKGvtbDbzBZ/AVd/B1szjXT0y70L+a/+lugsIucg3wtoLhm46EZB6GJP+r1lsaY=
X-Google-Smtp-Source: AGHT+IGE22UqtsLajB5J2AZLCW6T1wLmkDjk6Ujukx8eL5dtqwesn4j29CTzSuVzDnzCA/oY9cqPCA==
X-Received: by 2002:a5d:5486:0:b0:34c:cca6:3d18 with SMTP id ffacd0b85a97d-354d8db5facmr3414527f8f.68.1716468571321;
        Thu, 23 May 2024 05:49:31 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-354faf3fa68sm1259611f8f.116.2024.05.23.05.49.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 05:49:30 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 23 May 2024 14:49:17 +0200
Subject: [PATCH v4 04/15] dt-bindings: display: mediatek: dither: add
 compatible for MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v4-4-ed82eb168fb1@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1046; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=pgul3jyPnwLlRqrVeieDrjKje7AnvTfN/5pB8LOeEww=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmTztTJWMDmQgV1eFukFRne6luvhDCe/jawZVZUNOA
 UANg9eWJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZk87UwAKCRArRkmdfjHURddGD/
 4pQDxdcLdE71Q27pfLrGFAI9JkPgBfXW99J0aWLRqy4VHlnPMUPUDxjN4uPw88EKX8/ofiTBGYAReY
 jVxWJwulOWiVE/UL6hHcI/dZRtlosGVE/nTzt3hM4o/yNfdvClPtgO+huPOGUW32N5UXMjkhW+zXlV
 L2aIFffducIIGxuuD1pJONWfkBvA9RNeyqZvRj2M5ouTSvnastV5wdWKkz0DDp5250jDvDz0B+/trM
 /temZhZwC5129b92SQdZqEYq33AS2tU04hHcmlpV23FNBlvWLblgTG5mOSQ50nfxrunMWV/I6ZQzNy
 ZbElei5EV48g4kbgPdAg8M1rsLaLZ1Inv9zV1AiHE7tly+gtBLAAOm/8bqTq5AFLJyK8z72nA4finq
 oTZ87Ohrw4Vyi3T+EGk5/EFoPUI4aYWS8O4oUDbN/Aw443qJbjtMrizwXKrTjXtZtJL3wl2Arkdb4I
 yeeW+Okn9sPqwjb+EqKyAYWA3iVLuT0heByHfKrRmcRFj6sn/CtYtJ+APQCzEC85GoJlcVzqcVCj5o
 k/QvVNe2a47syYoSyljC2jLLH0D6VyqAWdJ745H38BqBxX60vIOcMNRztD3vkIMgwZWeUqisK/yFqy
 2TsKkN97isXcuv/g2FhAR2TSbpHgw38WDbw40Ipzc8htIkhT9fmcWAf4kaKg==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Document the display Dither on MT8365, which is compatible
with that of the MT8183.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
index 3d4ab3f86294..abaf27916d13 100644
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


