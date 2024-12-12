Return-Path: <devicetree+bounces-130083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE919EDF55
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 07:21:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B84C22837D6
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 06:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5426E1DDA37;
	Thu, 12 Dec 2024 06:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="FPZoz2rK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CABC1AAA2F
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 06:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733984462; cv=none; b=YLeuK4ZN1nH33+qyx8gqtNUwI53HfkmZImXtgpSQDywLAVF/84R6kFbQLEwlmgcdabudggaSTIyBf9DMz60oV0Z/y98BM9NFzr5E6JDmiu3IWP8aD59h9cbbPzV0MbDCSUZ48f6zTvKz3O/WLbaUQsRihkzBUmqnmf8w6O2eXsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733984462; c=relaxed/simple;
	bh=0zzDXqoNKXIdZBWEgfCcO3lS4FJiOYRX5/8FZdHN9Us=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=okkbXIufyhhnm3b2tuVjkTk3zVp1YBKO3JH6NwCe+6ShaZTiKo3DR2brGPBNdTKdBZINwkfmY6eboUkvI5Q7Hp44uz+ecIx7AmcmmWUcuTaB1DKEn/hPoWNg/vVcr3VbqeS4kuYhtYM3ybNf2KEr/B7XJjlhT+DPxWEd3BwS+C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=FPZoz2rK; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-215607278acso436025ad.1
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 22:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1733984460; x=1734589260; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gmhFFd9OZS3YcXJsK70hE90ScOtfqunHCKFsvNhGnPk=;
        b=FPZoz2rKn9ukdbki8K9py/UchBnNaG1ex6WwYbqsfLpNI70LEWC/s66zmv5Lsox/uH
         vGPdrXtjNlAtezYy/sKoAH7/c1nTqsGdusxJRZxayqEijB4mOOSHSlPOUP0og1hhQltk
         UIunvn0WXwqecxzMnOeN3vRwwIhUSknyEOStHnm605bzlGfSwNbHt9fWy6w5YhXBJT84
         GvTDl27x3/9LIAGfcZKtfGIlv2v8ZwHOgJ1O6BojkZmfskDnAv+gsXzLhLFFoBeJmrnS
         1yiPJYPcLbLJj2W1f48xyq5QTOjE/SPe8yBO8NXfHLoqNuYsbcN1EK60IMi5/WbAxagw
         7Zsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733984460; x=1734589260;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gmhFFd9OZS3YcXJsK70hE90ScOtfqunHCKFsvNhGnPk=;
        b=vQiKF8L6QaF/D3zSctn88Q72pQ56pAXaezd2ktEXkjFT3yKtYSJL5/1hUNBeKUZrFN
         l9A9VW4MZbt+R1BULuy8x2JCj0WtXyEvoilfl4z2kLb4+EOx5BjC6Jl+PtiUGD/hOMbP
         19fVeq2TAsDSWB/2lYLUoE/BXW+kQs1XkmTLunRSmW/z8qZ/LVF6IPPLRRcqSuwbIYrW
         RNXuILdW7EuCoAzsxOgCSIYqqI5il2j6DDIKJEe9bgeKVcuvKiTkbRj9dPEgio+LWk3e
         8EDMoN1ucsYvOsKhe44S54k6oW+PdoseESxye4EpqI0pHrSDcIpmanxk3X6d3z8aYX/1
         zgBA==
X-Gm-Message-State: AOJu0Yzp5mHu3NXezWnFdqLZYw4yKwisDB5g4gayFjW8e6s+VvUMo8qP
	eu4Qus2Rum5S0s3pQMKRVuHn8QfNaGmXMttZxc6VYyddV21tYZ+jlAf0slrZcOw=
X-Gm-Gg: ASbGncvfIZe4CTyRAqZBRixMi2F+QN6oz9f7m5ysK59w9687sYMDSGAVkVpZW4XznVv
	r4205Ah7LZce8IqSmiBQ/45MpMuL2ZmRGWndGmik+abqoXJL5HwWoyWyjk3hBn8kSIh0VjPzr2B
	DNkv2Q0UMS6Y8lf05ASS9VxozE0LHOXjhRVIujj/+bKHsV2geldTkLJNIJZARj7cq7bRi/nCkAY
	2MIIKZz0oiaCLPo4DCIgY3gViRxt7xxiXoMPGYhCt+aLb7sB+SJM6qIvck5rzc1DzcJqxE1mOrN
	+dIV8PoZVGe9X0QvZ4pP
X-Google-Smtp-Source: AGHT+IGNhqg7BDa95UyNmBCMDwuy5gdbsBxRXNYNtSRIJSSwK0euI41N/BGBIkwVFECyb3kJ4tXPWA==
X-Received: by 2002:a17:903:32cd:b0:216:3083:d043 with SMTP id d9443c01a7336-2177856a6eamr36242165ad.12.1733984459913;
        Wed, 11 Dec 2024 22:20:59 -0800 (PST)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2162c278668sm83579165ad.81.2024.12.11.22.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 22:20:59 -0800 (PST)
From: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	wenst@chromium.org,
	hsinyi@chromium.org,
	sean.wang@mediatek.com,
	dianders@google.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [PATCH v5 1/4] dt-bindings: arm: mediatek: Add MT8186 Chinchou Chromebook
Date: Thu, 12 Dec 2024 14:20:43 +0800
Message-Id: <20241212062046.22509-2-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20241212062046.22509-1-xiazhengqiao@huaqin.corp-partner.google.com>
References: <20241212062046.22509-1-xiazhengqiao@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add an entry for the MT8186 based Chinchou Chromebook, also known as the
ASUS Chromebook CZ12 Flip (CZ1204F) and CZ12(CZ1204C).

Signed-off-by: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../devicetree/bindings/arm/mediatek.yaml     | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..d3cc6fbad8d0 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -239,6 +239,34 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - description: Google Chinchou (Asus Chromebook CZ1104CM2A/CZ1204CM2A)
+        items:
+          - const: google,chinchou-sku0
+          - const: google,chinchou-sku2
+          - const: google,chinchou-sku4
+          - const: google,chinchou-sku5
+          - const: google,chinchou
+          - const: mediatek,mt8186
+      - description: Google Chinchou (Asus Chromebook CZ1104FM2A/CZ1204FM2A/CZ1104CM2A/CZ1204CM2A)
+        items:
+          - const: google,chinchou-sku1
+          - const: google,chinchou-sku3
+          - const: google,chinchou-sku6
+          - const: google,chinchou-sku7
+          - const: google,chinchou-sku17
+          - const: google,chinchou-sku20
+          - const: google,chinchou-sku22
+          - const: google,chinchou-sku23
+          - const: google,chinchou
+          - const: mediatek,mt8186
+      - description: Google Chinchou360 (Asus Chromebook CZ1104FM2A/CZ1204FM2A Flip)
+        items:
+          - const: google,chinchou-sku16
+          - const: google,chinchou-sku18
+          - const: google,chinchou-sku19
+          - const: google,chinchou-sku21
+          - const: google,chinchou
+          - const: mediatek,mt8186
       - description: Google Magneton (Lenovo IdeaPad Slim 3 Chromebook (14M868))
         items:
           - const: google,steelix-sku393219
-- 
2.17.1


