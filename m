Return-Path: <devicetree+bounces-68723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F93D8CD2AB
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 14:50:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FE092843ED
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 12:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9EF314B06E;
	Thu, 23 May 2024 12:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="apCt0sK1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D279614A4D2
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 12:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716468571; cv=none; b=jfraq75mcAQtxRQ8h42hic8RyXkI3OXXumMyO8udMoHtiKZR4AKrHagqENzvvX91Q+kthvnVuor9Wp9UXDRxgL0bS/5Aa6OvSQpagK9NzUf6pOPcgbLbXD7S2dVoMQ20nri/yLFKAIy9ZHK0ZlUYe48ImewhiPaC3snKd/yUZvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716468571; c=relaxed/simple;
	bh=upYLopDUv2sREO316+2x/IDyye/JUMDkTsLPG4uVl6w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PwENelFeLQiRRKHjs2yVo3js/WW9kODfOfH01YuNjf/szyJXnZpLNBC5qNtU+8BVKtZyguMbBxBYAb0LVgWXllxw/tzkkJmLw9ThC5kpJaZHzDIemC018PnwwgNBVG7OkzPJIHHZlF5mbCNH9n07zIrzxJYxurz5e0dbJN1bTF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=apCt0sK1; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3550224b745so171840f8f.0
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 05:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716468568; x=1717073368; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y0mi1WL/7iRSdUpRf2YRMSaJjir0sEMp/gQx1uv98kI=;
        b=apCt0sK1CO4rTosePRleXlkqRJNVeAUfpe0vYtI0A/ujF4Gnz58+rpxgOozA2fGAbl
         N6yok72NnNfgmKWhnMKzPeI+Z5rPU5hDcZ+MQuct0ftT9tVvtB+bnJfjReaN7bSdQZq4
         AbQpNLHm15/hUd6b4BfeWmEaMDGAt79jEjA8AiaH+D7GaUGMMqa+MoBwFY6HNLxVdtSo
         en7FOsYmseeHNxjoMlDPrGon+k41zmJX5g053Bmfoid3J6gn91gi34E41vBlr2zyt1E/
         z2OuU6shwHZlTJjpvcy0aEY3IFE2bQHcwGBI/XvpdxbGG53GEWGgYhLZZHzyVDInGU+D
         IZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716468568; x=1717073368;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y0mi1WL/7iRSdUpRf2YRMSaJjir0sEMp/gQx1uv98kI=;
        b=A8iRHTmax65UVM5NZuwiwqV3nstgu6tujOAe7D9wm32jvOMiUg8sQVVU/UfWMBAh9c
         GOqbG9LTLt296YHcDXAkn139/MKvnCBXfKMYxq1IH2RrMzv/tT6Do4KzP3baJ91J3on0
         1NEXFf65NZOnOmI6Fz3Xp4PmqYm3Iw5sVpkdG2paaWjR4Dqp9fxxgALUaz4zCZvKLG2v
         y2f8g5d3S59jlA9KxZO7S8mUeuS9Cr7N/Qt9/o0UV0X3XmdlEgjq1+QTnjCPKFSOQvEe
         I1GLYG3rZYfqBwVdzg68pDUVfH7LNtQ99OQQPUCf6Oi3gOXFpCp7Aeo2JYMookJCJstS
         X/9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVJqX437CaxWG+88lSTfB0gyUalrtnA/nSyl4WxQJMLXzM0ehe0hcl6u093ipqZdkX7mQUeeyQw9vx1qIwrOuOuHag4psvkeJr4DQ==
X-Gm-Message-State: AOJu0YypeOsRI0jG9SxK8MP5CLPV2AzAtwvSOL7agmUJh9pc/SZZ58a/
	QvP1Sj8fpleFOi65ctESVpV3yzmzM1NrLuo8iw7t9sHCkjG1+zhCagR46iEVn+s=
X-Google-Smtp-Source: AGHT+IHBLKdIYYu6QC45iqx4D28BFWQ2Pl61zO4qgqZxwAe7jzaeeQgHKXs3Sob/u4RnkADQNkEQLw==
X-Received: by 2002:adf:e245:0:b0:354:e04d:13e0 with SMTP id ffacd0b85a97d-354e04d1478mr3622189f8f.46.1716468568326;
        Thu, 23 May 2024 05:49:28 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-354faf3fa68sm1259611f8f.116.2024.05.23.05.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 05:49:27 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 23 May 2024 14:49:15 +0200
Subject: [PATCH v4 02/15] dt-bindings: display: mediatek: ccorr: add
 compatible for MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v4-2-ed82eb168fb1@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1102; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=upYLopDUv2sREO316+2x/IDyye/JUMDkTsLPG4uVl6w=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmTztThGaQtVT5PRllT6P21gaIDXU8tLB5/ByVKkE0
 BePaKxCJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZk87UwAKCRArRkmdfjHURToFEA
 CNjvAKkIUW8c7JykffXwJogjsEowvMJNe3HDTc7LOREneBMS1az+BXGjSgO5blmyB7fGtgJsL+Zv0R
 xd0wNYYfAMLEXOp6KAn27MVcpfvIJi5NfP1SEwoEM222Y76QhHvMa08kSyxTal1L/cTL/I3X8qu0p7
 ckqMnSguyi04ZTm26UrzewnhaRayEqUUFk9I42ErrJAFj405GkoF+4hzqnIjKCITsH0t0Mj5c9c7Jl
 pVE4ly7f//JUU7dERFcqF4w+ajQu0eObx4T11VmSa3GRscWZb51v1Y2dh15JzJIZ7EDTtxD4z+CTxo
 GUNuzimI53FIMnh/pA6pwtIaIIr3Z4P/ql8LnNhf0/RZBfu7w3UgygJTJJdbsyFH2IEW56i8wOP043
 eGkiiE72dAhNyUMULnTHC9g9Gy4rh8FJFpfz8jOCnM8OUg7ZDQNnCGcVk+y8vq0gXBMZzoOKN5ouCl
 EyxNT5BGpLftb7AJibOGth78FavsW2MSW262b7XlnKPtR57/WLLKzsZqsX3Lnc8UrhJbxDN6a3EWyj
 HgVak1ai3PMyArhLZDYYGuvYLNUVdBljvCp96QgIapouQdmjQpjEchRTg3pn8/EggEKdxkFyK0D+AZ
 mQdy6aFqRFMDQOgv4qOpetSxiRH6ixvp6qQa08GGSz2ITAv8spirsDS4TVew==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Document the display Color Correction on MT8365, which is compatible
with that of the MT8183.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml
index 71ea277a5d8e..fca8e7bb0cbc 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml
@@ -24,6 +24,9 @@ properties:
       - enum:
           - mediatek,mt8183-disp-ccorr
           - mediatek,mt8192-disp-ccorr
+      - items:
+          - const: mediatek,mt8365-disp-ccorr
+          - const: mediatek,mt8183-disp-ccorr
       - items:
           - enum:
               - mediatek,mt8186-disp-ccorr

-- 
2.25.1


