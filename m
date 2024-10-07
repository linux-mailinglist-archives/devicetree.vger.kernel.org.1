Return-Path: <devicetree+bounces-108543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B4369992EAF
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 16:17:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6AECE1F22CD9
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 14:17:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 293661D7E4C;
	Mon,  7 Oct 2024 14:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V3nvX84g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3702D1D6DDF
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 14:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728310599; cv=none; b=BUca690t9N/h2h5l3DGl+EmOiAm+XR3TqolVAZiHHPM1ftKL1OliSW78H+a8faXPvf13OFERFT2yTITZJ6YPwC+6SI4X5IA6sYVtR4IlanO32RuECWzFfuH9RlX4q9w6J0WJhTKxmVuUr4sLEXXGaAywqkXh6LZ5TH+GIiGXRPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728310599; c=relaxed/simple;
	bh=uq3xUG9541kWavMjswgcR/7jEBvQhAlHsrzxs28MLMw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FNDxneNezewPPUPervVtdUnKcKxa/JRyBJKaGprmSYFiTVuQnxhX/+UuQd1iv9dRB6CHzFnHulrDrfODEYG5Iti2K4QppbK591QU2PvJ3Pinm+ElcTXcrhB+p+XGheRS2mSg2AWya1UjzWLNZNw6xBJm/AmRSZRFJr4HE1dKat0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V3nvX84g; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42e82f7f36aso38974885e9.0
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 07:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728310595; x=1728915395; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7xRUTNSVpHiv9YcXebV17rDvGiIssghk7TcjlQFT9qE=;
        b=V3nvX84gPy0a2hiGo5T/9imVZ+pkJ0q7fhQgjCFh0SKcBwD5i5R9Eg4xHx2/A799wH
         6jkVed7mAEkEhl0FF7bFRKafmvz+M2Pkq6iq0w0hfmNMK32zO8n2qGhwyb1/oyAL7/1R
         mtjJxxIW/RqqT/lNWwD/Px0DJ+AsFdQgqwfoyD6GjKvwlF8g7ahaBHnaWcyDhSdaKF8c
         DeDQCFZ57UEvUHlsRYKU94vFZlfsF6+x8TJR3IrjhPgOpby0v4KZA0fe4Ztfo+gWfXlS
         ZXH6po9MfnHfrmd4Y3Uhzx3gO5LTUlVtzPde2Q/fORghQWncsgKyDI32XSXTU8kaHyKq
         6/aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728310595; x=1728915395;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7xRUTNSVpHiv9YcXebV17rDvGiIssghk7TcjlQFT9qE=;
        b=KONz3KMEl8xeaRbjmsXagiLIasGLyOhHSBVQrd61v4s3hJQJjnuvvTV2+ycRbTPYoY
         FUUC3L3ZDxvVu449Fu8XlwRMAoR74FusROq+NWQFkicMDd61WZzlgPeAj+0yhzG6s5B3
         IBYr3YrgBh6JEdzRsjeQ+ZiZ5LjhiBl0V1U88KWjRZFDOthxHtPyBbsnV5NMQVTMPbQJ
         1evpShXTS5FHquTuzbhVESSEMtyC+TDrJ2B+Aj7BspAjYxEUCwi3e6ezeKNIWazT/wPJ
         rAIl/GA11yM1S2YtXqZrod6ciBOCAdtQ5u3CzqnTWoHyukxYDNfHioRsoPTP/uH3iVp9
         97gw==
X-Forwarded-Encrypted: i=1; AJvYcCUpiHjN3VZW9fNsLPFbpkFJRobMHGeecumLIVpccGINhM22P+ekcQ/5aRMQEV916bmP9YlYnOrX/pER@vger.kernel.org
X-Gm-Message-State: AOJu0YwS5hnjaox+y5UAevEilncNpfSAxuOGRSIFl4mhjQ50/bIz5bZn
	KDlWAeqUncgaUsV7eIFpahGOkG/Mtr6O9bUqE8CVD8L1xAQ8betC9LAq9g2BMec=
X-Google-Smtp-Source: AGHT+IHQ72ccwSzwU8GosDnb+C5lMeNAC/47JQuiE3FnkpThqnf7l5/8A9yKyPIwlZRV/GGR9UIMFg==
X-Received: by 2002:a05:600c:4684:b0:42f:823d:dddd with SMTP id 5b1f17b1804b1-42f85aef159mr74209795e9.27.1728310595513;
        Mon, 07 Oct 2024 07:16:35 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f86a20537sm94197965e9.15.2024.10.07.07.16.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 07:16:35 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 07 Oct 2024 16:16:26 +0200
