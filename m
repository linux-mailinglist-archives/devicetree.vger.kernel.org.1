Return-Path: <devicetree+bounces-102543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0181E9776A4
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 03:55:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B40E328255C
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 01:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 716B478C6D;
	Fri, 13 Sep 2024 01:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="QCR593cq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EDD282F4
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 01:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726192523; cv=none; b=L/6QUKjLX5mxk2wVs2s7LsfPSi5ML2xmBSJV3y7KVq2gTmZQ7h1WLHdBlFR47nNnXTNBf5E7cl1DeVArcKD4rBI9Q7plLegeyj9IxMJG+eITTBJNK3pliWSV8/GiDyj53iVc2kiQ+buqo02S84ukYOQtmRSmY+zQxKyHYz6YpFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726192523; c=relaxed/simple;
	bh=BkjmMiEMl45J300GYJj80NKNWiGSISsVAkkvPlbb0is=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=amApN6or302q4q2leFGpk/69d+UjLz7SiYqE0SPUTwX+/szlwfB5PoboxnhOBoHlESV8JfZDyUqlsEPih/HgD9zt3sXWOC9Nfrl4xWkUq+UA/UJozQwdD9gBDtGv23d6qkHLHUf4QzL0EBiiFm/h1252hAD0Jhm5ov0hoXlivZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=QCR593cq; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2068acc8b98so15166365ad.3
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 18:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1726192519; x=1726797319; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R/tJ6K2p2TuSkkGXCsuIhipqtb2yllodeabGTYDSu2M=;
        b=QCR593cqv4LdeyfHd2kznZFefclw1F/rXvrtw4wIM8f04Hx/bWKIpQ0cePEPL9kBjx
         DThashxdjrE9nfwJvkoodDav46Y454VqS5O/8qwgmBvyC0SyCYGlv7od38b7bYhxKJfc
         VTmg0fqYfVKDybpWTJXO4PzP9YwPW3Wb6bj9xJul9bWLDGCxTfyARGV2GfoE6H/pN89l
         cpBH0Ro8vQ5dnMNx22rmDP3Nbp44Xux13qYg5EpxfRlPeHhF7lcFbjDadKu5iFxRoOZR
         Lej2iKhbNgTb+Fu9GbgxMTpi9WH7NVpKi/jYGhfM+woDvX+g19wvXjVBnv4blbq9pL2h
         +92w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726192519; x=1726797319;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R/tJ6K2p2TuSkkGXCsuIhipqtb2yllodeabGTYDSu2M=;
        b=c7EJX3+a0vRUZfvfmoLbZyCjFTU3RGJQ6YruNqvccWAKImcKk4T+Rn6dkr5aMc1WEL
         rsArOgwt56C4zbaFIPvEn9mdqlZH9pksqT1UiaLCeLlz3B2H8FN1tck4m70SIypIQxZ6
         k/GZprUy8e7Vaoq4uyow9WLJsIVl/P1STLehckc6YiQmGMzUWKElTmS6IVFubH6kz7JM
         /eidskvxpvr1IYD1/l0WWw6CAQTdyIQevcc+zeCKzjT2GDkqB6j2kS2BzCaRwyRp6XOO
         wH0/RU/a9oHi59RArcrW/ECoCNSxbyEVsqCOs/T7eG6N4Eu16T+ci1yUDz+xr7z3agnn
         CU7g==
X-Forwarded-Encrypted: i=1; AJvYcCVosv694b9yrJ48MtDcizZ3cNKuJCZq778Iea4qTuC7r4ReOMYD9ggI+ogAw/wpcgbBEUTxC1otkLbW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx75qK6sdixdxQMS2SrZyNhrqEXvOcTJ11Zh/oBSFIONDjzUDFs
	jGEouPpRiTLotEUCKaj1ffFLxsNjMRnHHcFuhMYycoup7mdyfgfoA2PcxdcgbFk=
X-Google-Smtp-Source: AGHT+IFSSYOJX031nMRvpIoTRVNj8X237R7lNtTDrvk+f/3CXcwctvLBX6in5w2tExnnjfh7zFzcOQ==
X-Received: by 2002:a17:902:cf41:b0:200:abb6:4daf with SMTP id d9443c01a7336-2076e41299bmr62421005ad.39.1726192519391;
        Thu, 12 Sep 2024 18:55:19 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076af49210sm19896605ad.99.2024.09.12.18.55.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 18:55:19 -0700 (PDT)
From: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
To: angelogioacchino.delregno@collabora.com,
	matthias.bgg@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	knoxchiou@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 1/2] dt-bindings: arm: mediatek: Add MT8186 Ponyta Chromebook
Date: Fri, 13 Sep 2024 09:55:02 +0800
Message-Id: <20240913015503.4192806-2-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240913015503.4192806-1-cengjianeng@huaqin.corp-partner.google.com>
References: <20240913015503.4192806-1-cengjianeng@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Ponyta is a custom label Chromebook based on MT8186. It is a
self-developed project of Huaqin and has no fixed OEM.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
---
Changes in v5:
- PATCH 1/2: Remove sku2147483647.
- Link to v4:https://lore.kernel.org/all/20240906085739.1322676-2-cengjianeng@huaqin.corp-partner.google.com/

Changes in v4:
- PATCH 1/2: Add more info for Ponyta custom label in commit.
- Link to v3:https://lore.kernel.org/all/20240904081501.2060933-1-cengjianeng@huaqin.corp-partner.google.com/

Changes in v3:
- PATCH 1/2: Modify lable to label.
- Link to v2:https://lore.kernel.org/all/20240903061603.3007289-1-cengjianeng@huaqin.corp-partner.google.com/

Chage since V2:
- No change.

---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..43a824bee1b6 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -257,6 +257,16 @@ properties:
           - const: google,steelix-sku393218
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Ponyta (Custom label)
+        items:
+          - const: google,ponyta-sku0
+          - const: google,ponyta
+          - const: mediatek,mt8186
+      - description: Google Ponyta (Custom label)
+        items:
+          - const: google,ponyta-sku1
+          - const: google,ponyta
+          - const: mediatek,mt8186
       - description: Google Rusty (Lenovo 100e Chromebook Gen 4)
         items:
           - const: google,steelix-sku196609
-- 
2.34.1


