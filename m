Return-Path: <devicetree+bounces-89795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A95B942C55
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 12:47:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA2181F26967
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 10:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E50881AC459;
	Wed, 31 Jul 2024 10:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="k5VcKQD3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726EC1AD404
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 10:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722422856; cv=none; b=fv9LXPP5bu4YPWwGP5mkmQQTLcufajpvEC/QL8QpzBhEibcxDrIT9MK+jpWZk9N6/Jtpjn5945Z3wMzWHyQ3A/RJu7bgfQInuDmVt1teTAb5LPTNNw+5xEzm/B2WOituryTLKtIm6wyuM5IUNUqH2qW2O3ZLhnWYxpmg71N2d2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722422856; c=relaxed/simple;
	bh=VZdIXqKX8+BtnGEue87IdkU66HWYpcqJc6vqGEu6vOg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C+ZVxYuctRraAzmSY+fGwB1fQseCz7v+y13n3YRe6lbtXTPKZ0TOwcb5vm9nupwSrzoRYtK9BIEoQGG7ioCkgMxHZZ4YZXMLgD8HLNlh8ivnwaSJJDutvJ8G4pUE/tBl7c2jOHx0HK8JEuZPxGiyi1WUm8tlbU2OVqsd132GRHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=k5VcKQD3; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3dab336717fso3760871b6e.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 03:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722422854; x=1723027654; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3qem02ElTOfIEGBZ9hs4Pgv/bXYxn4uT7NZSUdA1BxY=;
        b=k5VcKQD3qaMUE0JLaSmHz4V5LCiBem/85sNlDVnzSuqrf6odMJimgMcpHVHGh4Gbx/
         BBWXsmJsciAV1DurJyBrAqgyKz3a395TV8Jwt9UFkan2hO+ZGvklZoFDs+giabW47eVY
         HqInNdSktGcLF8Iqnu2PLqUAl1E35CxM0YwBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722422854; x=1723027654;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3qem02ElTOfIEGBZ9hs4Pgv/bXYxn4uT7NZSUdA1BxY=;
        b=LXUN3k5dXsalUldcRSloQLnYpg9o3UV1pfkX2Fgjggh157hRIlxKC+N0E5QFU65Cfh
         Emh5ayo3G+93aktMnCibzLWJ6MpQb2+vB1O1XGzOAVRe+aF+7Lz77r5U2rjFH+AZUkqd
         +j0w3c8OTNCYlYkeUEUvT3rFqyIQoT25XnMwZUsswEpE2n4NwpGaDyfQXrKQykWABnG9
         1CvraKTLpOpvk9jqgQNmQb0CyWnjOZYpyUz73K7b5k7zE4dZgZFZVYeQthOyRfjXEXjD
         0+Hbd5pbmHvL1Af/1FzFV3EaOK2itQE1OjWSrojLmLleJLMCwGtlrFFT8uyb3BwrZuBx
         SuSA==
X-Gm-Message-State: AOJu0YxxQ+BH7AzBCI+M5b+IFVhURAZEnnPTg+kwplKWbZRcBOcB4yoK
	wW5EkoPg0PdvGXzD67RnO9ysVqGf7K/CZBo/xbcE+u31hOaHmkLK6UYaUdg0j3pAzOnPJ99tBj8
	=
X-Google-Smtp-Source: AGHT+IH5bC6y2xO5nokTVAVKXYLk/DLl9mJhg1O6q+f7058Iueo2iMjXfYVgLff9hn3UfbyamVgNaQ==
X-Received: by 2002:a05:6808:2185:b0:3db:1db4:5b1d with SMTP id 5614622812f47-3db23a640d1mr14284005b6e.48.1722422854540;
        Wed, 31 Jul 2024 03:47:34 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (46.165.189.35.bc.googleusercontent.com. [35.189.165.46])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7a9fa5a0bcesm8788400a12.89.2024.07.31.03.47.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 03:47:33 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Wed, 31 Jul 2024 10:47:26 +0000
Subject: [PATCH v3 2/2] dt-bindings: arm64: mediatek: Add
 kukui-jacuzzi-cerise board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240731-jacuzzi_dt-v3-2-1c4314e8962f@chromium.org>
References: <20240731-jacuzzi_dt-v3-0-1c4314e8962f@chromium.org>
In-Reply-To: <20240731-jacuzzi_dt-v3-0-1c4314e8962f@chromium.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-a9570

Cerise is known as ASUS Chromebook CZ1.
Stern is known as ASUS Chromebook Flip CZ1.

They are almost identical. The only difference is that Cerise is a
clamshell device without touchscreen and Stern is a convertible device.

Although the commercial names are different, the bootloader still
expects these cerise compatible strings even on stern.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..087773a43673 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -146,6 +146,20 @@ properties:
         items:
           - const: google,burnet
           - const: mediatek,mt8183
+      - description: Google Cerise (ASUS Chromebook CZ1)
+        items:
+          - enum:
+              - google,cerise-sku0
+              - google,cerise-rev3-sku0
+          - const: google,cerise
+          - const: mediatek,mt8183
+      - description: Google Stern (ASUS Chromebook Flip CZ1)
+        items:
+          - enum:
+              - google,cerise-sku1
+              - google,cerise-rev3-sku1
+          - const: google,cerise
+          - const: mediatek,mt8183
       - description: Google Cozmo (Acer Chromebook 314)
         items:
           - const: google,cozmo

-- 
2.46.0.rc1.232.g9752f9e123-goog


