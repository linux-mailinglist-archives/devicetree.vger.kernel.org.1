Return-Path: <devicetree+bounces-68730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7090C8CD2BE
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 14:51:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E153B1F21F6E
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 12:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F17F14EC66;
	Thu, 23 May 2024 12:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="doiEVr2n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0F814EC6A
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 12:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716468581; cv=none; b=CgrfBmwoKP3FnAPxaU1TmqgsXVgyN7y9eN1fcCa3+XUuuSWNJJVmvYnEt0zlxgN+UpAzv3Vt8UlS9MfJ6jnp2JLF2G29f/d0viVDPPWsS4wZ+qo0XJNlA6xWk8jIqC4r+MKbUi+tZJKXP0zHE+h9Ip+BUSsHeLDYnXC1IZrHnx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716468581; c=relaxed/simple;
	bh=UlNxnBvCjVx/6W65jQPfxXx1AFy8RRqkUMIMHAwcg2c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ASiCUgfreqgEc20v4pUlFZUxlRsdHvgQBZ5EeidxoqGTf2a/mmAocJmGD+jJ3HBgp/Gfk686cRCxInNn4fjfWRh+NQV7skOQmETDiqbhmrHmrXtiSFbbuK6gDrp2xCUuwraxpLYSdIinpjxpS26v4VOxkMs7ZB6jUBfl/Gu8OqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=doiEVr2n; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3504f34a086so5010515f8f.1
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 05:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716468578; x=1717073378; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+aQzYfx/ie0kc7+1Z32he9tzRpQ+MgXQM9NknN/D5iA=;
        b=doiEVr2nR1QLgXHL0Qiy/lEV+kK6hn12kES5p+OEgCBfgjbB9B/gBqWmGVFY1L7T0H
         hkp4RTFqA9omc5+WMbjSzkIt1wgZFU946RfoL5/HRQXONi4HBgqBFUW2Q15KhBjcAcq/
         6d+quJp91FTEQrBEO9FoGAYb/OoTItfz2AGMundRhxlS8ZLVSc45BSUCP9Swm/FeFWEx
         rgsREivOQAgIHzQymu8Va2dcVNC0Jc3PE6uPf7YxWkl6wqu6i2RfUl9xUiMCfX2rhvvl
         I13yrKbYFdmHl+FMLd5SdMUg488plDcECJSK8BeVCi7YGOUJk1cx2vdI6z05dzN0VBUr
         1Jsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716468578; x=1717073378;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+aQzYfx/ie0kc7+1Z32he9tzRpQ+MgXQM9NknN/D5iA=;
        b=SmjKXjyPWGZIqURDYA0KO7piyALwVDFsIRZce44RS4Fmxi744WZ7XbOzdq3UMlLM3G
         w19jlBClexiphrpEhGEIU6H32zOsdvwpFCq7aJICKQaHmgoyP5aDt6GziDBzsfpoR//A
         +es8pmxqxLNIhhFNEAbmndgKQq986QNHMJGb4cLxJj3o6ee6kQ5Uyrmg2hiZf3XvMHFG
         GXUyLY5pjCEif4lYfOmVP3z/hGXVh5DrAJv4B6KDgJ+w9FNbArrBdcQvwZa2VS3qF8uN
         j3x9pxNC+6oBtuB03MbiisS00Dr+npw7z6zdlw5Z/LaDT2mVhag6JRNSkbVxLt6dj/4r
         hcaA==
X-Forwarded-Encrypted: i=1; AJvYcCW+FnI6M3qaFedZplrB9TkA6Fy7ugq++PWw3IyOLEXDt52x+uaGaAU76N8VzUcewpUF+JASluTYdydxSRHfx9WVDCQbb/SRTU6b2Q==
X-Gm-Message-State: AOJu0YzX1XHam/y8rpRSftTqk0jVRITD8iSggmK4LBxCBYXqSuOl1/Qu
	sKs3JbO/O8fw+iPJN9RF9cX1oP5Itgc1SHBveMMozEy4UBazgNQpzV4stirfwzM=
X-Google-Smtp-Source: AGHT+IH4iGNET6SfDzE6zGc6HrJXgpoDsPJFOQ6KQfsfG3Wg0YhjoGdSQjdBLOB748+cCcpmxdRUOw==
X-Received: by 2002:adf:ed0a:0:b0:355:2e7:376f with SMTP id ffacd0b85a97d-35502e73990mr193601f8f.49.1716468578424;
        Thu, 23 May 2024 05:49:38 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-354faf3fa68sm1259611f8f.116.2024.05.23.05.49.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 05:49:37 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 23 May 2024 14:49:22 +0200
Subject: [PATCH v4 09/15] dt-bindings: display: mediatek: ovl: add
 compatible for MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v4-9-ed82eb168fb1@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=968; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=UlNxnBvCjVx/6W65jQPfxXx1AFy8RRqkUMIMHAwcg2c=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmTztTvT9SVcXKFGF/GCpDExbo0SpPFXpWKioJegyL
 m8sMYAuJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZk87UwAKCRArRkmdfjHURTHMEA
 CCECqLgS+dIQk5Iq1e8TB/sKGUiM4+JLGu0ybDlieP1yzfLUZvaakMMuUvb0c2wHeT8euFl3vT+hUR
 /hhel+PfLj/+7c5BO6Jal85N8SlgjnErhq/bwMPRpGEjfqgoDbdizJC0o9nsmYMJPzHVeVXKsVnoNo
 TQFwbGwjWirTY5zIJGNIEItsF8THGHZEhW5AML0R1chmvnfGSiwBPXtCCSOJE1jVHKvwbFErSwbBRc
 TdikgvrqxVVVZPONucpi3aj9YdzMuefW2GyC4+lfYHUQj+xVFkThOalr8vDA3ul3wD1wkXNP2EdVYy
 3rJpcB+WNfKSsfGefWYEo060oeXA57sjJDwRJ+Iy1ImNa+RwvX0eEon8fdvuygMpGt0Z4M8pbGLn+/
 VveBekcnfmasbPIVFTjmBUAnYakjWnRkq97bJtVt3WKrgvAHsaZ0amrtvZKdMagOPse5GNqJAi945S
 XJPf6KuuKHjmk7IEDBzxpgrI6sR0qvtz92ckGoFGlwSxQFRl1Fdt1w8NUYTLEXqovUC2PXkAqB7Vai
 aITDWPs6S75IIWJxk9Dpd9u6xDSzoSjTCSw5rHHKbLSEXxBDzDHU/FYc54Rf0Wf9NddVmZL5Re2vFq
 fQ+13hrduYg4lKbs3wZbD++TiLXf2U5H+/QT6C97HjHvFoe2Qow1CrcSZcKA==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Document the display Overlay on MT8365, which is compatible
with that of the MT8192.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
index e93f0247bdcc..9ea796a033b2 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
@@ -44,6 +44,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt8186-disp-ovl
+              - mediatek,mt8365-disp-ovl
           - const: mediatek,mt8192-disp-ovl
 
   reg:

-- 
2.25.1