Subject: [PATCH 2/2] dt-bindings: pinctrl: amlogic,meson8-pinctrl-cbus: add
 reg for cbus pinctrl nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241007-topic-amlogic-arm32-upstream-bindings-fixes-meson8-pinctrl-v1-2-d3d838540033@linaro.org>
References: <20241007-topic-amlogic-arm32-upstream-bindings-fixes-meson8-pinctrl-v1-0-d3d838540033@linaro.org>
In-Reply-To: <20241007-topic-amlogic-arm32-upstream-bindings-fixes-meson8-pinctrl-v1-0-d3d838540033@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Heiner Kallweit <hkallweit1@gmail.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1629;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=uq3xUG9541kWavMjswgcR/7jEBvQhAlHsrzxs28MLMw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnA+1AAJKgEHuWWSwWBWNNDbWxSdRz0yGsLYzIXe/4
 xjuPgBqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZwPtQAAKCRB33NvayMhJ0Ve2D/
 0VDp2vwfBbO2+6bz+ZmUpjcv4krlCHkib7nY3P1ffx2xc8uXGci/IJfCDcs/n7lKtZ9EMwPQfU53qp
 ujKB1QWNiroW7bfVzQ99o9Lo20wXjrtFSM1NgjZrGkK14cXE4OJ6W/uo40XgiFKZmDXs/brYDEcMgl
 Vkj6wPnW0mNegAcNZDBekI77lY8Tx2ScSz8Bdv9bvVBOGexclIOzRupM10tlrUM4ZvS/2Bh6lTAkNt
 VFUl3c34S/zgmiHnUcWZcCEiugGOHb18tIfRcsM3UyxuirMQ1tqrTqhd3dnxMWedPXpvdnqGTgLGj+
 2P0WQlkaVZaCO0EnDawkSGsMDrhBXb2uWOaIMVaj5p8Trr4hUxVp5ZultjzqTZ6wncbQiL9xkGDJ0u
 uCErJGDC0hd+jKpyLSUJAxdXyTHUVP+o5qL1UPaSFjSPGzE2+8UTlx4u4J/MmaMesUXG6zFVNKczx5
 b79N7wO4/+gqw1y0v6vFEK8NDK5VbnAtGoralRmrAnliruY6P92z0joLTVHyKii9ZvlysSaRtz9Rrk
 0O2UEMqu46XvfoOiK41FTkspRh2Ohl64L5ZOOyC1Me7b4raYyfC7ftgFhUoPXeppZE+TXZWwSSszcT
 lwl+ezybXQsKNiaASpe0LiUp1M6CvuANx2GVkWty0xlJxXFF7ZcfoxyIjxqQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

While converting the Amlogic Meson pinctrl binding to dt-schema, the mandatory
reg property for Meson8/b cbus pinctrl node was ommited, fix this to finally
pass all bindings checks.

Fixes: 94df03a45276 ("dt-bindings: pinctrl: Convert Amlogic Meson pinctrl binding")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../pinctrl/amlogic,meson8-pinctrl-cbus.yaml       | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/amlogic,meson8-pinctrl-cbus.yaml b/Documentation/devicetree/bindings/pinctrl/amlogic,meson8-pinctrl-cbus.yaml
index c954761e0150..3a03a1c73c92 100644
--- a/Documentation/devicetree/bindings/pinctrl/amlogic,meson8-pinctrl-cbus.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/amlogic,meson8-pinctrl-cbus.yaml
@@ -9,9 +9,6 @@ title: Amlogic Meson8 CBUS pinmux controller
 maintainers:
   - Neil Armstrong <neil.armstrong@linaro.org>
 
-allOf:
-  - $ref: amlogic,meson-pinctrl-common.yaml#
-
 properties:
   compatible:
     oneOf:
@@ -25,6 +22,25 @@ properties:
           - const: amlogic,meson8m2-cbus-pinctrl
           - const: amlogic,meson8-cbus-pinctrl
 
+  reg:
+    maxItems: 1
+
+allOf:
+  - $ref: amlogic,meson-pinctrl-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,meson8-cbus-pinctrl
+              - amlogic,meson8b-cbus-pinctrl
+    then:
+      required:
+        - reg
+    else:
+      properties:
+        reg: false
+
 required:
   - compatible
 

-- 
2.34.1


