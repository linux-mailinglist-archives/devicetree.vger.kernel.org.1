Return-Path: <devicetree+bounces-98314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F334965B23
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 10:46:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C164B1F2537E
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 08:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCFC616EBF7;
	Fri, 30 Aug 2024 08:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jDEzOijo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699B316EBE7
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 08:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725007559; cv=none; b=RqgwnnUIGeLHn1uHrFXH38BJ0et2V/fsttzeQLY9lC7u/p3TvmNuIahHT5bumPzD6HzDlwbpIbiGSAygvpII1ejwidCv95LPk5g8UMKqA75p06/9ww1ln45cs42Y3Wq8FkRvfQ0dTMFIBKgs3VuSNTc8QNKzp6ghLnpV7ZdSdBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725007559; c=relaxed/simple;
	bh=hLjq2QNY9R+0CsSW7VKgV6tXNu0tfDfJgFrXICEVRyg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WmAOSCeHmQZ8YIFIKa3y1QJ3OlFikchQ8UDVgr2EoHtWchu2Z84LI9N/V/pFXho8fagjA43ItGnWpYBtls9UCfpz1dIIhcmSnSeQWz4QQHc7c19ybbvoq2viKZ0oK94EVMQKuL4H9JOphngmKatKsGpVJIxBa+mZHzj0cuKzoEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jDEzOijo; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7141d7b270dso1269952b3a.2
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 01:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725007558; x=1725612358; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BNhoisuk/jUSOFe52sR46QCIHvi7hEsksA7LiMmuHN0=;
        b=jDEzOijoFfTy/04wVM3Pr2/r3c8DGHQeeFInzpf6Ob4M6PNv0ushEdrsMwkLYEU+Hw
         GYgb0QUgvaD7DEdTW7JShuszTIso2kRp1I2hjOl2Lf949PDBwzYalayzk/eetDy7tIBB
         qbaFEJDCTELQaGluUbAte6vDso54NPwrAYKJY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725007558; x=1725612358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BNhoisuk/jUSOFe52sR46QCIHvi7hEsksA7LiMmuHN0=;
        b=C1H9OCnenmwZlCEb8CM3HP9xdA7xEdfdtcqhA5Mp4U8HuSPIe4dyzl3vL5S2VqADVd
         lGW4OOVrrV6A1CIGOQvLw6MX87toDP53pQdbbciQ5um4CgcEV2f+5N3mfBCV8wSuqqd+
         JK35fPWoLkTz+xuhI92UEoi6uer/oK4PxTXfJUKU4MwcMnUqZIbI00Fy5gjucv9UqdrU
         QtTAjB0jOT6Zc9viUqdPC1T0ToS3qUbR5RlNWPcPUIVJQqhWMuom73F5JcAT+KpRu3sS
         soNEt7ypAq/4mXSWlpyqnwZ9dPD33GUT+mO09N+qf9QqFozqp5LaAZ6SUlmAK/ChNJw8
         uLAw==
X-Forwarded-Encrypted: i=1; AJvYcCVeZYoSOLsITy8u1Kd/4fF+HIYl5lI+YpvwXpvHKJFtGN1sm0lC5EYte0Me0qhv2zVFb8TDwV75JJ3f@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5LKyOP5vkgVTGDMilcXqYH1bwnxMPhBZETePnpCkjb/WxNmuQ
	D20MWPgtNY1DT4h8SVOIUdcTmyCQpbGoN/OVzO6HuHN4pdXtC3524iQ7iPHx6g==
X-Google-Smtp-Source: AGHT+IHJFS1jtvkTZ22k5pD+Kn9bReufF91Us6y0WLt5aVVQ6EqMEnI6zYAJ2oR7UwfAiAfac5+tAg==
X-Received: by 2002:a05:6a21:2d07:b0:1c4:a1f4:3490 with SMTP id adf61e73a8af0-1cce10a7fd4mr4563290637.39.1725007557633;
        Fri, 30 Aug 2024 01:45:57 -0700 (PDT)
Received: from localhost (117.196.142.34.bc.googleusercontent.com. [34.142.196.117])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-2d8445d5bb0sm5784248a91.1.2024.08.30.01.45.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2024 01:45:57 -0700 (PDT)
From: Rohit Agarwal <rohiagar@chromium.org>
To: chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rohit Agarwal <rohiagar@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/3] dt-bindings: display: mediatek: dpi: Add power domains
Date: Fri, 30 Aug 2024 08:45:42 +0000
Message-ID: <20240830084544.2898512-2-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
In-Reply-To: <20240830084544.2898512-1-rohiagar@chromium.org>
References: <20240830084544.2898512-1-rohiagar@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add power domain binding to the mediatek DPI controller
for MT8186.
Also, add power domain binding for other SoCs like
MT6795 and MT8173 that already had power domain property.

Signed-off-by: Rohit Agarwal <rohiagar@chromium.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 .../bindings/display/mediatek/mediatek,dpi.yaml | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index 5ca7679d5427..3a82aec9021c 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -62,6 +62,9 @@ properties:
       - const: default
       - const: sleep
 
+  power-domains:
+    maxItems: 1
+
   port:
     $ref: /schemas/graph.yaml#/properties/port
     description:
@@ -76,6 +79,20 @@ required:
   - clock-names
   - port
 
+allOf:
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - mediatek,mt6795-dpi
+                - mediatek,mt8173-dpi
+                - mediatek,mt8186-dpi
+    then:
+      properties:
+        power-domains: false
+
 additionalProperties: false
 
 examples:
-- 
2.46.0.469.g59c65b2a67-goog


