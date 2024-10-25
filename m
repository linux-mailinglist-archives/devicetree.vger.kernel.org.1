Return-Path: <devicetree+bounces-115569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D8B9B00C3
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 13:02:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A303D1C20AA1
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 11:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8FE11DD54B;
	Fri, 25 Oct 2024 11:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="i3CqNp1V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D15B1FBF66
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 11:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729854129; cv=none; b=kDxh8EVYYJRo8HrC7kpH1aeKA3u0bpDQjZ/POIbYsb+IqXAUVLjpewjoraK4inG0sI8fTbveO9+lXyVMqvcrj8SrOBmGKK0LcxPTwrTfYioDxuff4Zn3wdw5Ty68AVFdDZ9NuC4r/CZNpYkEdscEgjgBBq9NPpn7WZ9+5JW5FZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729854129; c=relaxed/simple;
	bh=HuI7CfpbXZx89xIg8THe2k/U9xJ6coRkJnZWrnc1Lhk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IGD3sPMVboR8UXC0nXZf72euwbapxtxgvNAEni6z3+RTI4hFXcWJudXydz+uE/tB9e9xudURShVQQH1lOsRdYd1d8S7Cs1KQ0kEQzVD9TTjJW9BcuoB3PGkNY2EZibiOrL2VtthA19L26dJTKuUZIIVnKK78wwUuTNmBcyYuLJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=i3CqNp1V; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-20cceb8d8b4so10218845ad.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 04:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729854126; x=1730458926; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AXrTKO29i+9riFKtMDpzC5dJ0oRASlg4ZqcDveSTxxk=;
        b=i3CqNp1VtJ6FRUOQoQDzJqJt2OCEC6uxLXI+x/eJaRmjwRnHzUho7jex9m0dfn1mdO
         3aXCR09Hz0YB+5ZVgMeStG8HmiL8BvkqqSdHLLiAEc4vaeje8+dD18KysrHqEuRiWAwR
         8ZXA5vtazhxc0nxNg06hWE8QWAl8DS10ptMKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729854126; x=1730458926;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AXrTKO29i+9riFKtMDpzC5dJ0oRASlg4ZqcDveSTxxk=;
        b=APERIlFRlwK/p42cJFWYIvWfTO3UkJeuQqLHLjHUJ5v+1cmCz3Xr59k/uoTdNhmo7K
         802dTWpE6dDWUlwnipIBy2wvgttHznALJeSvbjXoiHra613hOxJfHRgOCgu0cgvMidS5
         FOUGjdCHL8lwOW9cDuZ6EmugLDJ/9ivaHjnCkGf7BXazjiN6sOgRsNiZ2XOtIeCSxxNt
         fTGxb1GCE0SuNGYwubqKelE2iw6YUEfHORdbzd4kt29P7uQoFCg12PWaCZFMG2U012aJ
         6Y2WEO7hDrh/INUQKWMeqz0Yg+L/A9EVdd5cTlPuA9kckYU9X0gi2dba3UGHXmVEFnMp
         EU+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWzZ1WttmMjIwtG5R5buPLibL1hD0ccZ75Ds22g2fXh8PmHOpuZAZ/zRNWPv5C/Q++NH9/nbM3GyIjL@vger.kernel.org
X-Gm-Message-State: AOJu0YxPxAhQcsHBl3dFPjSHAScCKypKM5COkmt2gwbU+HxcaFI6o/Ra
	x4x5ogZqsspLhgmlCY7fbh01yAZLE8mvol6XohlBnFc9DReU1A3bcGJPHds6jQ==
X-Google-Smtp-Source: AGHT+IG4TIqfgI8FWglIjkgZ6paBZxepL1z+0e2SainqCz9RlgYpyONGoQZzrlCGu/COKAqZwdWOEw==
X-Received: by 2002:a17:903:32ce:b0:20c:5990:897c with SMTP id d9443c01a7336-20fb8a5b3c2mr71630985ad.27.1729854126393;
        Fri, 25 Oct 2024 04:02:06 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:ebe1:dd63:343d:8a4c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-210bbf4472dsm7588595ad.13.2024.10.25.04.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 04:02:06 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hsin-Yi Wang <hsinyi@chromium.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Rob Herring <robh@kernel.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: arm: mediatek: Add MT8188 Lenovo Chromebook Duet (11", 9)
Date: Fri, 25 Oct 2024 18:59:35 +0800
Message-ID: <20241025110111.1321704-2-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.163.g1226f6d8fa-goog
In-Reply-To: <20241025110111.1321704-1-fshao@chromium.org>
References: <20241025110111.1321704-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add entries for the MT8188-based Chromebook "Ciri", also known as
Lenovo Chromebook Duet (11", 9).

This device features a detachable design with touchscreen, detachable
keyboard and USI 2.0 Stylus support, and has 8 SKUs to accommodate the
combinations of second-source components.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 Documentation/devicetree/bindings/arm/mediatek.yaml | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..4b68f0baf010 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -307,6 +307,19 @@ properties:
           - enum:
               - mediatek,mt8186-evb
           - const: mediatek,mt8186
+      - description: Google Ciri (Lenovo Chromebook Duet (11", 9))
+        items:
+          - enum:
+              - google,ciri-sku0
+              - google,ciri-sku1
+              - google,ciri-sku2
+              - google,ciri-sku3
+              - google,ciri-sku4
+              - google,ciri-sku5
+              - google,ciri-sku6
+              - google,ciri-sku7
+          - const: google,ciri
+          - const: mediatek,mt8188
       - items:
           - enum:
               - mediatek,mt8188-evb
-- 
2.47.0.163.g1226f6d8fa-goog


