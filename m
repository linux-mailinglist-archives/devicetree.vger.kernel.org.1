Return-Path: <devicetree+bounces-16611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC4F7EF0DE
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 11:43:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8C228B20C5F
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 058EBD52D;
	Fri, 17 Nov 2023 10:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fNC/yu1z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97CB4D5A
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 02:43:33 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9c41e95efcbso258356566b.3
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 02:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700217812; x=1700822612; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KytWGFVWe50JiVBLmixmkE/Vv8zIi4OOZ/6LO+g2zKU=;
        b=fNC/yu1z3w+grcLlyHl7gROL30REd9ToE9pcDfUR6aowhigEARiic1MVXsYTNS4c4h
         eUbtYYqDZ2qITSYpiclKmvvlbnWkYjDBmO24VHuGTSJniB/HWa6qtEglABekPhO5mBEc
         wwPOkvmUbvLxUq5GK/6PQ432jjJQf/IrcQsihcMi/pZ3HEfU1ZBJdDX2fPrYF8jjSoRG
         uJaI/gvf+XytnDGC4kfHNrZ8AIe5rtGo60OGklbnDfe6u6boa0azP64bUtcBfuCQ7qUr
         UszyTXzIPIbxc1uTD8QR1Kmtf5NY+bV7N+BOgj2vhOX8UGj/S+jr+T+BSpdqedC8+DhF
         bFkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700217812; x=1700822612;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KytWGFVWe50JiVBLmixmkE/Vv8zIi4OOZ/6LO+g2zKU=;
        b=w7mTQ0LsBcfVYRq7vQ2ZnwWHQh/bkAAOb0/lQLwhzxFNpVjpjdD3JjJO97yDcIkk78
         hNbwh9Jmfg68I7MCr0fr8C558hSscdFUR7X44e7FY3bLR7kksOvd4ITzXq881zU8FizZ
         tqLeQ/dKERSatIfNGMAQYF+2QWVFvtoNMEGNOIhPmH7ltpuU0Kc+6sWxXLIwBP9sqwFt
         IhTuUNB0NW/20ydCF+NMbSnE8p7XgGFsCPIc/OD4b9+hlBkL4Pb7ClcuoC/P7nOhQWUX
         /Dotp0sMzXIOqm9NS/M2ZG+8suf0AUQ1Tap0jcpxiD/LpwL8oXmxsPfA5cXD4CFPGooM
         0Rfw==
X-Gm-Message-State: AOJu0YwApXxDlpt6vga11hnVKyOzxsxZqInSrSQW9fJPNmmuUG5M95Dj
	Jd/DH2NvD/GvhixOty6RZiY=
X-Google-Smtp-Source: AGHT+IESTOK73JmIT2qpEeA+GuKenGE+ZpMedXllgUQqADAyIchIUpW8CZPdTojooyo5TKRyBh6ulA==
X-Received: by 2002:a17:906:3458:b0:9dd:dc2a:eb8b with SMTP id d24-20020a170906345800b009dddc2aeb8bmr11603900ejb.41.1700217811651;
        Fri, 17 Nov 2023 02:43:31 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id q6-20020a1709066b0600b009dd701bb916sm637388ejr.213.2023.11.17.02.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 02:43:31 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/3] dt-bindings: arm64: dts: mediatek: Add Acelink EW-7886CAX access point
Date: Fri, 17 Nov 2023 11:43:14 +0100
Message-Id: <20231117104315.9718-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Acelink EW-7886CAX is an MT7986A (AKA Filogic 830) based access point.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index a5999b3afc35..cfdd3317edda 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -84,6 +84,7 @@ properties:
           - const: mediatek,mt7629
       - items:
           - enum:
+              - acelink,ew-7886cax
               - bananapi,bpi-r3
               - mediatek,mt7986a-rfb
           - const: mediatek,mt7986a
-- 
2.35.3


